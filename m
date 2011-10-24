Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E685CE011AC
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 08:55:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Oct 2011 08:55:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="66280088"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2011 08:55:46 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 24 Oct 2011 08:55:46 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.14]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.181]) with mapi id
	14.01.0323.003; Mon, 24 Oct 2011 08:55:45 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Thread-Topic: [yocto] Eclipse Plugin:  ADT Version too old
Thread-Index: AQHMkiv231TYZIjTK0CFy+cF5GJFspWLrLaAgAABiYD///IxoIAAeCoA//+NZiA=
Date: Mon, 24 Oct 2011 15:55:45 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com>
References: <4EA529F5.4010706@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
	<4EA52E9F.9070001@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
	<4EA587D6.1090406@communistcode.co.uk>
In-Reply-To: <4EA587D6.1090406@communistcode.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 24 Oct 2011 15:55:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

OK missed your env post. Then this is your problem:

16.export OECORE_DISTRO_VERSION=3D"1.1+snapshot-20111021"
17.export OECORE_SDK_VERSION=3D"1.1+snapshot"

They need to be 1.1 instead of 1.1+snapshot.  You need to update your Ediso=
n branch then do "bitbake meta-ide-support"

-----Original Message-----
From: Jack Mitchell [mailto:ml@communistcode.co.uk]
Sent: Monday, October 24, 2011 8:44 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Eclipse Plugin: ADT Version too old

On 24/10/2011 16:42, Zhang, Jessica wrote:
> Hi Jack,
>
> So you mean you did "bitbake meta-ide-support" to use the build tree?
>
> I just tried with my Edison build tree mode on my laptop and it works fin=
e. So can you check under your build/tmp directory, there should be an envi=
ronment-setup-*-poky-linux file, where * is your target arch.  At the end f=
ile do you have several OECORE_* settings ? If not, you need to rerun "bitb=
ake meta-ide-support" and ensure there're OECORE_* settings at the end.
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Jack Mitchell
> Sent: Monday, October 24, 2011 2:24 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Eclipse Plugin: ADT Version too old
>
> On 24/10/2011 10:18, Lu, Lianhao wrote:
>> Jack Mitchell wrote on 2011-10-24:
>>> I am trying to use the new eclipse plugin, which I have had working
>>> fine for the past couple of weeks until I switched from the master bran=
ch to edison.
>>>
>>> I performed a fresh build using the stable edison branch, installed
>>> the new 1.1 eclipse plugin and now whenever I try to setup the Yocto
>>> eclipse environment I receive the following error:
>>>
>>> Yocto Preferences Configuration Error!
>>> OECORE related items are not found in envrionement setup files.
>>> The ADT version you're using is too old.
>>> Please upgrade to our latest ADT Version!
>>>
>>> This pops up in a message box, not the eclipse console. I have
>>> followed the ADT Setup guide to the letter and it's not playing ball -
>>> could someone confirm this as working or point me towards a reason why =
I may be getting this error?
>>>
>> Hi Jack,
>>
>> How did you install your ADT? You can check the ADT version by "cat" the=
 file /opt/poky/${version}/version-xxxx, where xxxx is your target sys arch=
itecture.
>>
>> -Lianhao
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> Hi Lianhao,
>
> I am using the yocto build tree so I don't have an installed ADT in /opt
> but one that has been generated within my build directory, this is
> correct yes?
>
> Jack.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Jessica,

I posted my environment settings earlier, which are located here:
http://pastebin.com/4vnWPAD2

Yes, I did use bitbake meta-ide-support to build my root.

