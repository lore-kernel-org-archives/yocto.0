Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71DB3E00CE5; Sun, 31 Mar 2019 12:35:37 -0700 (PDT)
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
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52FC3E00C38
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 12:35:36 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id b3so399080plr.7
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 12:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=kEQ9nSDzXB6rsi3P9eH7QHUVfkggtYAW2O3gQ5EIi+U=;
	b=KpoZyma8fJvEVL0HY1eLdY39B7Fl4mFGcgBqcaqWDdoNLioZaJUeIe6sSK4icigrLS
	oPcEWGyYuk3ZEkOZR1FTOKZ+MEfIsKn1qkknX3D2lSfxx/897d+sTw6Rncj26Hr6p6F4
	9JULa5vTmxEg2ky3EahHk4jm/tTuYJJWgRddkM689uG6RweL8ermi2D2JxmF7lOtKviF
	y7w3d+poxcdVpOSH2+IJah724FoeFMe3hYLlEyyKZLIjNcQaRpuzRv62IVfEjODH3Yk6
	Btt3WD5thk1LXhgDyJyYbq+Lv8e05RVCHNYE12gWZkFWUlVTtalvtYSb9XuvH8t7m8fk
	OxEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=kEQ9nSDzXB6rsi3P9eH7QHUVfkggtYAW2O3gQ5EIi+U=;
	b=pUM8qkLvgoIrV5D7pRQaig2RDJ4XrciQxbAaGiT5iic26GXvXCvP/vq4guv3GQhJiq
	XFfoN7WteFhKCImJLIT4vQt5IZy3ds/bI3KXurzOVPgraB9Jj2518dr7gYwNgaTeP/y2
	zUcs8khaKuaOlXy5qFP0rrhfGdwbrfGrckG6mGrjpn/0GYGbmsFrWFy3Bh0t48+wQAHR
	UEMQWB7ostwxZqFy6X82H6RxF8em0eHdIddUE/9wTmfeeCzBNroEeJKzhqXGyHuj9iq4
	QwDmv7pQ82gruJXo0yygAvXr7naNm5U5RNIJllas3i107uHCc3l+tIZSBIDBMjUDYSk8
	hJuA==
X-Gm-Message-State: APjAAAWAQDrGK2tZ5NC1rAou3K3ZJhP3NXpdiyEUAv+flT/uXlH4dNtM
	sSLZ9er0S2924mz2VWNEEwdQLglH
X-Google-Smtp-Source: APXvYqyb1Hf1kAUwjls50U7pjFUGWfI5SrI6Ow+u+1un+oxe0Pj4X1eE4Yqo6FFsSsSHhua1cO10zg==
X-Received: by 2002:a17:902:28e6:: with SMTP id
	f93mr60739681plb.264.1554060935543; 
	Sun, 31 Mar 2019 12:35:35 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:6515:3c15:208f:c5eb?
	([2601:202:4180:c33:6515:3c15:208f:c5eb])
	by smtp.gmail.com with ESMTPSA id
	f9sm10633328pfd.10.2019.03.31.12.35.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Mar 2019 12:35:34 -0700 (PDT)
To: Adrian Bunk <bunk@stusta.de>
References: <20190331172900.28894-1-akuster808@gmail.com>
	<20190331172900.28894-3-akuster808@gmail.com>
	<20190331175941.GB8149@localhost>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <e5b33571-7740-a8d4-c542-99f7f519a4a0@gmail.com>
Date: Sun, 31 Mar 2019 12:35:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190331175941.GB8149@localhost>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 3/4] linux-yocto: make bbappend version neutral
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
X-List-Received-Date: Sun, 31 Mar 2019 19:35:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 3/31/19 10:59 AM, Adrian Bunk wrote:
> On Sun, Mar 31, 2019 at 10:28:59AM -0700, Armin Kuster wrote:
>> update apparmor configs
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  recipes-kernel/linux/linux-yocto/apparmor.cfg        | 12 +++++++-----
>>  .../linux/linux-yocto/apparmor_on_boot.cfg           |  1 +
>>  ...nux-yocto_4.%.bbappend => linux-yocto_%.bbappend} |  1 +
>>  3 files changed, 9 insertions(+), 5 deletions(-)
>>  create mode 100644 recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
>>  rename recipes-kernel/linux/{linux-yocto_4.%.bbappend => linux-yocto_%.bbappend} (78%)
>>
>> diff --git a/recipes-kernel/linux/linux-yocto/apparmor.cfg b/recipes-kernel/linux/linux-yocto/apparmor.cfg
>> index 1dc4168..b5f9bb2 100644
>> --- a/recipes-kernel/linux/linux-yocto/apparmor.cfg
>> +++ b/recipes-kernel/linux/linux-yocto/apparmor.cfg
>> @@ -1,13 +1,15 @@
>>  CONFIG_AUDIT=y
>> -CONFIG_AUDITSYSCALL=y
>> -CONFIG_AUDIT_WATCH=y
>> -CONFIG_AUDIT_TREE=y
>>  # CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
>> +CONFIG_SECURITY_NETWORK=y
>> +# CONFIG_SECURITY_NETWORK_XFRM is not set
>>  CONFIG_SECURITY_PATH=y
>>  # CONFIG_SECURITY_SELINUX is not set
>>  CONFIG_SECURITY_APPARMOR=y
>> -CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
>>  CONFIG_SECURITY_APPARMOR_HASH=y
>>  CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
>> +# CONFIG_SECURITY_APPARMOR_DEBUG is not set
>>  CONFIG_INTEGRITY_AUDIT=y
>> -# CONFIG_DEFAULT_SECURITY_APPARMOR is not set
>> +CONFIG_DEFAULT_SECURITY_APPARMOR=y
>> +# CONFIG_DEFAULT_SECURITY_DAC is not set
>> +CONFIG_DEFAULT_SECURITY="apparmor"
>> +CONFIG_AUDIT_GENERIC=y
>> diff --git a/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg b/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
>> new file mode 100644
>> index 0000000..fc35740
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
>> @@ -0,0 +1 @@
>> +CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
>> ...
> This and some of the other touched options are removed in kernel 5.1, 
> replaced with a different CONFIG_LSM mechanism.
Ah, 5.1... good point.. .

At some point I really should get these in the kernel-cache.

thanks for the review.

- armin
>
> cu
> Adrian
>


