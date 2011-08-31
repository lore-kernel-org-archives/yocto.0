Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10303E0071A
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 10:02:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Aug 2011 10:02:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,308,1312182000"; d="scan'208";a="47151063"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 31 Aug 2011 10:02:28 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Wed, 31 Aug 2011 10:02:28 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Date: Wed, 31 Aug 2011 10:02:27 -0700
Thread-Topic: [yocto] linux-yocto-rt build fail for sugarbay bsp on grub recipe
Thread-Index: Acxn/3ao1pAHwv0xSnay5so45y3EgwAAA0yw
Message-ID: <4BD43A85686FC34D819098DB1C3999D9018894C9F5@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D9018894C6CA@orsmsx502.amr.corp.intel.com>
	<1314749498.5939.450.camel@rex> <4E5DA1C6.2040207@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9018894C9BB@orsmsx502.amr.corp.intel.com>
	<4E5E68A1.4030404@intel.com>
In-Reply-To: <4E5E68A1.4030404@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux-yocto-rt build fail for sugarbay bsp on grub recipe
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
X-List-Received-Date: Wed, 31 Aug 2011 17:02:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

No.=20
First I tried without applying the patch by building freetype and then grub=
 as per your suggestion in the thread. =20
It built.

I will try a fresh build by applying the patch and let you know.

Thanks
Kishore.

-----Original Message-----
From: Hart, Darren=20
Sent: Wednesday, August 31, 2011 10:00 AM
To: Bodke, Kishore K
Cc: Richard Purdie; yocto@yoctoproject.org
Subject: Re: [yocto] linux-yocto-rt build fail for sugarbay bsp on grub rec=
ipe

On 08/31/2011 09:51 AM, Bodke, Kishore K wrote:
> When I do bitbake freetype followed by bitbake grub , the grub build succ=
essfully.
>=20
> Attached is the freetype.log and grub.log.
>=20
> It fails if I first build the bitbake grub. =20


Did you apply the patch I provided?

--
Darren


>=20
> Thanks
> Kishore.
>=20
> -----Original Message-----
> From: Hart, Darren=20
> Sent: Tuesday, August 30, 2011 7:52 PM
> To: Richard Purdie
> Cc: Bodke, Kishore K; yocto@yoctoproject.org
> Subject: Re: [yocto] linux-yocto-rt build fail for sugarbay bsp on grub r=
ecipe
>=20
> On 08/30/2011 05:11 PM, Richard Purdie wrote:
>> On Tue, 2011-08-30 at 16:59 -0700, Bodke, Kishore K wrote:
>>> Hello All,
>>>
>>> =20
>>>
>>> I am trying to build linux-yocto with rt kernel for sugarbay bsp and
>>> it fails for the grub recipe.
>>>
>>> =20
>>>
>>> Attached is the build log. =20
>>>
>>> =20
>>>
>>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>>> bitbake -e | egrep "^WARN_QA=3D"
>>>
>>> WARN_QA=3D"dev-so rpaths debug-deps dev-deps debug-files arch la2
>>> pkgconfig desktop la ldflags perms useless-rpaths"
>>>
>>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>>> bitbake -e | egrep "^ERROR_QA=3D"
>>>
>>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>>>
>>> =20
>>>
>>> Please let me know what could be the issue.
>>
>> Could you include the config.log file mentioned in the error report
>> please?
>>
>> This should be somewhere like
>> usr/local/src/crf/test/buildsugarbayrt/tmp/work/x86_64-poky-linux/grub-1=
.98-r1/*/config.log
>>
>=20
> I replied with this and a comparison file, but it was rejected due to
> being over 200k :(.
>=20
> Short of it is that Kishore's config.log shows it picking up the
> freetype libs from his host system. The patch I proposed adds a DEPENDS
> to grub on freetype.
>=20
>> Cheers,
>>
>> Richard
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20


--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

