Return-Path: <boon.pin.khor@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10C9CE01374
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 16:57:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Apr 2012 16:57:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129399401"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by azsmga001.ch.intel.com with ESMTP; 10 Apr 2012 16:57:32 -0700
Received: from pgsmsx152.gar.corp.intel.com (172.30.236.43) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 10 Apr 2012 16:57:31 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.159]) by
	PGSMSX152.gar.corp.intel.com ([169.254.5.105]) with mapi id
	14.01.0355.002; Wed, 11 Apr 2012 07:57:29 +0800
From: "Khor, Boon Pin" <boon.pin.khor@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Thread-Topic: [yocto] Yocto Project 1.2 Beta testing instructions
Thread-Index: AQHNF3NEbpHiGFzO7UGdgVoRFdboTJaUvFLQ
Date: Tue, 10 Apr 2012 23:57:29 +0000
Message-ID: <F9AC6E797E022941A4CD80AAEDFAD67D438441@PGSMSX103.gar.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A46AE31E3@ORSMSX101.amr.corp.intel.com>
	<F9AC6E797E022941A4CD80AAEDFAD67D43756F@PGSMSX103.gar.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AF10FD@ORSMSX101.amr.corp.intel.com>
	<2083054.YjdMd9bIMH@helios> <4F846C2E.8040304@windriver.com>
	<F9AC6E797E022941A4CD80AAEDFAD67D438425@PGSMSX103.gar.corp.intel.com>
	<4F84C4CE.5050103@windriver.com>
In-Reply-To: <4F84C4CE.5050103@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.66.14]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 11 Apr 2012 08:40:50 -0700
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Project 1.2 Beta testing instructions
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
X-List-Received-Date: Tue, 10 Apr 2012 23:57:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I just filed this in bugzilla .=20

-----Original Message-----
From: Mark Hatle [mailto:mark.hatle@windriver.com]=20
Sent: Wednesday, April 11, 2012 7:40 AM
To: Khor, Boon Pin
Cc: Paul Eggleton; yocto@yoctoproject.org; Liu, Song
Subject: Re: [yocto] Yocto Project 1.2 Beta testing instructions

On 4/10/12 6:06 PM, Khor, Boon Pin wrote:
> Hi all
>
>   On my ubuntu 11.10 64bits machines , once I change the default shell to=
 bash , the problem solved .

I believe we expect dash to be fully supported, so this is a bug.

Please file a bug in the Yocto Project bugzilla
(http://bugzilla.yoctoproject.org)  if you are not able to do so, let me kn=
ow and I will file it.

--Mark

> Thanks
> Boon pin
>
> -----Original Message-----
> From: Mark Hatle [mailto:mark.hatle@windriver.com]
> Sent: Wednesday, April 11, 2012 1:22 AM
> To: Paul Eggleton
> Cc: yocto@yoctoproject.org; Liu, Song; Khor, Boon Pin
> Subject: Re: [yocto] Yocto Project 1.2 Beta testing instructions
>
> On 4/10/12 4:18 AM, Paul Eggleton wrote:
>> On Wednesday 04 April 2012 18:08:58 Liu, Song wrote:
>>> Can someone help answer the following question? This happens during=20
>>> Boon Pin's beta testing using the build at:
>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-8e9f6fc
>>> 7
>>> 7ac476
>>> 3f4ed1f6e7b720420c220ba6e2.tar.bz2 .
>>> ...
>>> | Processing task-core-boot...
>>> | Manifest:
>>> | /home/nemo/yp-beta-build/tmp/work/qemux86-poky-linux/core-image-mi
>>> | n
>>> | imal-1 .0-r0/rootfs/install/install.manifest local: 1: -Uhv: bad=20
>>> | variable name
>>>
>>> NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Failed
>>> ERROR: Task 8
>>> (/home/nemo/yp-beta/meta/recipes-core/images/core-image-minimal.bb,
>>> do_rootfs) failed with exit code '1' NOTE: Tasks Summary: Attempted
>>> 1329 tasks of which 287 didn't need to be rerun and 1 failed.
>>
>> Sorry for the late reply, presumably this issue is still present?
>>
>>> Maybe I am missing rpm packages in ubuntu ?
>>
>> You don't need to install rpm on the host system, we build rpm-native=20
>> for that.
>>
>> Mark, any clues what could be going wrong here?
>
> I've never seen any problem like this before.  Below is some analysis and=
 a question at the very end...
>
> There are only two places in the system where the string -Uhv exists:
>
> package_rpm.bbclass:
>
>           rpm_common_comand --replacepkgs \
>               -Uhv ${target_rootfs}/install/total_solution.manifest
>
> (rpm_common_comand is a shell function it appears... the arguments to=20
> the function are passed, via $@ to an RPM command)
>
> rootfs_rpm.bbclass:
>
> rootfs_install_packages() {
>       # The pkg to be installed here is not controlled by the
>       # package_install_internal_rpm, so it may have already been
>       # installed(e.g, installed in the first time when generate the
>       # rootfs), use '--replacepkgs' to always install them
>           for pkg in $@; do
>                   ${RPM} --root ${IMAGE_ROOTFS} -D "_dbpath ${rpmlibdir}"=
 \
>                           -D "__dbi_txn create nofsync private" \
>                           --noscripts --notriggers --noparentdirs --nolin=
ktos \
>                           --replacepkgs -Uhv $pkg || true
>           done
> }
>
> I would guess from the error that it's the one in package_rpm.bbclass tha=
t failed.. if that is the case, then all I can think of is what shell?  Are=
 we using a bash-ism?  Does "dash" on ubuntu have shell functions enabled i=
n it, if not that might be the problem.
>
> Please check your system's /bin/sh.. is it a symlink, if so, what does it=
 point to?  If it points to "dash", change it to "bash" and see if the erro=
r still occurs.
>
> --Mark


