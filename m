Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8542BE00B81; Tue,  9 May 2017 14:43:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C36DE00B23
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 14:42:48 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id 67so1611658itx.2
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 14:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cXAbp/QLXRXwutu4wdfSDqsmzNc1GyNAGkTm03yqRrU=;
	b=o2UADe7bqzOxHCp2yXyiltG4yeiU7foFgJjeBh+qJ428H7VZ+THQ2mTHf4dcBfHPYB
	I8HmFHkx7k547PhMx9s4sTLA51uvmiov8LtDITd7FWcq2W9nPGuZAysfgADh4PpHES90
	Re0wLi6RKD2I/y6lCQBvsDjNm1Z1aOEffbTJJdphtMkNeNjmlT2O8wkfEg31X76rn12n
	P9keXkG1T1TssC7xQJ1qOOLXQc4B2GJrw+xIbAS5j2y2hAA1btpQzIw4vT1dTxzTpD0f
	9XLFUk3RSJ+WG7QKmYkssTBV+9gimACF/+Et4l9SjQHjbTnfMGFIsfysQrlTGpZKpe0n
	/7Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cXAbp/QLXRXwutu4wdfSDqsmzNc1GyNAGkTm03yqRrU=;
	b=UWeJ3acZsNsEMRSSNf7x9L3fC3+FnI8HvaakGE0YUClRh5w9IkIgAaq96PVXAv/5qA
	lcsRNqbUdgNEXEGdnvK5YpEQLAOS7jnxdP1RHlB3/VHajTwlct2TIo6P04Oug31SZYbg
	hXw9R+bAXzSXj+ulHMXctZpfjJqrDo1eQOfsB0tEwNVX8x7Y91SpFQbIjgfA0TtQQGuy
	YflHx68caGNsaTeYH6ipUOyEXZQ8+n+mlfTigdkgaxE7XFI69/CnptjfKE0nvl78WvIA
	TAkXsx2xprr+kxdSFL11LQDCkXQAoNtDnZSg70WnwchbtBLGQA/NmPpQ2XopOCSbTB9H
	E/+w==
X-Gm-Message-State: AODbwcAMwJnhkKmu8sFABaH3AEtwKtafl1T2oMCdKS5JjzJqVNdxrTHG
	nK+E7c3GzC0Dlmna+X8ebOs3ChunoQ==
X-Received: by 10.36.77.141 with SMTP id l135mr3508050itb.88.1494366168145;
	Tue, 09 May 2017 14:42:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.41.19 with HTTP; Tue, 9 May 2017 14:42:47 -0700 (PDT)
In-Reply-To: <20170509213335.GA28053@denix.org>
References: <1494364209-17742-1-git-send-email-marek.belisko@open-nandra.com>
	<3615c946-3e41-61bf-8f39-1eeb8c839335@gmail.com>
	<20170509213335.GA28053@denix.org>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 9 May 2017 23:42:47 +0200
Message-ID: <CAAfyv35irKVMbAgmq=b1r=DFbGmxd5c-5=iwK9j_byfos=VCmA@mail.gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
Cc: yocto <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH] recipes-support: Add recipe for libgpiod
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
X-List-Received-Date: Tue, 09 May 2017 21:43:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 9, 2017 at 11:33 PM, Denys Dmytriyenko <denis@denix.org> wrote:
> Can libsoc help here? It's in meta-oe, but this libgpiod should be there too...
t can but according description sysfs api is deprecated and libgpiod
implementing new gpio interface through char device. Sorry about to
posting to wrong ML.
>
> On Tue, May 09, 2017 at 02:24:18PM -0700, akuster808 wrote:
>> Marek,
>>
>> There is another mailing list that is geared towards the core
>> development and recipes like this that are targeted for the main
>> "meta" layer.
>>
>> You should resend this patch to: openembedded-core@lists.openembedded.org.
>>
>> regards,
>>
>> Armin
>>
>>
>> On 05/09/2017 02:10 PM, Marek Belisko wrote:
>> >libgpiod - C library and tools for interacting with the linux GPIO
>> >character device
>> >
>> >Since linux 4.8 the GPIO sysfs interface is deprecated.
>> >User space should use the character device instead.
>> >This library encapsulates the ioctl calls and data structures behind a
>> >straightforward API.
>> >
>> >Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
>> >---
>> >  meta/recipes-support/libgpiod/libgpiod_0.2.bb | 25 +++++++++++++++++++++++++
>> >  1 file changed, 25 insertions(+)
>> >  create mode 100644 meta/recipes-support/libgpiod/libgpiod_0.2.bb
>> >
>> >diff --git a/meta/recipes-support/libgpiod/libgpiod_0.2.bb b/meta/recipes-support/libgpiod/libgpiod_0.2.bb
>> >new file mode 100644
>> >index 0000000..fe2cd80
>> >--- /dev/null
>> >+++ b/meta/recipes-support/libgpiod/libgpiod_0.2.bb
>> >@@ -0,0 +1,25 @@
>> >+SUMMARY = "C library and tools for interacting with the linux GPIO character device"
>> >+HOMEPAGE = "https://github.com/brgl/libgpiod"
>> >+
>> >+LICENSE = "LGPLv2.1+"
>> >+LIC_FILES_CHKSUM = "file://COPYING;md5=2caced0b25dfefd4c601d92bd15116de"
>> >+
>> >+UPSTREAM_CHECK_URI = "https://github.com/brgl/libgpiod/releases"
>> >+
>> >+SRC_URI = "https://github.com/brgl/libgpiod/archive/v${PV}.tar.gz"
>> >+
>> >+SRC_URI[md5sum] = "e3430f35b6efa842693d659c0bfb7ad5"
>> >+SRC_URI[sha256sum] = "de1947f3cb2cc4174364af430309fe6238976658575655bdbd76c60cffa7df92"
>> >+
>> >+inherit autotools pkgconfig
>> >+
>> >+# enable tools
>> >+PACKAGECONFIG ?= "tools"
>> >+
>> >+PACKAGECONFIG[tests] = "--enable-tests,--disable-tests,kmod udev"
>> >+PACKAGECONFIG[tools] = "--enable-tools,--disable-tools,"
>> >+
>> >+PACKAGES += " ${PN}-tools"
>> >+
>> >+FILES_${PN} = "${libdir}/*"
>> >+FILES_${PN}-tools = "${bindir}/*"
>>
>> --
>> _______________________________________________
>> Openembedded-core mailing list
>> Openembedded-core@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-core

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

