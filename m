Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36A47E00935; Mon, 20 Feb 2017 03:14:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.196 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08779E0082A
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 03:14:45 -0800 (PST)
Received: by mail-qt0-f196.google.com with SMTP id b16so10093641qte.2
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 03:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QTmUcHYE1VnpnTnE2DqB9soYK8Vgw1mY18EH6mtfjjc=;
	b=qvotGkHkij3pwAgnEwaftzeh9OCLIYioBh55d4GZuy+/jUtULq6ZtxujgArJihcc7h
	hRekzeH9a9w1zBCTfvCsPpTBfulB8L2oLV2yaSK9cn5/7M3yqOa4fR8SxyYMfUDFUH6A
	jUcadv2CWmsp4fFGhZ6LSiZgN/xrJ56E3LV/FSYCOu8dElvoQ7Thw95REDg6r1SvrYSZ
	DJvoIk5uh3BjuQcTnFZtBkcS2/FSm6+iIlglMwyP1uBrBrhvgKiK37BBiF7Z6yjLpRue
	+2733nMx3iB4PmUlwc0Skpa+SLe2GbhzoZibEsAPqsbaurmgOJeYxhBPKL/LVClw+Qj0
	6CKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QTmUcHYE1VnpnTnE2DqB9soYK8Vgw1mY18EH6mtfjjc=;
	b=KcNOlmwgx4eQClNDZ3P0FsSkfTG4e4r4s8muCWdcYMsHenWBCLK/jtRqRLtURx51Oc
	gL/SpMzlcMy8y3j+EaEXIBy9nzdSnHQBzg+BfnyBk4fyTp0w10yV2w2rtFbwGVQCsIrw
	Y6cs/AMbaGS1Esgbibgwa+W/HR5v1DCS93e0RSwvaI3Z6te6xRHdydLztKyXoq+6+yAG
	UQ0unKABYDz1krysm1SRQeRjBqJwcD4PRDb9m/ScWxIQqNN14sg3KlZqBJEIxTMOPVZB
	aeheOaPDQbCASI8aGLzMlWj5kCcLhKVv3iV1G6kkD65lpK91hujpwX1jIbZf+g93B2hx
	/EZw==
X-Gm-Message-State: AMke39kfhira5ZPAzudtLCmbFhu8ELG7MhsBYUvI47rXdIVDxjHYguCzZu9wofLv7kbMpby4BzDn3wJhBlO0Rg==
X-Received: by 10.237.38.197 with SMTP id q63mr20696207qtd.14.1487589285011;
	Mon, 20 Feb 2017 03:14:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Mon, 20 Feb 2017 03:14:44 -0800 (PST)
In-Reply-To: <CAJrj+DMdmcBqnFgfJ4B3t+HCScH_ANCCm3wLcvDyDROMBowpYg@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
	<CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
	<CAJrj+DMdmcBqnFgfJ4B3t+HCScH_ANCCm3wLcvDyDROMBowpYg@mail.gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Mon, 20 Feb 2017 19:14:44 +0800
Message-ID: <CAJrj+DO24Y3Wwx-yoRcY0OrwoudO6y0-qppAi=4tDMm+bJzRgQ@mail.gmail.com>
To: Jacob Chen <jacobchen110@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: add
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
X-List-Received-Date: Mon, 20 Feb 2017 11:14:49 -0000
Content-Type: multipart/alternative; boundary=94eb2c076fd2e7a9130548f45e1d

--94eb2c076fd2e7a9130548f45e1d
Content-Type: text/plain; charset=UTF-8

2017-02-19 22:33 GMT+08:00 Eddie Cai <eddie.cai.linux@gmail.com>:

>
>
> 2017-02-19 22:22 GMT+08:00 Jacob Chen <jacobchen110@gmail.com>:
>
>> Hi,
>>
>> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>> > This recipe was taken from the Rockchip team's recipe at
>> > https://github.com/rockchip-linux/meta-rockchip/commit/6a139
>> d5b7510c7ba36aace82c239b894d5741cac
>> >
>> > It was mostly written by Jacob Chen <jacob-chen@iotwrt.com> and I've
>> made a
>> > couple small modifications.
>> >
>> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>> > ---
>> >  recipes-bsp/u-boot/u-boot-rockchip_git.bb | 19 +++++++++++++++++++
>> >  1 file changed, 19 insertions(+)
>> >  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb
>> >
>> > diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>> b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>> > new file mode 100644
>> > index 0000000..3b4f109
>> > --- /dev/null
>> > +++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>> > @@ -0,0 +1,19 @@
>> > +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>> > +# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
>> > +# Released under the MIT license (see COPYING.MIT for the terms)
>> > +
>> > +require recipes-bsp/u-boot/u-boot.inc
>> > +
>> > +DESCRIPTION = "Rockchip next-dev U-Boot"
>> > +LICENSE = "GPLv2+"
>> > +LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2
>> c678cfd4a4d97135585cad908541c6"
>> > +COMPATIBLE_MACHINE = "(firefly-rk3288)"
>> > +
>> > +SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=release;"
>> > +SRCREV = "${AUTOREV}"
>> > +S = "${WORKDIR}/git"
>> > +
>> > +do_deploy_prepend () {
>> > +       # copy to default search path
>> > +       cp ${B}/spl/${SPL_BINARY} ${B}/
>> > +}
>>
>> I can't pass build if use do_deploy_prepend instead of do_install_prepend.
>>
> It works for me. Did you delete build/tmp?
>
I failed when i did a clean build(delete build dir). I modify
do_deploy_prepend to do_install_prepend. Everything is fine.   I guess i
can build before because sstate-cache cache the previous build data.

>
>> > --
>> > 2.12.0.rc1.48.g076c053
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--94eb2c076fd2e7a9130548f45e1d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2017-02-19 22:33 GMT+08:00 Eddie Cai <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:eddie.cai.linux@gmail.com" target=3D"_blank">eddie.cai.linux@gmail.co=
m</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
<div><div class=3D"gmail-h5">2017-02-19 22:22 GMT+08:00 Jacob Chen <span di=
r=3D"ltr">&lt;<a href=3D"mailto:jacobchen110@gmail.com" target=3D"_blank">j=
acobchen110@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi,<br>
<span><br>
2017-02-19 10:43 GMT+08:00 Trevor Woerner &lt;<a href=3D"mailto:twoerner@gm=
ail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;:<br>
</span><div><div class=3D"gmail-m_-6309467081305777216h5">&gt; This recipe =
was taken from the Rockchip team&#39;s recipe at<br>
&gt; <a href=3D"https://github.com/rockchip-linux/meta-rockchip/commit/6a13=
9d5b7510c7ba36aace82c239b894d5741cac" rel=3D"noreferrer" target=3D"_blank">=
https://github.com/rockchip-li<wbr>nux/meta-rockchip/commit/6a139<wbr>d5b75=
10c7ba36aace82c239b894d57<wbr>41cac</a><br>
&gt;<br>
&gt; It was mostly written by Jacob Chen &lt;<a href=3D"mailto:jacob-chen@i=
otwrt.com" target=3D"_blank">jacob-chen@iotwrt.com</a>&gt; and I&#39;ve mad=
e a<br>
&gt; couple small modifications.<br>
&gt;<br>
&gt; Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com=
" target=3D"_blank">twoerner@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_git.bb" rel=
=3D"noreferrer" target=3D"_blank">u-boot-rock<wbr>chip_git.bb</a> | 19 ++++=
+++++++++++++++<br>
&gt;=C2=A0 1 file changed, 19 insertions(+)<br>
&gt;=C2=A0 create mode 100644 recipes-bsp/u-boot/<a href=3D"http://u-boot-r=
ockchip_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-rock<wbr>chip_g=
it.bb</a><br>
&gt;<br>
&gt; diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_git.=
bb" rel=3D"noreferrer" target=3D"_blank">u-boot-ro<wbr>ckchip_git.bb</a> b/=
recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_git.bb" rel=3D"norefer=
rer" target=3D"_blank">u-boot-ro<wbr>ckchip_git.bb</a><br>
&gt; new file mode 100644<br>
&gt; index 0000000..3b4f109<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_git.bb" rel=
=3D"noreferrer" target=3D"_blank">u-boot-ro<wbr>ckchip_git.bb</a><br>
&gt; @@ -0,0 +1,19 @@<br>
&gt; +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
&gt; +# Copyright (C) 2017 Trevor Woerner &lt;<a href=3D"mailto:twoerner@gm=
ail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;<br>
&gt; +# Released under the MIT license (see COPYING.MIT for the terms)<br>
&gt; +<br>
&gt; +require recipes-bsp/u-boot/u-boot.inc<br>
&gt; +<br>
&gt; +DESCRIPTION =3D &quot;Rockchip next-dev U-Boot&quot;<br>
&gt; +LICENSE =3D &quot;GPLv2+&quot;<br>
&gt; +LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=3Da2<wbr>c678cf=
d4a4d97135585cad908541c6<wbr>&quot;<br>
&gt; +COMPATIBLE_MACHINE =3D &quot;(firefly-rk3288)&quot;<br>
&gt; +<br>
&gt; +SRC_URI =3D &quot;git://<a href=3D"http://github.com/rockchip-linux/u=
-boot.git;branch=3Drelease" rel=3D"noreferrer" target=3D"_blank">github.com=
/rockchip-lin<wbr>ux/u-boot.git;branch=3Drelease</a>;&quot;<br>
&gt; +SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt; +S =3D &quot;${WORKDIR}/git&quot;<br>
&gt; +<br>
&gt; +do_deploy_prepend () {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0# copy to default search path<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0cp ${B}/spl/${SPL_BINARY} ${B}/<br>
&gt; +}<br>
<br>
</div></div>I can&#39;t pass build if use do_deploy_prepend instead of do_i=
nstall_prepend.<br></blockquote></div></div><div>It works for me. Did you d=
elete build/tmp?</div></div></div></div></blockquote><div>I failed when i d=
id a clean build(delete build dir). I modify do_deploy_prepend to do_instal=
l_prepend. Everything is fine. =C2=A0 I guess i can build before because ss=
tate-cache cache the previous build data.=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><di=
v class=3D"gmail_quote"><span class=3D"gmail-"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">
<div class=3D"gmail-m_-6309467081305777216HOEnZb"><div class=3D"gmail-m_-63=
09467081305777216h5"><br>
&gt; --<br>
&gt; 2.12.0.rc1.48.g076c053<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></span></div><br></div></div>
</blockquote></div><br></div></div>

--94eb2c076fd2e7a9130548f45e1d--
