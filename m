Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 680DAE00CC9; Thu, 23 May 2019 22:33:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0869EE00798
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 22:33:01 -0700 (PDT)
Received: by mail-pf1-f169.google.com with SMTP id a23so4607981pff.4
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 22:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=SpjVrnbaEc3wz+Z/5P4pQ9/PHz8oqN38gm/1FKO/l84=;
	b=t8ylSp8uGHCjF3cz+elWLU+I7PK6EY2ETQVysQPcV4cbtE+59M+3riptf3skTVBbT8
	q4Cg9xMOPPQGkxVklfVmzO+qaazbV0M3+E8DdxQDM+rwBqzln4k1IQX86CbZCDuNsC8/
	QZVq6BkFx/RMzfkFN7sWxkPGYdzjEgqWWznsfT3BIUraPq9DsHfFSBLaedALKQorcCnu
	Bc575su3Z7Po4A6GVxrj9T8UKH344wi755SrWy57Q+LCTc/wHRLk/x+1qsGMuCIzIAwT
	7/t2iPEkhrL7BnW2Ye3VcVGCFUsKeflkQoPRnWFWGIjlroV7Kz2yRJ+dSaEmv/1F/0ih
	02WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=SpjVrnbaEc3wz+Z/5P4pQ9/PHz8oqN38gm/1FKO/l84=;
	b=TTTErD3ROXCORRhp0iTY+Ypl2Fn1BfcKvFnO3qjP0HpMUuxCyf+6kwTGeVzZUXpJv5
	G7Ld1yPbUp+yjO8tfDtMmaljwVUDASZVI9/kI3hY70la/iyqeD8/YFuKdwGGdshTcvzu
	xPIsV4f6NyxnTXJPXg+MAKaz9Swt1j7awZgmhsotdo37/g7TGZ5MRcQ0BIOamLsil0gv
	1kLYY32J54kOevmYraDLFaxJURgxqWvZKr8Cn+QMknratTf7Xb7Ir2GVFAauEutOGTA4
	mZ0JfA9scz18tHkaTfsttAvWgKLMO64632MJqEjuwxHrrYKJ5Ct6mpvypsSFS2RbBAjS
	HhIg==
X-Gm-Message-State: APjAAAX1JuQXHaPh6UDmrJO+HQF4iV/YxK4775ktZ9CHSmY0VeTl/1RS
	HyTTxL57Y3e95GPZYp6J8HVKsIEggpk=
X-Google-Smtp-Source: APXvYqyCIwqJ7yyLhN1Q9hDAi/YjI2ANOsS2RfVBvxmpwS/C82c0m99aMwsEuqtTdT4Gj8YEHXNP5A==
X-Received: by 2002:a63:fc55:: with SMTP id
	r21mr102255588pgk.441.1558675980912; 
	Thu, 23 May 2019 22:33:00 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:313d:8ef2:9687:9b74])
	by smtp.gmail.com with ESMTPSA id
	h71sm1989738pje.11.2019.05.23.22.32.59
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 22:33:00 -0700 (PDT)
To: "Tg, Harish" <harish.tg@aptiv.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <mailman.14370.1558531613.2881.yocto@yoctoproject.org>
	<BN6P197MB004909BFF82584B53EF5DF24FB010@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<d10908a2-a6ac-5011-c629-0cf9de89cce6@gmail.com>
	<BN6P197MB00490F98551A58F58C80FAA7FB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <99738dcb-c223-6a19-0f5c-3d8fb0ee31c8@gmail.com>
Date: Thu, 23 May 2019 22:32:59 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <BN6P197MB00490F98551A58F58C80FAA7FB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
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
X-List-Received-Date: Fri, 24 May 2019 05:33:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Please keep the thread on list and avoid pm.

as I said you need

1. Write a recipe for your package
2. in do_install of the recipe you want to mention where it should be 
placed e.g.

install -D -m 0755 <your-binary> ${D}${bindir}/<your-binary>

would put it in /usr/bin on target when this package is included in image

3. Include the package in image via IMAGE_INSTALL



On 5/23/19 10:13 PM, Tg, Harish wrote:
> Hi Raj,
>              Another question I have is where do I place my custom "ubiattach" command. Also I am not sure from where does the yocto builds the rootfs /usr/bin components. Where do they copied from?
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

