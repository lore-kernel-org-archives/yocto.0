Received: from esa8.bmw.c3s2.iphmx.com (esa8.bmw.c3s2.iphmx.com [68.232.139.97])
 by mx.groups.io with SMTP id smtpd.web10.896.1582151958126570154
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 14:39:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=Qbq++yk4;
 spf=pass (domain: bmw.de, ip: 68.232.139.97, mailfrom: prvs=311c70376=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1582151958; x=1613687958;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=UmugPzx8sIqFPvA1Ai1V2OJDkYJTavoLVLQHpfg0Me0=;
  b=Qbq++yk4JS+jOGTHlIRtewuszm0Dw9Jnkin6DcpUZWFgaZlX/Llzf5ns
   oKqKt4gtIOpn3515aqww0J0BspfiTvTXv95S0v/+fGhauXYB9Omr0PW5f
   1c+jn6Y4u/zPxQl+BI1T/qeq9xYNlluYBSj+s4sQxoquJm8xOAOsp09yx
   o=;
IronPort-SDR: etVSivhee+PlrGcN6nEXjZcf6dweMrJ6QneIvZNl8Xtkqz18ga90BOnTG4g40fqvuwuOhKMxAv
 6AV7IfXPZzzwCtmO/gUIfojK7cMTt0Mxhh/J2vBjxryqrFmwI+6FljgyhHnZT+foU1ZJRFdIie
 vo1BWOXEi9p5jbqG06Kem/Aw2D6I6hLdkZ+zVGl+9nxdFicJhDC1DWcRClLbU8/tNQRgYt+esI
 mCiS7UYfLT0W8DRCHiyFmu/CQb6xNJ14+3ZxiSCBCwDE222L5Nk4OSBOw/fEWiYHC6yBa3M8eE
 qoM=
Received: from esagw1.bmwgroup.com (HELO esagw1.muc) ([160.46.252.34]) by
 esa8.bmw.c3s2.iphmx.com with ESMTP/TLS; 18 Feb 2020 10:00:35 +0100
Received: from esabb2.muc ([160.50.100.34])  by esagw1.muc with ESMTP/TLS;
 18 Feb 2020 10:00:34 +0100
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp) ([160.48.96.48])
 by esabb2.muc with ESMTP/TLS; 18 Feb 2020 10:00:27 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10l.europe.bmw.corp
 (160.48.96.48) with Microsoft SMTP Server (TLS;
 Tue, 18 Feb 2020 10:00:26 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Tue,
 18 Feb 2020 10:00:26 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <georgi.georgiev@woodward.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto [thud], [zeus] do_fetch and do_unpack failures with offline/online svn build! #yocto #python
Thread-Topic: [yocto] Yocto [thud], [zeus] do_fetch and do_unpack failures
 with offline/online svn build! #yocto #python
Thread-Index: AdXcRVMItAsS96VjQ36fsMtuKM+vJgJSsmTA///0WID//+ksIIAAIwqA//7H4DCAAnpNAA==
Date: Tue, 18 Feb 2020 09:00:26 +0000
Message-ID: <20200218090026.GB104502@korppu>
References: <bfb7604a4f7f481aad771a3472031e1b@Kemp-ExMb1.woodward.com>
 <20200217130337.GS104502@korppu>
 <0704a68acba44839865cb31e22e584db@Kemp-ExMb1.woodward.com>
 <20200217134718.GT104502@korppu>
 <e81237bb0cab436681a5c60e01d87a65@Kemp-ExMb1.woodward.com>
In-Reply-To: <e81237bb0cab436681a5c60e01d87a65@Kemp-ExMb1.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0F3344356C4E124787F0B82861DC35E1@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 18, 2020 at 07:25:15AM +0000, Georgi Georgiev via Lists.Yoctopr=
oject.Org wrote:
> OK,
> I read some code and I added the next line:
>=20
> --- a/bitbake/lib/bb/fetch2/svn.py
> +++ b/bitbake/lib/bb/fetch2/svn.py
> @@ -145,6 +145,7 @@ class Svn(FetchMethod):
>=20
>              if not ("externals" in ud.parm and ud.parm["externals"] =3D=
=3D "nowarn"):
>                  # Warn the user if this had externals (won't catch them =
all)
> +                svnfetchcmd =3D self._buildsvncommand(ud, d, "fetch")
>                  output =3D runfetchcmd("svn propget svn:externals || tru=
e", d, workdir=3Dud.moddir)
>                  if output:
>                      if "--ignore-externals" in svnfetchcmd.split():
>=20
> This works for me perfectly. I may look little redundant but...
> Any comments?=20
> @Mikko,=20

Looks good to me.

> We have only one svn repo in the whole project :-)

Lucky you :)

-Mikko=
