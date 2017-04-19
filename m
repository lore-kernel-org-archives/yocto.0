Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E993FE00A9B; Wed, 19 Apr 2017 03:42:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B68ABE00A38
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 03:42:06 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id z67so1893639itb.0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 03:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=odNaXgW3ECPvoqVSODhUljjIJXOP7UnH27XkmYrZEWg=;
	b=aiL3yj1fTdMedsgzg/+Khzi3Bh43G0IOvVgoVsc/09gR/frOXselvT6I54B4x4eRqI
	HwjsJhFccevNvxT29mp3gRH804daijx3lSVau+8QZhHmcBFXDS9CZFNpjWg+MyCHlsQk
	cnkK697Mulx2VQJ/p/s1csDVrzbFTa6ZemDRohxOcNylj79q1JFlKi7kVYfJEh3IaFSN
	vjovjxm/Ssx0UmiXn/FqzThwKjwxVnuPjNuJy9AjqLOc78TqpaY4ofr6DPsU8Qg2dumU
	1ST2L0VCG3xarIhS1KYuBFXQgOFWK434p52ewOox3rLJUvToW/55cwuRfGBsodfn4KmE
	uxww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=odNaXgW3ECPvoqVSODhUljjIJXOP7UnH27XkmYrZEWg=;
	b=Fc+cRSHQAGtV7YIk6ZoTh0rTqiS9W//4PfSgrPjjxUn5zjg3yx2DqvYT1lh1fctjdg
	3P4K0p+h96wUoMR1o2tWYgFYO5DK1XwEqfULaXC4lSMr7eCWUlAaULIm6Kqch7tvWGB7
	JpgU773aBmdjl0d6ldsvkk0h8xh4T2Nq98USdbregKtSBtvFRFxEjWe8UgjvnYoF+bS3
	se9gXGatjGLVh7DV51BL1a1lj8qdJz0W5X0XOmvNd/xqpPQSqfYHQP3+dE3Xevzm8NX3
	wBJ0n2zkV39FiGYp9h705U9yBVvAqxoMh5NudSOrBKJa6wp47572xv+ukOAPBT20Kqf7
	KjLA==
X-Gm-Message-State: AN3rC/43urI7mbCFmXbwdbr4JM6VEI3ZWAZ1pwNM/1WLPBr5ScBDi3Vo
	ghC7hRgmycSJHXos/c5XQckmAjLEgw==
X-Received: by 10.36.87.15 with SMTP id u15mr2259678ita.58.1492598526094; Wed,
	19 Apr 2017 03:42:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Wed, 19 Apr 2017 03:41:25 -0700 (PDT)
X-Originating-IP: [86.158.8.191]
In-Reply-To: <CAMKF1sq1UcUOny3pj+USAf8TUWoccV_zHz+EF2Tu99tdbLm+yQ@mail.gmail.com>
References: <20170418181322.14588-1-andrei@gherzan.ro>
	<CAMKF1sq1UcUOny3pj+USAf8TUWoccV_zHz+EF2Tu99tdbLm+yQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 19 Apr 2017 11:41:25 +0100
Message-ID: <CAK18fxFkstfxS4RQMRQGLbTOMrifePF0sR6jYwCznaPFv+frNw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/3] udev: Create rules file to generate serial0/1
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
X-List-Received-Date: Wed, 19 Apr 2017 10:42:12 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 18, 2017 at 7:55 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Tue, Apr 18, 2017 at 11:13 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>> ---
>>  recipes-core/udev/udev-rules-rpi.bb           | 12 ++++++++++++
>>  recipes-core/udev/udev-rules-rpi/99-com.rules | 21
>
> perhaps a bbappend to udev-extraconf recipe is better ?
>
> +++++++++++++++++++++
>>  2 files changed, 33 insertions(+)
>>  create mode 100644 recipes-core/udev/udev-rules-rpi.bb
>>  create mode 100644 recipes-core/udev/udev-rules-rpi/99-com.rules
>>
>> diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/udev-rules-rpi.bb
>> new file mode 100644
>> index 0000000..20443d3
>> --- /dev/null
>> +++ b/recipes-core/udev/udev-rules-rpi.bb
>> @@ -0,0 +1,12 @@
>> +DESCRIPTION = "udev rules for Raspberry Pi Boards"
>> +LICENSE = "MIT"
>> +LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>> +
>> +SRC_URI = " file://99-com.rules"
>> +
>> +S = "${WORKDIR}"
>> +
>> +do_install () {
>> +    install -d ${D}${sysconfdir}/udev/rules.d
>> +    install -m 0644 ${WORKDIR}/99-com.rules ${D}${sysconfdir}/udev/rules.d/
>> +}
>> diff --git a/recipes-core/udev/udev-rules-rpi/99-com.rules b/recipes-core/udev/udev-rules-rpi/99-com.rules
>> new file mode 100644
>> index 0000000..6bf019b
>> --- /dev/null
>> +++ b/recipes-core/udev/udev-rules-rpi/99-com.rules
>> @@ -0,0 +1,21 @@
>> +KERNEL=="ttyAMA[01]", PROGRAM="/bin/sh -c '\
>> +       ALIASES=/proc/device-tree/aliases; \
>> +       if cmp -s $ALIASES/uart0 $ALIASES/serial0; then \
>> +               echo 0;\
>> +       elif cmp -s $ALIASES/uart0 $ALIASES/serial1; then \
>> +               echo 1; \
>> +       else \
>> +               exit 1; \
>> +       fi\
>> +'", SYMLINK+="serial%c"
>> +
>> +KERNEL=="ttyS0", PROGRAM="/bin/sh -c '\
>> +       ALIASES=/proc/device-tree/aliases; \
>> +       if cmp -s $ALIASES/uart1 $ALIASES/serial0; then \
>> +               echo 0; \
>> +       elif cmp -s $ALIASES/uart1 $ALIASES/serial1; then \
>> +               echo 1; \
>> +       else \
>> +               exit 1; \
>> +       fi \
>> +'", SYMLINK+="serial%c"
>> --
>> 2.12.2
>>

I was thinking about that but extraconf brings additional
functionality (ex automount) that might not be of interest. I
personally don't want that. What do you think?

--
Andrei Gherzan

