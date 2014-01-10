Return-Path: <cristiana.voicu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AD89E0079B
	for <yocto@yoctoproject.org>; Fri, 10 Jan 2014 01:35:13 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jan 2014 01:35:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,637,1384329600"; d="scan'208";a="463087161"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jan 2014 01:35:11 -0800
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 10 Jan 2014 09:35:10 +0000
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.215]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.156]) with mapi id
	14.03.0123.003; Fri, 10 Jan 2014 09:35:10 +0000
From: "Voicu, Cristiana" <cristiana.voicu@intel.com>
To: Khaja Hussain Shaik <khajahussain-s@hcl.com>, "Barros Pena, Belen"
	<belen.barros.pena@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Chisanovici, IonutX"
	<ionutx.chisanovici@intel.com>
Thread-Topic: [yocto] hob build failed with an error Nothing RPROVIDES
	libgstinterfaces-0.10
Thread-Index: Ac8M+e7+6z5Bw+sbR2Kn1HY8HpSGSQABGoyAABbu/YAABhl+AAAVdqgAAAeXk1A=
Date: Fri, 10 Jan 2014 09:35:10 +0000
Message-ID: <BE68E9C8E0850C43B0F0B0B7D57FA5AE2E8C2E33@IRSMSX105.ger.corp.intel.com>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AEB8B4@chn-hclt-mbs06.HCLT.CORP.HCL.IN>,
	<CEF481E9.3A772%belen.barros.pena@intel.com>
	<kpvmfelcyylpilyy0c98gf0l.1389296352831@email.android.com>
	<31DD9473F5EB4E468EDC3B5642AD64BD08AEBD8B@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
In-Reply-To: <31DD9473F5EB4E468EDC3B5642AD64BD08AEBD8B@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "Kishore Divvela -ERS, HCL Tech" <kishore-d@hcl.com>
Subject: Re: hob build failed with an error Nothing RPROVIDES libgstinterfaces-0.10
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
X-List-Received-Date: Fri, 10 Jan 2014 09:35:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

Hi Khaja,

We cannot find the Intel Baytrail target layer in dylan. Can you please tel=
l us which layer contains this target and where can we find it (a link to t=
he repository)?

Thanks,
Cristiana

-----Original Message-----
From: Khaja Hussain Shaik [mailto:khajahussain-s@hcl.com]=20
Sent: Friday, January 10, 2014 7:54 AM
To: Barros Pena, Belen; yocto@yoctoproject.org
Cc: Voicu, Cristiana; Kishore Divvela -ERS, HCL Tech
Subject: RE: [yocto] hob build failed with an error Nothing RPROVIDES libgs=
tinterfaces-0.10

Hi Bel=E9n,

We are using yocto project version "Dylan (1.4)".

Thanks & Regards
Khaja

-----Original Message-----
From: Kishore Divvela -ERS, HCL Tech
Sent: Friday, January 10, 2014 1:09 AM
To: Barros Pena, Belen; Khaja Hussain Shaik; yocto@yoctoproject.org
Cc: Voicu, Cristiana
Subject: Re: [yocto] hob build failed with an error Nothing RPROVIDES libgs=
tinterfaces-0.10

It is Dora..

"Barros Pena, Belen" <belen.barros.pena@intel.com> wrote:


Hi Khaja,

Can you tell us which version of the Yocto Project you are using? Is it
1.5 (Dora)?

Thanks!

Bel=E9n

On 09/01/2014 05:51, "Khaja Hussain Shaik" <khajahussain-s@hcl.com> wrote:

>Hi ,
>
>I am trying to build images with hob command for the Intel Baytrail=20
>taget (core-image-sato).
>
>I am able to build the image without editing the recipes and packages.
>But when I Include the packages for further customizing the Image,=20
>build always fail with an error message
>
>Hob found an error:
>Required build target 'hob-image-20140108-135930' has no buildable=20
>providers.
>Missing or unbuildable dependency chain was ['hob-=20
>image-20140108-135930', =8Clibgstinterfaces-0.10']
>
>Any clues what could cause the problem.
>
>Thanks & Regards
>Khaja
>
>
>
>
>::DISCLAIMER::
>-----------------------------------------------------------------------
>---
>-----------------------------------------------------------------------
>--- The contents of this e-mail and any attachment(s) are confidential=20
>and intended for the named recipient(s) only.
>E-mail transmission is not guaranteed to be secure or error-free as=20
>information could be intercepted, corrupted,
>
>lost, destroyed, arrive late or incomplete, or may contain viruses in=20
>transmission. The e mail and its contents
>
>(with or without referred errors) shall therefore not attach any=20
>liability on the originator or HCL or its affiliates.
>
>Views or opinions, if any, presented in this email are solely those of=20
>the author and may not necessarily reflect the
>
>views or opinions of HCL or its affiliates. Any form of reproduction,=20
>dissemination, copying, disclosure, modification,
>
>distribution and / or publication of this message without the prior=20
>written consent of authorized representative of
>
>HCL is strictly prohibited. If you have received this email in error=20
>please delete it and notify the sender immediately.
>
>Before opening any email and/or attachments, please check them for=20
>viruses and other defects.
>-----------------------------------------------------------------------
>---
>-----------------------------------------------------------------------
>---


