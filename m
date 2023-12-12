Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09681C4332F
	for <webhook@archiver.kernel.org>; Tue, 12 Dec 2023 20:09:26 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web11.6414.1702411758024632485
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Dec 2023 12:09:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Yl5oNqf9;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: mattwood2000@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-5d747dbf81eso53641727b3.1
        for <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 12:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702411757; x=1703016557; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I1+gnmMilS9VT/OmagglLCZePT8m2WbnzwoF1Ippfaw=;
        b=Yl5oNqf9/FRa5XlvM35D5Uu//1SSwmHg1mmOqlO5zo0svggig72dtqDCxwvu/5XSUp
         1oWvN0mOk2SNb2WMdt3La82/PPDrGwduFnTRfiaLAUnpgYbwpD3OCERYmrnUWdXr1UJE
         aE0Vy+3/Xle5IbO8AlBauuQcFHzIUCKMd6TKpjD0hMrQ8JuMY8E4vcanuUtr5FpB4KZ5
         0vVLfRBVziB6isvwcNGZ5hRpirc6DDuiM2u3t9Ar//ZHbRjNZDaIWeiZcLFJHZfuvEhU
         m7rONoQ+kyW0T1A8YzsNcFGhk7yFdmth16Pfi12ZF56zxusYqEo1P0T3y6yc6Ik4Ch64
         GODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702411757; x=1703016557;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I1+gnmMilS9VT/OmagglLCZePT8m2WbnzwoF1Ippfaw=;
        b=i3uICz9kU1ABLx61oFM1Sn920VdbsAY7BD4bbqRMNo4lh0DvAmBxJ6oNbfZ6xDYEbE
         hnZdjzGhytR9dNhhU42zZWUn5hnXRfhtygtULh3yOMb6YEk8m+uR4+BVSW+AGpOOUUN1
         PYp6iQ/iXozQHNC9YgJnAx8N4jc63B+Ole27j5HjqpS2uk1m++LnoJEwd3ZIjTrjnsbh
         EWZAIKKevrf9ZPR0fZsgdHpQx/6xrsW658XqrBcVIk687FmQWKWJBK7zN0VXd2RbXTJ/
         HV8OmL3IV+MvTqesahchOZa4q4j7Fu8hFj3Vq1LqjqyPQijIwnC2yihCpC0HAT+cy4j2
         EkTg==
X-Gm-Message-State: AOJu0YwZXYbYKMdaD9HVSGDpESnCcjieDoaFgvrLmlEe55FG5gT58zVw
	PhCUq1kzSKxxDg1Af4DgPHZ1PwysJ8rAdQF0W/tY+MVLbyg=
X-Google-Smtp-Source: AGHT+IFhMRn5XXG5XheTt+zOemGHPyFzXheAUKM/oEQV3Xp8jD8zsBRf7dq88zg6qAg7ETQtPN4r3UzU/IPyHj34224=
X-Received: by 2002:a0d:dd13:0:b0:5e2:2668:6b4 with SMTP id
 g19-20020a0ddd13000000b005e2266806b4mr912620ywe.6.1702411756970; Tue, 12 Dec
 2023 12:09:16 -0800 (PST)
MIME-Version: 1.0
From: mattwood2000@gmail.com
Date: Tue, 12 Dec 2023 15:09:05 -0500
Message-ID: <CADjezmYaoTXwjHvx_g_T8zsaUg6DQPJ-WTemVeqQb1pm6fmqew@mail.gmail.com>
Subject: multiconfig with initramfs issues
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000092bc7060c55a09e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 20:09:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61867

--000000000000092bc7060c55a09e
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to get a multiconfig setup working with initramfs.  The docs
imply I can have a main image with glibc and initramfs image with musl.
The main image inherits DISTRO_FEATURES policy from local.conf and the
initramfs image inherits different DISTRO_FEATURES from the multconfig
.conf file.

I tried this with a single multiconfig file per the docs (initramfs.conf),
setting TCLIBC and choosing the init manager to be sysvinit, dev manager as
udev, DISTRO_FEATURES_BACKFILL_CONSIDERED=" system", etc.

Meanwhile, for the main image in local.conf, I set mostly the opposite with
systemd as the init manager and DISTROFEATURES_BACKFILL_CONSIDERED="
sysvinit", etc.

I have a custom initramfs image recipe that really just sets debug-tweaks
and uses PACKAGE_INSTALL to include only packagegroup-core-boot items.

When I kick off the build with bitbake mc:initramfs:initramfs-image, it
appears the DISTRO_FEATURES in local.conf seem to override those in my
initramfs.conf file.  I get a warning about musl and systemd, so something
is pulling in systemd to my initramfs build.

Now, if I make a second multiconfig for the main image and move the
DISTRO_FEATURES and init manager stuff to main.conf, I no longer see the
warning.

So why are the local.conf settings overriding the mulitconfig settings and
why does this seem to disagree with the docs?

Second issue is that according to the docs setting the INITRAMFS_IMAGE
variable "in the recipe that builds the kernel" will cause a mulitconfig
dependency to automatically build the initramfs image.

I have the following set in local.conf:
INITRAMFS_IMAGE_BUNDLE = "1"
INITRAMFS_MULTICONFIG = "initramfs"
INITRAMFS_DEPLOY_DIR_IMAGE =
"${TOPDIR}/tmp-initramfs/deploy/images/${MACHINE}"

and in my kernel .bbappend I have:
INITRAMFS_IMAGE = "initramfs-image"

But, I get an error after issuing bitbake mc:main:base-image that
do_bundle_initramfs could not find the cpio archive in tmp-initramfs/...

Looking in the tmp-initramfs deploy and work directories, the
initramfs-image is not being built at all.

Any idea why its not being pulled in as a dependency?

Does anyone have an example meta layer with multiconfig that builds an
initramfs and main image?

Thanks, Matt.

--000000000000092bc7060c55a09e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;m trying to get a =
multiconfig setup working with initramfs.=C2=A0 The docs imply I can have a=
 main image with glibc and initramfs image with musl.=C2=A0 The main image =
inherits DISTRO_FEATURES policy from local.conf and the initramfs image inh=
erits different DISTRO_FEATURES from the multconfig .conf file.</div><div><=
br></div><div>I tried this with a single multiconfig file per the docs (ini=
tramfs.conf), setting TCLIBC and choosing the init manager to be sysvinit, =
dev manager as udev, DISTRO_FEATURES_BACKFILL_CONSIDERED=3D&quot; system&qu=
ot;, etc. <br></div><div><br></div><div>Meanwhile, for the main image in lo=
cal.conf, I set mostly the opposite with systemd as the init manager and DI=
STROFEATURES_BACKFILL_CONSIDERED=3D&quot; sysvinit&quot;, etc.<br></div><di=
v><br></div><div>I have a custom initramfs image recipe that really just se=
ts debug-tweaks and uses PACKAGE_INSTALL to include only packagegroup-core-=
boot items.</div><div><br></div>When I kick off the build with bitbake mc:i=
nitramfs:initramfs-image, it appears the DISTRO_FEATURES in local.conf seem=
 to override those in my initramfs.conf file.=C2=A0 I get a warning about m=
usl and systemd, so something is pulling in systemd to my initramfs build.<=
div><br></div><div>Now, if I make a second multiconfig for the main image a=
nd move the DISTRO_FEATURES and init manager stuff to main.conf, I no longe=
r see the warning.</div><div><br></div><div>So why are the local.conf setti=
ngs overriding the mulitconfig settings and why does this seem to disagree =
with the docs?<br></div><div><br></div><div>Second issue is that according =
to the docs setting the INITRAMFS_IMAGE variable &quot;in the recipe that b=
uilds the kernel&quot; will cause a mulitconfig dependency to automatically=
 build the initramfs image.<br></div><div><br></div><div><div>I have the fo=
llowing set in local.conf:<br></div><div>INITRAMFS_IMAGE_BUNDLE =3D &quot;1=
&quot;<br>INITRAMFS_MULTICONFIG =3D &quot;initramfs&quot;<br>INITRAMFS_DEPL=
OY_DIR_IMAGE =3D &quot;${TOPDIR}/tmp-initramfs/deploy/images/${MACHINE}&quo=
t;</div><div><br></div><div>and in my kernel .bbappend I have:</div><div>IN=
ITRAMFS_IMAGE =3D &quot;initramfs-image&quot;</div><div><br></div><div>But,=
 I get an error after issuing bitbake mc:main:base-image that do_bundle_ini=
tramfs could not find the cpio archive in tmp-initramfs/...</div><div><br><=
/div><div>Looking in the tmp-initramfs deploy and work directories, the ini=
tramfs-image is not being built at all.<br></div><div><br></div><div>Any id=
ea why its not being pulled in as a dependency?</div><div><br></div><div>Do=
es anyone have an example meta layer with multiconfig that builds an initra=
mfs and main image?</div><div><br></div><div>Thanks, Matt.<br></div><div><b=
r></div><div><br></div></div></div>

--000000000000092bc7060c55a09e--

