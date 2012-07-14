Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47920E0027E
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 03:15:26 -0700 (PDT)
Received: by lboj14 with SMTP id j14so6691670lbo.35
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 03:15:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=xyZ+P5Xk9CwfhUIeh9YvS6C33DrQWYq7FiwD8/jpSJQ=;
	b=R8m3QXQ/TyHBtTL14co/53O+0xNZfihpxUW/eoJNXww75Z2K2eP7vUgYfzA6r7uQaz
	nDs/euQcawZ5iuxi/l+5W3gEIVGOtLvJ7s+R1ohu13PNfJWilZ/Htr/9gTl9DdUMV33R
	+e5VaGsdTghLSU56BBocmnUQ8xbMorighF4ndkb7NP7qJiYMXSc5j9NtduiwnV1U4ycr
	gm+ZqQrNOYRkLgutvLUf3TIkqeKqINjLoaDmnv0RO57v8B7HSiY6YrqLe/sLaocLXXiJ
	aUw4JextiZ+59y3NaqR846fBsmmU9GJdm4Nne3Hm1zwElVsf3mp7JJri5Ykez1757AnR
	j1fw==
Received: by 10.112.42.34 with SMTP id k2mr2336390lbl.0.1342260925387; Sat, 14
	Jul 2012 03:15:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Sat, 14 Jul 2012 03:15:05 -0700 (PDT)
In-Reply-To: <CAMKF1sqwu1ZsyMyWoY4nfCh0fpWEV+Sw8oORt4iJ+TGAn_mXJw@mail.gmail.com>
References: <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com>
	<20120628181214.7ACD02026AB@gemini.denx.de>
	<C6510F6D410BB64A8C15398EDC6B847C46A79CD8@ORSMSX101.amr.corp.intel.com>
	<CANsUPaNSy0Me580w0odN76bcHvJZ1-gXFdWadhdnpNR3Q_EEtQ@mail.gmail.com>
	<CAMKF1sqwu1ZsyMyWoY4nfCh0fpWEV+Sw8oORt4iJ+TGAn_mXJw@mail.gmail.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Sat, 14 Jul 2012 12:15:05 +0200
Message-ID: <CANsUPaOzw1Vqw4iDCf2GWtK8Ji-JY9Dg0EfHcdW6KweLt=Gf9A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQnGO7LEHiIZh/ZV1RzXtw3W5SIbTDRTeHPFWwVVQpJEQwiSmOQtxTr/RsLTAmi7SBOG9Si9
X-Mailman-Approved-At: Sun, 15 Jul 2012 10:19:52 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto and Qt embedded
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
X-List-Received-Date: Sat, 14 Jul 2012 10:15:28 -0000
Content-Type: multipart/alternative; boundary=485b390f7daea754e204c4c7792b

--485b390f7daea754e204c4c7792b
Content-Type: text/plain; charset=ISO-8859-1

Hi Khem,

I have to use Yocto Denzil branch (not the latest snapshot) because I'm
developing for Freescale iMX53 QSB and fsl-arm branch is aligned with
Denzil.
From a fresh Denzil installation I edited local.conf and bblayer.conf files
and run "bitbake meta-toolchain-qte". The command ends successfully.

So I tried to find g++ compiler using "find" command, into:

/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/

with no success.

I found qmake command
(into /opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin) but when I set
this Qt version in Qt creator the ABI detection fails, so I can't configure
the right toolchain inside Qt creator and I can't build my application.
Do I have to rerun the bitbake command? Am I missing any configuration?

Thanks

Giovanni

--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Fri, Jul 13, 2012 at 9:04 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Jul 11, 2012 at 11:45 PM, Giovanni Foiani <fnognn@unife.it> wrote:
> > Where is the compiler located inside Poky SDK built from
> meta-toolchain-qte?
>
> somewhere like below is mine for x86_64
>
>
> /opt/poky/1.2+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/
>

--485b390f7daea754e204c4c7792b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi=A0Khem,<div><br></div>I have to use Yocto Denzil branch (not the latest =
snapshot) because I&#39;m developing for Freescale iMX53 QSB and fsl-arm br=
anch is aligned with Denzil.<div>From a fresh Denzil installation I edited =
local.conf and bblayer.conf files and run &quot;bitbake=A0<span style=3D"ba=
ckground-color:rgb(255,255,255);color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:13px">meta-toolchain-qte</span>&quot;. The command ends suc=
cessfully.</div>

<div><div><br></div><div>So=A0I tried to find g++ compiler using &quot;find=
&quot; command, into:<div><br></div><div>/opt/poky/1.2.1/sysroots/i686-poky=
sdk-linux/</div><div><br></div><div>with no success.=A0</div><div><br></div=
>

<div>I found qmake command (into=A0/opt/poky/1.2.1/sysroots/i686-pokysdk-li=
nux/usr/bin) but when I set this Qt version in Qt creator the ABI detection=
 fails, so I can&#39;t configure the right toolchain inside Qt creator and =
I can&#39;t build my application.</div>

<div>Do I have to rerun the bitbake command? Am I missing any configuration=
?=A0</div><div><br></div><div>Thanks</div><div><br></div><div>Giovanni</div=
><div><br></div><div><div>--</div><div><br>Dott. Ing. Giovanni Foiani<br>

<font face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse"><=
br></span></font></div><div>Cell:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =
=A0=A0 +39-0532-97-4106<br>mail:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.=
foiani@unife.it" target=3D"_blank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Fri, Jul 13, 2012 at 9:04 PM, Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">

<div class=3D"im">On Wed, Jul 11, 2012 at 11:45 PM, Giovanni Foiani &lt;<a =
href=3D"mailto:fnognn@unife.it">fnognn@unife.it</a>&gt; wrote:<br>
&gt; Where is the compiler located inside Poky SDK built from meta-toolchai=
n-qte?<br>
<br>
</div>somewhere like below is mine for x86_64<br>
<br>
/opt/poky/1.2+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-li=
nux/<br>
</blockquote></div><br></div></div></div>

--485b390f7daea754e204c4c7792b--
