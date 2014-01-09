Return-Path: <kishore-d@hcl.com>
Received: from GWS07.hcl.com (gws07.hcl.com [192.8.186.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58C5DE007ED
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2014 11:39:46 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.95,633,1384281000"; d="scan'208";a="17875253"
Received: from unknown (HELO CHN-CORP-HT01.CORP.HCL.IN) ([10.249.2.33])
	by GWS07.hcl.com with ESMTP/TLS/AES128-SHA; 10 Jan 2014 00:51:15 +0530
Received: from CHN-HCLT-CSHT01.HCLT.CORP.HCL.IN (10.150.12.26) by
	CHN-CORP-HT01.CORP.HCL.IN (10.249.2.33) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 10 Jan 2014 01:09:16 +0530
Received: from CHN-HCLT-MBS06.HCLT.CORP.HCL.IN ([10.150.12.21]) by
	CHN-HCLT-CSHT01.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Fri, 10 Jan 2014 01:09:16 +0530
From: "Kishore Divvela -ERS, HCL Tech" <kishore-d@hcl.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>, Khaja Hussain Shaik
	<khajahussain-s@hcl.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] hob build failed with an error Nothing RPROVIDES
	libgstinterfaces-0.10
Thread-Index: Ac8M+e7+6z5Bw+sbR2Kn1HY8HpSGSQABGoyAAAtoj4AAEZ/vvw==
Date: Thu, 9 Jan 2014 19:39:16 +0000
Message-ID: <kpvmfelcyylpilyy0c98gf0l.1389296352831@email.android.com>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AEB8B4@chn-hclt-mbs06.HCLT.CORP.HCL.IN>,
	<CEF481E9.3A772%belen.barros.pena@intel.com>
In-Reply-To: <CEF481E9.3A772%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Jan 2014 07:17:07 -0800
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
X-List-Received-Date: Thu, 09 Jan 2014 19:39:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

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
>I am trying to build images with hob command for the Intel Baytrail taget
>(core-image-sato).
>
>I am able to build the image without editing the recipes and packages.
>But when I Include the packages for further customizing the Image, build
>always fail with an error message
>
>Hob found an error:
>Required build target 'hob-image-20140108-135930' has
>no buildable providers.
>Missing or unbuildable dependency chain was ['hob-
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


