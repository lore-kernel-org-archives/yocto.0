Return-Path: <khajahussain-s@hcl.com>
Received: from GWS07.hcl.com (gws07.hcl.com [192.8.186.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56231E00855
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2014 21:44:07 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.95,636,1384281000"; d="scan'208";a="17882116"
Received: from unknown (HELO CHN-CORP-HT01.CORP.HCL.IN) ([10.249.2.33])
	by GWS07.hcl.com with ESMTP/TLS/AES128-SHA; 10 Jan 2014 10:55:59 +0530
Received: from CHN-HCLT-CSHT04.HCLT.CORP.HCL.IN (10.150.12.29) by
	CHN-CORP-HT01.CORP.HCL.IN (10.249.2.33) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 10 Jan 2014 11:14:02 +0530
Received: from CHN-HCLT-MBS06.HCLT.CORP.HCL.IN ([10.150.12.21]) by
	CHN-HCLT-CSHT04.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Fri, 10 Jan 2014 11:14:02 +0530
From: Khaja Hussain Shaik <khajahussain-s@hcl.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] hob build failed with an error Nothing RPROVIDES
	libgstinterfaces-0.10
Thread-Index: Ac8M+e7+6z5Bw+sbR2Kn1HY8HpSGSQABGoyAAAtoj4AAJnsKQA==
Date: Fri, 10 Jan 2014 05:44:01 +0000
Message-ID: <31DD9473F5EB4E468EDC3B5642AD64BD08AEBD6D@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AEB8B4@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<CEF481E9.3A772%belen.barros.pena@intel.com>
In-Reply-To: <CEF481E9.3A772%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.114]
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
X-List-Received-Date: Fri, 10 Jan 2014 05:44:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="windows-1256"
Content-Transfer-Encoding: quoted-printable

Hi Bel=E9n.

I am using yocto project version "Dylan (1.4)".

Regards
Khaja

-----Original Message-----
From: Barros Pena, Belen [mailto:belen.barros.pena@intel.com]=20
Sent: Thursday, January 09, 2014 10:15 PM
To: Khaja Hussain Shaik; yocto@yoctoproject.org
Cc: Kishore Divvela -ERS, HCL Tech; Voicu, Cristiana
Subject: Re: [yocto] hob build failed with an error Nothing RPROVIDES libgs=
tinterfaces-0.10

Hi Khaja,

Can you tell us which version of the Yocto Project you are using? Is it
1.5 (Dora)?

Thanks!

Bel=E9n

On 09/01/2014 05:51, "Khaja Hussain Shaik" <khajahussain-s@hcl.com> wrote:

>Hi ,
>=20
>I am trying to build images with hob command for the Intel Baytrail taget
>(core-image-sato).
>
>I am able to build the image without editing the recipes and packages.
>But when I Include the packages for further customizing the Image, build
>always fail with an error message
>=20
>Hob found an error:
>Required build target 'hob-image-20140108-135930' has
>no buildable providers.
>Missing or unbuildable dependency chain was ['hob-
>image-20140108-135930', =8Clibgstinterfaces-0.10']
>=20
>Any clues what could cause the problem.
>=20
>Thanks & Regards
>Khaja
>=20
>
>
>
>::DISCLAIMER::
>--------------------------------------------------------------------------
>--------------------------------------------------------------------------
>The contents of this e-mail and any attachment(s) are confidential and
>intended for the named recipient(s) only.
>E-mail transmission is not guaranteed to be secure or error-free as
>information could be intercepted, corrupted,
>
>lost, destroyed, arrive late or incomplete, or may contain viruses in
>transmission. The e mail and its contents
>
>(with or without referred errors) shall therefore not attach any
>liability on the originator or HCL or its affiliates.
>
>Views or opinions, if any, presented in this email are solely those of
>the author and may not necessarily reflect the
>
>views or opinions of HCL or its affiliates. Any form of reproduction,
>dissemination, copying, disclosure, modification,
>
>distribution and / or publication of this message without the prior
>written consent of authorized representative of
>
>HCL is strictly prohibited. If you have received this email in error
>please delete it and notify the sender immediately.
>
>Before opening any email and/or attachments, please check them for
>viruses and other defects.
>--------------------------------------------------------------------------
>--------------------------------------------------------------------------


