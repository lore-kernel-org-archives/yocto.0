Return-Path: <opensource@keylevel.com>
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48E17E00B79
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 12:30:44 -0700 (PDT)
Received: from [109.224.171.0] (port=20574
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WdPLy-0000vc-1s; Thu, 24 Apr 2014 20:30:38 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB1CE9D8DD@IRSMSX105.ger.corp.intel.com>
Date: Thu, 24 Apr 2014 20:30:38 +0100
Message-Id: <8A770545-204B-492B-A0B4-A92DFC091D69@keylevel.com>
References: <97272D6808818244BD88BD72F19D658B03CAD664@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<969F26A8BAB325438E7EB80D3C3134FB1CE9D8DD@IRSMSX105.ger.corp.intel.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>
X-Mailer: Apple Mail (2.1874)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Carlos Rafael Giani <dv@pseudoterminal.org>
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
X-List-Received-Date: Thu, 24 Apr 2014 19:30:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 24 Apr 2014, at 09:45, Iorga, Cristian <cristian.iorga@intel.com> =
wrote:

> Hello Dipesh,
> YP dora is already released, as such, won't receive any new features =
or package upgrades.
> And if you need GStreamer upgrade that badly, well, why don't do it =
yourself??
> What kind of documentation you need?
>=20
> There are companies that can help you in this kind of endeavor, =
offering commercial Yocto Project support, I assume that's a solution =
also, right?

There's also https://github.com/dv1/meta-gstreamer1.0. I've used this =
with danny without any problems.

> Regards,
> Cristian Iorga
> YP
> Intel Corporation
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Dipesh Karmakar
> Sent: Wednesday, April 23, 2014 11:06 AM
> To: yocto@yoctoproject.org
> Cc: Carlos Rafael Giani
> Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto Dora
>=20
> Hi All,
>=20
> Can we integrate GST-1.2.3 to Dora? Is there any document available? =
We need it badly.
>=20
> Thanks,
> Dipesh
>=20
> -----Original Message-----
> From: Dipesh Karmakar
> Sent: Tuesday, April 22, 2014 12:41 PM
> To: 'Carlos Rafael Giani'
> Cc: yocto@yoctoproject.org; Meenakumari Shedole
> Subject: [yocto] Rgardring GSTreamer1.0 integration on Yocto Dora
>=20
> Hi Carlos,
>=20
> Do you have any plan to integrate Gstreamer-1.2.3 to Dora? I believe =
current Dora10.0.1 has GST-1.0.9.
>=20
> Thanks,
> Dipesh
>=20
> -----Original Message-----
> From: Carlos Rafael Giani [mailto:dv@pseudoterminal.org]
> Sent: Sunday, February 02, 2014 9:14 PM
> To: Khaja Hussain Shaik
> Cc: Nicolas Dechesne; yocto@yoctoproject.org; Dipesh Karmakar; Paul =
Eggleton; Kishore Divvela -ERS, HCL Tech
> Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto dylan
>=20
> On 2014-01-28 13:49, Khaja Hussain Shaik wrote:
>> Hi Carlos,
>>=20
>> Did you get a chance to look into the porting of gst1.0 to Dylan?
>>=20
>> Regards
>> Khaja
>>=20
>=20
> I have now upgraded the recipes in meta-gstreamer1.0 to version 1.2.2.=20=

> It is a backport from the current OE-core recipes. Furthermore, I =
added the Orc OE-core recipes to this layer. This way, gstreamer is =
built with Orc support by default, even for danny and dylan.
>=20
> cheers,
> Carlos
>=20
>=20
> ::DISCLAIMER::
> =
--------------------------------------------------------------------------=
--------------------------------------------------------------------------=

>=20
> The contents of this e-mail and any attachment(s) are confidential and =
intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as =
information could be intercepted, corrupted, lost, destroyed, arrive =
late or incomplete, or may contain viruses in transmission. The e mail =
and its contents (with or without referred errors) shall therefore not =
attach any liability on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of =
the author and may not necessarily reflect the views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, =
disclosure, modification, distribution and / or publication of this =
message without the prior written consent of authorized representative =
of HCL is strictly prohibited. If you have received this email in error =
please delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for =
viruses and other defects.
>=20
> =
--------------------------------------------------------------------------=
--------------------------------------------------------------------------=

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




