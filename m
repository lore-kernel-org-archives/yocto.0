Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DB4FE00CE8; Fri, 15 Dec 2017 11:24:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9193E008CA
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 11:24:03 -0800 (PST)
Received: by mail-pf0-f179.google.com with SMTP id d23so6795906pfe.9
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 11:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BB/raAnURQe24plsRCXF1W5dcP0CsrZMJMXYA5ngonE=;
	b=i6RrmFFCKzyx8m44rDcx0hl4rbR0OXUDY5YRO7SAnhcnusLZXnIGd1EZulteV3lzRW
	Vn/vJfp6XljdxM6l1TEUVbP+9+3/XyzVVqg63dg5anzt1wTo+nktNeGLtljPO8LUbaat
	s8Ak6jinPvHcmd2QwXI3j25v6cP/kdLNImRtlap2fAshtDoyKtMgWU/qGHKzKHvahki/
	JwAsFXal4PDVP9Yga6Tz/sYd9sdU4m/R322AgLwEmq3ErEAaPacVkzi6bcRXW4YRCzEi
	+9SVNOBnMIafw7fWXu0b9UTKTq/do0UjhVuLixJ3jTUSL8EBvxF24w/86B3St5BHf5px
	drwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BB/raAnURQe24plsRCXF1W5dcP0CsrZMJMXYA5ngonE=;
	b=HdVhay6+V5B+38lyo+pmmBxtd7rNwAfC3kzCntgXPofsviKRJFzOEIqtXHS7d6pyU+
	ifZehHoRt+JZqzaL0aU1ZPb7+sTl4lkrUXV/k/j8W9bA15WDOo4QPU/L7l0wv+Fx5Tsd
	JvCJctL3gjUVISA6o4PCVAB5Tgm19bzDbCBxhv1FyxybzEnQQQpptKU5OZxNeRn2zq0w
	NfrwYPAAj2B5a8qezEJ3+ggVhJ1JmDWtd1rVYfdOT0DZFjwqhAvVVysQ2b/scW0NgS6E
	CD+SiNKZrFJKljnJhil6DBK4JlfhXWqGzhl845q7JyRLa89Kw7TPG9iylJTcyxEC1UEE
	Vgcg==
X-Gm-Message-State: AKGB3mJicso+OkpxwVRkdHxQLBuwJUcF9P9SamQnRAxelExl9bQuUshi
	F+UQrx9Ef2bSmF6625e5uijeMuCfOlY5d8HSOl/yiw==
X-Google-Smtp-Source: ACJfBotTnd7kIMBvHzBh9lpVWT0LuZeJAKeqatZe1ecEeh0upEukLKNfYoy+LHpUHBKE+gcktcpWxnKNr8u6Amqfqls=
X-Received: by 10.99.127.84 with SMTP id p20mr13100659pgn.204.1513365843062;
	Fri, 15 Dec 2017 11:24:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Fri, 15 Dec 2017 11:24:02 -0800 (PST)
In-Reply-To: <CAPyrkgzvxtJ6H---FBHyj0omV9rrn3X3ncGpt-W9uvB_J5iUdQ@mail.gmail.com>
References: <CAPb0b+N8sQbkQ4BgH9nS+mdpYCRzWPH5xnCFm8h3X_cOzNLoKA@mail.gmail.com>
	<CAPyrkgzvxtJ6H---FBHyj0omV9rrn3X3ncGpt-W9uvB_J5iUdQ@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Fri, 15 Dec 2017 20:24:02 +0100
Message-ID: <CAPb0b+Ps5vURfT2YYz9CDkp90aBTBnDvAh1_T2pH0cHEg4Dz5g@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] error executing python function in linux-raspberrypi-dev
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
X-List-Received-Date: Fri, 15 Dec 2017 19:24:05 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b6a907db7bd056065f1b9"

--94eb2c1b6a907db7bd056065f1b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
sherif@sherif-virtual-machine:~/yocto-rocko/poky/build$ bitbake
rpi-basic-image >a.txt
ERROR: /home/sherif/yocto/poky/meta-openembedded/meta-networking/
recipes-support/nis/ypbind-mt_1.38.bb: Error executing a python function in
<code>:

The stack trace of python calls that resulted in this exception/failure was=
:
File: '<code>', lineno: 13, function: <module>
     0009:__anon_35__home_sherif_yocto_rocko_poky_meta_classes_
devshell_bbclass(d)
     0010:__anon_101__home_sherif_yocto_rocko_poky_meta_classes_
sstate_bbclass(d)
     0011:__anon_20__home_sherif_yocto_rocko_poky_meta_classes_
blacklist_bbclass(d)
     0012:__anon_154__home_sherif_yocto_rocko_poky_meta_classes_
siteinfo_bbclass(d)
 *** 0013:__anon_31__home_sherif_yocto_poky_meta_openembedded_
meta_networking_recipes_support_nis_nis_inc(d)
     0014:__anon_23__home_sherif_yocto_rocko_poky_meta_classes_
systemd_bbclass(d)
     0015:__anon_81__home_sherif_yocto_rocko_poky_meta_classes_
update_rc_d_bbclass(d)
File: '/home/sherif/yocto/poky/meta-openembedded/meta-networking/recipes-su=
pport/nis/nis.inc',
lineno: 29, function: __anon_31__home_sherif_yocto_
poky_meta_openembedded_meta_networking_recipes_support_nis_nis_inc
     0025:# so force the package to be skipped here (this will cause a
     0026:# 'nothing provides' error)
     0027:python () {
     0028:    os =3D bb.data.getVar("TARGET_OS", d, 1)
 *** 0029:    if os =3D=3D "linux-uclibc":
     0030:        raise bb.parse.SkipPackage("NIS functionality requires
rpcsvc/yp.h, uClibC does not provide this")
     0031:}
Exception: AttributeError: module 'bb.data' has no attribute 'getVar'

ERROR: /home/sherif/yocto/poky/meta-openembedded/meta-networking/
recipes-support/nis/yp-tools_2.14.bb: Error executing a python function in
<code>:

The stack trace of python calls that resulted in this exception/failure was=
:
File: '<code>', lineno: 13, function: <module>
     0009:__anon_35__home_sherif_yocto_rocko_poky_meta_classes_
devshell_bbclass(d)
     0010:__anon_101__home_sherif_yocto_rocko_poky_meta_classes_
sstate_bbclass(d)
     0011:__anon_20__home_sherif_yocto_rocko_poky_meta_classes_
blacklist_bbclass(d)
     0012:__anon_154__home_sherif_yocto_rocko_poky_meta_classes_
siteinfo_bbclass(d)
 *** 0013:__anon_31__home_sherif_yocto_poky_meta_openembedded_
meta_networking_recipes_support_nis_nis_inc(d)
     0014:__anon_23__home_sherif_yocto_rocko_poky_meta_classes_
systemd_bbclass(d)
File: '/home/sherif/yocto/poky/meta-openembedded/meta-networking/recipes-su=
pport/nis/nis.inc',
lineno: 29, function: __anon_31__home_sherif_yocto_
poky_meta_openembedded_meta_networking_recipes_support_nis_nis_inc
     0025:# so force the package to be skipped here (this will cause a
     0026:# 'nothing provides' error)
     0027:python () {
     0028:    os =3D bb.data.getVar("TARGET_OS", d, 1)
 *** 0029:    if os =3D=3D "linux-uclibc":
     0030:        raise bb.parse.SkipPackage("NIS functionality requires
rpcsvc/yp.h, uClibC does not provide this")
     0031:}
Exception: AttributeError: module 'bb.data' has no attribute 'getVar'

ERROR: Failed to parse recipe: /home/sherif/yocto/poky/meta-
openembedded/meta-networking/recipes-support/nis/ypbind-mt_1.38.bb
sherif@sherif-virtual-machine:~/yocto-rocko/poky/build$ ls



note that i am not mixing branches

On Fri, Dec 15, 2017 at 10:32 AM, Paul Barker <pbarker@toganlabs.com> wrote=
:

> On Fri, Dec 15, 2017 at 5:00 AM, Sherif Omran <sherifomran2000@gmail.com>
> wrote:
> > By testing the latest update of meta-raspberry pi with the Rocko or the
> > morty branch, i get ERROR executing a python function in code (see
> > attachment).
> >
>
> Please send error messages in plain text not as an image. The image
> doesn't show the full output as well, we'd need to also see the
> earlier bitbake output including the build configuration to determine
> what's gone wrong here.
>
> --
> Paul Barker
> Tog=C3=A1n Labs Ltd
>

--94eb2c1b6a907db7bd056065f1b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Summary: There were 3 ERROR messages shown, returning=
 a non-zero exit code.<br>sherif@sherif-virtual-machine:<wbr>~/yocto-rocko/=
poky/build$ bitbake rpi-basic-image &gt;a.txt<br>ERROR: /home/sherif/yocto/=
poky/meta-<wbr>openembedded/meta-networking/<wbr>recipes-support/nis/<a tar=
get=3D"_blank" href=3D"http://ypbind-mt_1.38.bb">ypbind-mt_<wbr>1.38.bb</a>=
: Error executing a python function in &lt;code&gt;:<br><br>The stack trace=
 of python calls that resulted in this exception/failure was:<br>File: &#39=
;&lt;code&gt;&#39;, lineno: 13, function: &lt;module&gt;<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0009:__anon_35__home_sherif_<wbr>yocto_rocko_poky_meta_classes_<w=
br>devshell_bbclass(d)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0010:__anon_101__home_sh=
erif_<wbr>yocto_rocko_poky_meta_classes_<wbr>sstate_bbclass(d)<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0011:__anon_20__home_sherif_<wbr>yocto_rocko_poky_meta_clas=
ses_<wbr>blacklist_bbclass(d)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0012:__anon_154__=
home_sherif_<wbr>yocto_rocko_poky_meta_classes_<wbr>siteinfo_bbclass(d)<br>=
=C2=A0*** 0013:__anon_31__home_sherif_<wbr>yocto_poky_meta_openembedded_<wb=
r>meta_networking_recipes_<wbr>support_nis_nis_inc(d)<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 0014:__anon_23__home_sherif_<wbr>yocto_rocko_poky_meta_classes_<wbr>=
systemd_bbclass(d)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0015:__anon_81__home_sherif_=
<wbr>yocto_rocko_poky_meta_classes_<wbr>update_rc_d_bbclass(d)<br>File: &#3=
9;/home/sherif/yocto/poky/meta-<wbr>openembedded/meta-networking/<wbr>recip=
es-support/nis/nis.inc&#39;, lineno: 29, function: __anon_31__home_sherif_y=
octo_<wbr>poky_meta_openembedded_meta_<wbr>networking_recipes_support_<wbr>=
nis_nis_inc<br>=C2=A0=C2=A0=C2=A0=C2=A0 0025:# so force the package to be s=
kipped here (this will cause a<br>=C2=A0=C2=A0=C2=A0=C2=A0 0026:# &#39;noth=
ing provides&#39; error)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0027:python () {<br>=
=C2=A0=C2=A0=C2=A0=C2=A0 0028:=C2=A0=C2=A0=C2=A0 os =3D bb.data.getVar(&quo=
t;TARGET_OS&quot;, d, 1)<br>=C2=A0*** 0029:=C2=A0=C2=A0=C2=A0 if os =3D=3D =
&quot;linux-uclibc&quot;:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0030:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise bb.parse.SkipPackage(&quot;NIS functional=
ity requires rpcsvc/yp.h, uClibC does not provide this&quot;)<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0031:}<br>Exception: AttributeError: module &#39;bb.data&#3=
9; has no attribute &#39;getVar&#39;<br><br>ERROR: /home/sherif/yocto/poky/=
meta-<wbr>openembedded/meta-networking/<wbr>recipes-support/nis/<a target=
=3D"_blank" href=3D"http://yp-tools_2.14.bb">yp-tools_<wbr>2.14.bb</a>: Err=
or executing a python function in &lt;code&gt;:<br><br>The stack trace of p=
ython calls that resulted in this exception/failure was:<br>File: &#39;&lt;=
code&gt;&#39;, lineno: 13, function: &lt;module&gt;<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 0009:__anon_35__home_sherif_<wbr>yocto_rocko_poky_meta_classes_<wbr>=
devshell_bbclass(d)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0010:__anon_101__home_sheri=
f_<wbr>yocto_rocko_poky_meta_classes_<wbr>sstate_bbclass(d)<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 0011:__anon_20__home_sherif_<wbr>yocto_rocko_poky_meta_classes=
_<wbr>blacklist_bbclass(d)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0012:__anon_154__hom=
e_sherif_<wbr>yocto_rocko_poky_meta_classes_<wbr>siteinfo_bbclass(d)<br>=C2=
=A0*** 0013:__anon_31__home_sherif_<wbr>yocto_poky_meta_openembedded_<wbr>m=
eta_networking_recipes_<wbr>support_nis_nis_inc(d)<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 0014:__anon_23__home_sherif_<wbr>yocto_rocko_poky_meta_classes_<wbr>sys=
temd_bbclass(d)<br>File: &#39;/home/sherif/yocto/poky/meta-<wbr>openembedde=
d/meta-networking/<wbr>recipes-support/nis/nis.inc&#39;, lineno: 29, functi=
on: __anon_31__home_sherif_yocto_<wbr>poky_meta_openembedded_meta_<wbr>netw=
orking_recipes_support_<wbr>nis_nis_inc<br>=C2=A0=C2=A0=C2=A0=C2=A0 0025:# =
so force the package to be skipped here (this will cause a<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 0026:# &#39;nothing provides&#39; error)<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 0027:python () {<br>=C2=A0=C2=A0=C2=A0=C2=A0 0028:=C2=A0=C2=A0=C2=A0=
 os =3D bb.data.getVar(&quot;TARGET_OS&quot;, d, 1)<br>=C2=A0*** 0029:=C2=
=A0=C2=A0=C2=A0 if os =3D=3D &quot;linux-uclibc&quot;:<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0030:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise bb.parse.Sk=
ipPackage(&quot;NIS functionality requires rpcsvc/yp.h, uClibC does not pro=
vide this&quot;)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0031:}<br>Exception: Attribute=
Error: module &#39;bb.data&#39; has no attribute &#39;getVar&#39;<br><br>ER=
ROR: Failed to parse recipe: /home/sherif/yocto/poky/meta-<wbr>openembedded=
/meta-networking/<wbr>recipes-support/nis/<a target=3D"_blank" href=3D"http=
://ypbind-mt_1.38.bb">ypbind-mt_<wbr>1.38.bb</a><br>sherif@sherif-virtual-m=
achine:<wbr>~/yocto-rocko/poky/build$ ls<br><br><br><br></div>note that i a=
m not mixing branches<br></div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Fri, Dec 15, 2017 at 10:32 AM, Paul Barker <span dir=3D"lt=
r">&lt;<a href=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@t=
oganlabs.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div c=
lass=3D"HOEnZb"><div class=3D"h5">On Fri, Dec 15, 2017 at 5:00 AM, Sherif O=
mran &lt;<a href=3D"mailto:sherifomran2000@gmail.com">sherifomran2000@gmail=
.com</a>&gt; wrote:<br>
&gt; By testing the latest update of meta-raspberry pi with the Rocko or th=
e<br>
&gt; morty branch, i get ERROR executing a python function in code (see<br>
&gt; attachment).<br>
&gt;<br>
<br>
</div></div>Please send error messages in plain text not as an image. The i=
mage<br>
doesn&#39;t show the full output as well, we&#39;d need to also see the<br>
earlier bitbake output including the build configuration to determine<br>
what&#39;s gone wrong here.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd<br>
</font></span></blockquote></div><br></div>

--94eb2c1b6a907db7bd056065f1b9--
