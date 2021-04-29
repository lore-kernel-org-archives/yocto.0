Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web11.1222.1619662546717211942
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Apr 2021 19:15:46 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: RbzkRB5wpupKq2CRENMuMYunMos5eang65xrHo1kEumO+VCvpZTz3cuGPKx4SEYGE/iONXMizX
 Am5xPzx1n6Pw==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="217627918"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; 
   d="scan'208";a="217627918"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2021 19:15:45 -0700
IronPort-SDR: 6iTvkHvVcwloDj8JMxXlfwbnjKRC8A15GBDeqfyJyZACuZqM0va2B7xUhxcvCNUM6p+k0b3ogv
 3e2GqujN05CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; 
   d="scan'208";a="466163697"
Received: from kmsmsx602.gar.corp.intel.com ([172.21.219.142])
  by orsmga001.jf.intel.com with ESMTP; 28 Apr 2021 19:15:44 -0700
Received: from pgsmsx601.gar.corp.intel.com (10.108.199.136) by
 kmsmsx602.gar.corp.intel.com (172.21.219.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 29 Apr 2021 10:15:43 +0800
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136]) by
 pgsmsx601.gar.corp.intel.com ([10.108.199.136]) with mapi id 15.01.2106.013;
 Thu, 29 Apr 2021 10:15:43 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: Khem Raj <raj.khem@gmail.com>, "steven.monsees@baesystems.com"
	<steven.monsees@baesystems.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto opencl
Thread-Topic: [yocto] #yocto opencl
Thread-Index: Adc8U9WP5gqlK8L+SxSyMXjFES0bZgABXRQAABDrudA=
Date: Thu, 29 Apr 2021 02:15:43 +0000
Message-ID: <e37281fac1264c73b4e28c3722049d22@intel.com>
References: <MADEUP.167A15D6303F863D.17467@lists.yoctoproject.org>
 <158a82d4-064b-72fe-01c8-ae8e6ba5f69e@gmail.com>
In-Reply-To: <158a82d4-064b-72fe-01c8-ae8e6ba5f69e@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of
> Khem Raj
> Sent: Thursday, April 29, 2021 10:07 AM
> To: steven.monsees@baesystems.com; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto opencl
>=20
>=20
>=20
> On 4/28/21 10:30 AM, Monsees, Steven C (US) via lists.yoctoproject.org
> wrote:
> > Can someone tell me is this supported under Yocto in any way?
> >
> > meta-beignet/recipes-opencl at ross * rossburton/meta-beignet * GitHub
> > <https://github.com/rossburton/meta-beignet/tree/ross/recipes-opencl>
> >
> > Any docs, or updates ?
> >
> > Wanted to know if this would work under Zeus, with meta-clang ?
> >
> > Looking to build opencl shared library support...
>=20
> meta-intel has it see
> https://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/dynamic-layers=
/clang-
> layer/recipes-opencl/opencl-clang?h=3Dzeus
>=20

Yes, please see the compute-runtime recipe that builds NEO driver instead f=
or later platforms. More details on the project site:

https://github.com/intel/compute-runtime/blob/master/opencl/doc/FAQ.md

Thanks,

Anuj
