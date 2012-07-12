Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8164E00280
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 23:45:30 -0700 (PDT)
Received: by lboj14 with SMTP id j14so3324801lbo.35
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 23:45:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=OIrrHCL2dU2d3MAISnxnKwMh5ClEnl8HXBcPl/K4tOI=;
	b=cljWVYGOP/puL5pnFVSUnxT6oF/6gLZBVEWcO7UJy7P0t1K/E7E0SmKK67Pk2FBYCu
	dF8nHp+XQmkQKazbFHZY7ktGKbra9r3ydkDC3gl1VNTRa4iKzs15vUJZtpVeX5z27rk7
	49x/ypCk5MnQUb1Bb0pYOZWBs7lD66fYyqWg0pMKLXkXGrSKrBVzx0zs/BZvtJFHOCX1
	Nf8TcRk6kcUGk8glBL+nVfPO21nr8bBX2ZVn6ZgoyMP3MVG9y5D3RiKAvFaPeiMg7I/l
	yI3PP0VzdWzxBOTkjb2oBfIMFC8m04QtEMwnJ1jvOQf8F2h/+JZFnwYYdHueEpHyh6vU
	ip3Q==
Received: by 10.152.103.11 with SMTP id fs11mr46889290lab.23.1342075528645;
	Wed, 11 Jul 2012 23:45:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 11 Jul 2012 23:45:08 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46A79CD8@ORSMSX101.amr.corp.intel.com>
References: <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com>
	<20120628181214.7ACD02026AB@gemini.denx.de>
	<C6510F6D410BB64A8C15398EDC6B847C46A79CD8@ORSMSX101.amr.corp.intel.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Thu, 12 Jul 2012 08:45:08 +0200
Message-ID: <CANsUPaNSy0Me580w0odN76bcHvJZ1-gXFdWadhdnpNR3Q_EEtQ@mail.gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
X-Gm-Message-State: ALoCoQnhzoh7nRbYVznT5wGcRuOydTPLMaLiTyoq7vwIOcnwoYRD6IfzGYgW40gnj/cVft/eIRmm
X-Mailman-Approved-At: Fri, 13 Jul 2012 07:30:59 -0700
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
X-List-Received-Date: Thu, 12 Jul 2012 06:45:31 -0000
Content-Type: multipart/alternative; boundary=f46d040715c5258dcc04c49c4f27

--f46d040715c5258dcc04c49c4f27
Content-Type: text/plain; charset=ISO-8859-1

Hi Jessica,

I built separately the qte toolchain running:


   - bitbake meta-toolchain-qte

and the qte demo image (without toolchain) using Hob.
Now I need to integrate Yocto SDK and Qt Creator IDE.
I'm trying to configure Qt Creator to recognize Poky toolchain and Qt
Creator asks for the compiler path inside Poky SDK.
Where is the compiler located inside Poky SDK built from meta-toolchain-qte?

Thanks

Giovanni

--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Thu, Jun 28, 2012 at 8:20 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

> Hi Giovanni,
>
> You need to build a matching toolchain.  Either from command line do
> "bitbake meta-toolchain-qte or through hob, under Settings, please make
> sure check "Build Toolchain".
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Wolfgang Denk
> Sent: Thursday, June 28, 2012 11:12 AM
> To: Giovanni Foiani
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto and Qt embedded
>
> Dear Giovanni,
>
> In message <
> CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com> you
> wrote:
> >
> > This is my first post on this mailing list and I'm quite new to Yocto.
> > I successfully built a distro using the latest release of hob,
> > including Qt embedded (without X11).
> > I wrote a Qt application and cross compiled for ARM on my host machine
> > but when I deploy it on the device (a Freescale iMX53) I get and error
> > because the application looks for libraries like libQtGui but on the
> > distro all Qt libraries are named like libQtGuiE (ending with E which
> > I suppose it stands for Embedded).
>
> These names are OK for the Qt Embedded libraries, and they should match
> what your cross development tools are using.  Which tool chain did you use
> for compiling and linking your application - the one from
> meta-toolchain-qte ?
>
> When I build meta-toolchain-qte, this also includes, for example,
>
> .../sysroots/armv6-vfp-linux-gnueabi/usr/lib/libQtGuiE.so.4.8.2
>
> so cross tool chain and native systems work together without problems.
>
>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.deIt's hard to make a program foolproof because fools are so ingenious.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d040715c5258dcc04c49c4f27
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Jessica,<div><br></div><div>I built separately the qte toolchain running=
:</div><div><br></div><div><ul><li>bitbake meta-toolchain-qte</li></ul><div=
>and the qte demo image (without toolchain) using Hob.</div><div>Now I need=
 to integrate Yocto SDK and Qt Creator IDE.=A0</div>

<div>I&#39;m trying to configure Qt Creator to recognize Poky toolchain and=
 Qt Creator asks for the compiler path inside Poky SDK.</div><div>Where is =
the compiler located inside Poky SDK built from=A0meta-toolchain-qte?</div>

<div><br></div><div>Thanks=A0</div><div><br></div><div>Giovanni</div><div><=
br></div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Thu, Jun 28, 2012 at 8:20 PM, Zhang, =
Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com" ta=
rget=3D"_blank">jessica.zhang@intel.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">

Hi Giovanni,<br>
<br>
You need to build a matching toolchain. =A0Either from command line do &quo=
t;bitbake meta-toolchain-qte or through hob, under Settings, please make su=
re check &quot;Build Toolchain&quot;.<br>
<br>
Thanks,<br>
Jessica<br>
<div><div class=3D"h5"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Wolfgang Denk<br>
Sent: Thursday, June 28, 2012 11:12 AM<br>
To: Giovanni Foiani<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] Yocto and Qt embedded<br>
<br>
Dear Giovanni,<br>
<br>
In message &lt;<a href=3D"mailto:CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGM=
s7ty8Bf1A@mail.gmail.com">CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf=
1A@mail.gmail.com</a>&gt; you wrote:<br>
&gt;<br>
&gt; This is my first post on this mailing list and I&#39;m quite new to Yo=
cto.<br>
&gt; I successfully built a distro using the latest release of hob,<br>
&gt; including Qt embedded (without X11).<br>
&gt; I wrote a Qt application and cross compiled for ARM on my host machine=
<br>
&gt; but when I deploy it on the device (a Freescale iMX53) I get and error=
<br>
&gt; because the application looks for libraries like libQtGui but on the<b=
r>
&gt; distro all Qt libraries are named like libQtGuiE (ending with E which<=
br>
&gt; I suppose it stands for Embedded).<br>
<br>
These names are OK for the Qt Embedded libraries, and they should match wha=
t your cross development tools are using. =A0Which tool chain did you use f=
or compiling and linking your application - the one from meta-toolchain-qte=
 ?<br>


<br>
When I build meta-toolchain-qte, this also includes, for example,<br>
<br>
.../sysroots/armv6-vfp-linux-gnueabi/usr/lib/libQtGuiE.so.4.8.2<br>
<br>
so cross tool chain and native systems work together without problems.<br>
<br>
<br>
Best regards,<br>
<br>
Wolfgang Denk<br>
<br>
--<br>
DENX Software Engineering GmbH, =A0 =A0 MD: Wolfgang Denk &amp; Detlev Zund=
el<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: <a href=3D"tel:%28%2B49%29-8142-66989-10" value=3D"+4981426698910">(=
+49)-8142-66989-10</a> Fax: <a href=3D"tel:%28%2B49%29-8142-66989-80" value=
=3D"+4981426698980">(+49)-8142-66989-80</a> Email: <a href=3D"mailto:wd@den=
x.de">wd@denx.de</a> It&#39;s hard to make a program foolproof because fool=
s are so ingenious.<br>


</div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--f46d040715c5258dcc04c49c4f27--
