Return-Path: <ktreddy70@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C16FE00BDF; Sat,  2 Sep 2017 15:36:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ktreddy70[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1F18E009A4
	for <yocto@yoctoproject.org>; Sat,  2 Sep 2017 15:36:24 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id c13so7009698itb.0
	for <yocto@yoctoproject.org>; Sat, 02 Sep 2017 15:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6480KO/GBnQrWQ1st9K3Nq2cGNOlgEvoTP9JbJRVDfI=;
	b=tDyZ9rLxfB4hYKt9Q4BXlLZuWcZfY2pyEV38+gGYI7ZrCLrqsNwu8RcwMjcXV147W/
	8r0yXLJ5gHgpST+WI1UcwU0kYDz1W5sv6bRjaWg8i5tuiwcIf4biBrPKYMwpBrDob/Z1
	aKZz2mHReRQjvJnmoDLkfP+6P0nrxX8dR7XNUTkexXe/5qeorpbwjns42OdIz+4lkCF3
	CchOJp/PiTb1khM3PFfpJHXKTbkq3I0f3vkGJXC9/+s87C3b0Hs2ZI27Hma3ATqAX5B7
	dAFhJklfyo45VJhl4VlKSJROTlYyWNVqRRwHlGukkJkTFtnNY4J5WIQERXzSaXA+90qm
	xunw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6480KO/GBnQrWQ1st9K3Nq2cGNOlgEvoTP9JbJRVDfI=;
	b=PQVfzfX8CdKR2zLEBHadyI035s7vVGouEyZrKLeVj4GIuFjEtDEYAOauVSEKF9U3ic
	lwsJOErBy+RpuqBxPR1fZN+gbjBybd/TK8M4fmku7D8ackrYg77wcYVeklvunV3opklO
	p1vt+8u20kuFFpDKI8Mwqvmg+708lwvzwrn0mSNmHaLsDUFxXOFeaQbpyfp1tgOhNFQc
	kQyBZ0D9E4AGXPjC0WfFxZOQ4FnJSxNA31nhBxQZ0vCzw4v4h0183F/aa3qNOL+r1Jeu
	tFDAV1cFH8TUAdnyPCnFb1uKPxRSDdmbaL8Lc6hooQXHPjZ3BV7HZGybvHhGItXHp5c8
	uspA==
X-Gm-Message-State: AHPjjUjbBNtAj+lUN16o/kd7U5LUhJfztlsKHbfah0tIY9U0ZWMGyRy6
	wnwqiDD+QljBOp8vsqM31rBzU1DB4SxkmX8=
X-Google-Smtp-Source: ADKCNb5tVVXGzaGbSCd8Yr8ArJTqoCLqUnlh2pgw292WNNUE7r9vMzKygQpTmeH2p8/v4zjw05FQY8qwuCgzo39+QgQ=
X-Received: by 10.36.22.71 with SMTP id a68mr2286797ita.169.1504391784004;
	Sat, 02 Sep 2017 15:36:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.59.69 with HTTP; Sat, 2 Sep 2017 15:36:23 -0700 (PDT)
In-Reply-To: <HE1PR10MB03612D297AE804164131E10BC3930@HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM>
References: <CAKXGAjB9xNynnDpT3zXrZZNyc_x3ONxOrg1eGH_VZ4xuFqkjDA@mail.gmail.com>
	<HE1PR10MB03612D297AE804164131E10BC3930@HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM>
From: ktreddy 70 <ktreddy70@gmail.com>
Date: Sat, 2 Sep 2017 15:36:23 -0700
Message-ID: <CAKXGAjBoCFr0ygfU3qtGWqfPC4JcHsvJ8syR6t6QLGLESib-UQ@mail.gmail.com>
To: Fabian Knapp <knapp@ambibox.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto layer dependencies
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
X-List-Received-Date: Sat, 02 Sep 2017 22:36:26 -0000
Content-Type: multipart/alternative; boundary="001a1145381ee3842105583c81bf"

--001a1145381ee3842105583c81bf
Content-Type: text/plain; charset="UTF-8"

Hi,
Thank you,  issue got resolved after updating build/conf/bblayers.conf file,
Sorry to trouble you but now I am getting the following error what could be
the reason

zcu102/build$ *bitbake petalinux*
Loading cache: 100% |#############################
############################################################
####################################################| Time: 0:00:00
Loaded 3126 entries from dependency cache.
Parsing recipes: 100% |#############################
############################################################
##################################################| Time: 0:00:00
Parsing of 2368 .bb files complete (2366 cached, 2 parsed). 3127 targets,
216 skipped, 0 masked, 0 errors.
WARNING: No recipes available for:
  /home/ktreddy/zcu102/sources/poky/../meta-petalinux/
recipes-extended/images/xen-image-minimal.bbappend
  /home/ktreddy/zcu102/sources/poky/../meta-petalinux/
recipes-extended/xen/xen_4.8.0.bbappend
ERROR: Nothing PROVIDES 'petalinux'. Close matches:
  petalinux-image
  pptp-linux

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

zcu102/build$ *bitbake openlte*
Parsing recipes: 100% |#############################
############################################################
##################################################| Time: 0:00:51
Parsing of 2368 .bb files complete (0 cached, 2368 parsed). 3127 targets,
216 skipped, 0 masked, 0 errors.
WARNING: No recipes available for:
  /home/ktreddy/zcu102/sources/poky/../meta-petalinux/
recipes-extended/images/xen-image-minimal.bbappend
  /home/ktreddy/zcu102/sources/poky/../meta-petalinux/
recipes-extended/xen/xen_4.8.0.bbappend
ERROR: Nothing PROVIDES 'openlte'. Close matches:
  openl2tp
  openlte-git
  openct

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

On Sat, Sep 2, 2017 at 12:34 PM, Fabian Knapp <knapp@ambibox.de> wrote:

> Do you have configured /meta-openembedded/meta-qt4/ in your bblayers.conf
> (build/conf/bblayers.conf)?
>
>
>
>
>
> Fabian
>
>
>
> *Von:* yocto-bounces@yoctoproject.org [mailto:yocto-bounces@
> yoctoproject.org] *Im Auftrag von *ktreddy 70
> *Gesendet:* Samstag, 2. September 2017 20:30
> *An:* yocto@yoctoproject.org
> *Betreff:* [yocto] yocto layer dependencies
>
>
>
> I am trying to set up yocto build environment for openlte, meta-sdr has
> most of the openlte depends
>
> I am getting following error when I try to build sdr,
>
>
>
>
>
> /build$ bitbake sdr
>
> Loading cache: 100% |#############################
> ############################################################
> ###################################################| Time: 0:00:00
>
> Loaded 1642 entries from dependency cache.
>
> ERROR: ParseError at /home/ktreddy/zcu102/sources/
> poky/../meta-openembedded/meta-sdr/recipes-applications/gqrx/gqrx_git.bb:8:
> Could not inherit file classes/qt4x11.bbclass
>
>
>
>
>
> I do have meta-qt4 under meta-openembedded layer  as below.
>
>
>
> zcu102/sources$* ls *meta-openembedded/meta-qt4/classes/
>
> qmake2.bbclass  qmake_base.bbclass  qt4e.bbclass  *qt4x11.bbclass*
>
>
>
>
>
> could you please help me on why am I getting this error ?
>
> How can I make one layer visible to another layer ?
>
> Ex:  How can I make meta-sdr visible to openlte ? I mean how can I say to
> openlte that the dependency recipes are available under meta-sdr ?
>
>
>
> if new recipes are available for a layer how can I get those on to my
> build environment ?
>
>
>
> Thanks for your help.
>

--001a1145381ee3842105583c81bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi,</span><div style=3D"f=
ont-size:12.8px">Thank you, =C2=A0issue got resolved after updating <span s=
tyle=3D"font-size:12.8px">build/conf/bblayers.conf file,</span></div><div s=
tyle=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Sorry to trouble=
 you but now I am getting the following error what could be the reason</spa=
n></div><div style=3D"font-size:12.8px"><br></div><div style=3D"font-size:1=
2.8px"><div>zcu102/build$=C2=A0<b>bitbake petalinux</b></div><div>Loading c=
ache: 100% |#############################<wbr>#############################=
#<wbr>##############################<wbr>##############################<wbr=
>######################| Time: 0:00:00</div><div>Loaded 3126 entries from d=
ependency cache.</div><div>Parsing recipes: 100% |#########################=
####<wbr>##############################<wbr>##############################<=
wbr>##############################<wbr>####################| Time: 0:00:00<=
/div><div>Parsing of 2368 .bb files complete (2366 cached, 2 parsed). 3127 =
targets, 216 skipped, 0 masked, 0 errors.</div><div><font color=3D"#ff0000"=
>WARNING: No recipes available for:</font></div><div><font color=3D"#ff0000=
">=C2=A0 /home/ktreddy/zcu102/sources/<wbr>poky/../meta-petalinux/<wbr>reci=
pes-extended/images/xen-<wbr>image-minimal.bbappend</font></div><div><font =
color=3D"#ff0000">=C2=A0 /home/ktreddy/zcu102/sources/<wbr>poky/../meta-pet=
alinux/<wbr>recipes-extended/xen/xen_4.8.<wbr>0.bbappend</font></div><div><=
font color=3D"#ff0000">ERROR: Nothing PROVIDES &#39;petalinux&#39;. Close m=
atches</font>:</div><div>=C2=A0 petalinux-image</div><div>=C2=A0 pptp-linux=
</div><div><br></div><div>Summary: There was 1 WARNING message shown.</div>=
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div><div><br></div><div>zcu102/build$=C2=A0<b>bitbake openlte</b></div=
><div>Parsing recipes: 100% |#############################<wbr>############=
##################<wbr>##############################<wbr>#################=
#############<wbr>####################| Time: 0:00:51</div><div>Parsing of =
2368 .bb files complete (0 cached, 2368 parsed). 3127 targets, 216 skipped,=
 0 masked, 0 errors.</div><div><font color=3D"#ff0000">WARNING: No recipes =
available for:</font></div><div><font color=3D"#ff0000">=C2=A0 /home/ktredd=
y/zcu102/sources/<wbr>poky/../meta-petalinux/<wbr>recipes-extended/images/x=
en-<wbr>image-minimal.bbappend</font></div><div><font color=3D"#ff0000">=C2=
=A0 /home/ktreddy/zcu102/sources/<wbr>poky/../meta-petalinux/<wbr>recipes-e=
xtended/xen/xen_4.8.<wbr>0.bbappend</font></div><div><font color=3D"#ff0000=
">ERROR: Nothing PROVIDES &#39;openlte&#39;. Close matches:</font></div><di=
v>=C2=A0 openl2tp</div><div>=C2=A0 openlte-git</div><div>=C2=A0 openct</div=
><div><br></div><div>Summary: There was 1 WARNING message shown.</div><div>=
Summary: There was 1 ERROR message shown, returning a non-zero exit code.</=
div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Sat, Sep 2, 2017 at 12:34 PM, Fabian Knapp <span dir=3D"ltr">&lt;<a href=
=3D"mailto:knapp@ambibox.de" target=3D"_blank">knapp@ambibox.de</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"m_-8469960362468444069WordSection1">
<p class=3D"MsoNormal"><span>Do you have configured /meta-openembedded/meta=
-qt4/ in your bblayers.conf (build/conf/bblayers.conf)?<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Fabian<u></u><u></u></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b>Von:</b> <a href=3D"mailto:yocto-bounces@yoctopro=
ject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [mailto:<a h=
ref=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounc=
es@<wbr>yoctoproject.org</a>]
<b>Im Auftrag von </b>ktreddy 70<br>
<b>Gesendet:</b> Samstag, 2. September 2017 20:30<br>
<b>An:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Betreff:</b> [yocto] yocto layer dependencies<u></u><u></u></p><div><div=
 class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div style=3D"margin-left:33.0pt">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kd">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kc">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">I am trying to set u=
p yocto build environment for openlte, meta-sdr has most of the openlte dep=
ends<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">I am getting followi=
ng error when I try to build sdr,=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><u></u>=C2=A0<u></u>=
</span></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">/build$ bitbake sdr<=
u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Loading cache: 100% =
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
###########| Time: 0:00:00<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Loaded 1642 entries =
from dependency cache.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">ERROR: ParseError at=
 /home/ktreddy/zcu102/sources/<wbr>poky/../meta-openembedded/<wbr>meta-sdr/=
recipes-applications/<wbr>gqrx/<a href=3D"http://gqrx_git.bb:8/" target=3D"=
_blank">gqrx_git.bb:8</a>: Could not inherit file classes/qt4x11.bbclass<u>=
</u><u></u></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">I do have meta-qt4 u=
nder meta-openembedded layer=C2=A0 as below.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">zcu102/sources$<b>=
=C2=A0ls=C2=A0</b>meta-<wbr>openembedded/meta-qt4/classes/<u></u><u></u></s=
pan></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">qmake2.bbclass =C2=
=A0qmake_base.bbclass =C2=A0qt4e.bbclass =C2=A0<b>qt4x11.bbclass</b><u></u>=
<u></u></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">could you please hel=
p me on why am I getting this error ?<u></u><u></u></span></p>
</div>
</div>
</div>
</div>
</div>
<div style=3D"margin-left:33.0pt">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kd">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kc">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">How can I make one l=
ayer visible to another layer ?<u></u><u></u></span></p>
</div>
</div>
</div>
</div>
<div style=3D"margin-left:33.0pt">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kd">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kc">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Ex: =C2=A0How can I =
make meta-sdr visible to openlte ? I mean how can I say to openlte that the=
 dependency recipes are available under meta-sdr ?<u></u><u></u></span></p>
</div>
</div>
</div>
</div>
<div style=3D"margin-left:33.0pt">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kd">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kc">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
</div>
</div>
</div>
<div style=3D"margin-left:33.0pt">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kd">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kc">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">if new recipes are a=
vailable for a layer how can I get those on to my build environment ?<u></u=
><u></u></span></p>
</div>
</div>
</div>
</div>
<div style=3D"margin-left:33.0pt">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kd">
<div id=3D"m_-8469960362468444069gmail-m_4724528447201748387gmail-:kc">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.5pt">Thanks for your help=
.<u></u><u></u></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--001a1145381ee3842105583c81bf--
