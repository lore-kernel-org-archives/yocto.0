Return-Path: <ken.sloat@ohmlinxelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22B83E00C59; Sun,  3 Feb 2019 11:09:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0F02E00B58
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2019 11:09:56 -0800 (PST)
Received: by mail-lf1-f66.google.com with SMTP id x201so7416299lff.10
	for <yocto@yoctoproject.org>; Sun, 03 Feb 2019 11:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ohmlinx-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sixjNpOCfqrW0X15tZgMLcwfH9cfXELiAv3E0N1SHag=;
	b=bh8HPUM1cXS34IcRc7pP0sPU05IfbPo+92NGcPZqBx1mXaWAL0lKRZI2Vj1U1Bz7kT
	dRWXGI1amlJWTkK8YSaujfzFiQBe3UdAOfgi3HIc1yQUQxf5iQ61pkMyxelRXyp4B8DU
	0oQfs3bR9e3DPTmQERmUx+MvYRsN37lK2uNskKanBmBg6ihUrg1ZhnzqQX8WCpWmy/qt
	TfBbt1a4lsT0fTh7Oz/mLlBZoVmnu6O+VLxkDRSIZR9e8KwMPhmfkV/jr672UOQh3mc2
	kFdzS+jdPMX/xKR6BhYH0vJ6eJ5cSxCzNVczteGq8SA/p+CkmS8wm9PI8Lxtg9bcwR+v
	7haA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sixjNpOCfqrW0X15tZgMLcwfH9cfXELiAv3E0N1SHag=;
	b=EEOJWZmM0Ywk7QerXLpMeaUaBOpT0AcnPtdEOGVkF4uImJXXVx9XLk+tbs+/vbK/ye
	3gjPMdeZ/ndM5kzDB2YmAiYhq/Pndr2k8tB81nDtPYmCMOnHw67mC8F0mQY6V7PUZi0d
	3L0haIr+EGIc9dJYOw8FCz3X7dOtpUvf9vg3DuVr82ZexiyM9kQarkuDF8tQBtbF64j8
	Evfk1jmfkP+s/SkC2uzJMYaTRABBBv7VT+/mV+cQNdfmzbl0DUBKHIxEMpkXfZ6hjh4y
	n/CF4gE2fT8oU9UlUz1/hWc0Y7zvGaF+VWMRu21xxSSvJx+aqgQQT6IvfafOVEBozFB1
	J5PA==
X-Gm-Message-State: AJcUukdoHcWNyXPNPHLn0ScgVpZH7v05HCgh2Ek8Ezcqn4JWCg2hGtjY
	mrXNEKrLF7KiRmhXxaXLJg7H32pSGQ6GNdhan2u5Ocv1C6w=
X-Google-Smtp-Source: ALg8bN7I7Bwzqyhh1An3EyofzHVzVE5+YpjmjqZOm/stZVtetwfsBktlCct1A0ohex06sVrNn9xtTgU4FdymqWxcVUc=
X-Received: by 2002:a19:9b50:: with SMTP id d77mr36296221lfe.137.1549220995471;
	Sun, 03 Feb 2019 11:09:55 -0800 (PST)
MIME-Version: 1.0
References: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
	<4cbbfed2-f3cb-c2f2-10de-586c27b63b2c@windriver.com>
	<CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
	<c0bd97f9-1aed-7c9d-17c5-dc9059f1a11c@emagii.com>
In-Reply-To: <c0bd97f9-1aed-7c9d-17c5-dc9059f1a11c@emagii.com>
From: Ken Sloat <ken.sloat@ohmlinx.com>
Date: Sun, 3 Feb 2019 14:09:44 -0500
Message-ID: <CAPo_4QA-6rT0SuarWwF_dZ4b2m+Hvv7RdAQfoqD6qkQdEd40Uw@mail.gmail.com>
To: Ulf Samuelsson <yocto@emagii.com>
Cc: yocto@yoctoproject.org
Subject: Re: Proper Use of KERNEL_MODULE_AUTOLOAD variable
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
X-List-Received-Date: Sun, 03 Feb 2019 19:09:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, Feb 3, 2019 at 12:51 AM Ulf Samuelsson <yocto@emagii.com> wrote:
>
> Den 2019-02-03 kl. 04:16, skrev Ken Sloat:
> > On Sat, Feb 2, 2019 at 10:03 PM Bruce Ashfield
> > <bruce.ashfield@windriver.com> wrote:
> >>
> >> On 2019-02-02 9:59 p.m., Ken Sloat wrote:
> >>> Hello,
> >>>
> >>> I have an out of tree kernel module which I want autoloaded at startup
> >>> on my system. Looking at the Yocto project manual, I see that one way
> >>> I can do this is to add the module name to the KERNEL_MODULE_AUTOLOAD
> >>> variable within my custom module recipe.
> >>>
> >>> What I have found is that the module-split class is indeed generating
> >>> the "/etc/modules-load.d/mymodule.conf" file, however this file is not
> >>> actually being installed. To be more precise it is appearing in the
> >>> "package" directory (i.e.
> >>> tmp/work/**/mymodule/package/etc/modules-load.d/mymodule.conf) but not
> >>> within the "image" directory (nor in my final rootfs).
> >>>
> >>> Is there something I'm missing in the usage of KERNEL_MODULE_AUTOLOAD?
> >>> Is the intention for this variable I add extra steps to manually
> >>> install this file in my recipe? FYI I'm using Morty.
> >>
> >> Can you provide your recipe ? It would make suggestions easier. For
> >> example, my first question is: Is the module being installed to your
> >> image via IMAGE_INSTALL, or some other similar variable ?
> >>
> >> Bruce
> >>
> >>>
> >>> Thanks,
> >>> Ken Sloat
> >>>
> >>
> >
> > Hi Bruce,
> >
> > Thanks for your quick reply. Yes the module is being installed via
> > image_install. Module is installed but generated conf file is not. See
> > recipe below:
> >
> > require mymodule.inc
> >
> > inherit module kernel-module-split
> >
> > DEPENDS = "virtual/kernel"
> >
> > EXTRA_OEMAKE_append = " \
> >      KERNELDIR=${STAGING_KERNEL_DIR} \
> >      "
> >
> > MAKE_TARGETS = "module"
> >
> > MODULE_NAME = "mymodule"
> >
> > PKG_${PN} = "kernel-module-${MODULE_NAME}"
> >
> > module_do_install() {
> >      install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}
> >      install -m 0644 ${MODULE_NAME}.ko \
> >      ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}/${MODULE_NAME}.ko
> > }
> >
> > FILES_${PN} = " \
> >      /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \
> > "
> >
> > KERNEL_MODULE_AUTOLOAD += "${MODULE_NAME}"
> >
>
> One would think that the file should be added automatically,
> but this might be required, - or a workaround...
>
> FILES_${PN} = " \
>        /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \
>        ${sysconfdir}/modules-load.d/${MODULE_NAME}.conf \
> "
>
>
> --
> Best Regards
> Ulf Samuelsson
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Ulf,

Yes it seems that this indeed allows it to end up in the final image.

Not sure why it doesn't work without as I see the kernel-module-split
class seems to have statements to do this automatically:

        files = d.getVar('FILES_%s' % pkg, True)
        files = "%s /etc/modules-load.d/%s.conf
/etc/modprobe.d/%s.conf" % (files, basename, basename)
        d.setVar('FILES_%s' % pkg, files)

Maybe there's some type of name mismatch or something in my case?

Thanks,
Ken Sloat

