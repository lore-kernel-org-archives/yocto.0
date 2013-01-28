Return-Path: <stephen.lawrence@renesas.com>
Received: from relmlor1.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92507E004FE
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 10:34:36 -0800 (PST)
Received: from relmlir1.idc.renesas.com ([10.200.68.151])
	by relmlor1.idc.renesas.com ( SJSMS)
	with ESMTP id <0MHC00M2QM9NKH80@relmlor1.idc.renesas.com> for
	yocto@yoctoproject.org; Tue, 29 Jan 2013 03:34:36 +0900 (JST)
Received: from relmlac2.idc.renesas.com ([10.200.69.22])
	by relmlir1.idc.renesas.com (SJSMS)
	with ESMTP id <0MHC006WBM9N2X50@relmlir1.idc.renesas.com> for
	yocto@yoctoproject.org; Tue, 29 Jan 2013 03:34:35 +0900 (JST)
Received: by relmlac2.idc.renesas.com (Postfix, from userid 0)
	id D1F73280A0; Tue, 29 Jan 2013 03:34:35 +0900 (JST)
Received: from relmlac2.idc.renesas.com (localhost [127.0.0.1])
	by relmlac2.idc.renesas.com (Postfix) with ESMTP id D061F280A5; Tue,
	29 Jan 2013 03:34:35 +0900 (JST)
Received: from relmlii2.idc.renesas.com [10.200.68.66]	by
	relmlac2.idc.renesas.com with ESMTP id DAC17365; Tue,
	29 Jan 2013 03:34:35 +0900
X-IronPort-AV: E=Sophos;i="4.84,554,1355065200";   d="scan'208";a="115021933"
Received: from unknown (HELO relay41.aps.necel.com) ([10.29.19.9])
	by relmlii2.idc.renesas.com with ESMTP; Tue, 29 Jan 2013 03:34:35 +0900
Received: from julia (du2com5.eu.necel.com [172.29.24.35] (may be forged))
	by relay41.aps.necel.com (8.14.4+Sun/8.14.4) with ESMTP id
	r0SIYWjQ006088; Tue, 29 Jan 2013 03:34:32 +0900 (JST)
Received: by julia (Postfix, from userid 2)	id F3CF04E884; Mon,
	28 Jan 2013 19:34:31 +0100 (CET)
Received: from du0smtp.eu.necel.com (unknown [172.29.24.86]) by julia (Postfix)
	with ESMTP id E8ECD4E870; Mon, 28 Jan 2013 19:34:31 +0100 (CET)
In-reply-to: <5106BD15.8010504@windriver.com>
References: <OF44D69492.16138F01-ON80257B01.005DC646-80257B01.0061C0AD@eu.necel.com>
	<5106BD15.8010504@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
MIME-version: 1.0
X-KeepSent: 5C39E5C7:FA7C53BE-80257B01:0064A12F; type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3 September 15, 2011
From: stephen.lawrence@renesas.com
Message-id: <OF5C39E5C7.FA7C53BE-ON80257B01.0064A12F-80257B01.00660446@eu.necel.com>
Date: Mon, 28 Jan 2013 18:34:17 +0000
X-MIMETrack: Serialize by Router on DU0SMTP/EE/NECEE(Release 8.5.3 HF466|March
	09, 2012) at 28.01.2013 19:34:31,
	Serialize complete at 28.01.2013 19:34:31
Cc: yocto@yoctoproject.org
Subject: Re: SRC_URI scope and kernel fragments in non-yocto kernel recipes
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
X-List-Received-Date: Mon, 28 Jan 2013 18:34:36 -0000
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable

Bruce Ashfield <bruce.ashfield@windriver.com> wrote on 28/01/2013=20
18:01:57:
[snip]
> > I suspect the kernel fragment issue is down to the fact that a yocto
> > kernel recipe is not being used,
> > i.e. it relies on the yocto kernel meta data mechanism?
>=20
> I can confirm this part. Your recipe must inherit kernel-yocto bbclass
> if you want the fragment to be applied to the base config. But you can
> use linux-yocto-custom, to build your mainline recipe AND have the
> fragment work.

ok sounds hopeful. I'm not familiar with linux-yocto-custom.=20
I'll have a dig in the meta tree and google.

> >
> > Why is the SRC_URI containing the additional patches applied when
> > referenced directly in the bb file,
> > but not when referenced in an include or scc file?
>=20
> Keeping the question isolated to just the patch on the SRC_URI is a
> good idea to make sure we are talking about the simplest case.
>=20
> Which type of recipe isn't having the patch applied, the mainline one ?
> The linux-yocto one, or both ?

Currently I've only tried the mainline one.=20

I would need to revert and try again tomorrow, but when the SRC_URI=20
containing the additional patches was in an include, I recall the patch
files were not listed in the build prep logs such as do_fetch.
Not surprising in that case, but they were also not copied over into the
git tree of the work area.

So it was as if the include was parsed but the SRC_URI was ignored.

Regards

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

