Return-Path: <jonathan.austin@arm.com>
Received: from service87.mimecast.com (service87.mimecast.com [91.220.42.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4F17E00ABB
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 11:08:21 -0700 (PDT)
Received: from cam-owa2.Emea.Arm.com (fw-tnat.cambridge.arm.com
	[217.140.96.21]) by service87.mimecast.com;
	Wed, 12 Mar 2014 18:08:17 +0000
Received: from [10.2.202.23] ([10.1.255.212]) by cam-owa2.Emea.Arm.com with
	Microsoft SMTPSVC(6.0.3790.3959); Wed, 12 Mar 2014 18:08:27 +0000
Message-ID: <5320A287.80608@arm.com>
Date: Wed, 12 Mar 2014 18:08:07 +0000
From: Jonathan Austin <jonathan.austin@arm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-OriginalArrivalTime: 12 Mar 2014 18:08:27.0481 (UTC)
	FILETIME=[11280490:01CF3E1E]
X-MC-Unique: 114031218081702001
Subject: ADT: understanding YOCTOADT_TARGET_MACHINE_arch
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
X-List-Received-Date: Wed, 12 Mar 2014 18:08:22 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi list,

I've been looking at the ADT, and specifically building a custom SDK/ADT=20
for a particular board...

This is an ARM board, so I thought I'd set:
YOCTOADT_TARGET_MACHINE_arm=3D"myboard"

Sadly, that doesn't work. I'm trying to understand why.

Despite changing YOCTOADT_REPO in my adt_installer.conf, the=20
adt_installer fails to find the cross canadian package group for my board..=
.

Unknown package 'packagegroup-cross-canadian-myboard

Looking at the log, I see that the installer is still looking on the=20
yocto servers for (nativesdk) files. I can see that the nativesdk=20
locations are hard-coded in opkg/conf/opkg-sdk-i686.conf - so I guess it=20
isn't surprising that it can't find the right board, the Yocto servers=20
know nothing of myboard at this stage!

Seeing those hardcoded paths made me wonder if I was using the=20
YOCTOADT_TARGET_MACHINE_arm variable wrong...

Would it be 'right' to specify just 'arm' here? This is an imx6 board,=20
and TARGET_SYS =3D "arm-poky-linux-gnueabi". By my understanding, this=20
will affect which toolchain I get, among other things. I'd defintiely=20
like a machine specific sysroot, for example[1]

So - what's the meaning/point of this TARGET_MACHINE_arch option? I see=20
that there exists:
packagegroup-cross-canadian-imx53qsb_1.0-r0_all.ipk

  - so clearly someone's felt the need to use something other than just=20
'arm' here in the past!

Has anyone else done an ADT for a custom board that uses the ADT=20
infrastructure?

Do you create a detailed overlay to the adt-installer recipe and change=20
config, etc?

It feels a little like I'm missing a step when generating the ADT that=20
tells it more important details about what I'm creating - if so, sorry=20
for the questions, but please could you point me there?

Thanks

Jonny

[1] I think that my images currently have to be called 'core-image-xxx'=20
to work with existing ADT scripts, unless I'm missing some config=20
somewhere, but that's a different issue that I'll dig into shortly



