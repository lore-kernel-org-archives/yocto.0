Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38949E00D54; Tue, 21 May 2019 09:44:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAFE0E009EA
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 09:44:02 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id f12so8700184plt.8
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 09:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2eNvF2AsEBy6HqGhQfYm5e0da4V50Y3To6AxNfXG1gw=;
	b=rrLA+Ytb1iaaYUgGEIvLVIWPOBvuqmShzdO8DwlSDghsUFHe7Jepgqfh3KQ2fSa6l0
	6H0caUOyXN+U3NDKOFxc+Ii11WUJdaYkTyf990/ntdUsJ6+O//XxA6O4AFAtGoiE0N0Q
	nUBFVh4zBfC8ul3I6z+qNUEkvnPqBUlkikaCPKDmQuqsr/xGytOIa1tScEWsgMR42CGE
	tTSAaUfWj+RHZAKlVi+RS9m3MQIt/s3PkTY4HidjvWYgKEcmNWGXBkibOhLSiqv3SbbP
	taSghAvF4+kW2F7iXSryvR7P9XLc4G0WyryYmxLlA7EqAuU5MQamedkHyLtlykJagKIS
	ilXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=2eNvF2AsEBy6HqGhQfYm5e0da4V50Y3To6AxNfXG1gw=;
	b=YZa9x712JyiyZQ+01WHB0f5PVwkfFIpg9IBM87crt+RSjfIEsSqaAyHBfkh2oAf65G
	fjsgNPZqpiWEoZa4Nb3b7bOrRvEjbFdIOm/LuBPqABHgUL7OlwCv2QO7hEZnOF04FYa1
	RDvJMU4lcUeRPPyJaKaRD7KhMPXKphluGs7Bmg7TDTO7bqBMKBRIJicUMMhc0P3eCyUP
	7DMwVvYq0R0ppd8sLAvaWD11Pz+LbOTv7dqoRrhkqfc/nxSsEeQL2iHslPZuHrGf70An
	AGDDaFtO3cMyOXBhIyNDsuZ8KGTF1Apxsct/MxNpwrjmfe09uwZi7WpP6fEbHnb+ANRE
	7NVg==
X-Gm-Message-State: APjAAAUqnuydnZ3hRgwvbJK3adMHB7bmvCRfDXj/6p5vdP++RVgexNCk
	/RubD7k4zAbpHGU9rlRQF70rSQQm
X-Google-Smtp-Source: APXvYqxQgJid0T4cZdkRE3r2aAO9uaSESdQvrPinmfzhOh2nWYrNhoko8tS50be+kqJYsS65GsbO7g==
X-Received: by 2002:a17:902:7617:: with SMTP id
	k23mr40483497pll.175.1558457042145; 
	Tue, 21 May 2019 09:44:02 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:199d:e2fe:5a4f:97f4?
	([2601:202:4180:c33:199d:e2fe:5a4f:97f4])
	by smtp.gmail.com with ESMTPSA id
	135sm39159779pfb.97.2019.05.21.09.44.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 May 2019 09:44:01 -0700 (PDT)
To: "Lei, Maohui" <leimaohui@cn.fujitsu.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1555646319-7243-1-git-send-email-leimaohui@cn.fujitsu.com>
	<1B56A49860EB2D45ADE3731B15C959FD01BF11D5F1@G08CNEXMBPEKD01.g08.fujitsu.local>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <29de1b7a-7413-c6e0-a05e-40b98d7a02f8@gmail.com>
Date: Tue, 21 May 2019 09:44:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FD01BF11D5F1@G08CNEXMBPEKD01.g08.fujitsu.local>
Subject: Re: [meta-security][PATCH] python3-fail2ban: Fix build error of xrange.
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
X-List-Received-Date: Tue, 21 May 2019 16:44:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 5/20/19 11:57 PM, Lei, Maohui wrote:
> ping

Merged

thanks.

>> -----Original Message-----
>> From: Lei, Maohui
>> Sent: Friday, April 19, 2019 11:59 AM
>> To: yocto@yoctoproject.org
>> Cc: Lei, Maohui
>> Subject: [yocto] [meta-security][PATCH] python3-fail2ban: Fix build error of
>> xrange.
>>
>> NameError: name 'xrange' is not defined
>>
>> Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
>> ---
>>  .../files/0001-To-fix-build-error-of-xrang.patch   | 28 ++++++++++++++++++++++
>>  .../fail2ban/python3-fail2ban_0.10.4.0.bb          |  4 ++++
>>  2 files changed, 32 insertions(+)
>>  create mode 100644 recipes-security/fail2ban/files/0001-To-fix-build-error-of-
>> xrang.patch
>>
>> diff --git a/recipes-security/fail2ban/files/0001-To-fix-build-error-of-
>> xrang.patch b/recipes-security/fail2ban/files/0001-To-fix-build-error-of-
>> xrang.patch
>> new file mode 100644
>> index 0000000..7f0812c
>> --- /dev/null
>> +++ b/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
>> @@ -0,0 +1,28 @@
>> +From fe3436d65518099d35c643848cba50253abc249c Mon Sep 17 00:00:00 2001
>> +From: Lei Maohui <leimaohui@cn.fujitsu.com>
>> +Date: Thu, 9 May 2019 14:44:51 +0900
>> +Subject: [PATCH] To fix build error of xrange.
>> +
>> +NameError: name 'xrange' is not defined
>> +
>> +Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
>> +---
>> + fail2ban/__init__.py | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/fail2ban/__init__.py b/fail2ban/__init__.py
>> +index fa6dcf7..61789a4 100644
>> +--- a/fail2ban/__init__.py
>> ++++ b/fail2ban/__init__.py
>> +@@ -82,7 +82,7 @@ strptime("2012", "%Y")
>> +
>> + # short names for pure numeric log-level ("Level 25" could be truncated by
>> short formats):
>> + def _init():
>> +-	for i in xrange(50):
>> ++	for i in range(50):
>> + 		if logging.getLevelName(i).startswith('Level'):
>> + 			logging.addLevelName(i, '#%02d-Lev.' % i)
>> + _init()
>> +--
>> +2.7.4
>> +
>> diff --git a/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb b/recipes-
>> security/fail2ban/python3-fail2ban_0.10.4.0.bb
>> index 5c887e8..23ef027 100644
>> --- a/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
>> +++ b/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
>> @@ -2,3 +2,7 @@ inherit setuptools3
>>  require python-fail2ban.inc
>>
>>  RDEPENDS_${PN}-ptest = "python3-core python3-io python3-modules python3-
>> fail2ban"
>> +
>> +SRC_URI += " \
>> +        file://0001-To-fix-build-error-of-xrang.patch \
>> +"
>> --
>> 2.7.4
>
>


