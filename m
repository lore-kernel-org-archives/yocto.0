Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F138E00C50; Tue, 17 Apr 2018 07:03:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC653E00C02
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 07:03:35 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id e9so4354675pgr.7
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 07:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=hHrIaqf/ivlL4LalSZDeuTLtmecGA5GCADqPuql18vY=;
	b=eTzwQJNHGow/aA24q85e3TPB4Gj98qflOqy5/Jp32N/DCwvcP3dWpydcsteBERa2Ne
	YfdagiNjvvt3AORk3g35SNZ09woSZv0mBCFbE5RH6d9hzHPNd6+yQy/JRub5HRVwgwnl
	BLCkhO+MOPD+Xh4C9UuX0L7dTbp8DjrYOZPLaiuT0i+YSNx6pl4nPUuJ9EQA3C43hEQI
	Iyv/+wmoJ1fuMRxp+VQHGOdzw3l85ubFlk9j2J8GxoaQHe/9alysgqLF77g4QNItlMye
	yzfgW8k5ESE+GX5QV0r6od2PNFeH57m3UPGtKBGz2oOPZ8OiVAdOQRyRmAvNO4kzjAXC
	X6rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=hHrIaqf/ivlL4LalSZDeuTLtmecGA5GCADqPuql18vY=;
	b=FkORmOMkEuFid6z57i2oyyvUryfTgRMS09WvGGkgKGpmecXQnPD4Tdw5yKh5PHUJ1N
	GIG/IGOCLRFpZ8OhBMwKQkL+Ou2GohvqWISst5Dvov2HFim5fZC4bYJUw8i7j5cnOFSM
	QJAf88XSRNM+F1Ltc5o8G/zWkt+J6z7NX1utkPlB+dyt7kRNa1W6iU9ObsmnA29E6ikB
	HLPsX5yv2MVQAO2zi1M49pEN+u0mDyiszXNfHb8q/dhENs5XcQed+YN6NBDvgHSBQKe2
	SSJVhg3Rt7AerYbO2Udu4I01c0E0oZDOJfw2fzJ3AHMhFHSOM0p5acNsVIutadbkAL8S
	MIxw==
X-Gm-Message-State: ALQs6tDNtBIBQVuca7whesSuVHv5IL8v79uVHPiGfSC/Ub6ZD19P3xSF
	0lPx/BCzCVmPUfFVYErJSBt7f4GeWwYU9CB0KhA=
X-Google-Smtp-Source: AIpwx4+AO8C9/+soQAhnARp4fBs1jdZdA3NrA/eSXtVz4K00HKZ3FXJhc+GipNA/IB/+DvLmHuB/CwLCDmLblpc1YFU=
X-Received: by 10.98.7.83 with SMTP id b80mr2108384pfd.133.1523973814697; Tue,
	17 Apr 2018 07:03:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.138.98 with HTTP; Tue, 17 Apr 2018 07:03:04 -0700 (PDT)
In-Reply-To: <CAJTo0Lb16CBPXF0EB=1XRjkqrENFd2ScWqU0fJWe7PZbBMnDtg@mail.gmail.com>
References: <f082fcef-b5c2-203d-849a-cd39bd349a79@numalliance.com>
	<CAALXFYxkizrNiHLUsOUUz88Fgk+v039B+RYivtPhn84ydZd17A@mail.gmail.com>
	<42b9a571-d0fd-d970-729f-39d6cac69358@numalliance.com>
	<CAJTo0Lb16CBPXF0EB=1XRjkqrENFd2ScWqU0fJWe7PZbBMnDtg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 17 Apr 2018 07:03:04 -0700
Message-ID: <CAMKF1so57MArfaf_OGL_EnbWoPdLToK5t1FLnvXQnq57-Yr5Lg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: compiling core-image-sato failure on 32 bits system
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
X-List-Received-Date: Tue, 17 Apr 2018 14:03:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 17, 2018 at 3:13 AM, Burton, Ross <ross.burton@intel.com> wrote=
:
> If you've an i5 why are you running a 32-bit OS?  Just so you're
> aware, it's practically impossible to build webkit on a 32-bit host
> because there just isn't enough memory available.
>

you need 8G of RAM minimum or reduce your -j factor to 1 and have a lot of =
swap
you might get lucky

> Ross
>
> On 17 April 2018 at 10:50, St=C3=A9phane Ancelot <sancelot@numalliance.co=
m> wrote:
>>
>>
>> Le 17/04/2018 =C3=A0 09:08, Iv=C3=A1n Castell a =C3=A9crit :
>>
>> Review "dmesg" output to see if there is some kernel crash in your host
>> machine. Which CPU are you using to compile yocto (your host machine)? W=
e
>> also have been dealing with this kind of issues compiling with an AMD Ry=
zen
>> 7 1700 Eight-Core Processor and (in our case) it seems is a bug related =
with
>> the CPU.
>>
>> This is a core i5, but the installed system runs a 32bit ubuntu system.
>> There is no crash message in dmesg, I have setted up a swapfile in the
>> system
>>
>> 2018-04-17 8:51 GMT+02:00 St=C3=A9phane Ancelot <sancelot@numalliance.co=
m>:
>>>
>>> Hi,
>>>
>>> On my ubuntu bionic system 32 bits, compilation core-image-sato fails a=
s
>>> follow;
>>>
>>> unfortunately nothing seems interesting in log.do_install.
>>>
>>> what can I do ?
>>>
>>> Regards,
>>>
>>> Steph
>>>
>>> Build Configuration:
>>>
>>> BB_VERSION        =3D "1.36.0"
>>>
>>> BUILD_SYS         =3D "i686-linux"
>>>
>>> NATIVELSBSTRING   =3D "universal"
>>>
>>> TARGET_SYS        =3D "i586-poky-linux"
>>>
>>> MACHINE           =3D "qemux86"
>>>
>>> DISTRO            =3D "poky"
>>>
>>> DISTRO_VERSION    =3D "2.4.2"
>>>
>>> TUNE_FEATURES     =3D "m32 i586"
>>>
>>> TARGET_FPU        =3D ""
>>>
>>> meta
>>>
>>> meta-poky
>>>
>>> meta-yocto-bsp    =3D "rocko:fdeecc901196bbccd7c5b1ea4268a2cf56764a62"
>>>
>>>
>>> Initialising tasks: 100%
>>> |######################################################################=
###########################################################################=
###########|
>>> Time: 0:00:30
>>>
>>> NOTE: Executing SetScene Tasks
>>>
>>> NOTE: Executing RunQueue Tasks
>>>
>>> ERROR: linux-libc-headers-4.12-r0 do_install: oe_runmake failed
>>>
>>> ERROR: linux-libc-headers-4.12-r0 do_install: Function failed: do_insta=
ll
>>> (log file is located at
>>> /home/yocto/poky/build/tmp/work/i586-poky-linux/linux-libc-headers/4.12=
-r0/temp/log.do_install.4172)
>>>
>>> ERROR: Logfile of failure stored in:
>>> /home/yocto/poky/build/tmp/work/i586-poky-linux/linux-libc-headers/4.12=
-r0/temp/log.do_install.4172
>>>
>>> Log data follows:
>>>
>>> | DEBUG: Executing python function extend_recipe_sysroot
>>>
>>> | NOTE: Direct dependencies are
>>> ['virtual:native:/home/yocto/poky/meta/recipes-devtools/pkgconfig/pkgco=
nfig_git.bb:do_populate_sysroot',
>>> 'virtual:native:/home/yocto/poky/meta/recipes-devtools/unifdef/unifdef_=
2.11.bb:do_populate_sysroot',
>>> 'virtual:native:/home/yocto/poky/meta/recipes-devtools/pseudo/pseudo_1.=
8.2.bb:do_populate_sysroot',
>>> '/home/yocto/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_p=
opulate_sysroot',
>>> 'virtual:native:/home/yocto/poky/meta/recipes-extended/xz/xz_5.2.3.bb:d=
o_populate_sysroot']
>>>
>>> | NOTE: Installed into sysroot: []
>>>
>>> | NOTE: Skipping as already exists in sysroot: ['pkgconfig-native',
>>> 'unifdef-native', 'pseudo-native', 'quilt-native', 'xz-native',
>>> 'gnu-config-native', 'autoconf-native', 'automake-native', 'libtool-nat=
ive',
>>> 'gettext-minimal-native', 'm4-native', 'texinfo-dummy-native']
>>>
>>> | DEBUG: Python function extend_recipe_sysroot finished
>>>
>>> | DEBUG: Executing shell function do_install
>>>
>>> | NOTE: make -j 4 HOSTCC=3Dgcc  HOSTCPP=3Dgcc -E headers_install
>>> INSTALL_HDR_PATH=3D/home/yocto/poky/build/tmp/work/i586-poky-linux/linu=
x-libc-headers/4.12-r0/image/usr
>>>
>>> | Segmentation fault
>>>
>>> | ERROR: oe_runmake failed
>>>
>>> | WARNING: exit code 1 from a shell command.
>>>
>>> | ERROR: Function failed: do_install (log file is located at
>>> /home/yocto/poky/build/tmp/work/i586-poky-linux/linux-libc-headers/4.12=
-r0/temp/log.do_install.4172)
>>>
>>> ERROR: Task
>>> (/home/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-hea=
ders_4.12.bb:do_install)
>>> failed with exit code '1'
>>>
>>> NOTE: Tasks Summary: Attempted 191 tasks of which 185 didn't need to be
>>> rerun and 1 failed.
>>>
>>>
>>> Summary: 1 task failed:
>>>
>>>
>>> /home/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-head=
ers_4.12.bb:do_install
>>>
>>> Summary: There was 1 WARNING message shown.
>>>
>>>
>>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

