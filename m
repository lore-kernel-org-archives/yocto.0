Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E18F4E00AE6; Sat, 27 Jul 2019 09:33:04 -0700 (PDT)
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
	*      [209.85.160.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7587E0049C
	for <yocto@yoctoproject.org>; Sat, 27 Jul 2019 09:33:03 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id z4so55749109qtc.3
	for <yocto@yoctoproject.org>; Sat, 27 Jul 2019 09:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=R/alpEGtyzIv/iQHTT/+lfkXVnS7EOazGxhqCiuJ/ro=;
	b=ntDZOQCLnOoqXC6agqrX2w4YXuPsYF4vdHFSBcu5kH2i5qWDRyvRxt32QZvGvWAogt
	DycGMVdeDG+/N5MNpb/v7jMdI27vG0/DmAvri9xrtd/4g6bNMXrFfr3A4pvSOfwQpP8W
	Jm1Z4QLpDPfWgjuQk1Da7NFrCf0SfLWaMkUiM+xMgCYm6Eq6y6ODKTGCCR6FeZMEbDuE
	+rKQCDYwV7hpbTzkL7tOg74LoMX4WJy9fSmN1+mq7ZK/73UW/hL0zLNTreleuR1uFipy
	YxJYpYXsE6WRokKjahw0aE3bfSq0eV8C3n49mMKir/sG36ch8RktGbSI/fI3pdtQEqCT
	mz0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=R/alpEGtyzIv/iQHTT/+lfkXVnS7EOazGxhqCiuJ/ro=;
	b=PYh8pOzRlwBNfNWP89ZDZ1olQNRA1Kq3greG9zECbBvvi25ngkEoCOGU9ZtIlBs8v3
	hZSVKCuIx/Bjsx0bHReZ96lkrT2SLdo/2OHblL1aycmq85UTVV05d/INyLqE9mxqBpXN
	dFKj3S5vQDN6Rebc4KL51LvXAQ0HMRDfWIV2CyPmOQUEK1eEH6vIc9KQqrBMGc5W5jpA
	bf/9F7VhWjDVuH1SjvK3dZVKsEEMEzNIF7k6q/f7fCAEeB1Z/yKY6lWoTaBhi+hJSUWt
	g3HG8Qhx51PvWLqE2juI0B2U2B4+G2D40NXEb6Uh7p7viJTuc4OBgYNMfANg0Z9RCusm
	EeOA==
X-Gm-Message-State: APjAAAV35sVo41b0weJDScTjRQEafIr89u+PMBpoYizHj0r8blvHpKm6
	oq8QyOwfnHldARywtyRDGxfhu3LAx1MQd06BhhCfxokB
X-Google-Smtp-Source: APXvYqxRjCQ1b7uVUAUywDbVm4Utga1BXNQJ0tWN+h/JMvRar1onDAgaEdnpLFUVOFTVcR21khtX4aX+o9l1tgkzCWg=
X-Received: by 2002:ac8:525a:: with SMTP id y26mr70812279qtn.378.1564245182639;
	Sat, 27 Jul 2019 09:33:02 -0700 (PDT)
MIME-Version: 1.0
References: <em6add36a5-a095-434a-8cb6-09f00973e98b@andys-imac.local>
In-Reply-To: <em6add36a5-a095-434a-8cb6-09f00973e98b@andys-imac.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 27 Jul 2019 09:32:36 -0700
Message-ID: <CAMKF1spg0j7VaRq_j=CywWMEg4=82QhEanqFMktT5xppSKGE_A@mail.gmail.com>
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Shared area conflict
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
X-List-Received-Date: Sat, 27 Jul 2019 16:33:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 26, 2019 at 3:48 AM Andy Pont <andy.pont@sdcsystems.com> wrote:
>
> Hello,
>
> When I try to bitbake core-image-minimal it is giving up with the followi=
ng error:
>
> ERROR: mesa-gl-2_18.1.9-r0 do_packagedata: The recipe mesa-gl is trying t=
o install files into a shared area when those files already exist. Those fi=
les and their manifest location are:
>   /home/me/Yocto/BeagleBoneBlack/tmp/pkgdata/beaglebone/runtime/libgbm
>     (matched in manifest-beaglebone-libgbm.packagedata)
>   /home/me/Yocto/BeagleBoneBlack/tmp/pkgdata/beaglebone/runtime/libgbm-de=
v
>     (matched in manifest-beaglebone-libgbm.packagedata)
> Please verify which recipe should provide the above files.
>
> I=E2=80=99ve tried one of the suggestions that it gives in the rather ver=
bose message that follows and nuked the =E2=80=9Ctmp=E2=80=9D directory and=
 rebuilt but with no further success.  My local.conf contains:
>
> PREFERRED_PROVIDER_libgbm =3D =E2=80=9Clibgbm=E2=80=9D
> PREFERRED_PROVIDER_libgbm-dev =3D "libgbm-dev=E2=80=9D
>
> How do I get it to stop complaining?
>

there are two recipes building/installing same files. You have to
avoid conflicts via either removing them from one recipe or not
installing
them

> -Andy.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

