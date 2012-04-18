Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D227CE0140A
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 05:45:11 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb [147.11.189.41])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3ICj90N029318
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Apr 2012 05:45:09 -0700 (PDT)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.1.100]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.01.0255.000;
	Wed, 18 Apr 2012 05:45:08 -0700
From: "Hatle, Mark" <mark.hatle@windriver.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Thread-Topic: A question about PACKAGE_ARCH renaming
Thread-Index: AQHNHPvxOMDzdnvKpEqRRK4yDGk4p5aggT4AgAAG9fw=
Date: Wed, 18 Apr 2012 12:45:11 +0000
Message-ID: <C3CEA23F-CADF-4127-AFBE-191B2CE602BC@windriver.com>
References: <1334624465.26744.4.camel@dongxiao-osel>
	<4F8D8DB7.6030301@windriver.com>
	<1334709480.26744.10.camel@dongxiao-osel>,
	<1334726414.26744.21.camel@dongxiao-osel>
In-Reply-To: <1334726414.26744.21.camel@dongxiao-osel>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: A question about PACKAGE_ARCH renaming
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
X-List-Received-Date: Wed, 18 Apr 2012 12:45:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

There is/was a conversion that changed - to _ in the package arch.  And yes=
 this needs to be fixed ASAP.



On Apr 18, 2012, at 12:23 AM, "Xu, Dongxiao" <dongxiao.xu@intel.com> wrote:

> On Wed, 2012-04-18 at 08:38 +0800, Xu, Dongxiao wrote:
>> On Tue, 2012-04-17 at 10:35 -0500, Mark Hatle wrote:
>>> On 4/16/12 8:01 PM, Xu, Dongxiao wrote:
>>>> Hi,
>>>>=20
>>>> I am testing beagleboard with RPM, and there is a question I am confus=
ed
>>>> with that PACKAGE_ARCH is renamed for certain packages. For example th=
e
>>>> "acl" package, whose expected PACKAGE_ARCH is "armv7a-vfp-neon", howev=
er
>>>> in RPM file, the arch is renamed to "armv7a", see
>>>> "acl-2.2.51-r2.armv7a.rpm". However IPK package still shows
>>>> "acl_2.2.51-r2_armv7a-vfp-neon.ipk".
>>>>=20
>>>> Could anybody give hint on this?
>>>>=20
>>>> Thanks,
>>>> Dongxiao
>>>>=20
>>>=20
>>> I've not seen that happen before.  Can you checked if an=20
>>> acl-...armv7a-vfp-neon.rpm was generated and RPM is simply not using it=
, or was=20
>>> it never generated?
>>=20
>> No, there is no acl-xxx.armv7a-vfp-neon.rpm, only acl-xxx.armv7a.rpm
>> created.
>=20
> Just looked at this issue with Lianhao, and we got some clues.
>=20
> It seems that we don't allow '-' exists in architecture label within
> RPM. Here for the beagleboard case, we use the parameter as:
>=20
> rpm ... --target "armv7a-vfp-neon-poky-linux"
>=20
> I think the RPM internal strips all the contents after the first '-' and
> use "armv7a" as the architecture label.
>=20
> Similar is the multilib case, we can see from the code that, we use
> 'lib64_qemux86' instead of 'lib64-qemux86' as the architecture label.
>=20
> If our thoughts are right, I think we need a fix for that before 1.2
> release?
>=20
> Thanks,
> Dongxiao
>=20
>>=20
>> Actually I think this issue does exist since our 1.1 release, you can
>> have a look at the package repo:
>>=20
>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/rpm/armv7a-vf=
p-neon/
>>=20
>> The directory is named as "armv7a-vfp-neon", however all the packages
>> under the directory are of "armv7a" architecture.
>>=20
>> While see the ipk part:
>> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/ipk/armv7a-vf=
p-neon/
>> The directory name and rpm architecture name are the same.
>>=20
>> Thanks,
>> Dongxiao
>>=20
>>>=20
>>> As another user mentioned, it is possible for a package to say it wants=
 a=20
>>> specific arch type, but if it did -- it should be consistent between pa=
ckaging=20
>>> systems.
>>>=20
>>> --Mark
>>=20
>=20
>=20

