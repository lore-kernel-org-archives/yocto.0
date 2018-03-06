Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 556B5E00DAE; Tue,  6 Mar 2018 08:19:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 968E6E00823
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 08:19:47 -0800 (PST)
Received: by mail-it0-f68.google.com with SMTP id d13so14418926itf.0
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 08:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=khiEUU4y1Dcu+LA0LW7di9WGHO2VF77eKoupMEjUb5E=;
	b=Impp91HpuTF6HMS0KzwBhWHF8JIzHqRQcbhxlQjZ8Im0BxYTtCl+XYnpzkcjGOmfr4
	QxUywTap6LcFSmlWJrQvPxe6rCOo2sMH27H22BMmwrARmvcJHmbtNqtgh/5bGBCcb1uT
	E6aAAExKbGFv0MKNuVUsSV65d+G5U42qg/O2cYkgzd8CqZqUGAgg/6UvasxvwtvJiplY
	9k1jv7os9X0u4rbkyJHguVtBXEBBWwxu3xkAl4itfDK/G1S/HExLqPDcA/8gn9irc3hD
	LQr8hiWAsl1e9n5qQRf866lPBQ55YDLftbIXWaBRQQT9hUsCzvdwXbgv+CAaigE2YYig
	yVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=khiEUU4y1Dcu+LA0LW7di9WGHO2VF77eKoupMEjUb5E=;
	b=gGZKaLfYOyJSC1joou1qOmNX5Nfxvyh1Y2QQayKmO4yi4kudsjs+oFZwkCdLrFPjWZ
	0ueGBTL62DWz27tuvfBMsT7q+/tobC4dJe1pR+g6YYOPB1oLYDJnmwCAacB64zQHrR93
	mTxQshZpKZzM72GWBDWp21+x0W+pE9RsaZQ25VDsoz8Y2xsEafQ3x/IbrIFwMWgYZleL
	QP6XzzkG4IOFHYg4gXICG+G+Zm9F8PdHmOUop3TJKwU5ADOCUMMGDs0oVvhjeoOFhG42
	glmNuloz4XpugrkkEMaDbmf+pbi+/PuCWN8eFaPLQ68s3ossgTFEku/hccbShJJn3Vrb
	uAdQ==
X-Gm-Message-State: AElRT7EG1c80i/Ce/ziFRbaZ+4wj1oV9Q3gLD04xpzzFb2aQIPKtqKi6
	VUOw42fdBoQrGxFST5Zmo2BsMDxtHwYWWqd3D1g=
X-Google-Smtp-Source: AG47ELtWCxHpKNm++TQue0xRsE3zojwkhZ2bHD8MPmZO7ETkrf/+e7DpjQxwaYk/G/gmB7wWLRkJ2H36uFfvn2Uj4W4=
X-Received: by 10.36.238.65 with SMTP id b62mr18725555iti.122.1520353186771;
	Tue, 06 Mar 2018 08:19:46 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWG=DKYcnaNTWHu-pcAiLgzaNpxfjm9+8pZsO0LY4ib+BpQ@mail.gmail.com>
	<126c177b-0ff4-9611-35dd-54c6c6519d37@intel.com>
In-Reply-To: <126c177b-0ff4-9611-35dd-54c6c6519d37@intel.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 16:19:35 +0000
Message-ID: <CAFzUWGnaiF9vyMhrSG++6ih0DOz=F7GPLHiaC6npWsQV-16=Qw@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Adding custom scripts to home directory and /etc/init.d/*
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
X-List-Received-Date: Tue, 06 Mar 2018 16:19:48 -0000
Content-Type: multipart/alternative; boundary="f403045c08d2a178c20566c0cf56"

--f403045c08d2a178c20566c0cf56
Content-Type: text/plain; charset="UTF-8"

Thanks Anuj,

This is where I ended up for now (let me know if this looks about right):

# see https://stackoverflow.com/a/40768781
DESCRIPTION = "Clock Configuration via I2C"
SRC_URI = "file://init-clock"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${WORKDIR}/init-clock;beginline=2;endline=19;md5=846eef20187f1d9f7f2af0d254faa171"

# these 3 lines will have the script run on boot
inherit update-rc.d
INITSCRIPT_PACKAGES = "${PN}"
INITSCRIPT_NAME = "init-clock"

# install it in the correct location for update-rc.d
do_install() {
  install -d ${D}${INIT_D_DIR}
  install -m 0755 ${WORKDIR}/init-clock ${D}${INIT_D_DIR}/init-clock
}

*# package it as it is not installed in a standard location*
*FILES_${PN} = "${INIT_D_DIR}/init-clock"*

The one thing I'm not 100% sure I understand is the last line that I
bolded, but it seems to be needed.

Thanks,

Giordon

On Mon, Mar 5, 2018 at 6:36 PM Anuj Mittal <anuj.mittal@intel.com> wrote:

> On 03/06/2018 05:18 AM, Giordon Stark wrote:
> > Hi all,
> >
> > I am wondering if there's a nice pattern or workflow within Yocto where
> > I can add a custom shell script to /etc/init.d for the purposes of
> > running it on OS boot (which also requires running update.rc I believe)
>
> You can inherit update-rc.d class and define INITSCRIPT_NAME/PARAMS in
> your recipe.
>
>
> https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-classes-update-rc.d
>
> > as well as prepopulating the home directory with some files of my
> choosing.
> >
> > If someone could point me in the right direction, that would be great!
> >
> > Giordon
> > --
> > Giordon Stark
> >
> >
>
> --
Giordon Stark

--f403045c08d2a178c20566c0cf56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Anuj,<div><br></div><div>This is where I ended up f=
or now (let me know if this looks about right):</div><div><br></div><div><d=
iv><font face=3D"monospace"># see <a href=3D"https://stackoverflow.com/a/40=
768781">https://stackoverflow.com/a/40768781</a></font></div><div><font fac=
e=3D"monospace">DESCRIPTION =3D &quot;Clock Configuration via I2C&quot;</fo=
nt></div><div><font face=3D"monospace">SRC_URI =3D &quot;file://init-clock&=
quot;</font></div><div><font face=3D"monospace">LICENSE =3D &quot;MIT&quot;=
</font></div><div><font face=3D"monospace">LIC_FILES_CHKSUM =3D &quot;file:=
//${WORKDIR}/init-clock;beginline=3D2;endline=3D19;md5=3D846eef20187f1d9f7f=
2af0d254faa171&quot;</font></div><div><font face=3D"monospace"><br></font><=
/div><div><font face=3D"monospace"># these 3 lines will have the script run=
 on boot</font></div><div><font face=3D"monospace">inherit update-rc.d</fon=
t></div><div><font face=3D"monospace">INITSCRIPT_PACKAGES =3D &quot;${PN}&q=
uot;</font></div><div><font face=3D"monospace">INITSCRIPT_NAME =3D &quot;in=
it-clock&quot;</font></div><div><font face=3D"monospace"><br></font></div><=
div><font face=3D"monospace"># install it in the correct location for updat=
e-rc.d</font></div><div><font face=3D"monospace">do_install() {</font></div=
><div><font face=3D"monospace">=C2=A0 install -d ${D}${INIT_D_DIR}</font></=
div><div><font face=3D"monospace">=C2=A0 install -m 0755 ${WORKDIR}/init-cl=
ock ${D}${INIT_D_DIR}/init-clock</font></div><div><font face=3D"monospace">=
}</font></div><div><font face=3D"monospace"><br></font></div><div><font fac=
e=3D"monospace"><b># package it as it is not installed in a standard locati=
on</b></font></div><div><font face=3D"monospace"><b>FILES_${PN} =3D &quot;$=
{INIT_D_DIR}/init-clock&quot;</b></font></div></div><div><br></div><div>The=
 one thing I&#39;m not 100% sure I understand is the last line that I bolde=
d, but it seems to be needed.</div><div><br></div><div>Thanks,</div><div><b=
r></div><div>Giordon</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr">On Mon, Mar 5, 2018 at 6:36 PM Anuj Mittal &lt;<a href=3D"mailto:anuj.=
mittal@intel.com">anuj.mittal@intel.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">On 03/06/2018 05:18 AM, Giordon Stark wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I am wondering if there&#39;s a nice pattern or workflow within Yocto =
where<br>
&gt; I can add a custom shell script to /etc/init.d for the purposes of<br>
&gt; running it on OS boot (which also requires running update.rc I believe=
)<br>
<br>
You can inherit update-rc.d class and define INITSCRIPT_NAME/PARAMS in<br>
your recipe.<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.h=
tml#ref-classes-update-rc.d" rel=3D"noreferrer" target=3D"_blank">https://w=
ww.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-classes-upda=
te-rc.d</a><br>
<br>
&gt; as well as prepopulating the home directory with some files of my choo=
sing.<br>
&gt;<br>
&gt; If someone could point me in the right direction, that would be great!=
<br>
&gt;<br>
&gt; Giordon<br>
&gt; --<br>
&gt; Giordon Stark<br>
&gt;<br>
&gt;<br>
<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--f403045c08d2a178c20566c0cf56--
