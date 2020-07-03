Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
 by mx.groups.io with SMTP id smtpd.web11.4324.1593798938671136351
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jul 2020 10:55:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pvZwmfxL;
 spf=pass (domain: gmail.com, ip: 209.85.214.194, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f194.google.com with SMTP id w19so2204351ply.9
        for <yocto@lists.yoctoproject.org>; Fri, 03 Jul 2020 10:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=uqTn6FZNtumKcrZcEIfw9bNojWJL4G+5yPtdaSZbcm8=;
        b=pvZwmfxLrtJFKPZoQa/zdMM7S5IRpHQ3CCMuqs8uHsmZh85C9GYuyMdhHqqdbvz+EF
         oZxnMJaHetHgWV3e1aceiq9rmV3qEVDNUcYDNaJE4VYSCvCQ9M8ljC8LCSMcS0dKz+k7
         lY9vHNK2RB96tTCH8APT/PKWGIik2f2wRq77+RZ59jnZIRfXlBuhTUkJYRZ2JQMOcqGA
         To94VKvD6ITFy1WHYx35pFqpLvSWHKtBcrmefMQN0aJgv0NdpEyV3Xs8Iq8UQEA5RhVU
         WwYWrp13hEUcqJudSZYTWXuG4GHCt96uDfeLiuUV9/Uec1bZVif7OLnbcPURlQHCJngA
         CmHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=uqTn6FZNtumKcrZcEIfw9bNojWJL4G+5yPtdaSZbcm8=;
        b=SP1018iJz3G5+Q8CSIniB8tndoOQmVcnl78RVgOJiOCccVZSBGhamQIunMdxDdq5g8
         buTKVvKLuXeuut4RcgkNKsFpNDUJ42B178sJI2IJInI4u1guY54aR6ehCot1reVI+EXX
         GqDm4OYZJXPyT4OxoO4nkA8v6aLIBbjk6wCrxVg0CkqqIIQUEACms5QhSeoKpD0+TdUB
         1YvYsBAzs2Q0QCX9IzpYTDg/ikz37VyDiUjc+OQfWEnx4iIg73uBg2DfYys4QzUAI/1U
         rYrm+mJkCHo3kIQXYEkrrpc3DRkNOxDQmOdy8H27IZm7ViB+9VxeZvAF2RD793coXn37
         Lf7g==
X-Gm-Message-State: AOAM533+nbe+icfXcvRAvX2wb68GsWof5xQBTRlj7VpgPhTaQL/5UTeo
	+XdqzovitHMV0LJthQI1GdlPKkStcic=
X-Google-Smtp-Source: ABdhPJxufGao1Vj0gugMw5AWiYORxWACSpSZjriICGUUi6QxCNDct+piQVZ+TB6DOh9l1dQWdO28/g==
X-Received: by 2002:a17:902:7d90:: with SMTP id a16mr3498536plm.226.1593798937694;
        Fri, 03 Jul 2020 10:55:37 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0::afc? ([2601:202:4180:a5c0::afc])
        by smtp.gmail.com with ESMTPSA id i196sm12456699pgc.55.2020.07.03.10.55.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2020 10:55:37 -0700 (PDT)
Subject: Re: [yocto] [meta-security][master|dunfell][PATCH] clamav: Fix issue when yara_grammar.h is regenerated.
To: Jeremy Puhlman <jpuhlman@mvista.com>, akuster808 <akuster808@gmail.com>,
 yocto@lists.yoctoproject.org
References: <20200703000105.9909-1-jpuhlman@mvista.com>
 <f9fcdb6c-784e-18ea-2009-f577e141356e@gmail.com>
 <a1666091-15ab-0ef5-15eb-4ade35e7006e@mvista.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <c4d18ba1-99ec-5367-0f24-0c325f1ecc7b@gmail.com>
Date: Fri, 3 Jul 2020 10:55:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <a1666091-15ab-0ef5-15eb-4ade35e7006e@mvista.com>
Content-Type: multipart/alternative;
 boundary="------------550BFB8D2A8F7931CBAE6EEC"
Content-Language: en-US

--------------550BFB8D2A8F7931CBAE6EEC
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 7/3/20 9:43 AM, Jeremy Puhlman wrote:
>
> On 7/2/20 5:01 PM, Jeremy Puhlman wrote:
>>> From: Jeremy Puhlman <jpuhlman@mvista.com>
>>>
>>> Somewhere a long the line someone hand modified the yara_grammar.h file
>>> but didn't add code to generate the same code. The result is if the
>>> file is regenerated from the .y file it complains about a missing
>>> definition of YR_COMPILER.
>>>
>>> This is fixed in 0.103. Backported code snippet to resolve the issue.
>>
>> I am seeing this error with this patch applied on a qemux86-64 machine.
>>
>> |
>> /home/build/builds/master/tmp/work/x86_64-linux/clamav-native/0.101.5-r0/git/libclamav/yara_grammar.y:236.19-27:
>> error: extra characters in character literal
>> |   236 |     | rules error 'include' /* .. or include statement */
>> |       |                   ^~~~~~~~~
>> |
>> /home/build/builds/master/tmp/work/x86_64-linux/clamav-native/0.101.5-r0/git/libclamav/yara_grammar.y:
>> warning: fix-its can be applied.  Rerun with option '--update'. [-Wother]
>> | Makefile:4247: recipe for target 'yara_grammar.c' failed
>

i am also seeing this while working on updating master to 102.3.

-armin
> Weird we should be using common bison/lex. You are building on a
> ubuntu host correct?
>
>>
>> -armin
>>> Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
>>> ---
>>>  ...yara_grammar.h-to-include-yara_compi.patch | 32 +++++++++++++++++++
>>>  recipes-scanners/clamav/clamav_0.101.5.bb     |  1 +
>>>  2 files changed, 33 insertions(+)
>>>  create mode 100644 recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch
>>>
>>> diff --git a/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch b/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch
>>> new file mode 100644
>>> index 0000000..1abbaea
>>> --- /dev/null
>>> +++ b/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch
>>> @@ -0,0 +1,32 @@
>>> +From e7201870e19dea1bc3bc1bb16288c5135709ec6c Mon Sep 17 00:00:00 2001
>>> +From: Jeremy Puhlman <jpuhlman@mvista.com>
>>> +Date: Thu, 2 Jul 2020 23:41:17 +0000
>>> +Subject: [PATCH] force generated yara_grammar.h to include yara_compiler.h
>>> +
>>> +Someone manually modified yara_grammar.h to inlude yara_compiler.h,
>>> +however if yara_grammar.h is generated from yara_grammar.y, it fails
>>> +to build because YR_COMPILER is not defined.
>>> +
>>> +Upstream-Status: Backport [https://github.com/Cisco-Talos/clamav-devel/commit/8e765853d07098a13b4f352c2c77e4d3873905f6#diff-0a6403048e9f5a96598ba9d1d45c7b31]
>>> +---
>>> + libclamav/yara_grammar.y | 4 ++++
>>> + 1 file changed, 4 insertions(+)
>>> +
>>> +diff --git a/libclamav/yara_grammar.y b/libclamav/yara_grammar.y
>>> +index cb893975d..eb0784a2a 100644
>>> +--- a/libclamav/yara_grammar.y
>>> ++++ b/libclamav/yara_grammar.y
>>> +@@ -36,6 +36,10 @@ See the License for the specific language governing permissions and
>>> + limitations under the License.
>>> + */
>>> + 
>>> ++%code requires {
>>> ++#include "yara_compiler.h"
>>> ++}
>>> ++
>>> + %{
>>> + 
>>> + #include <assert.h>
>>> +-- 
>>> +2.24.3
>>> +
>>> diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
>>> index 2ea2c9b..7694265 100644
>>> --- a/recipes-scanners/clamav/clamav_0.101.5.bb
>>> +++ b/recipes-scanners/clamav/clamav_0.101.5.bb
>>> @@ -18,6 +18,7 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.101 \
>>>      file://tmpfiles.clamav \
>>>      file://${BPN}.service \
>>>      file://freshclam-native.conf \
>>> +    file://0001-force-generated-yara_grammar.h-to-include-yara_compi.patch \
>>>      "
>>>  
>>>  S = "${WORKDIR}/git"
>>>
>>
>>
>> <http://www.avg.com/email-signature?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient>
>> 	Virus-free. www.avg.com
>> <http://www.avg.com/email-signature?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient>
>>
>>
>> <#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2>
>
> -- 
> Jeremy A. Puhlman
> jpuhlman@mvista.com
>
> 


--------------550BFB8D2A8F7931CBAE6EEC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/3/20 9:43 AM, Jeremy Puhlman
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:a1666091-15ab-0ef5-15eb-4ade35e7006e@mvista.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    </blockquote>
    <br>
    i am also seeing this while working on updating master to 102.3.<br>
    <br>
    -armin<br>
    <blockquote type="cite"
      cite="mid:a1666091-15ab-0ef5-15eb-4ade35e7006e@mvista.com"> Weird
      we should be using common bison/lex. You are building on a ubuntu
      host correct?<br>
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
                  #41424e; font-size: 13px; font-family: Arial,
                  Helvetica, sans-serif; line-height: 18px;">Virus-free.
                  <a
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
<a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com" moz-do-not-send="true">jpuhlman@mvista.com</a></pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------550BFB8D2A8F7931CBAE6EEC--
