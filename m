Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B2C8A4C810C1
	for <yocto@yoctoproject.org>; Thu, 25 Nov 2010 01:06:51 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Nov 2010 23:06:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="630170611"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 24 Nov 2010 23:06:46 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 25 Nov 2010 15:06:39 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 25 Nov 2010 15:06:39 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 25 Nov 2010 15:06:38 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>, Mark Hatle
	<mark.hatle@windriver.com>
Date: Thu, 25 Nov 2010 15:06:24 +0800
Thread-Topic: [yocto] poky-image-minimal-1.0-r0:Unable to find package rpm!
Thread-Index: AcuMFTLouSJfVDE2SaWjh+FkeZyJGgAWYPMw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3E152FE3@shsmsx502.ccr.corp.intel.com>
References: <AANLkTinQv_Lb-jnngPTpKV9evSSRzQUfN9JEA0RjZbvT@mail.gmail.com>
	<4CED6ED4.8020609@windriver.com>
	<AANLkTimueKS2Vay1h4tM9ENFogONmuNZrET5waqG+7YM@mail.gmail.com>
In-Reply-To: <AANLkTimueKS2Vay1h4tM9ENFogONmuNZrET5waqG+7YM@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: CFmc DNNK Ej4t HsZM ITlM PRSu T6mc UqgL VVbU V1s2 aTuu
	amGT bcIO dK+I e6bs g7No; 3;
	ZgByAGEAbgBzAG0AZQB1AGwAZQBuAGIAcgBvAGUAawBzAEAAZwBtAGEAaQBsAC4AYwBvAG0AOwBtAGEAcgBrAC4AaABhAHQAbABlAEAAdwBpAG4AZAByAGkAdgBlAHIALgBjAG8AbQA7AHkAbwBjAHQAbwBAAHkAbwBjAHQAbwBwAHIAbwBqAGUAYwB0AC4AbwByAGcA;
	Sosha1_v1; 7; {1BC95C67-2CAE-4D3A-9358-5517901E6D68};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Thu,
	25 Nov 2010 07:06:24 GMT;
	UgBFADoAIABbAHkAbwBjAHQAbwBdACAAcABvAGsAeQAtAGkAbQBhAGcAZQAtAG0AaQBuAGkAbQBhAGwALQAxAC4AMAAtAHIAMAA6AFUAbgBhAGIAbABlACAAdABvACAAZgBpAG4AZAAgAHAAYQBjAGsAYQBnAGUAIAByAHAAbQAhAA==
x-cr-puzzleid: {1BC95C67-2CAE-4D3A-9358-5517901E6D68}
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky-image-minimal-1.0-r0:Unable to find package rpm!
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 25 Nov 2010 07:06:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>From: Frans Meulenbroeks
>Sent: Thursday, November 25, 2010 4:21 AM
>
>Mark, thanks for your reply!
>
>2010/11/24 Mark Hatle <mark.hatle@windriver.com>:
>> On 11/24/10 1:36 PM, Frans Meulenbroeks wrote:
>>> I was trying to build poky-image-minimal (git head of nov 20).
>>> | Processing task-poky-boot...
>>> | Processing rpm...
>>> | Unable to find package rpm!
>>> | ERROR: Task failed: ('function do_rootfs failed',
>>>
>'/home/frans/poky/poky/build/tmp/work/sheevaplug-poky-linux-gnueabi/poky-i=
mage-mi
>nimal-1.0-r0/temp/log.do_rootfs.6436')
>>
>> The task you build had an explicit requirement for 'rpm' (the package). =
=A0It's
>> saying it was unable to find that package.
>>
>> I'm not sure how to track down where that requirement came from though.
>>
>> You might be able to work around it by doing a "bitbake rpm"...
>
>Nope, tried that.
>Here is a snippet from my history:
> 1004  . poky-init-build-env
> 1005  bitbake poky-image-minimal
> 1006  bitbake rpm
> 1007  bitbake poky-image-minimal
> 1008  rpm
> 1009  git log
> 1010  bitbake rpm-native
> 1011  time bitbake poky-image-minimal
>even the last one gives the rpm error (and inbetween I did build rpm,
>check for a native rpm and build rpm-native)
>
>It comes from the image recipe which contains:
>./images/poky-image-minimal.bb:IMAGE_INSTALL =3D "task-poky-boot
>${ROOTFS_PKGMANAGE}"
>I assume by default I get rpm as package management (I am using the
>default values afaik).
>If it is rpm this comes from:
>./classes/rootfs_rpm.bbclass:ROOTFS_PKGMANAGE =3D "rpm zypper"
>
>I guess this is something beyond a missing dependency.
>
>
>>
>>> NOTE: package poky-image-minimal-1.0-r0: task do_rootfs: Failed
>>> ERROR: Task 10
>(/home/frans/poky/poky/meta/recipes-core/images/poky-image-minimal.bb,
>>> do_rootfs) failed with 1
>>> ERROR: '/home/frans/poky/poky/meta/recipes-core/images/poky-image-minim=
al.bb'
>>> failed
>>>
>>> rpm is installed on the host
>>> packaged rpm and rpm-native build so it does not seem to be a missing
>>> dependency.
>>>
>>> Anyone an idea?
>>>
>>> BTW: I feel that building poky-image-minimal takes quite long.
>>> I don't have a very high end PC (D920, core2 duo at 3Ghz or so, with
>>> 4GB DDR2), but =A0when I tried to build poky-image-minimal a second
>>> time, no work needed to be done, apart from do_rootfs.
>>> Yet running the 1839 (of 1842) tasks took 11min25.
>>
>> There is currently a lot of extra processing during task executation. =
=A0Each task
>> takes approx 1-2 seconds of processing. =A0A large number of the 1839 we=
re likely
>> skipped.. thus the 11 minutes.
>>
>> We're already working on a solution to this. =A0Between optimizing the s=
etup of
>> the bitbake environment and changes in pseudo -- to facilitate the task =
executor
>> avoiding exec unless necessary.
>
>don't know all differences between OE and yocto yet.
>poky always seems to execute do_build, do_package_write and do_rm_work
>OE does seem to skip all steps if the stamps say everything is build.
>

Previously Poky uses fork and now uses exec, due to the introduction of pse=
udo
which wraps both shell and python tasks now (previously fakeroot only wraps
shell tasks). However there's a problem how to map parsed database into an
exec pythonchild, and then Richard adopts a simple approach to have the chi=
ld=20
process reparse from scratch. That takes ~2s as Mark pointed out and thus=20
extends the whole build time.

Now we're working on a solution for this issue, along with several other pe=
rformance
enhancement points.

Thanks
Kevin

