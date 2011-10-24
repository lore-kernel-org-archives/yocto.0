Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 912B9E0138B
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 08:42:31 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Oct 2011 08:42:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,398,1315206000"; d="scan'208";a="65768243"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 24 Oct 2011 08:42:30 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 24 Oct 2011 08:42:29 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.14]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.170]) with mapi id
	14.01.0323.003; Mon, 24 Oct 2011 08:42:29 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Jack Mitchell <ml@communistcode.co.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Eclipse Plugin:  ADT Version too old
Thread-Index: AQHMkiv231TYZIjTK0CFy+cF5GJFspWLrLaAgAABiYD///IxoA==
Date: Mon, 24 Oct 2011 15:42:29 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
References: <4EA529F5.4010706@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
	<4EA52E9F.9070001@communistcode.co.uk>
In-Reply-To: <4EA52E9F.9070001@communistcode.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Mon, 24 Oct 2011 15:42:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jack,

So you mean you did "bitbake meta-ide-support" to use the build tree?

I just tried with my Edison build tree mode on my laptop and it works fine.=
 So can you check under your build/tmp directory, there should be an enviro=
nment-setup-*-poky-linux file, where * is your target arch.  At the end fil=
e do you have several OECORE_* settings ? If not, you need to rerun "bitbak=
e meta-ide-support" and ensure there're OECORE_* settings at the end.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jack Mitchell
Sent: Monday, October 24, 2011 2:24 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] Eclipse Plugin: ADT Version too old

On 24/10/2011 10:18, Lu, Lianhao wrote:
> Jack Mitchell wrote on 2011-10-24:
>> I am trying to use the new eclipse plugin, which I have had working
>> fine for the past couple of weeks until I switched from the master branc=
h to edison.
>>
>> I performed a fresh build using the stable edison branch, installed
>> the new 1.1 eclipse plugin and now whenever I try to setup the Yocto
>> eclipse environment I receive the following error:
>>
>> Yocto Preferences Configuration Error!
>> OECORE related items are not found in envrionement setup files.
>> The ADT version you're using is too old.
>> Please upgrade to our latest ADT Version!
>>
>> This pops up in a message box, not the eclipse console. I have
>> followed the ADT Setup guide to the letter and it's not playing ball -
>> could someone confirm this as working or point me towards a reason why I=
 may be getting this error?
>>
> Hi Jack,
>
> How did you install your ADT? You can check the ADT version by "cat" the =
file /opt/poky/${version}/version-xxxx, where xxxx is your target sys archi=
tecture.
>
> -Lianhao
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Lianhao,

I am using the yocto build tree so I don't have an installed ADT in /opt
but one that has been generated within my build directory, this is
correct yes?

Jack.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

