Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D095E00838; Mon, 22 Feb 2016 06:46:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE, MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.82.96.247 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm20-vm5.bullet.mail.ir2.yahoo.com
	(nm20-vm5.bullet.mail.ir2.yahoo.com [212.82.96.247])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D81A6E0079A
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 06:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1456152360; bh=HsdWCQksSnDxD+VyxZuZMvQI6IcIOJNTBHkSEIt0zl0=;
	h=Date:From:Reply-To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=rIpvx7W8Tsb1J5m7kHWhePHenqSr68SFeu12XonWOpHm6UgHrbM8xPv6I6KMs7h8LHCIf7+XzAyI522vUac85DHQPsrOZGxtUq6owJehY+mJbXqDE+6iAKbtDlDgTpnGy24mtd6GoggaQdJMj5sVl0J2TieqMojNP8YoGPDwCLTfNNIUnICqUw95JqA3QmtIIi4Jq/qZMdMV78dapsH0B8OJqE+vfF64F6QPrXpeGHCdP+tNn5taKrXcfhS8ISQ7XJnuB0QzqqitVMK3o7YgOq7JPUprgGurzFaCPeRBfbitKn7f0JvS5ekKg96GgY8nDxKqWAi3vyjOjs2rWfNK0g==
Received: from [212.82.98.62] by nm20.bullet.mail.ir2.yahoo.com with NNFMP;
	22 Feb 2016 14:46:00 -0000
Received: from [212.82.98.89] by tm15.bullet.mail.ir2.yahoo.com with NNFMP;
	22 Feb 2016 14:46:00 -0000
Received: from [127.0.0.1] by omp1026.mail.ir2.yahoo.com with NNFMP;
	22 Feb 2016 14:46:00 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 147340.52411.bm@omp1026.mail.ir2.yahoo.com
X-YMail-OSG: Lofvh88VM1ltDXxcaYRQ8wUoaHV2.lD62FH4GaWTWpQZSQ8X17dVgo4wkGaTTgw
	TTxHguty3HdXWYquFr2qN8HYhVLyIbTKd1v3tZkwXUjqFFHA6gGKN.mgTeL_O0xVrf5zCjc7yr3w
	yrltCumoNpYkQczWrmLhlUMlzaVYN40Ucm3BXMOG3B8GiAkV8uwrM0OurQqus7bVKgYB.E4P.Y6h
	YNN1XRLfhAD9v_F5D16_TaTWcC_uwYUFImITOca.b.ctXMSapW8wpxVeAYDZReRR0D_oYf3ZWARp
	AHTJ4lr.Sb_wCi2W0aIdSO90nGEAKie64q03MhICM1o_yu6t6Ttk.PKdNGsrRmzcN4NwCM999SIP
	6uBSS4DmCxOqoAxEYOFLevFD1nf37FEVh6j9zSqyvqEURHmepG.FKQzeGovhbvLVjVYA2.bArmzK
	s9CukaV3zIUS9mW1UW85fpM6iR3ZuxqANGpmhIrCav.MHiwkVfhEu7CS2QQ5kzdNDR2D7YD5AJhk
	xjCL0P9XkElD0JlciUDLPb0jk22wttadE_W03HjzY46F6jsG9kSR4
Received: by 212.82.98.115; Mon, 22 Feb 2016 14:45:59 +0000 
Date: Mon, 22 Feb 2016 14:04:41 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1803814344.8431802.1456149881659.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAP2S6e7-SK2RwXsFjiAch8Rpiv56C7ziD_WpiiKquXiAESKpUg@mail.gmail.com>
References: <CAP2S6e7-SK2RwXsFjiAch8Rpiv56C7ziD_WpiiKquXiAESKpUg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [meta-chip][PATCH] added md5 for ntc's modified u-boot Licences/README file.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Feb 2016 14:46:05 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_8431799_665488137.1456149881653"

------=_Part_8431799_665488137.1456149881653
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I faced the same problem locally, the u-boot.inc tends to check the in a fi=
le which is not present anymore in the repository of Next Thing Co.
Though I just check for the header of the file:
+LIC_FILES_CHKSUM =3D "file://README;beginline=3D1;endline=3D22;md5=3D2687c=
5ebfd9cb284491c3204b726ea29"

=C2=A0=C2=A0=C2=A0=20
=20

    El Domingo 21 de febrero de 2016 13:30, Valentin Le bescond <valentin.l=
ebescond@gmail.com> escribi=C3=B3:
=20

=20

Hi, sorry it was my first (tiny) try at a contribution ... Should I have ex=
plained more in the title ?

Next Thing Co changed the Licences/README file in their repo.
And in the u-boot.inc file used by u-boot-chip, this file is chekced with L=
IC_FILES_CHKSUM. And so it doesn't build without a modification of the md5.
That's it !


Le=C2=A0sam. 20 f=C3=A9vr. 2016 =C3=A0=C2=A020:09, Khem Raj <raj.khem@gmail=
.com> a =C3=A9crit=C2=A0:

On Sat, Feb 20, 2016 at 8:25 AM, Valentin LE BESCOND
<valentin.lebescond@gmail.com> wrote:
> From: Nitnelav <valentin.lebescond@gmail.com>
>
> Signed-off-by: Nitnelav <valentin.lebescond@gmail.com>
> ---
>=C2=A0 recipes-bsp/u-boot/u-boot-chip_git.bb | 2 ++
>=C2=A0 1 file changed, 2 insertions(+)
>
> diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/u=
-boot-chip_git.bb
> index 2342478..0b9032f 100644
> --- a/recipes-bsp/u-boot/u-boot-chip_git.bb
> +++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
> @@ -8,6 +8,8 @@ PROVIDES +=3D "u-boot"
>=C2=A0 UBOOT_VERSION ?=3D "2015.07"
>=C2=A0 PV =3D "${UBOOT_VERSION}+git${SRCPV}"
>
> +LIC_FILES_CHKSUM =3D "file://Licenses/README;md5=3D0507cd7da8e7ad6d67019=
26ec9b84c95"
> +

while checksumming more is merrier, it would be good to know why we
should check for this one ?

>=C2=A0 SRCREV ?=3D "854d5fcc641d8d8914c03a69d7172815d5b81a99"
>=C2=A0 BRANCH ?=3D "chip/stable"
>=C2=A0 SRC_URI =3D "git://github.com/NextThingCo/CHIP-u-boot.git;branch=3D=
${BRANCH}"
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


  

------=_Part_8431799_665488137.1456149881653
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yiv7704123859"><div id=3D"yui_3_16_0_=
1_1456147178319_8953"><div id=3D"yui_3_16_0_1_1456147178319_8952" style=3D"=
color:#000;background-color:#fff;font-family:HelveticaNeue, Helvetica Neue,=
 Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px;"><div dir=3D"l=
tr" id=3D"yiv7704123859yui_3_16_0_1_1456147178319_6955"><div dir=3D"ltr" id=
=3D"yui_3_16_0_1_1456147178319_9074"><span id=3D"yiv7704123859yui_3_16_0_1_=
1456147178319_7350">I faced the same problem locally, the </span><span id=
=3D"yiv7704123859yui_3_16_0_1_1456147178319_7350">u-boot.inc tends to check=
 the in a file which is not present anymore in the repository of </span>Nex=
t Thing Co.</div><div id=3D"yui_3_16_0_1_1456147178319_9060"><br></div><div=
 id=3D"yui_3_16_0_1_1456147178319_9017">Though I just check for the header =
of the file:</div><div id=3D"yui_3_16_0_1_1456147178319_9018"><br></div><di=
v id=3D"yui_3_16_0_1_1456147178319_9041" dir=3D"ltr">+LIC_FILES_CHKSUM =3D =
"file://README;beginline=3D1;endline=3D22;md5=3D2687c5ebfd9cb284491c3204b72=
6ea29"<br><br>&nbsp;&nbsp;&nbsp; <br></div></div> <div class=3D"yiv77041238=
59qtdSeparateBR" id=3D"yiv7704123859yui_3_16_0_1_1456147178319_7322"><br cl=
ear=3D"none"><br clear=3D"none"></div></div></div></div><div id=3D"yui_3_16=
_0_1_1456147178319_9087" class=3D".yiv7704123859yahoo_quoted"> <div id=3D"y=
iv7704123859yui_3_16_0_1_1456147178319_7209" style=3D"font-family:Helvetica=
Neue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size=
:16px;"> <div id=3D"yiv7704123859yui_3_16_0_1_1456147178319_7208" style=3D"=
font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande,=
 sans-serif;font-size:16px;"> <div dir=3D"ltr" id=3D"yiv7704123859yui_3_16_=
0_1_1456147178319_7271"><font id=3D"yiv7704123859yui_3_16_0_1_1456147178319=
_7277" face=3D"Arial" size=3D"2"> El Domingo 21 de febrero de 2016 13:30, V=
alentin Le bescond &lt;valentin.lebescond@gmail.com&gt; escribi=C3=B3:<br c=
lear=3D"none"></font></div>  <br clear=3D"none"><br clear=3D"none"> <div cl=
ass=3D"yiv7704123859y_msg_container" id=3D"yiv7704123859yui_3_16_0_1_145614=
7178319_7307"><div class=3D"qtdSeparateBR"><br><br></div><div class=3D"yiv7=
704123859yqt8788258205" id=3D"yiv7704123859yqt68306"><div id=3D"yiv77041238=
59"><div id=3D"yiv7704123859yui_3_16_0_1_1456147178319_7306"><div dir=3D"lt=
r" id=3D"yiv7704123859yui_3_16_0_1_1456147178319_7305"><div id=3D"yiv770412=
3859yui_3_16_0_1_1456147178319_7304"><div id=3D"yiv7704123859yui_3_16_0_1_1=
456147178319_7303"><div id=3D"yiv7704123859yui_3_16_0_1_1456147178319_7319"=
>Hi, sorry it was my first (tiny) try at a contribution ... Should I have e=
xplained more in the title ?<br clear=3D"none"><br clear=3D"none">Next Thin=
g Co changed the Licences/README file in their repo.<br clear=3D"none"></di=
v>And in the u-boot.inc file used by u-boot-chip, this file is chekced with=
 LIC_FILES_CHKSUM. And so it doesn't build without a modification of the md=
5.<br clear=3D"none"></div>That's it !<br clear=3D"none"></div><div id=3D"y=
ui_3_16_0_1_1456147178319_9181"><div id=3D"yui_3_16_0_1_1456147178319_9180"=
><br clear=3D"none"></div></div></div><br clear=3D"none"><div class=3D"yiv7=
704123859gmail_quote" id=3D"yiv7704123859yui_3_16_0_1_1456147178319_7309"><=
div class=3D"yiv7704123859yqt6603778077" id=3D"yiv7704123859yqtfd20463"><di=
v dir=3D"ltr" id=3D"yiv7704123859yui_3_16_0_1_1456147178319_7308">Le&nbsp;s=
am. 20 f=C3=A9vr. 2016 =C3=A0&nbsp;20:09, Khem Raj &lt;<a rel=3D"nofollow" =
shape=3D"rect" ymailto=3D"mailto:raj.khem@gmail.com" target=3D"_blank" href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; a =C3=A9crit&nbsp=
;:<br clear=3D"none"></div><blockquote class=3D"yiv7704123859gmail_quote" i=
d=3D"yiv7704123859yui_3_16_0_1_1456147178319_7321" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex;">On Sat, Feb 20, 2016 at 8:=
25 AM, Valentin LE BESCOND<br clear=3D"none">
&lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:valentin.lebescond=
@gmail.com" target=3D"_blank" href=3D"mailto:valentin.lebescond@gmail.com">=
valentin.lebescond@gmail.com</a>&gt; wrote:<br clear=3D"none">
&gt; From: Nitnelav &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailt=
o:valentin.lebescond@gmail.com" target=3D"_blank" href=3D"mailto:valentin.l=
ebescond@gmail.com">valentin.lebescond@gmail.com</a>&gt;<br clear=3D"none">
&gt;<br clear=3D"none">
&gt; Signed-off-by: Nitnelav &lt;<a rel=3D"nofollow" shape=3D"rect" id=3D"y=
iv7704123859yui_3_16_0_1_1456147178319_7500" ymailto=3D"mailto:valentin.leb=
escond@gmail.com" target=3D"_blank" href=3D"mailto:valentin.lebescond@gmail=
.com">valentin.lebescond@gmail.com</a>&gt;<br clear=3D"none">
&gt; ---<br clear=3D"none">
&gt;&nbsp; recipes-bsp/u-boot/<a rel=3D"nofollow" shape=3D"rect" target=3D"=
_blank" href=3D"http://u-boot-chip_git.bb/">u-boot-chip_git.bb</a> | 2 ++<b=
r clear=3D"none">
&gt;&nbsp; 1 file changed, 2 insertions(+)<br clear=3D"none">
&gt;<br clear=3D"none">
&gt; diff --git a/recipes-bsp/u-boot/<a rel=3D"nofollow" shape=3D"rect" tar=
get=3D"_blank" href=3D"http://u-boot-chip_git.bb/">u-boot-chip_git.bb</a> b=
/recipes-bsp/u-boot/<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" hr=
ef=3D"http://u-boot-chip_git.bb/">u-boot-chip_git.bb</a><br clear=3D"none">
&gt; index 2342478..0b9032f 100644<br clear=3D"none">
&gt; --- a/recipes-bsp/u-boot/<a rel=3D"nofollow" shape=3D"rect" target=3D"=
_blank" href=3D"http://u-boot-chip_git.bb/">u-boot-chip_git.bb</a><br clear=
=3D"none">
&gt; +++ b/recipes-bsp/u-boot/<a rel=3D"nofollow" shape=3D"rect" target=3D"=
_blank" href=3D"http://u-boot-chip_git.bb/">u-boot-chip_git.bb</a><br clear=
=3D"none">
&gt; @@ -8,6 +8,8 @@ PROVIDES +=3D "u-boot"<br clear=3D"none">
&gt;&nbsp; UBOOT_VERSION ?=3D "2015.07"<br clear=3D"none">
&gt;&nbsp; PV =3D "${UBOOT_VERSION}+git${SRCPV}"<br clear=3D"none">
&gt;<br clear=3D"none">
&gt; +LIC_FILES_CHKSUM =3D "file://Licenses/README;md5=3D0507cd7da8e7ad6d67=
01926ec9b84c95"<br clear=3D"none">
&gt; +<br clear=3D"none">
<br clear=3D"none">
while checksumming more is merrier, it would be good to know why we<br clea=
r=3D"none">
should check for this one ?<br clear=3D"none">
<br clear=3D"none">
&gt;&nbsp; SRCREV ?=3D "854d5fcc641d8d8914c03a69d7172815d5b81a99"<br clear=
=3D"none">
&gt;&nbsp; BRANCH ?=3D "chip/stable"<br clear=3D"none">
&gt;&nbsp; SRC_URI =3D "git://<a rel=3D"nofollow" shape=3D"rect" target=3D"=
_blank" href=3D"http://github.com/NextThingCo/CHIP-u-boot.git;branch=3D$%7B=
BRANCH%7D">github.com/NextThingCo/CHIP-u-boot.git;branch=3D${BRANCH}</a>"<b=
r clear=3D"none">
&gt; --<br clear=3D"none">
&gt; 1.9.1<br clear=3D"none">
&gt;<br clear=3D"none">
&gt; --<br clear=3D"none">
&gt; _______________________________________________<br clear=3D"none">
&gt; yocto mailing list<br clear=3D"none">
&gt; <a rel=3D"nofollow" shape=3D"rect" id=3D"yiv7704123859yui_3_16_0_1_145=
6147178319_7320" ymailto=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br clea=
r=3D"none">
&gt; <a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"https://l=
ists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listin=
fo/yocto</a><br clear=3D"none">
</blockquote></div></div></div></div></div><br clear=3D"none"><div class=3D=
"yiv7704123859yqt6603778077" id=3D"yiv7704123859yqtfd05318">-- <br clear=3D=
"none">_______________________________________________<br clear=3D"none">yo=
cto mailing list<br clear=3D"none"><a rel=3D"nofollow" shape=3D"rect" ymail=
to=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" href=3D"mailto:yocto=
@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none"><a rel=3D"n=
ofollow" shape=3D"rect" target=3D"_blank" href=3D"https://lists.yoctoprojec=
t.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br =
clear=3D"none"></div><br clear=3D"none"><br clear=3D"none"></div>  </div> <=
/div>  </div></div></body></html>

------=_Part_8431799_665488137.1456149881653--
