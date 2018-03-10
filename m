Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE639E00E6B; Sat, 10 Mar 2018 09:14:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C01BCE0078F
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 09:14:09 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id h19so2573302pfd.12
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 09:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Eet7xIe0H2Nz1n3Wkt7d7lrxQutLwEFQ2edhXkmCKV0=;
	b=lPryHdbjcauk2yTH2lfbJ9tS80BvS085sJj/uNYRvsNSJQ8nTw0AkRb32hjFR0CxtK
	FYg1f/i4tpY9Uet1c/R+3kFXrVqcnQfR9LWC59K3SVJyT2Hj6mZag9F2DkCzVxl1L6lS
	tZPwL8uY8QzFzl9rsbRSL5D/1Ow1/1hkbnA33Ooh6KQhEDZ3F21A1xUvAw4rdFqQuVT4
	UxBRdAEJUUGRrrgoOAhfZpobOPXnm7K62/ouxfCDlAI8wxVopg04bU/B+JS9BxkvhmiQ
	+NGCX9z/Min46TLMxZmEZf3NI2Lko7PBc0KvuFEzsxdsYATlSEX4yGdHvnpnUO2eCnKn
	RfQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Eet7xIe0H2Nz1n3Wkt7d7lrxQutLwEFQ2edhXkmCKV0=;
	b=nEqX69y0hSXQi76Qhj5EysbRRP2BEWdtDDldYXTpAqLehawypGSWA6u4z4+AHb6jXr
	muoTn/I2jTMwsKqeMlJ8I+FTadgaw9e9dc11a38CSLJZ8uGNrVWGk/ceIVSI4y681Hnx
	DgVMhaTs02s/WaiwUNp7Ye005SC6kqbA4ommkV65p9OB4K5kEUpCgorR4UoKE0HVM0F5
	PG4p5yykcfNc3Qybg680cEc3N0wcP7kUKo2hIkm9Zf3miS5EDGzHSJbbr9S2y1RCp4CH
	Vw40SPI4KTNpLmeL2wcDrDYUpHh/SkI/zHYDb3/H0/tubl9/0KmczwrqTacJz5lQ7hQI
	Y2Zw==
X-Gm-Message-State: AElRT7FESiNwieC0FibGtYJKLlBJOVj9Xa3imCmNVJjcb/2q4srlgz2N
	qfRjnZwdGxiNi5kCSFn/prK6N1joNFymIjDR6y5DZQ==
X-Google-Smtp-Source: AG47ELsaRYgFHJNE3a/DYIjx0KBoD1u4RyYVOMPja7opyBBwB97+YbpFnYt4unFd25rOA32ECrd1jzTn1hHovJv/zXo=
X-Received: by 10.99.108.199 with SMTP id h190mr2079025pgc.295.1520702048987; 
	Sat, 10 Mar 2018 09:14:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.236.166.23 with HTTP; Sat, 10 Mar 2018 09:14:08 -0800 (PST)
In-Reply-To: <CAOT_U5Z_Oph_QdPy3XsG-0Wi-e8AYU=BJv4TX+UYjX-F87WdmQ@mail.gmail.com>
References: <CAFq4t4gHeuROOaP3q7k3_i2BthqH2GQtf93OCTOcb6XhA1ANvw@mail.gmail.com>
	<CAOT_U5Z_Oph_QdPy3XsG-0Wi-e8AYU=BJv4TX+UYjX-F87WdmQ@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sat, 10 Mar 2018 18:14:08 +0100
Message-ID: <CAFq4t4j-4B1T4k2fq31eZA0mTYx=kZ1iZFGnUc+kJ6FazmmRGA@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: python-pyqt
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
X-List-Received-Date: Sat, 10 Mar 2018 17:14:11 -0000
Content-Type: multipart/alternative; boundary="94eb2c14094a7070fe05671209b4"

--94eb2c14094a7070fe05671209b4
Content-Type: text/plain; charset="UTF-8"

I have repo from
http://git.freescale.com/git/cgit.cgi/imx/fsl-arm-yocto-bsp.git/ branch
imx-morty
there is layer "meta-qt5" but does not contain "python-pyqt" or "
"python-pyqt5" recipes.

I copied python-pyqt5_5.8.2.bb recipe from https://layers.openembedded.
org/layerindex/recipe/60914/


On Sat, Mar 10, 2018 at 3:41 PM, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Seems like the name of the package is: python-pyqt5
>
> A recipe with that name does exist in meta-qt5:
> https://layers.openembedded.org/layerindex/recipe/60914/
>
> As on why bitbake didn't automatically set the recipe for execution
> (based on RDEPENDS) but you would need to manually add it to
> IMAGE_INSTALL_append
> I don't know.
>
> Do you have meta-qt5 in your layers?
>
>
> On Sat, Mar 10, 2018 at 1:53 PM, Peter Balazovic
> <balazovic.peter@gmail.com> wrote:
> > Dears,
> >
> >
> >
> > per Yocto build from fsl-arm-yocto-bsp.git - i.MX Linux BSP Release Yocto
> > Project manifests of imx-morty branch I have built fsl-image-qt5 image, I
> > need to add qt5 python support, how to add to the image?
> >
> >
> >
> > Modifying local.conf not works
> >
> > IMAGE_INSTALL_append += "python-pyqt"
> >
> >
> > I end up with errors...
> >
> >
> > ERROR: Nothing RPROVIDES 'python-pyqt5' (but
> > /home/ubuntu/work/morty/fsl-release-bsp-imx6/sources/meta-
> fsl-bsp-release/imx/meta-sdk/recipes-fsl/images/fsl-image-qt5.bb
> > RDEPENDS on or otherwise requires it)
> >
> > NOTE: Runtime target 'python-pyqt5' is unbuildable, removing...
> >
> > Missing or unbuildable dependency chain was: ['python-pyqt5']
> >
> > ERROR: Required build target 'fsl-image-qt5' has no buildable providers.
> >
> > Missing or unbuildable dependency chain was: ['fsl-image-qt5',
> > 'python-pyqt5']
> >
> >
> >
> > How to add python QT5 support to Yocto image build?
> >
> >
> > Thank you.
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--94eb2c14094a7070fe05671209b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have repo from=C2=A0<a href=3D"http://git.freescale.com/=
git/cgit.cgi/imx/fsl-arm-yocto-bsp.git/">http://git.freescale.com/git/cgit.=
cgi/imx/fsl-arm-yocto-bsp.git/</a> branch imx-morty<div>there is layer &quo=
t;meta-qt5&quot; but does not contain &quot;python-pyqt&quot; or &quot;<spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial;float=
:none;display:inline">&quot;python-pyqt5</span>&quot; recipes.=C2=A0</div><=
div><br></div><div>I copied <a href=3D"http://python-pyqt5_5.8.2.bb">python=
-pyqt5_5.8.2.bb</a>=C2=A0recipe from=C2=A0<a href=3D"https://layers.openemb=
edded.org/layerindex/recipe/60914/" rel=3D"noreferrer" target=3D"_blank" st=
yle=3D"color:rgb(17,85,204);font-family:arial,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255)">https://layers.openembedded.<wbr>org/layerindex/recipe/60914/</a>=
=C2=A0</div><div><br></div><div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Sat, Mar 10, 2018 at 3:41 PM, Alan Martinovic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank"=
>alan.martinovic@senic.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Seems like the name of the package is: python-py=
qt5<br>
<br>
A recipe with that name does exist in meta-qt5:<br>
<a href=3D"https://layers.openembedded.org/layerindex/recipe/60914/" rel=3D=
"noreferrer" target=3D"_blank">https://layers.openembedded.<wbr>org/layerin=
dex/recipe/60914/</a><br>
<br>
As on why bitbake didn&#39;t automatically set the recipe for execution<br>
(based on RDEPENDS) but you would need to manually add it to<br>
IMAGE_INSTALL_append<br>
I don&#39;t know.<br>
<br>
Do you have meta-qt5 in your layers?<br>
<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br>
<br>
On Sat, Mar 10, 2018 at 1:53 PM, Peter Balazovic<br>
&lt;<a href=3D"mailto:balazovic.peter@gmail.com">balazovic.peter@gmail.com<=
/a>&gt; wrote:<br>
&gt; Dears,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; per Yocto build from fsl-arm-yocto-bsp.git - i.MX Linux BSP Release Yo=
cto<br>
&gt; Project manifests of imx-morty branch I have built fsl-image-qt5 image=
, I<br>
&gt; need to add qt5 python support, how to add to the image?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Modifying local.conf not works<br>
&gt;<br>
&gt; IMAGE_INSTALL_append +=3D &quot;python-pyqt&quot;<br>
&gt;<br>
&gt;<br>
&gt; I end up with errors...<br>
&gt;<br>
&gt;<br>
&gt; ERROR: Nothing RPROVIDES &#39;python-pyqt5&#39; (but<br>
&gt; /home/ubuntu/work/morty/fsl-<wbr>release-bsp-imx6/sources/meta-<wbr>fs=
l-bsp-release/imx/meta-sdk/<wbr>recipes-fsl/images/<a href=3D"http://fsl-im=
age-qt5.bb" rel=3D"noreferrer" target=3D"_blank">fsl-image-<wbr>qt5.bb</a><=
br>
&gt; RDEPENDS on or otherwise requires it)<br>
&gt;<br>
&gt; NOTE: Runtime target &#39;python-pyqt5&#39; is unbuildable, removing..=
.<br>
&gt;<br>
&gt; Missing or unbuildable dependency chain was: [&#39;python-pyqt5&#39;]<=
br>
&gt;<br>
&gt; ERROR: Required build target &#39;fsl-image-qt5&#39; has no buildable =
providers.<br>
&gt;<br>
&gt; Missing or unbuildable dependency chain was: [&#39;fsl-image-qt5&#39;,=
<br>
&gt; &#39;python-pyqt5&#39;]<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; How to add python QT5 support to Yocto image build?<br>
&gt;<br>
&gt;<br>
&gt; Thank you.<br>
&gt;<br>
</div></div><span class=3D"gmail-HOEnZb"><font color=3D"#888888">&gt; --<br=
>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div></div></div>

--94eb2c14094a7070fe05671209b4--
