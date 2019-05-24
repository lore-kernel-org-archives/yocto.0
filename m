Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22335E00931; Thu, 23 May 2019 22:29:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D439DE00931
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 22:29:55 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id gn7so3668989plb.10
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 22:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=kCMDkR86xgJVfd7mMas48F74JONCuJQzeJHQuBr2cD8=;
	b=mNZU64n5enMFSqvAhgySPif2GBQbHW626lcyygm1VRg1CvHgWkleKdpwpg/Y+eeEu8
	6GcXykM7DLTJ73op3b3m41/cQqNSsYVCnVJX7xQzMQg3oKVAu7gAHF6eVw+gAzzaG9oT
	WayJH6lOELRkxiC1FiZDp5iQ/6YlTDpTlUECnHcDJGFlX/qZhn6fDPJxRKgZ3flJpNPR
	J2CzeBXyhFsqezy2PzJfi8O+834aHsTwTJLpFrvH4rWLxbOnpTBnSy1EdK56JGm+gYhw
	4moi0JNuE9Pi9wn7UR3fZ5Z8HfOzOEF8YEH9R5HQJPBGlbXGLm5K1KkjFLSTW2kI6KUt
	M14Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=kCMDkR86xgJVfd7mMas48F74JONCuJQzeJHQuBr2cD8=;
	b=dmyqPmmMfcj3wIflifov/BrXDKERVU2Fmi+LY8kVVjkh7W3AnmDtfH0WjW9NjmgS59
	37cj7rDijaaUMI+EABcC8Ozm93rA2ejTP4ertTevcc8FdAHzThc/2AONwJPgoGi9zxcT
	01DPtbULQN8x0Nqz87SRrDtRxNmPzrWcdU3b/pfsmYjgwpo08pThauReZsNf1UN5JH1J
	60BkRvU7+mJ19+xVY1L/d4Zi1Bitn5Iw8PGGtDrM5x2czbtDqsZUH7jJ/KJXHXxnLXzX
	gCCDShV3AisQPVI5Pf+M+LFz4JfQlzDMRP2yczsinfXASnni0DErGflroplri2P+M7AB
	UXlA==
X-Gm-Message-State: APjAAAVK9LyxcBD+QlvbqsFDzvdFykzBgFaE/3pQr3pnO1QqRh9Aa7jD
	VZ/n50TYDvveL5MvZ2DKalpJWvRbh84=
X-Google-Smtp-Source: APXvYqyPbwORrcgKZJ+puR3NVvqf6FPChsSbO+pX/sU0PfMnPtz/vB0LSCNv35X7VEEc4wk6qNq3Qw==
X-Received: by 2002:a17:902:ca4:: with SMTP id
	33mr66221482plt.107.1558675794526; 
	Thu, 23 May 2019 22:29:54 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:313d:8ef2:9687:9b74])
	by smtp.gmail.com with ESMTPSA id t5sm949432pgn.80.2019.05.23.22.29.53
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 22:29:53 -0700 (PDT)
To: "Tg, Harish" <harish.tg@aptiv.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <mailman.14370.1558531613.2881.yocto@yoctoproject.org>
	<BN6P197MB004909BFF82584B53EF5DF24FB010@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<d10908a2-a6ac-5011-c629-0cf9de89cce6@gmail.com>
	<BN6P197MB0049095C269F2F4C0388960DFB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <889665c9-53a0-e40a-9605-dd1f837040bf@gmail.com>
Date: Thu, 23 May 2019 22:29:52 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <BN6P197MB0049095C269F2F4C0388960DFB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
Subject: Re: EXT SENDER - yocto Digest, Vol 104, Issue 95
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
X-List-Received-Date: Fri, 24 May 2019 05:29:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

That could be done by writing a recipe to build and/or package your 
version. So look how to write a new recipe, if its prebuilt you just 
might be able to package it using do_install() step in your recipe

and then add that package to IMAGE_INSTALL

see 
https://wiki.yoctoproject.org/wiki/Building_your_own_recipes_from_first_principles

especially section  "Build an example package based on a remote source 
archive"


On 5/23/19 9:58 PM, Tg, Harish wrote:
> Hi Raj,
>               My ubiattach is separate one which works for our project. Its not part of ubifs package. I need to place that in /usr/bin rootfs image. Also I couldn’t find the place where I need to copy this ubiattach command. You can take this as custom ubiattach command. I could locate local.conf but there is no IMAGE_INSTALL_append in it. I do not have clear idea. Please clarify.
> 
> Thanks,
> Harish.
> 
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Friday, May 24, 2019 7:07 AM
> To: Tg, Harish <harish.tg@aptiv.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] EXT SENDER - yocto Digest, Vol 104, Issue 95
> 
> 
> 
> On 5/23/19 5:59 AM, Tg, Harish wrote:
>> Hi,
>>        I have a question. How to add commands like "ubiattach" to /usr/bin of rootfs image. I struggling with the recipes. I do not want to write my own recipe but I need to edit some recipe and add the command. Which is the place? I am using yocto for my project on TI platform and Linux.
>> Kindly help.
>>
> 
> There is oe-pkgdata-util which can help to map files to recipes but we do not have a database for mapping. Maybe it is a good thing to have
> 
> for your problem ubiattach is provided by mtd-utils-ubifs which is built from mtd-utils recipe. I found it via above tool
> 
> % oe-pkgdata-util find-path /usr/sbin/ubiattach.mtd-utils
> mtd-utils-ubifs: /usr/sbin/ubiattach.mtd-utils
> 
> % oe-pkgdata-util lookup-recipe mtd-utils-ubifs mtd-utils
> 
> So you need to add
> 
> IMAGE_INSTALL_append = " mtd-utils-ubifs" in your image recipe or local.conf
>>
>> Thanks,
>> Harish.
>>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org
>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of
>> yocto-request@yoctoproject.org
>> Sent: Wednesday, May 22, 2019 6:57 PM
>> To: yocto@yoctoproject.org
>> Subject: EXT SENDER - yocto Digest, Vol 104, Issue 95
>>
>> Send yocto mailing list submissions to
>> 	yocto@yoctoproject.org
>>
>> To subscribe or unsubscribe via the World Wide Web, visit
>> 	
>> https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoprojec
>> t.org_listinfo_yocto&d=DwICAg&c=QM_z7khAIdagwHt-12JlKA&r=4dfUpqj68eYAf
>> VJs5uk2XkolcOQysOP5VncSFx6bkao&m=swLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YY
>> Lg3h40&s=a4sSVLnzzAP3ZRYs01WvSaiSc9QQmfaT7zdBRe0HcwM&e=
>> or, via email, send a message with subject or body 'help' to
>> 	yocto-request@yoctoproject.org
>>
>> You can reach the person managing the list at
>> 	yocto-owner@yoctoproject.org
>>
>> When replying, please edit your Subject line so it is more specific than "Re: Contents of yocto digest..."
>>
>>
>> Today's Topics:
>>
>>      1. GPLv3 package present in rootfs (virendra kumar thakur)
>>      2. Building single package as image, respecting dependencies
>>         (Norman Stetter)
>>
>>
>> ----------------------------------------------------------------------
>>
>> Message: 1
>> Date: Wed, 22 May 2019 18:55:45 +0530
>> From: virendra kumar thakur <coolveer07@gmail.com>
>> To: yocto@yoctoproject.org
>> Subject: [yocto] GPLv3 package present in rootfs
>> Message-ID:
>> 	<CANGFfGamnoJ-YB=m7cvN4XBWieY8V53s+pRfg00e1-AwwqztBg@mail.gmail.com>
>> Content-Type: text/plain; charset="utf-8"
>>
>> Hello team,
>>
>> I want to remove some GPLv3 package from rootfs, but it is still present.
>>
>> I am using INCOMPATIBLE_LICENSE = "GPL-3.0 LGPL-3.0 AGPL-3. 0"
>>
>> still some package gnutls, libidn2, libassuan, are added into rootfs.
>> -------------- next part -------------- An HTML attachment was
>> scrubbed...
>> URL:
>> <https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.yoctoprojec
>> t.org_pipermail_yocto_attachments_20190522_fb9ebe67_attachment-2D0001.
>> html&d=DwICAg&c=QM_z7khAIdagwHt-12JlKA&r=4dfUpqj68eYAfVJs5uk2XkolcOQys
>> OP5VncSFx6bkao&m=swLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YYLg3h40&s=BBPanVh
>> jmdOQaYXZFeb4RWi9MdRpGYBFLmqihDeSAds&e=>
>>
>> ------------------------------
>>
>> Message: 2
>> Date: Wed, 22 May 2019 12:36:18 +0000
>> From: Norman Stetter <Norman.Stetter@garz-fricke.com>
>> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
>> Subject: [yocto] Building single package as image, respecting
>> 	dependencies
>> Message-ID:
>> 	<A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1@SRV24.hamburg.garz-fricke.de>
>> Content-Type: text/plain; charset="iso-8859-1"
>>
>> Hi there,
>>
>> I am currently working on a minimal CLI only system.
>> The image is based on 'core-image-base' using sysvinit and busybox.
>> To reduce image size and boot time, I removed as many packages as possible. For some application cases I will need python3 though.
>> My idea was to have python3 as some kind of add-on in a squashfs image, that can be mounted only when needed.
>>
>> So I tried to build an image only containing the python3 package, but as little as possible otherwise, like this:
>>
>> inherit image
>> IMAGE_FSTYPES = "squashfs-xz"
>> DEFAULT_TASK_PROVIDER = ""
>> DISTRO_EXTRA_RDEPENDS = ""
>> DISTRO_FEATURES = ""
>> POKY_DEFAULT_EXTRA_RDEPENDS = ""
>> IMAGE_FEATURES = ""
>> IMAGE_LINGUAS = ""
>> CORE_IMAGE_BASE_INSTALL = ""
>> RDEPENDS_${PN} = ""
>> PACKAGE_EXCLUDE = "busybox openssl run-postinsts update-rc.d"
>> VIRTUAL-RUNTIME_dev_manager = ""
>> VIRTUAL-RUNTIME_login_manager = ""
>> VIRTUAL-RUNTIME_init_manager = ""
>> VIRTUAL-RUNTIME_initscripts = ""
>> VIRTUAL-RUNTIME_keymaps = ""
>> VIRTUAL-RUNTIME_base-utils = ""
>> PREFERRED_PROVIDER_virtual/base-utils = ""
>>
>> IMAGE_INSTALL = "python3"
>>
>> But like this I can only manually exclude packages I already have in my main OS image. Some packages can't be excluded at all, as python3 depends on them and won't build if they are excluded.
>>
>> Is there a way to have dependencies between images? So I could have the python-image build know which dependencies are already built into my OS image and therefore not include them itself?
>>
>> Or would it be better to avoid building a second image and rather build 'python3' with my OS-image, adding it to PACKAGE_EXCLUDE and from within this build process pack all python3 files into an image? If I were to pursue this method, any suggestions on how to separate the python3 files from the rest of my rootfs, including the necessary dependencies?
>>
>> Any advice and idea is much appreciated.
>>
>> Mit freundlichen Gr??en / Best regards Norman Stetter SW ENWICKLUNG
>> EMBEDDED SYSTEMS Garz & Fricke GmbH
>>
>> 21079 Hamburg
>> Direct: +49 40 791899 - 477
>> Fax: +49 40 791899 - 39
>> Norman.Stetter@garz-fricke.com
>> https://urldefense.proofpoint.com/v2/url?u=http-3A__www.garz-2Dfricke.
>> com&d=DwICAg&c=QM_z7khAIdagwHt-12JlKA&r=4dfUpqj68eYAfVJs5uk2XkolcOQysO
>> P5VncSFx6bkao&m=swLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YYLg3h40&s=fl8zX_T7
>> 4tP17S2Md1xvMmXVmWrPLjwZO929euOi-f4&e=<https://urldefense.proofpoint.c
>> om/v2/url?u=http-3A__www.garz-2Dfricke.com_&d=DwICAg&c=QM_z7khAIdagwHt
>> -12JlKA&r=4dfUpqj68eYAfVJs5uk2XkolcOQysOP5VncSFx6bkao&m=swLBJyRzgqx-Ix
>> 1dnv04ZhN6a_WVQSmQSW5YYLg3h40&s=jJytG_UXo6f8Dg1w9Rx7ZBrPvaIZd6dT0SEaTM
>> hqRpw&e=>
>> WE MAKE IT YOURS!
>> [cid:image001.jpg@01D510A9.7F9CD640]
>> Sitz der Gesellschaft: D-21079 Hamburg
>> Registergericht: Amtsgericht Hamburg, HRB 60514
>> Gesch?ftsf?hrer: Matthias Fricke, Manfred Garz, Marc-Michael Braun
>>
>> -------------- next part -------------- An HTML attachment was
>> scrubbed...
>> URL:
>> <https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.yoctoprojec
>> t.org_pipermail_yocto_attachments_20190522_063fd326_attachment.html&d=
>> DwICAg&c=QM_z7khAIdagwHt-12JlKA&r=4dfUpqj68eYAfVJs5uk2XkolcOQysOP5VncS
>> Fx6bkao&m=swLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YYLg3h40&s=nJpIij2wJ-ToI1
>> 3ns1riHcQrZ9SCYkkyh-eRg-FKydE&e=>
>> -------------- next part -------------- A non-text attachment was
>> scrubbed...
>> Name: image001.jpg
>> Type: image/jpeg
>> Size: 14804 bytes
>> Desc: image001.jpg
>> URL:
>> <https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.yoctoprojec
>> t.org_pipermail_yocto_attachments_20190522_063fd326_attachment.jpg&d=D
>> wICAg&c=QM_z7khAIdagwHt-12JlKA&r=4dfUpqj68eYAfVJs5uk2XkolcOQysOP5VncSF
>> x6bkao&m=swLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YYLg3h40&s=uyxqA24JcBr0zBh
>> HwTfA8XtqX5ObrRkNMFNlD3Htpos&e=>
>>
>> ------------------------------
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoprojec
>> t.org_listinfo_yocto&d=DwICAg&c=QM_z7khAIdagwHt-12JlKA&r=4dfUpqj68eYAf
>> VJs5uk2XkolcOQysOP5VncSFx6bkao&m=swLBJyRzgqx-Ix1dnv04ZhN6a_WVQSmQSW5YY
>> Lg3h40&s=a4sSVLnzzAP3ZRYs01WvSaiSc9QQmfaT7zdBRe0HcwM&e=
>>
>>
>> End of yocto Digest, Vol 104, Issue 95
>> **************************************
>>

