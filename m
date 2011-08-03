Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 566914C800B2
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 10:55:52 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Aug 2011 08:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,311,1309762800"; d="scan'208";a="37503731"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 03 Aug 2011 08:55:43 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 3 Aug 2011 08:55:43 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.233]) by
	ORSMSX152.amr.corp.intel.com ([169.254.6.186]) with mapi id
	14.01.0289.001; Wed, 3 Aug 2011 08:55:43 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, Kumar Gala
	<galak@kernel.crashing.org>
Thread-Topic: [yocto] examples / docs on utilizing an external toolchain
Thread-Index: AQHMTNeqq9+l16KFGk+9iCoZtwlUIpUDLrSAgAcKI4D//4+dgIAB37OAgAAFLwCAAAHGgIAABbcAgAADawD//5mZ4A==
Date: Wed, 3 Aug 2011 15:55:42 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237913701465@ORSMSX101.amr.corp.intel.com>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<39D3DACD-5A1F-4992-BB52-C581EAD4B17C@kernel.crashing.org>
	<1312381376.2344.671.camel@rex>
	<201108031529.17776.paul.eggleton@linux.intel.com>
	<BAE8F4D8-4A85-435C-93DC-1DD174DA9AFE@kernel.crashing.org>
	<CAPhnLPACr0n0BwT4M5pmpqVy84diPnHO6Z9gTJiNuLDTM8ebcw@mail.gmail.com>
In-Reply-To: <CAPhnLPACr0n0BwT4M5pmpqVy84diPnHO6Z9gTJiNuLDTM8ebcw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Wed, 03 Aug 2011 15:55:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok - ping me when you want to discuss this

-----Original Message-----
From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]=20
Sent: Wednesday, August 03, 2011 8:02 AM
To: Kumar Gala
Cc: Paul Eggleton; yocto@yoctoproject.org; Rifenbark, Scott M
Subject: Re: [yocto] examples / docs on utilizing an external toolchain

No, they're generated ad-hoc when needed.

Scott, let's regenerate them and talk about a regular generation of
them offline.

-b

On Wed, Aug 3, 2011 at 7:49 AM, Kumar Gala <galak@kernel.crashing.org> wrot=
e:
>
> On Aug 3, 2011, at 9:29 AM, Paul Eggleton wrote:
>
>> On Wednesday 03 August 2011 15:22:56 Richard Purdie wrote:
>>> On Wed, 2011-08-03 at 09:04 -0500, Kumar Gala wrote:
>>>> Bug submitted:
>>>>
>>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1323
>>>>
>>>> My question still stands even w/o it being in formal docs.
>>>
>>> FWIW, POKYMODE was replaced by TCMODE as part of the OE-Core changes.
>>> I'd be interested to know where we've missed the references to it and
>>> get to get those references fixed.
>>
>> git grep tells me we still have it in local.conf.sample in meta-yocto, a=
s well
>> as in the reference manual.
>
> Yep, and not sure if the online docs:
>
> http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html
>
> are generated nightly or not?
>
> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

