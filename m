Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50C07E00C49; Wed, 13 Apr 2016 07:13:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C22EAE0077E
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 07:13:08 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id f105so44217346qge.2
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 07:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iHQJ/5NxeDUtFQbfhuwver4UaV9lD20LeGlb6CUDHRU=;
	b=rgdtR2puuHe0RkjIFB8YUX7lDpLqJw6gV0BGYzkq8JusMgVKf98xpylQvFFmiZS6Aa
	3VBrlomfe+UNproNU1m4bN84n7GmmhGM4eyO+jw/oczw1rHyS9gIqFy7Mng0abTJi71h
	dAJDle47/UJc4lCGVWosCiXWPgy3f+CaK0t2RKLVYZoWEaM/pb9ZBo70qKDaLvxwB99p
	FRRaJQO+kh1wXoEwROZepxAaT1l34V2UbZsiF/0THjR4Z3oevAqYX6GxZer3NkYcuKwv
	j7PszAr1b0JWFUT8OgEzUDbq5ft5xnZub91tr9zK0gxj3nDH9z3nkzJxHy5gDFlJ0q0r
	NtvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iHQJ/5NxeDUtFQbfhuwver4UaV9lD20LeGlb6CUDHRU=;
	b=Q//ksWr4ZTDrqvB7HmvOoXdEBivAP1wjO/V2ZS6eNzgycC66vmKEbjUTW8jKxn3c4m
	m+oWQzJZMbT5z/XrBFf7t1jRyoDLpWUCDcmT/eo5L98QY2fIs63dmYdgZItwzSdsoLNL
	bCjUxZfm9nwdxh7RN8ruJzGs+5Qyzh11HZc1qMouvqDRL0UtxczJkFjyBCqQx1zYWoZz
	RS4nGSThkINROxGdHSwpzEHfcbNU8Ii/UZzY6uDYCB/E8WCu0zcwPkfQBLY0E7Io8BWy
	YxPCEBOj0UopAkOoqM2Qj8zqsfwtY0Yp7Qj7DDnTGzRRgZxuh0gM5WwdeMREb1lHIvlR
	4A3Q==
X-Gm-Message-State: AOPr4FV2MDDaj6iwtqmP6c9zM5YN9jMswCuFkyMlHMyiwavhy2zECc1dgWfGevRpH7ZXp/JQsyGIWLD4tCR+FQ==
X-Received: by 10.140.148.134 with SMTP id 128mr12128866qhu.98.1460556787582; 
	Wed, 13 Apr 2016 07:13:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Wed, 13 Apr 2016 07:12:38 -0700 (PDT)
In-Reply-To: <CANwerB3k8hfWBRqXjDgHzptKjaMjX2TDmvFHrReJ+-PhD4NfVw@mail.gmail.com>
References: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
	<1459619952-26621-2-git-send-email-raj.khem@gmail.com>
	<CANwerB3k8hfWBRqXjDgHzptKjaMjX2TDmvFHrReJ+-PhD4NfVw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Apr 2016 07:12:38 -0700
Message-ID: <CAMKF1spNx-DPTzvg9NnJrYDoy90ce1+Y7qb50hPLv3hv02WPoQ@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] userland: Make vchostif as shared library
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
X-List-Received-Date: Wed, 13 Apr 2016 14:13:10 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 13, 2016 at 3:05 AM, Jonathan Liu <net147@gmail.com> wrote:
> Hi Khem,
>
> On 3 April 2016 at 03:59, Khem Raj <raj.khem@gmail.com> wrote:
>> This helps in using this library when building
>> with PIE binaries
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  .../0014-build-shared-library-for-vchostif.patch   | 28 ++++++++++++++++++++++
>>  recipes-graphics/userland/userland_git.bb          |  1 +
>>  2 files changed, 29 insertions(+)
>>  create mode 100644 recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
>>
>> diff --git a/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
>> new file mode 100644
>> index 0000000..ca7cb66
>> --- /dev/null
>> +++ b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
>> @@ -0,0 +1,28 @@
>> +From 4e9aa3fffb458ca4fafd2241c18e9c8008b66ad8 Mon Sep 17 00:00:00 2001
>> +From: Khem Raj <raj.khem@gmail.com>
>> +Date: Sat, 2 Apr 2016 10:37:24 -0700
>> +Subject: [PATCH] build shared library for vchostif
>> +
>> +Fixes #149
>> +
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +---
>> + interface/vmcs_host/CMakeLists.txt | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
>> +index 22949a8..f8c2f2f 100755
>> +--- a/interface/vmcs_host/CMakeLists.txt
>> ++++ b/interface/vmcs_host/CMakeLists.txt
>> +@@ -17,7 +17,7 @@ set(VCHOSTIF_SOURCE
>> + #            ${VMCS_TARGET}/vmcs_main.c
>> + #  vc_vchi_haud.c
>> +
>> +-add_library(vchostif ${VCHOSTIF_SOURCE})
>> ++add_library(vchostif SHARED ${VCHOSTIF_SOURCE})
>> +
>> + #add_library(bufman            vc_vchi_bufman.c            )
>> +
>> +--
>> +2.8.0
>> +
>> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
>> index efa2128..6ed8fcf 100644
>> --- a/recipes-graphics/userland/userland_git.bb
>> +++ b/recipes-graphics/userland/userland_git.bb
>> @@ -33,6 +33,7 @@ SRC_URI = "\
>>      file://0011-fix-cmake-dependency-race.patch \
>>      file://0012-Fix-enum-conversion-warnings.patch \
>>      file://0013-Fix-for-framerate-with-nested-composition.patch \
>> +    file://0014-build-shared-library-for-vchostif.patch \
>>      file://0015-wl-dispmanx-buffer-wrapping.patch \
>>  "
>>  S = "${WORKDIR}/git"
>> --
>> 2.8.0
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> This breaks omxplayer compilation when linking omxplayer.bin:
> [...]/sysroots/x86_64-linux/usr/libexec/arm-custom-linux-gnueabi/gcc/arm-custom-linux-gnueabi/5.3.0/ld:
> omxplayer.o: undefined reference to symbol
> 'vc_dispmanx_resource_write_data'
> [...]/sysroots/raspberrypi2/usr/lib/libvchostif.so: error adding
> symbols: DSO missing from command line

Interestingly i dont see this error. Are you using gold ?
see if this library is on linker cmdline or not

>
> Regards,
> Jonathan

