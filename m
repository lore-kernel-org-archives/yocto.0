Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17BC3E01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 13:41:14 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so4351168pab.7
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 13:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=3PW8j9TkpBsG182rJ+WCxqDML54+v6xC3Kgohhu4A60=;
	b=O9XmklWVgeDGx/gxskQFM8MpQyFQvbdbfNyPQp/5sA/aIIpPca7VbxdHPlDOjz5Zck
	//M9SE0ntMTqPoaKiaAGsUuIZR/X0WO5qEozJVRigwX/3aixHCFtx/H5pJLEonbSnI76
	/BaqgZXNFlj5OhUvM7eOH4F65zwquOmHMS40cIQ3rm2bHh+3adAyKiIc4j00i9wwhmJ4
	tuWolnYka+jxULuGG0nJ9r92YKxRCOgKbe+3NxoYb7HTkmreULAeojsDcl7OnZzmsR7E
	6iS59yn9pc1IzaA6SPW7YDPM58VCX4NHlYqsRNj/c0bjeA8TnwFXIrBh84mgzjMezC5C
	ZLEw==
X-Received: by 10.66.172.172 with SMTP id bd12mr3524109pac.139.1371588074488; 
	Tue, 18 Jun 2013 13:41:14 -0700 (PDT)
Received: from scoonan-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	yj2sm19696753pbb.40.2013.06.18.13.41.12 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 18 Jun 2013 13:41:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CA+Z6RkUqGZS7bcrdLHokC8a8ZwuZx1ETF9gRqhm8bvRWZSbXNw@mail.gmail.com>
Date: Tue, 18 Jun 2013 13:41:10 -0700
Message-Id: <968299F3-E07A-4ABD-8C29-1E12ABFABC44@gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1BA55B7D@POCITMSEXMB05.LntUniverse.com>
	<CA+Z6RkWkUiy0omM_fYteVco1r_RQTbJdRpoqURrvrTAbB4ACgA@mail.gmail.com>
	<CA+Z6RkUqGZS7bcrdLHokC8a8ZwuZx1ETF9gRqhm8bvRWZSbXNw@mail.gmail.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Qt build error for Debug and Release mode
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
X-List-Received-Date: Tue, 18 Jun 2013 20:41:15 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D6B4E13B-5DAC-4926-8A04-242FED89AB6D"

--Apple-Mail=_D6B4E13B-5DAC-4926-8A04-242FED89AB6D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Jun 18, 2013, at 9:15 AM, Navani Srivastava =
<navani.srivastava@gmail.com> wrote:

> Hi,
>=20
> I am using poky-danny (Poky-8.0). I am facing problem in building Qt =
application.
>=20
> When we are building Qt application with =93qmake CONFIG+=3Ddebug && =
make=94 it appends =93-g=94 to build the application in debug mode but =
when we are building application in release mode by issuing following =
command  =93qmake CONFIG+=3Drelease && make=94, then also it appends =
=93-g=94 to it.
>=20
> So building Qt application in release mode also results in debug mode =
output.
>=20
>=20

While it will be stripped in the end and won't make much difference as =
far as the packages are concerned it probably coming from
SELECTED_OPTIMIZATION variable which cmake is using to construct the =
release cflags

You can set DEBUG_FLAGS =3D "" in your local.conf and it will not show =
up=20

> Any fix for this?
>=20
> Thanks and Regards
> Navani Kamal Srivastava
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_D6B4E13B-5DAC-4926-8A04-242FED89AB6D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Jun 18, 2013, at 9:15 AM, Navani Srivastava &lt;<a =
href=3D"mailto:navani.srivastava@gmail.com">navani.srivastava@gmail.com</a=
>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr"><div class=3D"gmail_quote"><div =
class=3D"HOEnZb"><div class=3D"h5"><p>Hi,</p><p>I am using poky-danny =
(Poky-8.0). I am facing problem in building Qt application.</p><p>When =
we are building Qt application with =93qmake CONFIG+=3Ddebug &amp;&amp; =
make=94 it appends =93-g=94 to build the application in debug mode but =
when we are building application in release mode by issuing following =
command &nbsp;=93qmake CONFIG+=3Drelease &amp;&amp; make=94, then also =
it appends =93-g=94 to it.</p><p>So building Qt application in release =
mode also results in debug mode =
output.</p><div><br></div></div></div></div></div></blockquote><div><br></=
div><div>While it will be stripped in the end and won't make much =
difference as far as the packages are concerned it probably coming =
from</div><div>SELECTED_OPTIMIZATION variable which cmake is using to =
construct the release cflags</div><div><br></div><div>You can =
set&nbsp;DEBUG_FLAGS =3D "" in your local.conf and it will not show =
up&nbsp;</div><br><blockquote type=3D"cite"><div dir=3D"ltr"><div =
class=3D"gmail_quote"><div class=3D"HOEnZb"><div class=3D"h5"><p>Any fix =
for this?</p><p>Thanks and Regards<br>
Navani Kamal Srivastava<br>
</p>
</div></div></div><br></div>
_______________________________________________<br>yocto mailing =
list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https=
://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body>=
</html>=

--Apple-Mail=_D6B4E13B-5DAC-4926-8A04-242FED89AB6D--
