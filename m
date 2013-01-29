Return-Path: <stephen.lawrence@renesas.com>
Received: from relmlor1.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EED0E01400
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 03:24:55 -0800 (PST)
Received: from relmlir4.idc.renesas.com ([10.200.68.154])
	by relmlor1.idc.renesas.com ( SJSMS)
	with ESMTP id <0MHD00HAEX1ICO10@relmlor1.idc.renesas.com> for
	yocto@yoctoproject.org; Tue, 29 Jan 2013 20:24:54 +0900 (JST)
Received: from relmlac2.idc.renesas.com ([10.200.69.22])
	by relmlir4.idc.renesas.com ( SJSMS)
	with ESMTP id <0MHD005WGX1IOX10@relmlir4.idc.renesas.com> for
	yocto@yoctoproject.org; Tue, 29 Jan 2013 20:24:54 +0900 (JST)
Received: by relmlac2.idc.renesas.com (Postfix, from userid 0)
	id 3988A280A4; Tue, 29 Jan 2013 20:24:54 +0900 (JST)
Received: from relmlac2.idc.renesas.com (localhost [127.0.0.1])
	by relmlac2.idc.renesas.com (Postfix) with ESMTP id 349C5280A0; Tue,
	29 Jan 2013 20:24:54 +0900 (JST)
Received: from relmlii1.idc.renesas.com [10.200.68.65]	by
	relmlac2.idc.renesas.com with ESMTP id WAB23494; Tue,
	29 Jan 2013 20:24:54 +0900
X-IronPort-AV: E=Sophos;i="4.84,559,1355065200";   d="scan'208";a="115039945"
Received: from unknown (HELO relay51.aps.necel.com) ([10.29.19.60])
	by relmlii1.idc.renesas.com with ESMTP; Tue, 29 Jan 2013 20:24:54 +0900
Received: from julia (du2com5.eu.necel.com [172.29.24.35] (may be forged))
	by relay51.aps.necel.com (8.14.4+Sun/8.14.4) with ESMTP id
	r0TBOpZn018196; Tue, 29 Jan 2013 20:24:51 +0900 (JST)
Received: by julia (Postfix, from userid 2)	id 1E5F54E892; Tue,
	29 Jan 2013 12:24:51 +0100 (CET)
Received: from du0smtp.eu.necel.com (unknown [172.29.24.86]) by julia (Postfix)
	with ESMTP id 013744E87F; Tue, 29 Jan 2013 12:24:51 +0100 (CET)
In-reply-to: <5106C9C2.5020702@windriver.com>
References: <OF44D69492.16138F01-ON80257B01.005DC646-80257B01.0061C0AD@eu.necel.com>
	<5106BD15.8010504@windriver.com>
	<OF5C39E5C7.FA7C53BE-ON80257B01.0064A12F-80257B01.00660446@eu.necel.com>
	<5106C50F.3010008@windriver.com> <5106C9C2.5020702@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
MIME-version: 1.0
X-KeepSent: 2CE81789:0964AE31-80257B02:003C686D; type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3 September 15, 2011
From: stephen.lawrence@renesas.com
Message-id: <OF2CE81789.0964AE31-ON80257B02.003C686D-80257B02.003EAB89@eu.necel.com>
Date: Tue, 29 Jan 2013 11:24:31 +0000
X-MIMETrack: Serialize by Router on DU0SMTP/EE/NECEE(Release 8.5.3 HF466|March
	09, 2012) at 29.01.2013 12:24:50,
	Serialize complete at 29.01.2013 12:24:50
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
X-List-Received-Date: Tue, 29 Jan 2013 11:24:55 -0000
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable

Bruce Ashfield <bruce.ashfield@windriver.com> wrote on 28/01/2013=20
18:56:02:

> >>>> Why is the SRC_URI containing the additional patches applied when
> >>>> referenced directly in the bb file,
> >>>> but not when referenced in an include or scc file?
> >>>
> >>> Keeping the question isolated to just the patch on the SRC_URI is a
> >>> good idea to make sure we are talking about the simplest case.
> >>>
> >>> Which type of recipe isn't having the patch applied, the mainline=20
one ?
> >>> The linux-yocto one, or both ?
> >>
> >> Currently I've only tried the mainline one.
> >>
> >> I would need to revert and try again tomorrow, but when the SRC_URI
> >> containing the additional patches was in an include, I recall the=20
patch
> >> files were not listed in the build prep logs such as do_fetch.
> >> Not surprising in that case, but they were also not copied over into=20
the
> >> git tree of the work area.
> >>
> >> So it was as if the include was parsed but the SRC_URI was ignored.
> >
> > I'll try a test here and see what happens in the mean time.
>=20
> I can confirm that in my simple test, I can have a kernel recipe
> linux-<your recipe name>.bbappend in a layer that includes .inc file,
> who's only contents are:
>=20
> SRC_URI +=3D "file://0001-makefile-add-comment.patch"
>=20
> And I get the patch applied to the tree. Am I understanding correctly ?
> or is that different from what you are trying to do?
>=20

Thank you for taking the time Bruce. Yes, that is essentially what I was=20
trying to do. Two SRC_URI +=3D in a .inc, one listing the patches, the othe=
r=20
just listing a cfg file. The only difference is that as it was a mainline=20
kernel recipe I included it from a .bb, not a .bbappend. The .bb inherits=20
'kernel'.

I originally had the additional patches in a subdirectory to separate them=
=20
out, but to eliminate file paths as a cause, I moved them in with the main=
=20
patches with no luck. I'll revert the changes and try again so I can=20
provide some specific log results.

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

