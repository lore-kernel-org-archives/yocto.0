Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web12.25040.1604998751957034918
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 00:59:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=xI+4Bp5H;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:
	Content-Type:Message-Id:From:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=U3V6eRnWATitnYuOeuk+gS5oq2E2FJvEnNXnSkTFJ0Q=; b=xI+4Bp5H9FqZsY0LwYhE4tZhPf
	rYCjONYobSLK1ulvIOnqt8b7fQ62rAOW/RFNgmYEXXd9RpSyRhbAUoFv9C1uTMXNFGq8sDdC3EDbu
	kSXmDWyy0fwPpRXdAx71CBMLFovhZVar1V8ipN3e0ybKbX0OLBEshzAy4P0c70uzfwf4R8noQKMPn
	2a/n2iTrE2nGh/Mnk9D9qHtjx0uLxGYDpyV8hlO5TOp5yh0BYlLFU0S80W+4G+eYR/gOSC5fDzKvw
	4eYiKF3yIGR/cBN/AEgbDONZTH2cFTPgJ10+/3gRqMBTDKptU0LWNQO9Da7+RjgLc0wOvLC/e77Zw
	doKp0Dlg==;
Received: from 89-27-44-133.bb.dnainternet.fi ([89.27.44.133] helo=[192.168.1.58])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1kcPUa-0005cZ-KN; Tue, 10 Nov 2020 10:59:08 +0200
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Message-Id: <46A43DA9-AA7E-403D-87BD-CCDC69A75A89@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Subject: Re: [yocto] Yoctoproject.org cgit tags CSS
Date: Tue, 10 Nov 2020 10:59:07 +0200
In-Reply-To: <1646197C5401B25C.8542@lists.yoctoproject.org>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
To: Michael Halstead <mhalstead@linuxfoundation.org>
References: <4D84553A-FE9E-4D28-B1EF-A39364CCA107@iki.fi>
 <CADfgfoZOEek=0TQ2Qo+K2nmayAxwcbathT+sh=4Za-9dTpLUug@mail.gmail.com>
 <1646197C5401B25C.8542@lists.yoctoproject.org>
X-Mailer: Apple Mail (2.3445.104.15)
X-SA-Exim-Connect-IP: 89.27.44.133
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1CB98803-2F2D-4D39-81A2-149BB5A13DF0"

--Apple-Mail=_1CB98803-2F2D-4D39-81A2-149BB5A13DF0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

The previous change also seems to have broken the tag highlighting for the=
 light theme.

Regards,
Anders Montonen

> On 10 Nov 2020, at 10:52, Anders Montonen <Anders.Montonen@iki.fi> wrote=
:
>=20
> Hi,
>=20
> The tags now show as white text on yellow background, which is unreadabl=
e. I think you must copy "table.list td a.tag-deco=E2=80=9D too, to set the=
 text color.
> Btw, this is probably the same as <https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D13668 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
3668>>.
>=20
> Regards,
> Anders Montonen
>=20
>> On 10 Nov 2020, at 9:24, Michael Halstead <mhalstead@linuxfoundation.or=
g <mailto:mhalstead@linuxfoundation.org>> wrote:
>>=20
>> I've copied the style into the new class name. Please let me know if th=
is looks correct to you.
>>=20
>> On Mon, Nov 9, 2020 at 12:29 PM Anders Montonen <Anders.Montonen@iki.fi=
 <mailto:Anders.Montonen@iki.fi>> wrote:
>> Hi,
>>=20
>> Since some time, the tags in the log view of yoctoproject.org <http://y=
octoproject.org/>=E2=80=99s cgit have not been highlighted correctly. The p=
roblem seems to be that in the HTML, tags are given the class =E2=80=9Ctag-=
annotated-deco=E2=80=9D, which doesn=E2=80=99t exist in the CSS. The CSS do=
es have a =E2=80=9Ctag-deco=E2=80=9D style which is probably what=E2=80=99s=
 intended.
>>=20
>> Regards,
>> Anders Montonen
>>=20
>>=20
>>=20
>>=20
>> --=20
>> Michael Halstead
>> Linux Foundation / Yocto Project
>> Systems Operations Engineer
>>=20
>>=20
>>=20
>=20
>=20
>=20


--Apple-Mail=_1CB98803-2F2D-4D39-81A2-149BB5A13DF0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">Hi,<div class=3D""><br cl=
ass=3D""></div><div class=3D"">The previous change also seems to have broke=
n the tag highlighting for the light theme.</div><div class=3D""><br class=
=3D""></div><div class=3D"">Regards,</div><div class=3D"">Anders Montonen<=
br class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div=
 class=3D"">On 10 Nov 2020, at 10:52, Anders Montonen &lt;<a href=3D"mailto=
:Anders.Montonen@iki.fi" class=3D"">Anders.Montonen@iki.fi</a>&gt; wrote:</=
div><br class=3D"Apple-interchange-newline"><div class=3D""><span style=3D"=
caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-st=
yle: normal; font-variant-caps: normal; font-weight: normal; letter-spacing=
: normal; text-align: start; text-indent: 0px; text-transform: none; white-=
space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-deco=
ration: none; float: none; display: inline !important;" class=3D"">Hi,</spa=
n><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetic=
a; font-size: 14px; font-style: normal; font-variant-caps: normal; font-wei=
ght: normal; letter-spacing: normal; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; text-decoration: none;"><br class=3D""></div><div class=
=3D"" style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-siz=
e: 14px; font-style: normal; font-variant-caps: normal; font-weight: normal=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; text-decoration: none;">The tags now show as white text on yellow ba=
ckground, which is unreadable. I think you must copy "table.list td a.tag-d=
eco=E2=80=9D too, to set the text color.</div><div class=3D"" style=3D"care=
t-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-style:=
 normal; font-variant-caps: normal; font-weight: normal; letter-spacing: no=
rmal; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decorati=
on: none;">Btw, this is probably the same as &lt;<a href=3D"https://bugzill=
a.yoctoproject.org/show_bug.cgi?id=3D13668" class=3D"">https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D13668</a>&gt;.</div><div class=3D"" style=
=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; fo=
nt-style: normal; font-variant-caps: normal; font-weight: normal; letter-sp=
acing: normal; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration: none;"><br class=3D""></div><div class=3D"" style=3D"caret-col=
or: rgb(0, 0, 0); font-family: Helvetica; font-size: 14px; font-style: norm=
al; font-variant-caps: normal; font-weight: normal; letter-spacing: normal;=
 text-align: start; text-indent: 0px; text-transform: none; white-space: no=
rmal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: n=
one;">Regards,</div><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); fon=
t-family: Helvetica; font-size: 14px; font-style: normal; font-variant-caps=
: normal; font-weight: normal; letter-spacing: normal; text-align: start; t=
ext-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; text-decoration: none;">Anders Montonen=
<br class=3D""><div class=3D""><br class=3D""><blockquote type=3D"cite" cla=
ss=3D""><div class=3D"">On 10 Nov 2020, at 9:24, Michael Halstead &lt;<a hr=
ef=3D"mailto:mhalstead@linuxfoundation.org" class=3D"">mhalstead@linuxfound=
ation.org</a>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><div =
class=3D""><div dir=3D"ltr" class=3D"">I've copied the style into the new c=
lass name. Please let me know if this looks correct to you.</div><br class=
=3D""><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, Nov 9, 2020 at 12:29 PM Anders Montonen &lt;<a href=3D"mailto:Anders.M=
ontonen@iki.fi" class=3D"">Anders.Montonen@iki.fi</a>&gt; wrote:<br class=
=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px=
 0.8ex; border-left-width: 1px; border-left-style: solid; border-left-color=
: rgb(204, 204, 204); padding-left: 1ex;">Hi,<br class=3D""><br class=3D"">=
Since some time, the tags in the log view of<span class=3D"Apple-converted-=
space">&nbsp;</span><a href=3D"http://yoctoproject.org/" rel=3D"noreferrer"=
 target=3D"_blank" class=3D"">yoctoproject.org</a>=E2=80=99s cgit have not =
been highlighted correctly. The problem seems to be that in the HTML, tags =
are given the class =E2=80=9Ctag-annotated-deco=E2=80=9D, which doesn=E2=80=
=
=99t exist in the CSS. The CSS does have a =E2=80=9Ctag-deco=E2=80=9D styl=
e which is probably what=E2=80=99s intended.<br class=3D""><br class=3D"">R=
egards,<br class=3D"">Anders Montonen<br class=3D""><br class=3D""><br clas=
s=3D""></blockquote></div><br clear=3D"all" class=3D""><div class=3D""><br =
class=3D""></div>--<span class=3D"Apple-converted-space">&nbsp;</span><br c=
lass=3D""><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr" class=
=
=3D"">Michael Halstead<div class=3D"">Linux Foundation / Yocto Project</di=
v><div class=3D"">Systems Operations Engineer</div></div></div><br class=3D=
""><br class=3D""><br class=3D""></div></blockquote></div><br class=3D""></=
div><br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-si=
ze: 14px; font-style: normal; font-variant-caps: normal; font-weight: norma=
l; letter-spacing: normal; text-align: start; text-indent: 0px; text-transf=
orm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(=
0, 0, 0); font-family: Helvetica; font-size: 14px; font-style: normal; font=
-variant-caps: normal; font-weight: normal; letter-spacing: normal; text-al=
ign: start; text-indent: 0px; text-transform: none; white-space: normal; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none; flo=
at: none; display: inline !important;" class=3D""></span></div></blockquote=
></div><br class=3D""></div></body></html>

--Apple-Mail=_1CB98803-2F2D-4D39-81A2-149BB5A13DF0--
