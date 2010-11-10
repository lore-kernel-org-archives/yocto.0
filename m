Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4AE934C80FA4
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 08:22:53 -0600 (CST)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id oAAEMnkt019033;
	Wed, 10 Nov 2010 08:22:49 -0600
Mime-Version: 1.0 (Apple Message framework v1081)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <1289397029.1272.315.camel@rex>
Date: Wed, 10 Nov 2010 08:22:49 -0600
Message-Id: <13D7650B-314D-4B59-8374-EB632FC33394@kernel.crashing.org>
References: <BA703559-6EAC-43D9-BB84-E95DDCB1ED62@kernel.crashing.org>
	<625BA99ED14B2D499DC4E29D8138F1504D2271119D@shsmsx502.ccr.corp.intel.com>
	<401A3267-606A-4A1E-9F45-18F75B6B3FB7@kernel.crashing.org>
	<1289395789.1272.260.camel@rex>
	<D10D6A3E-F997-489A-8921-83E5B33EE764@kernel.crashing.org>
	<1289397029.1272.315.camel@rex>
To: Richard Purdie <rpurdie@linux.intel.com>
X-Mailer: Apple Mail (2.1081)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problem with fetching?
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
X-List-Received-Date: Wed, 10 Nov 2010 14:22:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Nov 10, 2010, at 7:50 AM, Richard Purdie wrote:

> On Wed, 2010-11-10 at 07:31 -0600, Kumar Gala wrote:
>> On Nov 10, 2010, at 7:29 AM, Richard Purdie wrote:
>>=20
>>> On Wed, 2010-11-10 at 06:32 -0600, Kumar Gala wrote:
>>>> ERROR: Task failed: Fetch failed: Unable to fetch URL =
cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=3Dconfig;method=3Dpse=
rver;date=3D20080123 from any source.
>>>> NOTE: package gnu-config-native-0.1+cvs20080123-r1: task do_fetch: =
Failed
>>>> ERROR: Task 211 =
(virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/g=
nu-config/gnu-config_20080123.bb, do_fetch) failed with 1
>>>> ERROR: =
'virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/g=
nu-config/gnu-config_20080123.bb' failed
>>>>=20
>>>> Attached is the full log.
>>>=20
>>> Are you behind some kind of proxy/firewall? Its interesting its a =
cvs
>>> based recipe that is failing so it could be your cvs setup.
>>=20
>> Yes, behind a proxy/firewall.  cvs is not normally allowed out.
>>=20
>>> You could try placing
>>> =
http://autobuilder.pokylinux.org/sources/config_cvs.sv.gnu.org__20080123.t=
ar.gz
>>>=20
>>> into the downloads directory manually and touching the
>>> config_cvs.sv.gnu.org__20080123.tar.gz.md5 file there to show the
>>> fetcher the fetch is complete. If that works it would suggest the =
mirror
>>> fallback code in the fetcher isn't working as intended.
>>=20
>> I'm new to this, where would my download dir be?
>=20
> It defaults to "build/downloads" so in the build directory unless you
> changed it in local.conf.

Looks like that makes things work, so appears as if fallback code in the =
fetcher is having issues.

See the issue again with another pkg:

NOTE: Fetch =
cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=3Dapps/update-rc.d;=
tag=3Dr0_7
ERROR: Task failed: Fetch failed: Unable to fetch URL =
cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=3Dapps/update-rc.d;=
tag=3Dr0_7 from any source.
ERROR: Task 1217 =
(virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-core/updat=
e-rc.d/update-rc.d_0.7.bb, do_fetch) failed with 1
ERROR: =
'virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-core/updat=
e-rc.d/update-rc.d_0.7.bb' failed

- k=

