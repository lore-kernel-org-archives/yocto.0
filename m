Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABB45E02AEA; Tue, 12 Jun 2018 11:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DATE_IN_PAST_96_XX,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	* 3.4 DATE_IN_PAST_96_XX Date: is 96 hours or more before Received:
	date * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEC11E02ABA
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 11:02:37 -0700 (PDT)
Received: from [10.175.196.108] ([37.123.169.62]) by cmsmtp with ESMTPA
	id SncnfOZvn19K9SncrfwXaS; Tue, 12 Jun 2018 20:02:37 +0200
From: Ulf Samuelsson <yocto@emagii.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 30 May 2018 00:07:55 +0200
Message-Id: <472F667C-A752-4ECA-AC12-58B15BEA23DE@emagii.com>
References: <VI1PR0301MB2240D44AD76C24B2DBA960A3CE6E0@VI1PR0301MB2240.eurprd03.prod.outlook.com>
	<5D4F2D61-6DE5-480F-AE1F-E1DD377337D3@emagii.com>
	<CAMKF1speJzyZaTP0rqL_gJcOf-BSCmXieR+ySy9Nu-uN-d4nGQ@mail.gmail.com>
In-Reply-To: <CAMKF1speJzyZaTP0rqL_gJcOf-BSCmXieR+ySy9Nu-uN-d4nGQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: iPad Mail (15B202)
X-CMAE-Envelope: MS4wfN5xW1SyUCgLnoEgA/ucsrG5e3cZ+PqhdGS9gSJxj3G3N83mI/FOfNbEURBRSkfmGo6YT3y35KLKUnYti2VmvmqHGE9kYWPoYn3LMXu5rWDlm8zJfaai
	bFgALkThpkcYEbuoDOKasdND7hIPfqM5dPfObXbBSxlFjmCrtw8LG85wh/TluhNolAf97kX+QX4EGTUj4m/QF8vB1hZ2clMcmec=
Cc: Yocto Mailing List <yocto@yoctoproject.org>
Subject: Re: image-mklibs.bbclass fails
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
X-List-Received-Date: Tue, 12 Jun 2018 18:02:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I am currently upgrading a morty based rootfs to rocko, and today I found th=
at the morty based poky layer had a patch which they sent upstream over one y=
ear ago.
Author Peter Liu
This is similar to what You suggested, and the fix works also in rocko.

We will decide tomorrow how to proceed.
Best Regards,
Ulf

> 29 maj 2018 kl. 21:43 skrev Khem Raj <raj.khem@gmail.com>:
>=20
>> On Mon, May 28, 2018 at 2:10 AM, Ulf Samuelsson <yocto@emagii.com> wrote:=

>> Checked out poky
>> git checkout -b rocko origin/rocko
>> export MACHINE=3Dbeaglebone
>> . ./oe-init-build-env
>>=20
>> Added to local.conf:
>> MKLIBS_OPTIMIZED_IMAGES_append =3D " core-image-minimal"
>>=20
>> Result:
>>=20
>> <XXX>/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: lin=
e
>> 133: i586-poky-linux-readelf: command not found
>> ...
>> Exception: Cannot find
>> lib/home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core=
-image-minimal/1.0-r0/recipe-sysroot/lib/ld-linux.so.2
>> WARNING:
>> /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-im=
age-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363:1
>> exit 1 from 'mklibs -v --ldlib ${dynamic_loader} --libdir lib --sysroot
>> /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-im=
age-minimal/1.0-r0/recipe-sysroot
>> --gcc-options
>> "--sysroot=3D/home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-=
linux/core-image-minimal/1.0-r0/recipe-sysroot"
>> --root
>> /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-im=
age-minimal/1.0-r0/rootfs
>> --target `echo i586-poky-linux- | sed 's/-$//' ` -d
>> /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-im=
age-minimal/1.0-r0/mklibs/dest
>> `cat
>> /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-im=
age-minimal/1.0-r0/mklibs/executables.list`'
>> ...
>>=20
>> Looks like image-mklibs.bbclass has not been tested since the move to a
>> local sysroot happened.
>=20
> It seems class should be adding a dependency on
> virtual/${TARGET_PREFIX}binutils-cross
> if that fixes the problem, please send the patch if not file a bug
> since there might be more to it.


