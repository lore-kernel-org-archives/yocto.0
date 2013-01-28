Return-Path: <stephen.lawrence@renesas.com>
Received: from relmlor1.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8BBBE004FE
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 09:48:02 -0800 (PST)
Received: from relmlir2.idc.renesas.com ([10.200.68.152])
	by relmlor1.idc.renesas.com ( SJSMS)
	with ESMTP id <0MHC00MO9K40KH70@relmlor1.idc.renesas.com> for
	yocto@yoctoproject.org; Tue, 29 Jan 2013 02:48:00 +0900 (JST)
Received: from relmlac2.idc.renesas.com ([10.200.69.22])
	by relmlir2.idc.renesas.com ( SJSMS)
	with ESMTP id <0MHC003O7K40F2F0@relmlir2.idc.renesas.com> for
	yocto@yoctoproject.org; Tue, 29 Jan 2013 02:48:00 +0900 (JST)
Received: by relmlac2.idc.renesas.com (Postfix, from userid 0)
	id 9D682280A4; Tue, 29 Jan 2013 02:48:00 +0900 (JST)
Received: from relmlac2.idc.renesas.com (localhost [127.0.0.1])
	by relmlac2.idc.renesas.com (Postfix) with ESMTP id 98133280A0	for
	<yocto@yoctoproject.org>; Tue, 29 Jan 2013 02:48:00 +0900 (JST)
Received: from relmlii2.idc.renesas.com [10.200.68.66]	by
	relmlac2.idc.renesas.com with ESMTP id CAC10731; Tue,
	29 Jan 2013 02:48:00 +0900
X-IronPort-AV: E=Sophos;i="4.84,553,1355065200";   d="scan'208";a="115020197"
Received: from unknown (HELO relay51.aps.necel.com) ([10.29.19.60])
	by relmlii2.idc.renesas.com with ESMTP; Tue, 29 Jan 2013 02:48:00 +0900
Received: from julia (du2com5.eu.necel.com [172.29.24.35] (may be forged))
	by relay51.aps.necel.com (8.14.4+Sun/8.14.4) with ESMTP id
	r0SHlvvp018848	for
	<yocto@yoctoproject.org>; Tue, 29 Jan 2013 02:47:57 +0900 (JST)
Received: by julia (Postfix, from userid 2)	id D4BD94E877; Mon,
	28 Jan 2013 18:47:56 +0100 (CET)
Received: from du0smtp.eu.necel.com (unknown [172.29.24.86]) by julia (Postfix)
	with ESMTP id C9DC24E872 for <yocto@yoctoproject.org>; Mon,
	28 Jan 2013 18:47:56 +0100 (CET)
To: yocto@yoctoproject.org
MIME-version: 1.0
X-KeepSent: 44D69492:16138F01-80257B01:005DC646; type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3 September 15, 2011
From: stephen.lawrence@renesas.com
Message-id: <OF44D69492.16138F01-ON80257B01.005DC646-80257B01.0061C0AD@eu.necel.com>
Date: Mon, 28 Jan 2013 17:47:42 +0000
X-MIMETrack: Serialize by Router on DU0SMTP/EE/NECEE(Release 8.5.3 HF466|March
	09, 2012) at 28.01.2013 18:47:56,
	Serialize complete at 28.01.2013 18:47:56
Subject: SRC_URI scope and kernel fragments in non-yocto kernel recipes
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
X-List-Received-Date: Mon, 28 Jan 2013 17:48:02 -0000
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable

Hi,

I'm wondering if SRC_URI has some limitations as to where it will be=20
expanded.

I have a bsp with 2 kernel recipes. One for mainline, the other for the=20
yocto kernel.
The kernel may be used with some middleware that requires some further=20
patches and kernel configuration.
I hoped to isolate these into a separate file that could be easily=20
commented in or out from the kernel bb file.
This file would have a SRC_URI +=3D for the patches and a kernel fragment=20
.cfg, e.g:
# Add some m/w patches
SRC_URI +=3D " file://some.patch"

# Add some m/w kernel req
SRC_URI +=3D " file://mw-kernel-config.cfg"

I first tried following the bsp tooling example and placed this within a=20
scc file but the SRC_URI wasn't picked up.
I most recently tried placing it in an include but had the same result.

I finally tried adding two SRC_URIs directly into the kernel recipe.
The one listing the patches was applied. The one listing the kernel=20
fragment was not.

I suspect the kernel fragment issue is down to the fact that a yocto=20
kernel recipe is not being used,
i.e. it relies on the yocto kernel meta data mechanism?

Why is the SRC_URI containing the additional patches applied when=20
referenced directly in the bb file,
but not when referenced in an include or scc file?

I suspect this has come up before, but I can't find anything in the doc or=
=20
list archives.

I'm using the poky master branch rev=20
93c04c16e45a3c8f60f8ffc0b26a78c24bda71da

Thanks for any suggestions. My aim is to get to a point I can upstream the=
=20
bsp.

Cheers

Steve


Stephen  Lawrence, Senior Engineer, Systems, Linux/SDK, Renesas Electronics=
 Europe Ltd, Dukes Meadow, Millboard Road, SL8 5FH, Bourne End, UK,  Phone:=
+44 1628 651-789, Fax:+44 1628 651-804, mailto:Stephen.Lawrence@renesas.com=
, http://www.renesas.eu

This message is intended only for the use of the addressee(s) and may conta=
in confidential and/or legally privileged information. If you are not the i=
ntended recipient, you are hereby notified that any dissemination of this e=
mail (including any attachments thereto) is strictly prohibited. If you hav=
e received this email in error, please notify the sender immediately by tel=
ephone or email  and permanently destroy the original without making any co=
py. Please note that any material and advice from this mail is provided fre=
e of charge and shall be used as an example for demonstration purposes only=
.=20
RENESAS MAKES NO WARRANTIES THAT THE USAGE OF INFORMATION OR ADVICE FROM TH=
IS E-MAIL WILL NOT INFRINGE ANY INTELLECTUAL PROPERTY RIGHTS (E.G. PATENTS,=
 COPYRIGHTS). RENESAS CANNOT GUARANTEE BUG FREE OPERATION AND THE RECIPIENT=
 WILL USE AND/OR DISTRIBUTE IT ONLY AT HIS OWN RISK. IN NO EVENT SHALL RENE=
SAS BE LIABLE FOR ANY DAMAGE.  The communication with Renesas Electronics E=
urope Ltd does not amend any written agreement in place.=20
=20
Renesas Electronics Europe Ltd, Dukes Meadow, Millboard Road, Bourne End, B=
uckinghamshire, SL8 5FH, UK.=C2=A0 Registered in England & Wales under Regi=
stered No. 04586709.

