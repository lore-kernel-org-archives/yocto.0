Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.25158.1604998337354587166
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 00:52:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=X2b2dwl6;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:
	Content-Type:Message-Id:From:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=XaMkEc5djkVbhG4rkaMO7JK25WJl+lRApt8dRs5dinM=; b=X2b2dwl6395Da/iXXEATQmzDju
	ZbnS6YrKf46vQexUXQLT/HAzkYykXooLgTFxj1kIhunPiD9e8EwJcw7xJrHCMgd1j9InT3Tt6ntsA
	523txjOnXPKpWum+1AYmkMj6lTGEcfcDdpnI6nwQHWTOdjpbeb/sb3kjVeC+iH+Hm3jw+fWkF6lEq
	6BCxQVkLz3/IrqKDrDBa1kDwgbst2wyg71elrYndW9/ooD8itF8e6RooKOzQ2ORsIrITBRDcMzcpg
	mu6ZZJV9+p9iaiBNsaWJ3a/1cNs97ZIEqt+V1732Zx1OxISsZ7aDuPNH5S4lPoJpgwbxebKlzs83M
	HEQbRLGA==;
Received: from 89-27-44-133.bb.dnainternet.fi ([89.27.44.133] helo=[192.168.1.58])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1kcPNu-0003ok-0Z; Tue, 10 Nov 2020 10:52:14 +0200
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Message-Id: <25AEB0A3-2263-468D-BBAF-9DE096012834@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Subject: Re: [yocto] Yoctoproject.org cgit tags CSS
Date: Tue, 10 Nov 2020 10:52:12 +0200
In-Reply-To: <CADfgfoZOEek=0TQ2Qo+K2nmayAxwcbathT+sh=4Za-9dTpLUug@mail.gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
To: Michael Halstead <mhalstead@linuxfoundation.org>
References: <4D84553A-FE9E-4D28-B1EF-A39364CCA107@iki.fi>
 <CADfgfoZOEek=0TQ2Qo+K2nmayAxwcbathT+sh=4Za-9dTpLUug@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.104.15)
X-SA-Exim-Connect-IP: 89.27.44.133
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3694D896-3686-4057-B1C2-926842313B2A"

--Apple-Mail=_3694D896-3686-4057-B1C2-926842313B2A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

The tags now show as white text on yellow background, which is unreadable.=
 I think you must copy "table.list td a.tag-deco=E2=80=9D too, to set the t=
ext color.
Btw, this is probably the same as <https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D13668>.

Regards,
Anders Montonen

> On 10 Nov 2020, at 9:24, Michael Halstead <mhalstead@linuxfoundation.org=
> wrote:
>=20
> I've copied the style into the new class name. Please let me know if thi=
s looks correct to you.
>=20
> On Mon, Nov 9, 2020 at 12:29 PM Anders Montonen <Anders.Montonen@iki.fi =
<mailto:Anders.Montonen@iki.fi>> wrote:
> Hi,
>=20
> Since some time, the tags in the log view of yoctoproject.org <http://yo=
ctoproject.org/>=E2=80=99s cgit have not been highlighted correctly. The pr=
oblem seems to be that in the HTML, tags are given the class =E2=80=9Ctag-a=
nnotated-deco=E2=80=9D, which doesn=E2=80=99t exist in the CSS. The CSS doe=
s have a =E2=80=9Ctag-deco=E2=80=9D style which is probably what=E2=80=99s =
intended.
>=20
> Regards,
> Anders Montonen
>=20
>=20
>=20
>=20
> --=20
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>=20
>=20
>=20


--Apple-Mail=_3694D896-3686-4057-B1C2-926842313B2A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">Hi,<div class=3D""><br cl=
ass=3D""></div><div class=3D"">The tags now show as white text on yellow ba=
ckground, which is unreadable. I think you must copy "table.list td a.tag-d=
eco=E2=80=9D too, to set the text color.</div><div class=3D"">Btw, this is =
probably the same as &lt;<a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D13668" class=3D"">https://bugzilla.yoctoproject.org/show_bug.c=
gi?id=3D13668</a>&gt;.</div><div class=3D""><br class=3D""></div><div class=
=
=3D"">Regards,</div><div class=3D"">Anders Montonen<br class=3D""><div><br=
 class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On 10 Nov =
2020, at 9:24, Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfounda=
tion.org" class=3D"">mhalstead@linuxfoundation.org</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" class=
=3D"">I've copied the style into the new class name. Please let me know if=
 this looks correct to you.</div><br class=3D""><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 9, 2020 at 12:29 PM Ander=
s Montonen &lt;<a href=3D"mailto:Anders.Montonen@iki.fi" class=3D"">Anders.=
Montonen@iki.fi</a>&gt; wrote:<br class=3D""></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Hi,<br class=3D"">
<br class=3D"">
Since some time, the tags in the log view of <a href=3D"http://yoctoprojec=
t.org/" rel=3D"noreferrer" target=3D"_blank" class=3D"">yoctoproject.org</a=
>=E2=80=99s cgit have not been highlighted correctly. The problem seems to =
be that in the HTML, tags are given the class =E2=80=9Ctag-annotated-deco=
=E2=80=9D, which doesn=E2=80=99t exist in the CSS. The CSS does have a =E2=
=
=80=9Ctag-deco=E2=80=9D style which is probably what=E2=80=99s intended.<b=
r class=3D"">
<br class=3D"">
Regards,<br class=3D"">
Anders Montonen<br class=3D"">
<br class=3D"">
<br class=3D"">
</blockquote></div><br clear=3D"all" class=3D""><div class=3D""><br class=
=3D""></div>-- <br class=3D""><div dir=3D"ltr" class=3D"gmail_signature"><=
div dir=3D"ltr" class=3D"">Michael Halstead<div class=3D"">Linux Foundation=
 / Yocto Project</div><div class=3D"">Systems Operations Engineer</div></di=
v></div>
<br class=3D""><br class=3D""><br class=3D""></div></blockquote></div><br =
class=3D""></div></body></html>

--Apple-Mail=_3694D896-3686-4057-B1C2-926842313B2A--
