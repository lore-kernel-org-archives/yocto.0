Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
 by mx.groups.io with SMTP id smtpd.web10.617.1593735422001241108
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 17:17:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=h0jgyf36;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.214.194, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f194.google.com with SMTP id p1so2673002pls.4
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 17:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=7oy2hTOc3fBtUII5OdypaIncoY/8m45bABFPINlS36U=;
        b=h0jgyf36G9zVIx0rDIMLggT7q3H7yanPr2r9KFLRBAm+QOTx0iHxQ8YzrVPpJVNUwg
         OXbXBBGx0U/lkuZXKacoRWpwXrRucs6Q9yT0wJtM4MNV8ZfPTsFNsEFpwASoKyQ8ykFg
         XC8os8Jf6VPRGa3YM75LREIZ8eSZkmZL0Z06vIRxyHNiop79BYleUpOBWsYLqcAizfhc
         o3AC0EqpLM8YV+DQYteImjBbtP9y+ZLnU96O9aY3gSZkTSsEUP1c5g/oQonMPAGfMwpa
         MRg00lygIRon57CgTkLkRfCgIBnuKwjVGiy8mPUEzZsOkqUg2st+iJySa1njIZMprc0Z
         NvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=7oy2hTOc3fBtUII5OdypaIncoY/8m45bABFPINlS36U=;
        b=V9sJofjZbws4S9vGOn59LNyZBzgdSgo5muztzCMDzVvH+dsW3EOaIiRS5GshpXF6uQ
         dhoXhy5gIN8qMymMkc1fLXdU1Jj9sLHd0fhpBrFahvLlcdAlc3bLUS16EhF+/vLIRx2J
         WHdEcUIUP1Joc5OkA0DvvqgtjnmuL2q+4jHt2/i9d3HGvPmhTp22uKOvxtqOmFvx0dnn
         7f/3CBaO+pWi8ZajOGHkUG+VsswP9boiUThYzwnqoAa7Etzoyx2COe4G09T9XNYOjMoY
         iS/Jt12msgMbLTC8Pm644gZCOlEbqeB9IB21j9VMTQtE9MznOc9+EtAW0/aicT9YjPzm
         mkJw==
X-Gm-Message-State: AOAM530nbVQYfqWCydiWAjW9uED1FYwaR3XV8XOEPmBEPwMb9i7OPHFY
	Lk5ikfodKkJRKcp6W9d+tsxicA==
X-Google-Smtp-Source: ABdhPJyMq5dvcoIT4FCLo2UFquRal09LWPKx9H+njKjcHREJZFV518UyIquwoXmow8Zl5ufLVw5XUQ==
X-Received: by 2002:a17:90a:3fc7:: with SMTP id u7mr28385369pjm.231.1593735421487;
        Thu, 02 Jul 2020 17:17:01 -0700 (PDT)
Return-Path: <jpuhlman@mvista.com>
Received: from [192.168.1.128] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id i8sm9550563pfd.14.2020.07.02.17.17.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 17:17:00 -0700 (PDT)
Subject: Re: [yocto] [meta-security][master|dunfell][PATCH 1/2] apparmor: pull in coreutils/findutils only when not using systemd as init manager
To: akuster808 <akuster808@gmail.com>, yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
References: <20200703000043.9774-1-jpuhlman@mvista.com>
 <e47106a4-ca73-8c91-2081-f204bb348d9a@gmail.com>
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Message-ID: <775d4de9-264e-0dce-378e-653e6dd516c3@mvista.com>
Date: Thu, 2 Jul 2020 17:16:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e47106a4-ca73-8c91-2081-f204bb348d9a@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------3890DB5CDAD9C56B3678CAF2"
Content-Language: en-US

--------------3890DB5CDAD9C56B3678CAF2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Yeah that was a goof on my part. I thought I aborted it, but I guess I 
didn't. I meant to send the clamav patch.

Sorry for the noise on that one.

On 7/2/2020 5:14 PM, akuster808 wrote:
>
>
> On 7/2/20 5:00 PM, Jeremy Puhlman wrote:
>> From: Alexander Kanavin<alex.kanavin@gmail.com>
>>
>> The utilities from those packages (xargs, comm) are only used in sysvinit
>> scripts, and so there is no need to pull them in when systemd is in use.
>> Both are gpl3 licensed, so this is beneficial for builds where gpl3 is not
>> allowed.
>>
>> Signed-off-by: Alexander Kanavin<alex.kanavin@gmail.com>
>> Signed-off-by: Armin Kuster<akuster808@gmail.com>
>
> If I am not mistaken, this is in both master and dunfell.
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?id=3018714159686e0ab2e4e5e6323a76b92aedc4ca
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?h=dunfell&id=217fadb03da925757b236cb91ba9807e3b2bbd6e
>
> - armin
>> ---
>>   recipes-mac/AppArmor/apparmor_2.13.4.bb | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
>> index d6f61b3..552cac7 100644
>> --- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
>> +++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
>> @@ -191,7 +191,8 @@ PACKAGES += "mod-${PN}"
>>   FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
>>   FILES_mod-${PN} = "${libdir}/apache2/modules/*"
>>   
>> -RDEPENDS_${PN} +=  "coreutils findutils ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
>> +# Add coreutils and findutils only if sysvinit scripts are in use
>> +RDEPENDS_${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
>>   RDEPENDS_${PN}_remove +="${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
>>   RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
>>   
>>
>> 
>
>
> <http://www.avg.com/email-signature?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient> 
> 	Virus-free. www.avg.com 
> <http://www.avg.com/email-signature?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient> 
>
>
> <#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com


--------------3890DB5CDAD9C56B3678CAF2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Yeah that was a goof on my part. I thought I aborted it, but I guess
    I didn't. I meant to send the clamav patch.<br>
    <br>
    Sorry for the noise on that one.<br>
    <br>
    <div class="moz-cite-prefix">On 7/2/2020 5:14 PM, akuster808 wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:e47106a4-ca73-8c91-2081-f204bb348d9a@gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <br>
      <br>
      <div class="moz-cite-prefix">On 7/2/20 5:00 PM, Jeremy Puhlman
        wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:20200703000043.9774-1-jpuhlman@mvista.com">
        <pre class="moz-quote-pre" wrap="">From: Alexander Kanavin <a class="moz-txt-link-rfc2396E" href="mailto:alex.kanavin@gmail.com" moz-do-not-send="true">&lt;alex.kanavin@gmail.com&gt;</a>

The utilities from those packages (xargs, comm) are only used in sysvinit
scripts, and so there is no need to pull them in when systemd is in use.
Both are gpl3 licensed, so this is beneficial for builds where gpl3 is not
allowed.

Signed-off-by: Alexander Kanavin <a class="moz-txt-link-rfc2396E" href="mailto:alex.kanavin@gmail.com" moz-do-not-send="true">&lt;alex.kanavin@gmail.com&gt;</a>
Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com" moz-do-not-send="true">&lt;akuster808@gmail.com&gt;</a></pre>
      </blockquote>
      <br>
      If I am not mistaken, this is in both master and dunfell.<br>
      <br>
      <a class="moz-txt-link-freetext"
href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?id=3018714159686e0ab2e4e5e6323a76b92aedc4ca"
        moz-do-not-send="true">http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?id=3018714159686e0ab2e4e5e6323a76b92aedc4ca</a><br>
      <a class="moz-txt-link-freetext"
href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?h=dunfell&amp;id=217fadb03da925757b236cb91ba9807e3b2bbd6e"
        moz-do-not-send="true">http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?h=dunfell&amp;id=217fadb03da925757b236cb91ba9807e3b2bbd6e</a><br>
      <br>
      - armin<br>
      <blockquote type="cite"
        cite="mid:20200703000043.9774-1-jpuhlman@mvista.com">
        <pre class="moz-quote-pre" wrap="">---
 recipes-mac/AppArmor/apparmor_2.13.4.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
index d6f61b3..552cac7 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
@@ -191,7 +191,8 @@ PACKAGES += "mod-${PN}"
 FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
-RDEPENDS_${PN} +=  "coreutils findutils ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
+# Add coreutils and findutils only if sysvinit scripts are in use
+RDEPENDS_${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
 RDEPENDS_${PN}_remove += <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('PACKAGECONFIG','perl','','perl',d)}" moz-do-not-send="true">"${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"</a>
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
 
</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
      <br>
      <div id="DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2"><br>
        <table style="border-top: 1px solid #D3D4DE;">
          <tbody>
            <tr>
              <td style="width: 55px; padding-top: 13px;"><a
href="http://www.avg.com/email-signature?utm_medium=email&amp;utm_source=link&amp;utm_campaign=sig-email&amp;utm_content=emailclient"
                  target="_blank" moz-do-not-send="true"><img
src="https://ipmcdn.avast.com/images/icons/icon-envelope-tick-green-avg-v1.png"
                    alt="" style="width: 46px; height: 29px;"
                    moz-do-not-send="true" width="46" height="29"></a></td>
              <td style="width: 470px; padding-top: 12px; color:
                #41424e; font-size: 13px; font-family: Arial, Helvetica,
                sans-serif; line-height: 18px;">Virus-free. <a
href="http://www.avg.com/email-signature?utm_medium=email&amp;utm_source=link&amp;utm_campaign=sig-email&amp;utm_content=emailclient"
                  target="_blank" style="color: #4453ea;"
                  moz-do-not-send="true">www.avg.com</a> </td>
            </tr>
          </tbody>
        </table>
        <a href="#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width="1"
          height="1" moz-do-not-send="true"> </a></div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jeremy A. Puhlman
<a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a></pre>
  </body>
</html>

--------------3890DB5CDAD9C56B3678CAF2--
