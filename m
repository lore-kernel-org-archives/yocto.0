Return-Path: <ivan.mercier@gmail.com>
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7DB4E00747
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 01:54:01 -0700 (PDT)
Received: by mail-la0-f54.google.com with SMTP id ea20so1179197lab.27
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 01:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=e0arZ+j2FXJvPdecqSEAATEeg4W2peUe0uKajQtKMlU=;
	b=IQHCmlxo6tkLU8ZnnN45eQb7LvP0Pr1RC2NEDocI7fcy4Qfk/5/Aiv+GjDlxrSPz/2
	4joaMWPo4oMFuEuWMSk/jbM4lpWdNMABT3Vmwf+VeAdhvFdiPRTsNJARneXlnVodgT3i
	h+xSsv6kJO79701nIk7eMfupJHfYS+WUBSlq/42dDwkdcXY3uMVPOnehGWev8DhmLPSJ
	2uersP/SglNLjgCwrE8OiPW9TZTiAEc/H5Q1272eGhZnBZqOcgKMAOh80fnyUYMsO638
	1whU1Xiv5Xl0g2OHR9ftSZHV5pn2ZB5PEWg1KQcMFkvHxDb8SF2K0MV9e0hp/l8k48Yb
	SOSQ==
X-Received: by 10.152.116.109 with SMTP id jv13mr1102261lab.30.1377161640376; 
	Thu, 22 Aug 2013 01:54:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.37.9 with HTTP; Thu, 22 Aug 2013 01:53:19 -0700 (PDT)
From: Mercier Ivan <ivan.mercier@gmail.com>
Date: Thu, 22 Aug 2013 10:53:19 +0200
Message-ID: <CAMc2iepgcSVA9bddm9LQOxT40QQzF7Va1EsPaPc1=ebc1i1hXA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to build a custom ramdisk image
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
X-List-Received-Date: Thu, 22 Aug 2013 08:54:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi everybody,

I'm working on an yocto distrib with a freescale p3041 based board.
I would like to modify the root file system, like hostname,udev rules
and build my own ramdisk image.
I use to create my image by
$ bitbake fsl-image-core

is it corret?

should I modidy fsl-image-core.bb?

I try to modify files in
build_p3041ds_release/tmp/work/p3041ds-fsl_networking-linux/fsl-image-core/1.0-r20/rootfs

but modifications are overwrited

can anybody help me?

thanks a lot

