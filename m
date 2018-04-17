Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA103E00AAF; Tue, 17 Apr 2018 03:13:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1463EE00948
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 03:13:42 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id f63-v6so17402563oic.4
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 03:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=5qKtumDMXwTHXKk4IhxWSJpGvtCquboAm35Wsn2Anm4=;
	b=BTVj1mKUpepJ6YKAWo4YWzQ4VF9DWggNWC5UllxTumeOLiKjHkNR2rN126R3FMxr5S
	IJ6K2of47ChaNnJsUZ9+MPoTef6ye7NzOe5LW0vy0nmpjR6z93Xl8sJqi7PjJXv5V8Ru
	pxTLQ736bpRGl4GauEu+LBmRPcY/koEPQxxYnxOh6cCYGVVsw9svyJBPqmjIPo8Qiuxj
	UDj5auSgvihcZ2GaX5uMxvg4Uu0vYStPrVTwybZQC993+PI4fhZNKouydUSYUN+lqfu5
	Iiv+IlqzPQ7KY6Ol2oCv87FxFPGymtjodrt/p0y1Wqm8YhfM+864Pllz+XmMJo5h/kEt
	QHQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=5qKtumDMXwTHXKk4IhxWSJpGvtCquboAm35Wsn2Anm4=;
	b=CYbuLLmpc/pAq9trwyYOdgghp15SKEDtDIe3Y/fAG2+S6vChaTwpDcSH7hHOCsReOg
	pBy9j4n4szWvDdCvF1wiaPlZNtI870XO0UA5sqKvGUtfMIce+U792KmHrUEB9OMLe7Wa
	z677WgaAIlaFRvdDJXVCWQNcVvnFRN1Qu9lwUlBBa0kBj8heVeINxhAG9RUVi+ZwopKT
	V+TnuiHQxoPrqg/QNSdufIyEjcbfjRF1TMqRAiWkJrKRK3yrUnrIwitzPNOOTRZGhSeG
	RMsdN4cwwyALjFLvuatBZrj+uUHVh53NpjCa1D7CyG15IQZCfFGWWlVb6iMtCSddTu8g
	8Pgw==
X-Gm-Message-State: ALQs6tCYQPukWV+sdgyOkrWSFqAwNItdLFi4mwgrUJmj6kN/uxISL1aX
	jZ7MhjO8LaOSfTQXAPOI/mdeHpGI8OU4YZqP6xMwJw==
X-Google-Smtp-Source: AIpwx4/cG87co5CKJCL9yB8qNObRKK9k03ikszgjcXCrsyFdLoMMgHdL6y/RhgFWyU85z5cd/fVieW9DHdBzP3GUCTA=
X-Received: by 2002:aca:e40b:: with SMTP id b11-v6mr857862oih.70.1523960021846;
	Tue, 17 Apr 2018 03:13:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Tue, 17 Apr 2018 03:13:21 -0700 (PDT)
In-Reply-To: <42b9a571-d0fd-d970-729f-39d6cac69358@numalliance.com>
References: <f082fcef-b5c2-203d-849a-cd39bd349a79@numalliance.com>
	<CAALXFYxkizrNiHLUsOUUz88Fgk+v039B+RYivtPhn84ydZd17A@mail.gmail.com>
	<42b9a571-d0fd-d970-729f-39d6cac69358@numalliance.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 17 Apr 2018 11:13:21 +0100
Message-ID: <CAJTo0Lb16CBPXF0EB=1XRjkqrENFd2ScWqU0fJWe7PZbBMnDtg@mail.gmail.com>
To: =?UTF-8?Q?St=C3=A9phane_Ancelot?= <sancelot@numalliance.com>
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
X-List-Received-Date: Tue, 17 Apr 2018 10:13:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you've an i5 why are you running a 32-bit OS?  Just so you're
aware, it's practically impossible to build webkit on a 32-bit host
because there just isn't enough memory available.

Ross

On 17 April 2018 at 10:50, St=C3=A9phane Ancelot <sancelot@numalliance.com>=
 wrote:
>
>
> Le 17/04/2018 =C3=A0 09:08, Iv=C3=A1n Castell a =C3=A9crit :
>
> Review "dmesg" output to see if there is some kernel crash in your host
> machine. Which CPU are you using to compile yocto (your host machine)? We
> also have been dealing with this kind of issues compiling with an AMD Ryz=
en
> 7 1700 Eight-Core Processor and (in our case) it seems is a bug related w=
ith
> the CPU.
>
> This is a core i5, but the installed system runs a 32bit ubuntu system.
> There is no crash message in dmesg, I have setted up a swapfile in the
> system
>
> 2018-04-17 8:51 GMT+02:00 St=C3=A9phane Ancelot <sancelot@numalliance.com=
>:
>>
>> Hi,
>>
>> On my ubuntu bionic system 32 bits, compilation core-image-sato fails as
>> follow;
>>
>> unfortunately nothing seems interesting in log.do_install.
>>
>> what can I do ?
>>
>> Regards,
>>
>> Steph
>>
>> Build Configuration:
>>
>> BB_VERSION        =3D "1.36.0"
>>
>> BUILD_SYS         =3D "i686-linux"
>>
>> NATIVELSBSTRING   =3D "universal"
>>
>> TARGET_SYS        =3D "i586-poky-linux"
>>
>> MACHINE           =3D "qemux86"
>>
>> DISTRO            =3D "poky"
>>
>> DISTRO_VERSION    =3D "2.4.2"
>>
>> TUNE_FEATURES     =3D "m32 i586"
>>
>> TARGET_FPU        =3D ""
>>
>> meta
>>
>> meta-poky
>>
>> meta-yocto-bsp    =3D "rocko:fdeecc901196bbccd7c5b1ea4268a2cf56764a62"
>>
>>
>> Initialising tasks: 100%
>> |#######################################################################=
###########################################################################=
##########|
>> Time: 0:00:30
>>
>> NOTE: Executing SetScene Tasks
>>
>> NOTE: Executing RunQueue Tasks
>>
>> ERROR: linux-libc-headers-4.12-r0 do_install: oe_runmake failed
>>
>> ERROR: linux-libc-headers-4.12-r0 do_install: Function failed: do_instal=
l
>> (log file is located at
>> /home/yocto/poky/build/tmp/work/i586-poky-linux/linux-libc-headers/4.12-=
r0/temp/log.do_install.4172)
>>
>> ERROR: Logfile of failure stored in:
>> /home/yocto/poky/build/tmp/work/i586-poky-linux/linux-libc-headers/4.12-=
r0/temp/log.do_install.4172
>>
>> Log data follows:
>>
>> | DEBUG: Executing python function extend_recipe_sysroot
>>
>> | NOTE: Direct dependencies are
>> ['virtual:native:/home/yocto/poky/meta/recipes-devtools/pkgconfig/pkgcon=
fig_git.bb:do_populate_sysroot',
>> 'virtual:native:/home/yocto/poky/meta/recipes-devtools/unifdef/unifdef_2=
.11.bb:do_populate_sysroot',
>> 'virtual:native:/home/yocto/poky/meta/recipes-devtools/pseudo/pseudo_1.8=
.2.bb:do_populate_sysroot',
>> '/home/yocto/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_po=
pulate_sysroot',
>> 'virtual:native:/home/yocto/poky/meta/recipes-extended/xz/xz_5.2.3.bb:do=
_populate_sysroot']
>>
>> | NOTE: Installed into sysroot: []
>>
>> | NOTE: Skipping as already exists in sysroot: ['pkgconfig-native',
>> 'unifdef-native', 'pseudo-native', 'quilt-native', 'xz-native',
>> 'gnu-config-native', 'autoconf-native', 'automake-native', 'libtool-nati=
ve',
>> 'gettext-minimal-native', 'm4-native', 'texinfo-dummy-native']
>>
>> | DEBUG: Python function extend_recipe_sysroot finished
>>
>> | DEBUG: Executing shell function do_install
>>
>> | NOTE: make -j 4 HOSTCC=3Dgcc  HOSTCPP=3Dgcc -E headers_install
>> INSTALL_HDR_PATH=3D/home/yocto/poky/build/tmp/work/i586-poky-linux/linux=
-libc-headers/4.12-r0/image/usr
>>
>> | Segmentation fault
>>
>> | ERROR: oe_runmake failed
>>
>> | WARNING: exit code 1 from a shell command.
>>
>> | ERROR: Function failed: do_install (log file is located at
>> /home/yocto/poky/build/tmp/work/i586-poky-linux/linux-libc-headers/4.12-=
r0/temp/log.do_install.4172)
>>
>> ERROR: Task
>> (/home/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-head=
ers_4.12.bb:do_install)
>> failed with exit code '1'
>>
>> NOTE: Tasks Summary: Attempted 191 tasks of which 185 didn't need to be
>> rerun and 1 failed.
>>
>>
>> Summary: 1 task failed:
>>
>>
>> /home/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-heade=
rs_4.12.bb:do_install
>>
>> Summary: There was 1 WARNING message shown.
>>
>>
>>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

