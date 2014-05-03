Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1248E009DA; Sat,  3 May 2014 08:47:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58700E0087F
	for <yocto@yoctoproject.org>; Sat,  3 May 2014 08:47:06 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id jz11so3131073veb.35
	for <yocto@yoctoproject.org>; Sat, 03 May 2014 08:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=wjY5+b19kKAZPk9u1iI/uYI+cLsqAxXYowbLhHbZ9Sg=;
	b=ABagL5DhwOLIcY5wuDAIvovDjr8tt/pGlNfPE1PvxTX0073misTJfy8XsLM/6QEAdO
	y266Si4Aq4gGoiJDD6bS8nMlWjTcZc6u/j8ONbJSDVwRpOTv0wMY4kkJljAvQHiBOJkS
	rbXQSZQx4C0W23qZi/RLUNw8WpCAceSsN9CvPudVGtK/Md4n8Bi3RhYv4BeVIoP/H8PR
	XbbInTtytOI2C4iE11dPZEomQhX0yJ9GJQ0PRlgURDqncWIP7nT1lCOcOO0iCXVuhZe5
	9PUZ93JfPy8pwn7+bv22AtWJftzNAN39cxBygZf8R89Eat8kDCLeK7DebC+pgqqwxTlN
	26jQ==
MIME-Version: 1.0
X-Received: by 10.58.154.10 with SMTP id vk10mr18753844veb.18.1399132025599;
	Sat, 03 May 2014 08:47:05 -0700 (PDT)
Received: by 10.220.0.67 with HTTP; Sat, 3 May 2014 08:47:05 -0700 (PDT)
In-Reply-To: <5320A287.80608@arm.com>
References: <5320A287.80608@arm.com>
Date: Sat, 3 May 2014 17:47:05 +0200
Message-ID: <CAC+thW00bUD_Sv6_DjYj+0DHobY4fBHH4DvjYxdNW+HTdog51A@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Jonathan Austin <jonathan.austin@arm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ADT: understanding YOCTOADT_TARGET_MACHINE_arch
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
X-List-Received-Date: Sat, 03 May 2014 15:47:15 -0000
Content-Type: text/plain; charset=UTF-8

Hi Jonathan,

On Wed, Mar 12, 2014 at 7:08 PM, Jonathan Austin
<jonathan.austin@arm.com> wrote:
> Hi list,
>
> I've been looking at the ADT, and specifically building a custom SDK/ADT for
> a particular board...
>
> This is an ARM board, so I thought I'd set:
> YOCTOADT_TARGET_MACHINE_arm="myboard"
>
> Sadly, that doesn't work. I'm trying to understand why.
>
> Despite changing YOCTOADT_REPO in my adt_installer.conf, the adt_installer
> fails to find the cross canadian package group for my board...
>
> Unknown package 'packagegroup-cross-canadian-myboard
>
> Looking at the log, I see that the installer is still looking on the yocto
> servers for (nativesdk) files. I can see that the nativesdk locations are
> hard-coded in opkg/conf/opkg-sdk-i686.conf - so I guess it isn't surprising
> that it can't find the right board, the Yocto servers know nothing of
> myboard at this stage!

Noticed your unanswered questions only today, while looking for
ADT-related threads on the list: hope this can still be helpful...
Urls in the opkg config files you mention depend upon the value of the
variable ADTREPO in
meta/recipes-devtools/installer/adt-installer_1.0.bb.
Try setting ADTREPO accordingly to your local repo (i.e. in you
local.conf) and bitbake adt-installer again.

Otherwise, adt-installer's recipe sets default to:

ADTREPO ?= "http://adtrepo.yoctoproject.org/${SDK_VERSION}"

>
> Seeing those hardcoded paths made me wonder if I was using the
> YOCTOADT_TARGET_MACHINE_arm variable wrong...
>
> Would it be 'right' to specify just 'arm' here? This is an imx6 board, and
> TARGET_SYS = "arm-poky-linux-gnueabi". By my understanding, this will affect
> which toolchain I get, among other things. I'd defintiely like a machine
> specific sysroot, for example[1]
>
> So - what's the meaning/point of this TARGET_MACHINE_arch option? I see that
> there exists:
> packagegroup-cross-canadian-imx53qsb_1.0-r0_all.ipk
>
>  - so clearly someone's felt the need to use something other than just 'arm'
> here in the past!
>
> Has anyone else done an ADT for a custom board that uses the ADT
> infrastructure?
>
> Do you create a detailed overlay to the adt-installer recipe and change
> config, etc?
>
> It feels a little like I'm missing a step when generating the ADT that tells
> it more important details about what I'm creating - if so, sorry for the
> questions, but please could you point me there?

BTW, did you manage to support developers by providing a custom
adt-insteller for your machine?
I'm also investigating a productive workflow for supporting
application developers with evolving SDKs... Would be nice to share
findings and solutions on the topic.

Regards!

>
> Thanks
>
> Jonny
>
> [1] I think that my images currently have to be called 'core-image-xxx' to
> work with existing ADT scripts, unless I'm missing some config somewhere,
> but that's a different issue that I'll dig into shortly
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

