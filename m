Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C53FEE007ED
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2014 08:44:43 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Jan 2014 08:40:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,631,1384329600"; d="scan'208";a="464205001"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 09 Jan 2014 08:44:41 -0800
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 9 Jan 2014 16:44:38 +0000
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.188]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.215]) with mapi id
	14.03.0123.003; Thu, 9 Jan 2014 16:44:38 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Khaja Hussain Shaik <khajahussain-s@hcl.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] hob build failed with an error Nothing RPROVIDES
	libgstinterfaces-0.10
Thread-Index: AQHPDVoVIbNLVUbQ50WePgM9B8Bdmg==
Date: Thu, 9 Jan 2014 16:44:37 +0000
Message-ID: <CEF481E9.3A772%belen.barros.pena@intel.com>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AEB8B4@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
In-Reply-To: <31DD9473F5EB4E468EDC3B5642AD64BD08AEB8B4@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.9.131030
x-originating-ip: [10.237.224.31]
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
X-List-Received-Date: Thu, 09 Jan 2014 16:44:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <CCC356DE03A47647BCE264675FC116DE@intel.com>
Content-Transfer-Encoding: quoted-printable

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


