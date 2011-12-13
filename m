Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8E04E00305
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 15:17:32 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2011 15:17:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="86242307"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2011 15:17:32 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 13 Dec 2011 15:17:32 -0800
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Tue, 13 Dec 2011 15:17:31 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>
Date: Tue, 13 Dec 2011 15:17:29 -0800
Thread-Topic: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison
	branch.
Thread-Index: Acy57R18Trqs447ORVaeWX7VPloA3AAABVIw
Message-ID: <4BD43A85686FC34D819098DB1C3999D901900BC38A@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D901900BC33C@orsmsx502.amr.corp.intel.com>
	<4EE7DA4D.4080500@windriver.com> <4EE7DC81.6030609@intel.com>
In-Reply-To: <4EE7DC81.6030609@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
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
X-List-Received-Date: Tue, 13 Dec 2011 23:17:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yeah.  I am using local bare clone for the linux-yocto-3.0 and using poky-e=
xtras/meta-kernel-dev in my bblayers.conf for my build.
Sorry for not mentioning this before.

Thanks
Kishore.

-----Original Message-----
From: Hart, Darren=20
Sent: Tuesday, December 13, 2011 3:15 PM
To: Bruce Ashfield
Cc: Bodke, Kishore K; yocto@yoctoproject.org
Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison =
branch.

On 12/13/2011 03:05 PM, Bruce Ashfield wrote:
> On 11-12-13 5:50 PM, Bodke, Kishore K wrote:
>> Hi,
>>
>> I get failure for the linux-yoctort_3.0.bb file for the poky Edison bran=
ch.
>>
>> Darren told that it was fixed and merged to master.
>=20
> This shouldn't be happening on edison at all. The changes to the
> kernel recipes/tools to use the merge_config.sh should never have
> showed up in edison. That's yocto 1.2 development work.
>=20
> So the fix for this is to find out what leaked into edison and
> revert it. I'll have a look at that later tonight.

No no. Kishore is using meta-kernel-dev. As such he is getting the
latest linux-yocto repository and SRC_REVs. The question, I think, is
really why isn't the kern-tools-native bbappend from meta-kernel-dev
doing this for him.

--
Darren

>=20
> Bruce
>=20
>>
>> I wanted to bring to the list about this error message.
>>
>> ERROR: Function 'do_kernel_configme' failed (see
>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky=
-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1=
+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18=
502
>> for further information)
>>
>> ERROR: Logfile of failure stored in:
>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky=
-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1=
+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18=
502
>>
>> Log data follows:
>>
>> | [INFO] doing kernel configme
>>
>> | [INFO] Branch yocto/standard/preempt-rt/base used by
>> common-pc-preempt-rt.scc
>>
>> | [INFO] collecting configs in ./meta/meta-series
>>
>> | mv: cannot stat
>> `/usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-pok=
y-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_=
1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-preempt-r=
t-build/.tmp.config*':
>> No such file or directory
>>
>> | creation of pre-processed config data failed
>>
>> | config of yocto/standard/preempt-rt/base (common-pc-preempt-rt.scc) fa=
iled
>>
>> | ERROR: Function 'do_kernel_configme' failed (see
>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky=
-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1=
+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18=
502
>> for further information)
>>
>> NOTE: package
>> linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+093=
6e13cc65d816f1759e2322c5e3fc82a5037f3-r1:
>> task do_kernel_configme: Failed
>>
>> ERROR: Task 716
>> (/usr/local/src/yocto_1_1_release/poky/meta/recipes-kernel/linux/linux-y=
octo-rt_3.0.bb,
>> do_kernel_configme) failed with exit code '1'
>>
>> Waiting for 7 active tasks to finish:
>>
>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>
>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>
>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>
>> 3: font-util-native-1.2.0-r2.1 do_configure (pid 14632)
>>
>> 4: bison-native-2.5-r1 do_configure (pid 20206)
>>
>> 5: dbus-native-1.4.12-r0 do_configure (pid 20209)
>>
>> 6: opensp-native-1.5-r2 do_configure (pid 20213)
>>
>> Waiting for 6 active tasks to finish:
>>
>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>
>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>
>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>
>> 3: font-util-native-1.2.0-r2.1 do_configure (pid 14632)
>>
>> 4: bison-native-2.5-r1 do_configure (pid 20206)
>>
>> 5: dbus-native-1.4.12-r0 do_configure (pid 20209)
>>
>> NOTE: package opensp-native-1.5-r2: task do_configure: Succeeded
>>
>> Waiting for 5 active tasks to finish:
>>
>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>
>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>
>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>
>> 3: bison-native-2.5-r1 do_configure (pid 20206)
>>
>> 4: dbus-native-1.4.12-r0 do_configure (pid 20209)
>>
>> NOTE: package font-util-native-1.2.0-r2.1: task do_configure: Succeeded
>>
>> Waiting for 4 active tasks to finish:
>>
>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>
>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>
>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>
>> 3: bison-native-2.5-r1 do_configure (pid 20206)
>>
>> NOTE: package dbus-native-1.4.12-r0: task do_configure: Succeeded
>>
>> Waiting for 3 active tasks to finish:
>>
>> 0: elfutils-native-0.148-r3 do_install (pid 19851)
>>
>> 1: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>
>> 2: bison-native-2.5-r1 do_configure (pid 20206)
>>
>> NOTE: package acl-native-2.2.51-r2: task do_configure: Succeeded
>>
>> Waiting for 2 active tasks to finish:
>>
>> 0: elfutils-native-0.148-r3 do_install (pid 19851)
>>
>> 1: bison-native-2.5-r1 do_configure (pid 20206)
>>
>> NOTE: package kbproto-native-1_1.0.5-r0: task do_configure: Succeeded
>>
>> Waiting for 1 active tasks to finish:
>>
>> 0: bison-native-2.5-r1 do_configure (pid 20206)
>>
>> NOTE: package elfutils-native-0.148-r3: task do_install: Succeeded
>>
>> NOTE: package bison-native-2.5-r1: task do_configure: Succeeded
>>
>> ERROR:
>> '/usr/local/src/yocto_1_1_release/poky/meta/recipes-kernel/linux/linux-y=
octo-rt_3.0.bb'
>> failed
>>
>> Thanks
>>
>> Kishore.
>>
>=20


--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

