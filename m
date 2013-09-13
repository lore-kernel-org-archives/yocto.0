Return-Path: <carlo.caione@gmail.com>
Received: from mail-vb0-f41.google.com (mail-vb0-f41.google.com
	[209.85.212.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FD3BE01565
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 08:32:14 -0700 (PDT)
Received: by mail-vb0-f41.google.com with SMTP id g17so1079536vbg.28
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 08:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=toLqem50EuSXQnhy3Vm98/8haVbgQ/d8nZ07giUJdJo=;
	b=qXiTVJdEst5qU87Pw8tobAhg7CesDNseOFOzs9+tfM79+LyDRoMiBSy1Oh1hLRq53D
	Ct4SfnZqmHUAjGkVMmK2xZhWvYotbY8gmg44h1djzDH71T4N2FeBID3aKNFEfMLANJBH
	cWORqtJ+YQnn6EyGRWPTypn8pHJ21CwEdfUeGflpsc+dtmZp9jKC5FX9FhuCrOe4JV5P
	AtvgjrWIp+7gbiPsBJPN04yn2B5eeO2haA16ByN/DBFFiLp/kDL8MFm2T1i8/Ryi8gIZ
	yXnPzS4VaF9r9olq014JqgQ2QlR5t7mYvsYA/wbzQL7MlqRw8Z6oePww5b5HfVi79evt
	kBbw==
MIME-Version: 1.0
X-Received: by 10.52.107.134 with SMTP id hc6mr10152723vdb.10.1379086334388;
	Fri, 13 Sep 2013 08:32:14 -0700 (PDT)
Received: by 10.220.220.138 with HTTP; Fri, 13 Sep 2013 08:32:14 -0700 (PDT)
Date: Fri, 13 Sep 2013 17:32:14 +0200
Message-ID: <CAOQ7t2bMdc5Wqeb0_b7M+wBCgVv6LtrEHpLfN5YS5Kgk-y=_mw@mail.gmail.com>
From: Carlo Caione <carlo.caione@gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: do_kernel_configme error with poky-tiny distro
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
X-List-Received-Date: Fri, 13 Sep 2013 15:32:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,
when I try to compile a poky-tiny distro this is what I get:

ERROR: Function failed: do_kernel_configme (see
/home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/temp/log.do_kernel_configme.13385
for further information)
ERROR: Logfile of failure stored in:
/home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/temp/log.do_kernel_configme.13385
Log data follows:
| DEBUG: Executing shell function do_kernel_configme
| [INFO] doing kernel configme
| [INFO] Configuring target/machine combo: "tiny/qemux86"
| [INFO] collecting configs in ./meta/meta-series
| mv: cannot stat
`/home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/linux-qemux86-tiny-build/.tmp.config*':
No such file or directory
| creation of pre-processed config data failed
| config of "tiny/qemux86" failed
| ERROR: Function failed: do_kernel_configme (see
/home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/temp/log.do_kernel_configme.13385
for further information)
ERROR: Task 678
(/home/carlo/work/RSR/yocto/meta/recipes-kernel/linux/linux-yocto-tiny_3.8.bb,
do_kernel_configme) failed with exit code '1'

Any hint? it seems like the config file for the BSP is missing.

Thank you,

--
Carlo Caione

