Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50C22E00C88; Mon, 17 Oct 2016 18:22:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA1A2E00C71
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:22:09 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id r16so13762905pfg.3
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=Xviq8SGqVoVa81YGLuj4fC8h5MBcDJ05g+G85Nvr2g4=;
	b=T1blP/2xpJtRGYHxetQdEUj0H1dsm2dz2n5XjW+QAGwN4Gq0dSQYIv6utuKr62eQUa
	oe3T99DAKOfSgkb81kyF4ifF5THeUan0Ov8xx1JbW/HYAlk7UlnPPfAg1f69wuF95uDm
	5auVFJA/Hqo2GljIVRnupSfzrZQATMHDog/yISv4TMgEpE8PfMzIxtjlkMZ1JDz5dsx/
	chzYhZTrYmHLXYDI6g05JCTl+1pNDwJVuUoDnE81ITdQv5FPTfNk2FqlNERhcGSOUtSI
	IBKP/b92I0hWGTG+oWPsJ2OO56G1W4JdYuYAbrQ4bICN23Wa6yLtI/qlGv/dRIpHhb5v
	nW1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=Xviq8SGqVoVa81YGLuj4fC8h5MBcDJ05g+G85Nvr2g4=;
	b=eZZ3vx3dPOMSeojuw8pwZLZe5ighKaxvbCOZJKHjceZwZkb6l8q8l/ttCgIJbP5KUP
	aSakuMO28fKRjTh4Q1UOTmJoq+yOZTtxWc77oi8E75DAveMq/0J5xKN6meeRPwGZ2W8g
	7b8JB2SoSWA5WRK8KVCemQkIaCg6hirvGhQBmVQGUyFfj0wy3w6HVHqbAgAf6Q0VHJ4s
	eQntvwC3STd++2Em1lAUBUb9Ts0ZQJkXm7m3H0FfRI3HcDCAHn/LdrhLnhsC3Itsgmhq
	WyMlVl/hzzQdPq0lUqOX6NsRZw3A+K+5T6a041mH0vJQAJrLN+i5+K1HhMd8YyETAlRH
	ijEg==
X-Gm-Message-State: AA6/9RlYOyXovZxri2T3GcrYxfx6P9Hteznyjf3gyc9WBs8w8vNoAyS+UHJGoUL6xp4Pmw==
X-Received: by 10.98.205.207 with SMTP id o198mr534105pfg.114.1476753729005;
	Mon, 17 Oct 2016 18:22:09 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:5ef:e28f:5dce:e040?
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	bu9sm13945969pab.25.2016.10.17.18.22.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Oct 2016 18:22:08 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>, Armin Kuster <akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-3-git-send-email-akuster808@gmail.com>
	<60C92BAB-696D-4AEB-82EC-10D0E1D7A788@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <ef51c9b8-8463-4905-8fd5-331eedcf19be@gmail.com>
Date: Mon, 17 Oct 2016 18:22:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <60C92BAB-696D-4AEB-82EC-10D0E1D7A788@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 03/17] libtpm: add new package
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
X-List-Received-Date: Tue, 18 Oct 2016 01:22:12 -0000
Content-Type: multipart/alternative;
	boundary="------------6DD8AB7D0134368545F03AE3"

--------------6DD8AB7D0134368545F03AE3
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 10/17/2016 05:14 PM, Khem Raj wrote:
>> On Oct 17, 2016, at 5:02 PM, Armin Kuster <akuster808@gmail.com> wrote:
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>> recipes-tpm/libtpm/libtpm_1.0.bb | 13 +++++++++++++
>> 1 file changed, 13 insertions(+)
>> create mode 100644 recipes-tpm/libtpm/libtpm_1.0.bb
>>
>> diff --git a/recipes-tpm/libtpm/libtpm_1.0.bb b/recipes-tpm/libtpm/libtpm_1.0.bb
>> new file mode 100644
>> index 0000000..61c1d7c
>> --- /dev/null
>> +++ b/recipes-tpm/libtpm/libtpm_1.0.bb
>> @@ -0,0 +1,13 @@
>> +SUMMARY = "LIBPM - Software TPM Library"
>> +LICENSE = "BSD-3-Clause"
>> +LIC_FILES_CHKSUM = "file://LICENSE;md5=97e5eea8d700d76b3ddfd35c4c96485f"
>> +SRCREV = "e5dc628043e981c9f8d7711ddfe5812c8f4e38cc"
>> +SRC_URI = "git://github.com/stefanberger/libtpms.git"
>> +
>> +S = "${WORKDIR}/git”
>
> how about PV expressed in form of SRCPV
can do.

-armin
>
>> +inherit autotools-brokensep pkgconfig
>> +
>> +PACKAGECONFIG ?= "openssl"
>> +PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
>> +
>> +BBCLASSEXTEND = "native"
>> --
>> 2.7.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


--------------6DD8AB7D0134368545F03AE3
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 10/17/2016 05:14 PM, Khem Raj wrote:<br>
    </div>
    <blockquote
      cite="mid:60C92BAB-696D-4AEB-82EC-10D0E1D7A788@gmail.com"
      type="cite">
      <pre wrap="">
</pre>
      <blockquote type="cite">
        <pre wrap="">On Oct 17, 2016, at 5:02 PM, Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a> wrote:

Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
recipes-tpm/libtpm/libtpm_1.0.bb | 13 +++++++++++++
1 file changed, 13 insertions(+)
create mode 100644 recipes-tpm/libtpm/libtpm_1.0.bb

diff --git a/recipes-tpm/libtpm/libtpm_1.0.bb b/recipes-tpm/libtpm/libtpm_1.0.bb
new file mode 100644
index 0000000..61c1d7c
--- /dev/null
+++ b/recipes-tpm/libtpm/libtpm_1.0.bb
@@ -0,0 +1,13 @@
+SUMMARY = "LIBPM - Software TPM Library"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://LICENSE;md5=97e5eea8d700d76b3ddfd35c4c96485f">"file://LICENSE;md5=97e5eea8d700d76b3ddfd35c4c96485f"</a>
+SRCREV = "e5dc628043e981c9f8d7711ddfe5812c8f4e38cc"
+SRC_URI = "git://github.com/stefanberger/libtpms.git"
+
+S = "${WORKDIR}/git”
</pre>
      </blockquote>
      <pre wrap="">

how about PV expressed in form of SRCPV</pre>
    </blockquote>
    can do.<br>
    <br>
    -armin<br>
    <blockquote
      cite="mid:60C92BAB-696D-4AEB-82EC-10D0E1D7A788@gmail.com"
      type="cite">
      <pre wrap="">

</pre>
      <blockquote type="cite">
        <pre wrap="">+inherit autotools-brokensep pkgconfig
+
+PACKAGECONFIG ?= "openssl"
+PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
+
+BBCLASSEXTEND = "native"
--
2.7.4

--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
      <pre wrap="">
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------6DD8AB7D0134368545F03AE3--
