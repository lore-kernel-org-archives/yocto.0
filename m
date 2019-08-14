Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69AF3E00D8F; Tue, 13 Aug 2019 18:19:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F67E00C7D
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 18:19:42 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id i2so50042173plt.1
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 18:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=rDXYa7WxFBvEiTYBUVSmWZexTp+MGG3lNDAOWnJppmY=;
	b=imYxvPDY4yVcJePHzjcrwYyPnkYycITOak/9m9xdqMw2p9fLcg4zSvwfeuyta/K5RD
	iUPcxK4nIP/N98Ui9/SsGd7yDNqqS4wVs45hJ9+tz7i1vQu0CWKb7206+aL+B0p3MSmj
	Bf3IQre5EQ4oik2nHm6+PbSfhsl5jTKlLXIaU0V4KDsUog0IibCRPXdI81dBdWYAeO3e
	hZ2IuDN8rMGQxjLddy1YTMGKK/mFvqqGhAxtkDqkKSwux2nUQ/WelXpOTLh488rKLJtg
	uBKgjMAel9SPlTjbIbFKYWccbPH/7kF80wFCFEsdr5r1iGJ1szlvSCg22EMAQn+I/9Bj
	z22g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=rDXYa7WxFBvEiTYBUVSmWZexTp+MGG3lNDAOWnJppmY=;
	b=AhE0OvMiu1zbZh8YurH48mVvgjRsajqpC/0srPmvN0oJ+/I2kW/LUhsjzPfbZJD+q9
	27rk+TA1XpN4RP52qjVAwmIFIGLUJW0uLzXdRmRmSYAFkFjaO5wbjY48f1wgqUJGuYpv
	w75q9T6dj4DFqR0vvQzkCSwsCYwoUeokbHPK6yFFYTMXyYO0gGpuj4JNcg7zYhbZ2HMg
	k84UGFAuqxTRDglznjmpGq5FHOA5rT75YYIABCrXWunhkXWGWQLBRDHlWQ81X4DOro2k
	NB1WmfyyEF7JQwSt28o1TZG8i30DAPOvbHZW2aJ4zqlEktX9J//uiMfU18gHIvkaHQKr
	kvZw==
X-Gm-Message-State: APjAAAVlwKk2UPgfA7M5pIEBTcaRjXaEoCaWJsxpjOFDypqLstxSw3ab
	vFzj1MG2DeCZdgznTJ8OpGs=
X-Google-Smtp-Source: APXvYqyazIwqPsnsDzrdDX/6xngaYIkX8cxK0EeTmMaqo58M51XELPYULkcK5bjotQk2jNpBWoRC+g==
X-Received: by 2002:a17:902:3103:: with SMTP id
	w3mr40901924plb.84.1565745582065; 
	Tue, 13 Aug 2019 18:19:42 -0700 (PDT)
Received: from [10.20.245.11] ([45.19.219.178])
	by smtp.gmail.com with ESMTPSA id
	b24sm82341006pfd.91.2019.08.13.18.19.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Aug 2019 18:19:41 -0700 (PDT)
To: Kevin Hao <kexin.hao@windriver.com>,
	Yocto Project <yocto@yoctoproject.org>, Armin Kuster <akuster808@gmail.com>
References: <20190419052335.28270-1-kexin.hao@windriver.com>
	<20190813034834.GK12106@pek-khao-d2.corp.ad.wrs.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <77f58138-7bc8-6b0a-0315-45fb55373c8b@gmail.com>
Date: Tue, 13 Aug 2019 18:19:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813034834.GK12106@pek-khao-d2.corp.ad.wrs.com>
Subject: Re: [PATCH][thud] meta-yocto-bsp: Bump to the latest stable kernel for the BSPs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Aug 2019 01:19:43 -0000
Content-Type: multipart/alternative;
	boundary="------------2F45AA2AACCDE16614FE5ABC"
Content-Language: en-US

--------------2F45AA2AACCDE16614FE5ABC
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 8/12/19 8:48 PM, Kevin Hao wrote:
> On Fri, Apr 19, 2019 at 01:23:35PM +0800, Kevin Hao wrote:
>> In order to fix a systemtap bug [1] on arm board, we backport a kernel
>> patch from v5.0 kernel to v4.14 & v4.18 kernel, then need to bump the
>> kernel version to include this patch. Even this is only an arm specific
>> bug, we would like to bump the kernel version for the BSPs at the same
>> time. Boot test for all the boards.
>>
>> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=13273
> Hi Armin,
>
> Could you help merge this patch to thud branch?
yes. It is now on my list.

Thanks,
Armin
>
> Thanks,
> Kevin
>
>> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
>> ---
>>  .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----------
>>  .../recipes-kernel/linux/linux-yocto_4.18.bbappend   | 20 ++++++++++----------
>>  2 files changed, 20 insertions(+), 20 deletions(-)
>>
>> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
>> index 502485a94b15..426757e48c9e 100644
>> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
>> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
>> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
>>  KMACHINE_genericx86-64 ?= "common-pc-64"
>>  KMACHINE_beaglebone-yocto ?= "beaglebone"
>>  
>> -SRCREV_machine_genericx86    ?= "2c5caa7e84311f2a0097974a697ac1f59030530e"
>> -SRCREV_machine_genericx86-64 ?= "2c5caa7e84311f2a0097974a697ac1f59030530e"
>> -SRCREV_machine_edgerouter ?= "e06bfa18c727bd0e6e10cf26d9f161e4c791f52b"
>> -SRCREV_machine_beaglebone-yocto ?= "b8805de77dcf8f59d8368fee4921c146c1300a6a"
>> -SRCREV_machine_mpc8315e-rdb ?= "f88e87360b10f8fbd853a7d412982e6620f3f96d"
>> +SRCREV_machine_genericx86    ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
>> +SRCREV_machine_genericx86-64 ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
>> +SRCREV_machine_edgerouter ?= "d8fb40cd0e99325715c70aed6f361a8318097829"
>> +SRCREV_machine_beaglebone-yocto ?= "c67809688bd22cb4cb909bcf1a1045e6337c3229"
>> +SRCREV_machine_mpc8315e-rdb ?= "258ee8228e0a512c6dbe2a0dadcd9f030ba45964"
>>  
>>  COMPATIBLE_MACHINE_genericx86 = "genericx86"
>>  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
>> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
>>  COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
>>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>>  
>> -LINUX_VERSION_genericx86 = "4.14.76"
>> -LINUX_VERSION_genericx86-64 = "4.14.76"
>> -LINUX_VERSION_edgerouter = "4.14.71"
>> -LINUX_VERSION_beaglebone-yocto = "4.14.71"
>> -LINUX_VERSION_mpc8315e-rdb = "4.14.71"
>> +LINUX_VERSION_genericx86 = "4.14.98"
>> +LINUX_VERSION_genericx86-64 = "4.14.98"
>> +LINUX_VERSION_edgerouter = "4.14.98"
>> +LINUX_VERSION_beaglebone-yocto = "4.14.98"
>> +LINUX_VERSION_mpc8315e-rdb = "4.14.98"
>> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
>> index 7f15843f3a90..11b35cc1c2f8 100644
>> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
>> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
>> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
>>  KMACHINE_genericx86-64 ?= "common-pc-64"
>>  KMACHINE_beaglebone-yocto ?= "beaglebone"
>>  
>> -SRCREV_machine_genericx86    ?= "db2d813869a0501782469ecdb17e277a501c9f57"
>> -SRCREV_machine_genericx86-64 ?= "db2d813869a0501782469ecdb17e277a501c9f57"
>> -SRCREV_machine_edgerouter ?= "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
>> -SRCREV_machine_beaglebone-yocto ?= "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
>> -SRCREV_machine_mpc8315e-rdb ?= "99071a599d8650b069fb8135866fca203f375350"
>> +SRCREV_machine_genericx86    ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
>> +SRCREV_machine_genericx86-64 ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
>> +SRCREV_machine_edgerouter ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
>> +SRCREV_machine_beaglebone-yocto ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
>> +SRCREV_machine_mpc8315e-rdb ?= "0802dc980cbc8bdb156d6fe305e7b88e6b602634"
>>  
>>  COMPATIBLE_MACHINE_genericx86 = "genericx86"
>>  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
>> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
>>  COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
>>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>>  
>> -LINUX_VERSION_genericx86 = "4.18.22"
>> -LINUX_VERSION_genericx86-64 = "4.18.22"
>> -LINUX_VERSION_edgerouter = "4.18.25"
>> -LINUX_VERSION_beaglebone-yocto = "4.18.25"
>> -LINUX_VERSION_mpc8315e-rdb = "4.18.25"
>> +LINUX_VERSION_genericx86 = "4.18.35"
>> +LINUX_VERSION_genericx86-64 = "4.18.35"
>> +LINUX_VERSION_edgerouter = "4.18.35"
>> +LINUX_VERSION_beaglebone-yocto = "4.18.35"
>> +LINUX_VERSION_mpc8315e-rdb = "4.18.35"
>> -- 
>> 2.14.4
>>
>>


--------------2F45AA2AACCDE16614FE5ABC
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 8/12/19 8:48 PM, Kevin Hao wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20190813034834.GK12106@pek-khao-d2.corp.ad.wrs.com">
      <pre class="moz-quote-pre" wrap="">On Fri, Apr 19, 2019 at 01:23:35PM +0800, Kevin Hao wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">In order to fix a systemtap bug [1] on arm board, we backport a kernel
patch from v5.0 kernel to v4.14 &amp; v4.18 kernel, then need to bump the
kernel version to include this patch. Even this is only an arm specific
bug, we would like to bump the kernel version for the BSPs at the same
time. Boot test for all the boards.

[1] <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=13273">https://bugzilla.yoctoproject.org/show_bug.cgi?id=13273</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Hi Armin,

Could you help merge this patch to thud branch?</pre>
    </blockquote>
    yes. It is now on my list.<br>
    <br>
    Thanks,<br>
    Armin<br>
    <blockquote type="cite"
      cite="mid:20190813034834.GK12106@pek-khao-d2.corp.ad.wrs.com">
      <pre class="moz-quote-pre" wrap="">

Thanks,
Kevin

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Signed-off-by: Kevin Hao <a class="moz-txt-link-rfc2396E" href="mailto:kexin.hao@windriver.com">&lt;kexin.hao@windriver.com&gt;</a>
---
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----------
 .../recipes-kernel/linux/linux-yocto_4.18.bbappend   | 20 ++++++++++----------
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 502485a94b15..426757e48c9e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "2c5caa7e84311f2a0097974a697ac1f59030530e"
-SRCREV_machine_genericx86-64 ?= "2c5caa7e84311f2a0097974a697ac1f59030530e"
-SRCREV_machine_edgerouter ?= "e06bfa18c727bd0e6e10cf26d9f161e4c791f52b"
-SRCREV_machine_beaglebone-yocto ?= "b8805de77dcf8f59d8368fee4921c146c1300a6a"
-SRCREV_machine_mpc8315e-rdb ?= "f88e87360b10f8fbd853a7d412982e6620f3f96d"
+SRCREV_machine_genericx86    ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
+SRCREV_machine_genericx86-64 ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
+SRCREV_machine_edgerouter ?= "d8fb40cd0e99325715c70aed6f361a8318097829"
+SRCREV_machine_beaglebone-yocto ?= "c67809688bd22cb4cb909bcf1a1045e6337c3229"
+SRCREV_machine_mpc8315e-rdb ?= "258ee8228e0a512c6dbe2a0dadcd9f030ba45964"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.14.76"
-LINUX_VERSION_genericx86-64 = "4.14.76"
-LINUX_VERSION_edgerouter = "4.14.71"
-LINUX_VERSION_beaglebone-yocto = "4.14.71"
-LINUX_VERSION_mpc8315e-rdb = "4.14.71"
+LINUX_VERSION_genericx86 = "4.14.98"
+LINUX_VERSION_genericx86-64 = "4.14.98"
+LINUX_VERSION_edgerouter = "4.14.98"
+LINUX_VERSION_beaglebone-yocto = "4.14.98"
+LINUX_VERSION_mpc8315e-rdb = "4.14.98"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
index 7f15843f3a90..11b35cc1c2f8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "db2d813869a0501782469ecdb17e277a501c9f57"
-SRCREV_machine_genericx86-64 ?= "db2d813869a0501782469ecdb17e277a501c9f57"
-SRCREV_machine_edgerouter ?= "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
-SRCREV_machine_beaglebone-yocto ?= "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
-SRCREV_machine_mpc8315e-rdb ?= "99071a599d8650b069fb8135866fca203f375350"
+SRCREV_machine_genericx86    ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
+SRCREV_machine_genericx86-64 ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
+SRCREV_machine_edgerouter ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
+SRCREV_machine_beaglebone-yocto ?= "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
+SRCREV_machine_mpc8315e-rdb ?= "0802dc980cbc8bdb156d6fe305e7b88e6b602634"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.18.22"
-LINUX_VERSION_genericx86-64 = "4.18.22"
-LINUX_VERSION_edgerouter = "4.18.25"
-LINUX_VERSION_beaglebone-yocto = "4.18.25"
-LINUX_VERSION_mpc8315e-rdb = "4.18.25"
+LINUX_VERSION_genericx86 = "4.18.35"
+LINUX_VERSION_genericx86-64 = "4.18.35"
+LINUX_VERSION_edgerouter = "4.18.35"
+LINUX_VERSION_beaglebone-yocto = "4.18.35"
+LINUX_VERSION_mpc8315e-rdb = "4.18.35"
-- 
2.14.4

</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------2F45AA2AACCDE16614FE5ABC--
