var currentUrl = location.href.toLowerCase();
if (currentUrl.includes('localhost')) {
    var mainURL = "http://localhost/mbti/";
    var online = false;
} else {
    
}

jQuery(document).ready(function () {
    var formOptions = {
        beforeSubmit: function (formData, jqForm, options) {
            var count = 0;
            formData.forEach(function (item) {
                count++;
            });
            var email = $.trim($('#email-ipnut').val());
            if (count < 10 || !isEmail(email)) {
               $('.error-div').show('slide');
                return false;
            } else {
                 $.blockUI({message: '<h3 style="text-transform:none;">Processing...</h3>'});
            }
        },
        success: function (responseText, statusText, xhr, $form) {
            $.unblockUI();
            var outcome = $.parseJSON(responseText);
            console.log(outcome.url);
            location.href = mainURL+outcome.url;
        },
        error: function () {
            $.unblockUI();
        }
    };
    $('#test-form').ajaxForm(formOptions);
});

function isEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}

function inViewport($el) {
    var elH = $el.outerHeight(),
            H = $(window).height(),
            r = $el[0].getBoundingClientRect(), t = r.top, b = r.bottom;
    return Math.max(0, t > 0 ? Math.min(elH, H - t) : Math.min(b, H));
}