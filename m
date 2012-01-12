Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CB29E01376
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 13:54:28 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Jan 2012 13:28:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="95257556"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 12 Jan 2012 13:28:11 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 12 Jan 2012 13:28:07 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.110]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.219]) with mapi id
	14.01.0355.002; Thu, 12 Jan 2012 13:28:07 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>, "Ahmad, Josef"
	<josef.ahmad@intel.com>
Thread-Topic: [yocto] qemu EFI build failure
Thread-Index: AQHM0UYiORTwDo1En0uBJ1hgdtKEQ5YJk1iAgAAwFQD//3s54A==
Date: Thu, 12 Jan 2012 21:28:07 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE202325B@ORSMSX105.amr.corp.intel.com>
References: <CACJvPv3H8QaGffS3kdS1qLogcwn9L1ZsYpzqo6eei6LMK_7=WQ@mail.gmail.com>
	<4F0F2627.3010004@linux.intel.com> <4F0F4E7C.9030506@intel.com>
In-Reply-To: <4F0F4E7C.9030506@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemu EFI build failure
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
X-List-Received-Date: Thu, 12 Jan 2012 21:54:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have only=20
MACHINE_FEATURES +=3D "efi"
KERNEL_FEATURES_append_cedartrail +=3D "cfg/efi-ext.scc".

I am not having IMAGE_FSTYPES +=3D "live".

Thanks
Kishore.
-----Original Message-----
From: Hart, Darren=20
Sent: Thursday, January 12, 2012 1:20 PM
To: Ahmad, Josef
Cc: yocto@yoctoproject.org; Bodke, Kishore K; Kamble, Nitin A
Subject: Re: [yocto] qemu EFI build failure

On 01/12/2012 10:27 AM, Darren Hart wrote:
>=20
>=20
> On 01/12/2012 08:19 AM, Josef Ahmad wrote:
>> I tried to build a qemux86 EFI image, by setting:
>> - in my local.conf: IMAGE_FSTYPES +=3D "live"
>> - in poly/meta/conf/machine/qemux86.conf: MACHINE_FEATURES +=3D "efi"
>>
>=20
> I haven't tried live images with QEMU. For one thing, they aren't really
> necessary as you can specify all the boot parameters on the qemu command
> line. Is there are reason you want to use the live image specifically?
>=20
> Also, in order to properly test EFI in QEMU, you will need to use an EFI
> BIOS - I believe you're aware of this already - but this isn't currently
> supported by the runqemu scripts that ship with yocto.
>=20
>> The build gave me the following error:
>=20
>=20
> I'll do some test builds - it isn't clear to me what is going on here.
>=20
> <snip>
>=20
>>
>>
>> Has anyone encountered the same error?  I'm not sure I set up the
>> correct configuration. Also, is there another way to append "efi" to
>> MACHINE_FEATURES rather than by modifying qemux86.conf?
>=20
> You should be able to do something like:
> MACHINE_FEATURES_append_qemux86 =3D "efi"
>=20
> Note that you will also need to enable the efi support in the kernel,
> which is done with the KERNEL_FEATURES variable, something like:
> KERNEL_FEATURES_append_qemux86 =3D "conf/efi-ext.scc"
>=20
> Either of these can be set in your local.conf.
>=20

More accurately:

MACHINE_FEATURES_append_qemux86=3D" efi pcbios"
KERNEL_FEATURES_append_qemux86=3D" cfg/efi-ext.scc"
IMAGE_FSTYPES +=3D "live"

With these added to local.conf and building for qemux86 I see the same
configure failures reported by Kishore and Josef:

| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:363: grub_CHECK_STACK_ARG_PROBE is expanded from...

I've discussed in IRC with Nitin and he thinks this may be related to
the automake update and is looking into it.

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

