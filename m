Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04E084C80050
	for <yocto@yoctoproject.org>; Mon, 27 Dec 2010 20:04:30 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Dec 2010 18:04:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,237,1291622400"; d="scan'208";a="691211360"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 27 Dec 2010 18:04:29 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 28 Dec 2010 10:03:57 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 28 Dec 2010 10:03:56 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 28 Dec 2010 10:03:56 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Pedro Sanchez <psanchez@fosstel.com>
Date: Tue, 28 Dec 2010 10:03:49 +0800
Thread-Topic: [yocto] Failing to compile Yocto (acl package)
Thread-Index: AcumMEMq6hgnt7CrSUyQZF8ElCroSAAAsXzw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D64C30A18@shsmsx502.ccr.corp.intel.com>
References: <4D191170.20103@fosstel.com> <4D1916E3.7020703@mlbassoc.com>
	<4D192AF5.5080304@fosstel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C309B0@shsmsx502.ccr.corp.intel.com>
	<4D19400F.1000909@fosstel.com>
In-Reply-To: <4D19400F.1000909@fosstel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: BBbM BQ0M Bp/U GctO HOAS Ha/G HhiU IZhU K3le MRLK MxC6
	NwTi S5Ed Txuj T4LK UYqR; 2;
	cABzAGEAbgBjAGgAZQB6AEAAZgBvAHMAcwB0AGUAbAAuAGMAbwBtADsAeQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {D3D91DEE-D504-45D5-A725-371D746083DC};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Tue,
	28 Dec 2010 02:03:49 GMT;
	UgBFADoAIABbAHkAbwBjAHQAbwBdACAARgBhAGkAbABpAG4AZwAgAHQAbwAgAGMAbwBtAHAAaQBsAGUAIABZAG8AYwB0AG8AIAAoAGEAYwBsACAAcABhAGMAawBhAGcAZQApAA==
x-cr-puzzleid: {D3D91DEE-D504-45D5-A725-371D746083DC}
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failing to compile Yocto (acl package)
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
X-List-Received-Date: Tue, 28 Dec 2010 02:04:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Pedro Sanchez [mailto:psanchez@fosstel.com]
>Sent: Tuesday, December 28, 2010 9:41 AM
>
>On 12/27/2010 08:13 PM, Tian, Kevin wrote:
>>> From: Pedro Sanchez
>>> Sent: Tuesday, December 28, 2010 8:10 AM
>>>
>>> On 12/27/2010 05:44 PM, Gary Thomas wrote:
>>>> On 12/27/2010 03:21 PM, Pedro Sanchez wrote:
>>>>> Hello,
>>>>>
>>>>> I'm trying to compile Yocto from sources as described in the quick
>>>>> start documentation but the build fails as follows:
>>>>>
>>>>> $ wget
>>>>> http://www.yoctoproject.org/downloads/poky/poky-laverne-4.0.tar.bz2
>>>>> $ tar xjf poky-laverne-4.0.tar.bz2
>>>>> $ (edited conf/local.conf to select qemuarm)
>>>>> $ source poky-laverne-4.0/poky-init-build-env poky-4.0-build
>>>>> $ bitbake poky-image-minimal
>>>>>
>>>>>
>>>>> ... (30 minutes of work)
>>>>>
>>>>> NOTE: package acl-2.2.49-r0: task do_fetch: Succeeded
>>>>> NOTE: Running task 582 of 1621 (ID: 1261,
>>>>>
>/home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49.=
bb,
>>>>> do_unpack)
>>>>> NOTE: package acl-2.2.49-r0: task do_unpack: Started
>>>>> NOTE: Unpacking
>>>>> /home/psanchez/Oven/poky-4.0-build/downloads/acl-2.2.49.src.tar.gz to
>>>>>
>>>
>/home/psanchez/Oven/poky-4.0-build/tmp/work/armv5te-poky-linux-gnueabi/acl=
-2.2.49
>>> -r0/
>>>>>
>>>>> ERROR: Task failed:
>>>>> NOTE: package acl-2.2.49-r0: task do_unpack: Failed
>>>>> ERROR: Task 1261
>>>>>
>(/home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49=
.bb,
>>>>> do_unpack) failed with 1
>>>>> ERROR:
>>>>>
>'/home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49=
.bb'
>>>>> failed
>>>>>
>>>>>
>>>>> I tried compiling the Laverne branch on a cloned Poky git repo. It
>>>>> also fails when processing the acl package. Any workarounds? Is there
>>>>> any log file I can look at for more details?
>>>>
>>>> You can find log files in the build directory with a relative
>>>> path like .../tmp/work/*/acl*/temp
>>>>
>>>> In particular, look at the log.do_unpack file for clues
>>>>
>>>
>>> Thanks,
>>>
>>> This is what I see:
>>>
>>> $ cat armv5te-poky-linux-gnueabi/acl-2.2.49-r0/temp/log.do_unpack
>>> gzip: stdin: not in gzip format
>>> tar: Child returned status 1
>>> tar: Exiting with failure status due to previous errors
>>> NOTE: Unpacking
>>> /home/psanchez/Oven/poky-4.0-build/downloads/acl-2.2.49.src.tar.gz to
>>>
>/home/psanchez/Oven/poky-4.0-build/tmp/work/armv5te-poky-linux-gnueabi/acl=
-2.2.49
>>> -r0/
>>> ERROR: Task failed:
>>>
>>> $ file poky-4.0-build/downloads/acl-2.2.49.src.tar.gz
>>> poky-4.0-build/downloads/acl-2.2.49.src.tar.gz: HTML document text
>>>
>>> The mirror where bb is configured to get acl from, mirror.cinquix.com,
>>> is down. I'll try to get it from the Savannah site.
>>>
>>
>> I've sent out the SRC_URI fixes to use correct Savannah site.
>>
>> BTW, if the mirror site is down, you should still get a correct tar ball=
 from
>> pre-configured poky mirrors (pokylinux.org, ...). Please let's know if t=
hose
>> mirrors don't take effect to you.
>>
>> Thanks
>> Kevin
>
>First of all thank for the quick fix! My laptop is busy building Yocto
>now as I write.
>
>As for the poky mirrors, they clearly didn't work for me. The bitbake
>command just stopped working when it failed to process the acl package.
>As far as I can say no attempts were made to reach any poky mirrors at
>all. Is there something we have to do to enable them before compiling
>the project?
>

the mirror is only reached if there's no response from original SRC_URI lin=
k.
In your case, the original link does work... which however provides a broke=
n
tar ball. From poky p.o.v, the do_fetch task succeeds and thus no attempt
is made from those mirrors.

If you manually remove acl* from your DL_DIR, you should be able to=20
observe the mirror effect since now the site is down and no response.=20
Remember to remove previous download, or else poky will always first
grab from local DL_DIR instead of pulling from external. :-)

Thanks
Kevin

