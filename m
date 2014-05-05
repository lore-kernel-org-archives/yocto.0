Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C390E00BC1; Mon,  5 May 2014 16:00:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6F88E00B5D
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 16:00:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 May 2014 16:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,992,1389772800"; d="scan'208";a="506373340"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga001.jf.intel.com with ESMTP; 05 May 2014 16:00:08 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.200]) with mapi id
	14.03.0123.003; Mon, 5 May 2014 16:00:08 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] [PATCH 1/1] dylan: fix C++ standard library headers on
	OS X
Thread-Index: AQHPZZF9y6Ed61iBiEeKazT6i7KYyJsuHmgAgAT3aAA=
Date: Mon, 5 May 2014 23:00:08 +0000
Message-ID: <0C2F47D8-E3E0-4FB1-8BEB-4FBAB54DF976@intel.com>
References: <9B489023-F966-4C06-ACD4-A5028E46D5F1@intel.com>
	<1399057794.12731.61.camel@ted>
In-Reply-To: <1399057794.12731.61.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.28]
MIME-Version: 1.0
Cc: Yocto Project Main <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] dylan: fix C++ standard library headers on OS X
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
X-List-Received-Date: Mon, 05 May 2014 23:00:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <0CF40E17E8208740A2DE5CCAD52BE6F5@intel.com>
Content-Transfer-Encoding: quoted-printable

Nice. I will resend, along with the one I just discovered for the meta-ming=
w layer, which needs a similar fix for kconfig-frontends-native.

=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group

On May 2, 2014, at 12:09, Richard Purdie <richard.purdie@linuxfoundation.or=
g> wrote:

> On Thu, 2014-05-01 at 23:02 +0000, Woodyatt, James wrote:
>> commit 562fa987cea60d61c256195adce7e83bf1c1a8c9
>> Author: james woodyatt <james.woodyatt@intel.com>
>> Date:   Thu May 1 14:44:39 2014 -0700
>>=20
>>    Fix C++ standard library header directory configuration.
>>=20
>>    Remove the 4.2.1 directory from the --with-gxx-include-dir path provi=
ded
>>    to the configure script for GCC 4.7 in the cross-canadian build.
>>=20
>> diff --git a/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend b/reci=
pes-devt
>> index 3fcc012..083b930 100644
>> --- a/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend
>> +++ b/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend
>> @@ -4,7 +4,7 @@ INSANE_SKIP_${PN}_append_darwinsdk =3D " staticdev"
>> LDFLAGS_darwinsdk =3D "${BUILDSDK_LDFLAGS} -L${libdir}/.."
>>=20
>> # Change gxx-include-dir
>> -EXTRA_OECONF_PATHS_darwinsdk =3D "--with-gxx-include-dir=3D${SDKPATH}/s=
ysroots/${TU
>> +EXTRA_OECONF_PATHS_darwinsdk =3D "--with-gxx-include-dir=3D${SDKPATH}/s=
ysroots/${TU
>>                       --with-build-time-tools=3D${STAGING_DIR_NATIVE}${p=
refix_nat
>>                       --with-sysroot=3D${SDKPATH}/sysroots/${TUNE_PKGARC=
H}${TARGE
>>                       --with-build-sysroot=3D${STAGING_DIR_TARGET}"
>>=20
>=20
> This patch is truncated at the linewrap unfortunately :(
>=20
> Cheers,
>=20
> Richard


