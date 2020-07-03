Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
 by mx.groups.io with SMTP id smtpd.web11.2841.1593794608799450986
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jul 2020 09:43:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=VijsAdYF;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.214.193, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f193.google.com with SMTP id d10so12835506pls.5
        for <yocto@lists.yoctoproject.org>; Fri, 03 Jul 2020 09:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=Z70+8QNk1FN9VIVmJFsu3R2Efz5pnY0MDLZ6VoMwvR4=;
        b=VijsAdYFpqMowDwK8le+rWER62JkRokzN7HWwXD05PufuRCZHpQQhm5+JfHJit5H6y
         Bzjq1kxe58dfOtoW9UZv3OrU5maAKIIJ6SIrmLaN5vBSbFF+S77RavJeEBw8i0lFFE1F
         G9qd0XgTs0ASrQUiEGz90SZBK0i5rCiBH08WG5OVJA7X9tZCsr1nu9vQG3zGvxwJsIuN
         581rm+pNWNsn4jKTqs9rtIVrI9pOX7Kwx+L/LQE2V5YKOJSaDslVNdPXs+SQzizORnNW
         KyisOoO3HHWvOHLoJn2mBtt1cXxzX6gMmVU6kiFJW7Ouum4JscFSWBW5ONG7enUtOZNa
         mAkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Z70+8QNk1FN9VIVmJFsu3R2Efz5pnY0MDLZ6VoMwvR4=;
        b=bheI9OIGgCr+BkhNqWprHWN+Y3EMOg4FPBznvh2DPWxd8YBQs9H9PCQ9RZyL5rvy1/
         pVLw8/KdRYh5nE9hYQParQ5DYHRvgLKYoi4w8n/RKwDVzeCVI1RSNVwUvMGAhRGsUqz1
         uoJ5QgJ7YMGOCgBQ13SJQRgpc4hV2KpCMfrDPceBoGy87sNj6LEcJ4jf1wqpn+hKq1gI
         6ADmA2UEAPBoFkAnvAYxDj8OnOwAFmwDRC7QsrtU+YJJYuCiucsbx9eDZz4scu51cA5q
         ZE2tN/CnLCLkQ1QNr5sR2Zl7i4kKxDlHwQ8f1UpsH+hvc8M7iczX+sr+0O6tQZPxRBQy
         WpUw==
X-Gm-Message-State: AOAM5317TnAnRM4IzEV397jXWPPRE4xdkHP0Tay/IPI/TyaP2mTvTuGe
	i3Jcq1iavDHyLt8mZROgki++NQj7EfQ=
X-Google-Smtp-Source: ABdhPJzMzUrCyevLK9V3WdplC0xwZG5KHShIgtLeMuX3spQlkWK0Nnv2rS2nDw6W4wTGgwRbkTED0A==
X-Received: by 2002:a17:90a:8e:: with SMTP id a14mr2023018pja.206.1593794607852;
        Fri, 03 Jul 2020 09:43:27 -0700 (PDT)
Return-Path: <jpuhlman@mvista.com>
Received: from [192.168.1.128] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id b4sm11350478pjn.38.2020.07.03.09.43.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2020 09:43:27 -0700 (PDT)
Subject: Re: [yocto] [meta-security][master|dunfell][PATCH] clamav: Fix issue when yara_grammar.h is regenerated.
To: akuster808 <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <20200703000105.9909-1-jpuhlman@mvista.com>
 <f9fcdb6c-784e-18ea-2009-f577e141356e@gmail.com>
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Message-ID: <a1666091-15ab-0ef5-15eb-4ade35e7006e@mvista.com>
Date: Fri, 3 Jul 2020 09:43:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <f9fcdb6c-784e-18ea-2009-f577e141356e@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------EC2F63C51971FEDF3235E7B1"
Content-Language: en-US

--------------EC2F63C51971FEDF3235E7B1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 7/2/20 5:01 PM, Jeremy Puhlman wrote:
>> From: Jeremy Puhlman<jpuhlman@mvista.com>
>>
>> Somewhere a long the line someone hand modified the yara_grammar.h file
>> but didn't add code to generate the same code. The result is if the
>> file is regenerated from the .y file it complains about a missing
>> definition of YR_COMPILER.
>>
>> This is fixed in 0.103. Backported code snippet to resolve the issue.
>
> I am seeing this error with this patch applied on a qemux86-64 machine.
>
> | 
> /home/build/builds/master/tmp/work/x86_64-linux/clamav-native/0.101.5-r0/git/libclamav/yara_grammar.y:236.19-27: 
> error: extra characters in character literal
> |   236 |     | rules error 'include' /* .. or include statement */
> |       |                   ^~~~~~~~~
> | 
> /home/build/builds/master/tmp/work/x86_64-linux/clamav-native/0.101.5-r0/git/libclamav/yara_grammar.y: 
> warning: fix-its can be applied.  Rerun with option '--update'. [-Wother]
> | Makefile:4247: recipe for target 'yara_grammar.c' failed

Weird we should be using common bison/lex. You are building on a ubuntu 
host correct?

>
> -armin
>> Signed-off-by: Jeremy Puhlman<jpuhlman@mvista.com>
>> ---
>>   ...yara_grammar.h-to-include-yara_compi.patch | 32 +++++++++++++++++++
>>   recipes-scanners/clamav/clamav_0.101.5.bb     |  1 +
>>   2 files changed, 33 insertions(+)
>>   create mode 100644 recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch
>>
>> diff --git a/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch b/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch
>> new file mode 100644
>> index 0000000..1abbaea
>> --- /dev/null
>> +++ b/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch
>> @@ -0,0 +1,32 @@
>> +From e7201870e19dea1bc3bc1bb16288c5135709ec6c Mon Sep 17 00:00:00 2001
>> +From: Jeremy Puhlman<jpuhlman@mvista.com>
>> +Date: Thu, 2 Jul 2020 23:41:17 +0000
>> +Subject: [PATCH] force generated yara_grammar.h to include yara_compiler.h
>> +
>> +Someone manually modified yara_grammar.h to inlude yara_compiler.h,
>> +however if yara_grammar.h is generated from yara_grammar.y, it fails
>> +to build because YR_COMPILER is not defined.
>> +
>> +Upstream-Status: Backport [https://github.com/Cisco-Talos/clamav-devel/commit/8e765853d07098a13b4f352c2c77e4d3873905f6#diff-0a6403048e9f5a96598ba9d1d45c7b31]
>> +---
>> + libclamav/yara_grammar.y | 4 ++++
>> + 1 file changed, 4 insertions(+)
>> +
>> +diff --git a/libclamav/yara_grammar.y b/libclamav/yara_grammar.y
>> +index cb893975d..eb0784a2a 100644
>> +--- a/libclamav/yara_grammar.y
>> ++++ b/libclamav/yara_grammar.y
>> +@@ -36,6 +36,10 @@ See the License for the specific language governing permissions and
>> + limitations under the License.
>> + */
>> +
>> ++%code requires {
>> ++#include "yara_compiler.h"
>> ++}
>> ++
>> + %{
>> +
>> + #include <assert.h>
>> +--
>> +2.24.3
>> +
>> diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
>> index 2ea2c9b..7694265 100644
>> --- a/recipes-scanners/clamav/clamav_0.101.5.bb
>> +++ b/recipes-scanners/clamav/clamav_0.101.5.bb
>> @@ -18,6 +18,7 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.101 \
>>       file://tmpfiles.clamav  \
>>       file://${BPN}.service \
>>       file://freshclam-native.conf  \
>> +file://0001-force-generated-yara_grammar.h-to-include-yara_compi.patch  \
>>       "
>>   
>>   S = "${WORKDIR}/git"
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


--------------EC2F63C51971FEDF3235E7B1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    On 7/2/20 5:01 PM, Jeremy Puhlman wrote:<br>
    <blockquote type="cite"
      cite="mid:f9fcdb6c-784e-18ea-2009-f577e141356e@gmail.com">
      <blockquote type="cite"
        cite="mid:20200703000105.9909-1-jpuhlman@mvista.com">
        <pre class="moz-quote-pre" wrap="">From: Jeremy Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com" moz-do-not-send="true">&lt;jpuhlman@mvista.com&gt;</a>

Somewhere a long the line someone hand modified the yara_grammar.h file
but didn't add code to generate the same code. The result is if the
file is regenerated from the .y file it complains about a missing
definition of YR_COMPILER.

This is fixed in 0.103. Backported code snippet to resolve the issue.</pre>
      </blockquote>
      <br>
      I am seeing this error with this patch applied on a qemux86-64
      machine.<br>
      <br>
      |
/home/build/builds/master/tmp/work/x86_64-linux/clamav-native/0.101.5-r0/git/libclamav/yara_grammar.y:236.19-27:
      error: extra characters in character literal<br>
      |   236 |     | rules error 'include' /* .. or include statement
      */<br>
      |       |                   ^~~~~~~~~<br>
      |
/home/build/builds/master/tmp/work/x86_64-linux/clamav-native/0.101.5-r0/git/libclamav/yara_grammar.y:
      warning: fix-its can be applied.  Rerun with option '--update'.
      [-Wother]<br>
      | Makefile:4247: recipe for target 'yara_grammar.c' failed<br>
    </blockquote>
    <br>
    Weird we should be using common bison/lex. You are building on a
    ubuntu host correct?<br>
    <br>
    <blockquote type="cite"
      cite="mid:f9fcdb6c-784e-18ea-2009-f577e141356e@gmail.com"> <br>
      -armin<br>
      <blockquote type="cite"
        cite="mid:20200703000105.9909-1-jpuhlman@mvista.com">
        <pre class="moz-quote-pre" wrap="">Signed-off-by: Jeremy Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com" moz-do-not-send="true">&lt;jpuhlman@mvista.com&gt;</a>
---
 ...yara_grammar.h-to-include-yara_compi.patch | 32 +++++++++++++++++++
 recipes-scanners/clamav/clamav_0.101.5.bb     |  1 +
 2 files changed, 33 insertions(+)
 create mode 100644 recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch

diff --git a/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch b/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch
new file mode 100644
index 0000000..1abbaea
--- /dev/null
+++ b/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch
@@ -0,0 +1,32 @@
+From e7201870e19dea1bc3bc1bb16288c5135709ec6c Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com" moz-do-not-send="true">&lt;jpuhlman@mvista.com&gt;</a>
+Date: Thu, 2 Jul 2020 23:41:17 +0000
+Subject: [PATCH] force generated yara_grammar.h to include yara_compiler.h
+
+Someone manually modified yara_grammar.h to inlude yara_compiler.h,
+however if yara_grammar.h is generated from yara_grammar.y, it fails
+to build because YR_COMPILER is not defined.
+
+Upstream-Status: Backport [<a class="moz-txt-link-freetext" href="https://github.com/Cisco-Talos/clamav-devel/commit/8e765853d07098a13b4f352c2c77e4d3873905f6#diff-0a6403048e9f5a96598ba9d1d45c7b31" moz-do-not-send="true">https://github.com/Cisco-Talos/clamav-devel/commit/8e765853d07098a13b4f352c2c77e4d3873905f6#diff-0a6403048e9f5a96598ba9d1d45c7b31</a>]
+---
+ libclamav/yara_grammar.y | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/libclamav/yara_grammar.y b/libclamav/yara_grammar.y
+index cb893975d..eb0784a2a 100644
+--- a/libclamav/yara_grammar.y
++++ b/libclamav/yara_grammar.y
+@@ -36,6 +36,10 @@ See the License for the specific language governing permissions and
+ limitations under the License.
+ */
+ 
++%code requires {
++#include "yara_compiler.h"
++}
++
+ %{
+ 
+ #include &lt;assert.h&gt;
+-- 
+2.24.3
+
diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
index 2ea2c9b..7694265 100644
--- a/recipes-scanners/clamav/clamav_0.101.5.bb
+++ b/recipes-scanners/clamav/clamav_0.101.5.bb
@@ -18,6 +18,7 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.101 \
     <a class="moz-txt-link-freetext" href="file://tmpfiles.clamav" moz-do-not-send="true">file://tmpfiles.clamav</a> \
     <a class="moz-txt-link-freetext" href="file://$" moz-do-not-send="true">file://$</a>{BPN}.service \
     <a class="moz-txt-link-freetext" href="file://freshclam-native.conf" moz-do-not-send="true">file://freshclam-native.conf</a> \
+    <a class="moz-txt-link-freetext" href="file://0001-force-generated-yara_grammar.h-to-include-yara_compi.patch" moz-do-not-send="true">file://0001-force-generated-yara_grammar.h-to-include-yara_compi.patch</a> \
     "
 
 S = "${WORKDIR}/git"
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

--------------EC2F63C51971FEDF3235E7B1--
