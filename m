Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.10377.1580222270975982965
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 06:37:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mark.asselstine@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 00SEb1l9019481
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 28 Jan 2020 06:37:12 -0800
Received: from yow-masselst-lx1.localnet (128.224.22.102) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
 14.3.468.0; Tue, 28 Jan 2020 06:36:50 -0800
From: "Mark Asselstine" <mark.asselstine@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: Mans Zigher <mans.zigher@gmail.com>,
        Yocto discussion list
	<yocto@yoctoproject.org>
Subject: Re: [yocto] [Question]:How to build kernel as externalsrc that is missing .git?
Date: Tue, 28 Jan 2020 09:36:49 -0500
Message-ID: <2775367.ckEGUpPHnh@yow-masselst-lx1>
Organization: Wind River
In-Reply-To: <CAEhQi8nVontmaBzT_Grmhv32A1tbeen7JqDYV0mCD1qzBCZZQA@mail.gmail.com>
References: <CAEhQi8nVontmaBzT_Grmhv32A1tbeen7JqDYV0mCD1qzBCZZQA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, January 28, 2020 7:37:28 A.M. EST Mans Zigher wrote:
> Hi,
> 
> We have a build where the kernel is based on
> https://source.codeaurora.org/quic/le/meta-qti-bsp/tree/recipes-kernel/linux
> -msm/linux-msm_4.14.bb?id=cbe4d954a9a37dd15e78e3dfdc823ffc6776d746
> 
> We are facing some issues with this recipe because I don't think it is
> correctly setup. For
> example they are not using the externalsrc.bbclass even though the
> source code is an external src. The location for the source code is
> just defined by
> 
> SRC_DIR = "${WORKSPACE}/kernel/msm-4.14"
> 
> The WORKSPACE is then defined in the bblayers.conf file. The problem
> is that there are a lot of source code located in the WORKSPACE
> directory so we decided to put all of that in it's own repo and check
> it out before building. Because of that we had to remove the
> individual .git directories in the repos that included the .git under
> ${WORKSPACE}/kernel/msm-4.14. Any suggestions? Is it possible to build
> the kernel as an externalsrc even when it is missing the .git? And can
> we still apply patches when having it as an externalsrc? Or should we
> just change it so we are using a local tar file?

I would be hesitant to just going along with the implied use of ${WORKSPACE} 
for the location of things such as the kernel source.

ie. this bit from the linux-msm.inc file
---
FILESPATH =+ "${WORKSPACE}:"
SRC_URI   =  "file://kernel \
---

You most likely already have a custom layer created where you have other 
customizations in the form of bbappends. If not I would set one up (use 
bitbake-layers create-layer and bitbake-layers add-layer). I would then create 
a linux-msm_%.bbappend and use this to make things more manageable by removing 
the need to host things like the kernel source in ${WORKSPACE}. ie. in the 
bbappend have 'FILESEXTRAPATHS_prepend := "${THISDIR}/files:"' and  'SRC_URI 
+= "git://your.git.server/path/to/the/kernel"'. This way you can avoid having 
to check your kernel git repo into another repo.

Note that the SRC_URI crime they have in linux-msm.inc will require you to 
provide a file name 'kernel' still, you can do this by putting an empty file 
or a file with a line like 'satisfy SRC_URI' called kernel in your layer. So 
you will end up with

<your-custom-layer>/recipes-kernel/linux-msm/linux-msm_%.bbappend
<your-custom-layer>/recipes-kernel/linux-msm/files/kernel

If you need more inspiration review the kernel dev document
https://www.yoctoproject.org/docs/1.6/kernel-dev/kernel-dev.html#working-with-your-own-sources

Overall I don't think the question here should be, how do you work with 
kernels that don't have a .git. But rather how can you better configure things 
with a bbappend in a custom layer to allow you to work better than what is 
being proposed in the meta-qti-bsp layer.

Good luck,
Mark Asselstine

> 
> Thanks
> 
> BR
> Mans Zigher




