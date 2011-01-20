Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42A534C810DA
	for <yocto@yoctoproject.org>; Wed, 19 Jan 2011 23:06:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jan 2011 21:06:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,348,1291622400"; d="scan'208";a="879171940"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jan 2011 21:06:06 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 20 Jan 2011 13:06:05 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 20 Jan 2011 13:06:04 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Thu, 20 Jan 2011 13:06:03 +0800
Thread-Topic: [yocto] Generation of upgrade statistics table
Thread-Index: Acu4X4eApLJjY2HAR+m3/qqWRsfxEQAAChfA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31C3E855@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A31C3E710@shsmsx501.ccr.corp.intel.com>
	<4D37C260.7010106@intel.com>
In-Reply-To: <4D37C260.7010106@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Generation of upgrade statistics table
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
X-List-Received-Date: Thu, 20 Jan 2011 05:06:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Wold, Saul wrote:
> On 01/19/2011 06:23 PM, Xu, Dongxiao wrote:
>> Hi Saul,
>>=20
>> Could you share with us how you generate your upgrade statistics
>> table?=20
>> We want to locally have a try of it and see if there is anything we
>> missed.=20
>>=20
> Dongziao,
>=20
> I use the checkpkg task in distrodata.bbclass, you need to ensure you
> add INHERIT +=3D distrodata to your local.conf to enable it.=20

Thanks, we will have a try.

-- Dongxiao

>=20
> Sau!
>=20
>> Thanks,
>> Dongxiao
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


