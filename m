Return-Path: <cristian.iorga@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43603E006EC
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 01:45:46 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Apr 2014 01:45:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,917,1389772800"; d="scan'208";a="423044501"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 24 Apr 2014 01:45:43 -0700
Received: from irsmsx107.ger.corp.intel.com (163.33.3.99) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 24 Apr 2014 09:45:02 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.70]) by
	IRSMSX107.ger.corp.intel.com ([169.254.10.172]) with mapi id
	14.03.0123.003; Thu, 24 Apr 2014 09:45:01 +0100
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Rgardring GSTreamer1.0 integration on Yocto Dora
Thread-Index: Ac9d+MKqisnKvBogTdCza2JCCG0m6AA0O0hgADPGdAA=
Date: Thu, 24 Apr 2014 08:45:01 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB1CE9D8DD@IRSMSX105.ger.corp.intel.com>
References: <97272D6808818244BD88BD72F19D658B03CAD664@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
In-Reply-To: <97272D6808818244BD88BD72F19D658B03CAD664@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: Carlos Rafael Giani <dv@pseudoterminal.org>
Subject: Re: Rgardring GSTreamer1.0 integration on Yocto Dora
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
X-List-Received-Date: Thu, 24 Apr 2014 08:45:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Dipesh,
YP dora is already released, as such, won't receive any new features or pac=
kage upgrades.
And if you need GStreamer upgrade that badly, well, why don't do it yoursel=
f??
What kind of documentation you need?

There are companies that can help you in this kind of endeavor, offering co=
mmercial Yocto Project support, I assume that's a solution also, right?

Regards,
Cristian Iorga
YP
Intel Corporation

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Dipesh Karmakar
Sent: Wednesday, April 23, 2014 11:06 AM
To: yocto@yoctoproject.org
Cc: Carlos Rafael Giani
Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto Dora

Hi All,

Can we integrate GST-1.2.3 to Dora? Is there any document available? We nee=
d it badly.

Thanks,
Dipesh

-----Original Message-----
From: Dipesh Karmakar
Sent: Tuesday, April 22, 2014 12:41 PM
To: 'Carlos Rafael Giani'
Cc: yocto@yoctoproject.org; Meenakumari Shedole
Subject: [yocto] Rgardring GSTreamer1.0 integration on Yocto Dora

Hi Carlos,

Do you have any plan to integrate Gstreamer-1.2.3 to Dora? I believe curren=
t Dora10.0.1 has GST-1.0.9.

Thanks,
Dipesh

-----Original Message-----
From: Carlos Rafael Giani [mailto:dv@pseudoterminal.org]
Sent: Sunday, February 02, 2014 9:14 PM
To: Khaja Hussain Shaik
Cc: Nicolas Dechesne; yocto@yoctoproject.org; Dipesh Karmakar; Paul Eggleto=
n; Kishore Divvela -ERS, HCL Tech
Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto dylan

On 2014-01-28 13:49, Khaja Hussain Shaik wrote:
> Hi Carlos,
>
> Did you get a chance to look into the porting of gst1.0 to Dylan?
>
> Regards
> Khaja
>

I have now upgraded the recipes in meta-gstreamer1.0 to version 1.2.2.=20
It is a backport from the current OE-core recipes. Furthermore, I added the=
 Orc OE-core recipes to this layer. This way, gstreamer is built with Orc s=
upport by default, even for danny and dylan.

cheers,
Carlos


::DISCLAIMER::
---------------------------------------------------------------------------=
-------------------------------------------------------------------------

The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted, lost, destroyed, arrive late or incom=
plete, or may contain viruses in transmission. The e mail and its contents =
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the views or opinions of HCL or its =
affiliates. Any form of reproduction, dissemination, copying, disclosure, m=
odification, distribution and / or publication of this message without the =
prior written consent of authorized representative of HCL is strictly prohi=
bited. If you have received this email in error please delete it and notify=
 the sender immediately.
Before opening any email and/or attachments, please check them for viruses =
and other defects.

---------------------------------------------------------------------------=
-------------------------------------------------------------------------
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

