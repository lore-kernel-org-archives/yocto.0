Return-Path: <ccvk.chaitanya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76E72E00CED; Mon, 25 Feb 2019 04:13:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ccvk.chaitanya[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D4E0E00C71
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 04:13:54 -0800 (PST)
Received: by mail-ot1-f54.google.com with SMTP id n71so7583520ota.10
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 04:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=U7Zua5z38PdqIHL5qc6nOn+4fmqhrCkt4IGjMcxihtw=;
	b=FFrrBkeXnVc16jfOpoWB/a8myyt2i6gf5EA1zCDZKxzYmi+FiKT0GMJjkb6lWY3UAe
	TQ/rVab1nUyQdvPrkVvEQH51uK99MSQWNVgFYTeKq3tGArproywgq9+qwGnyw8QciHUc
	Lc880HzvSv6Z8TvpxVbr70MTDKcxNKELzFyiUUsKUITzCh/jttOpPCNVkffzTIRYCN8N
	gFteXgrY34tTikseuc1LJ4dx+oi6s/RfEvmfgRXeXkFvR26EikjP0xKywgBIVQ1CQXUh
	WCtzoFxVZC3u2bTjiR0t0RkEhdMCblc3qrfoY5an/mcrzUfyBN1JfAsIuwYk+EtqPGE9
	e4OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=U7Zua5z38PdqIHL5qc6nOn+4fmqhrCkt4IGjMcxihtw=;
	b=X7t1rW+lixnSxuxs8ZxeAk/+cbZGLDcWekfgwZVUZaSzFvf/xA+0n/0+3MH5UgMvSD
	Elj5W4EOsJmrhB/D6o3FKTN/huKBwYwEsOTEL0BpiRVJvASAeFh1PPDj6zCjHHtR5VZM
	Py8Nc6ZIjb6+Jw3zqhw8pbaxaZceSJcp46ICkoZus0zBYfZ0L1hpEQ+B0s8elmcMpcRu
	3+5XoDZk80PLsc41285uMR17KNiLaQgZ3pqyfudYWPh4S32CiBT/ogZNCUrGVdxSGlZb
	i8+AvdOyGHOVIwpRUvPS8J5TsmIkOB2KWfMlsxj/P9xqSahvXAsf+kvxrNwzHhU7Ha4j
	lWTQ==
X-Gm-Message-State: AHQUAua+vNKxzrvfwyv8hiyWDH6p3sMMqgB45e9n0NBAKMwkhaeyb348
	U0RrivoNlgfD3//yrd0QGx7uRoElmgoT0ySXIMM=
X-Google-Smtp-Source: AHgI3IZHtEB8vzm+J1Or9kkNz+cYnO7H2QQFE3VOSFC7G3awwHD/2kx+K5J8Rog0B36Spu5OxiBcXV4YQ51hnMxgJMk=
X-Received: by 2002:a9d:64c1:: with SMTP id n1mr5852464otl.187.1551096834237; 
	Mon, 25 Feb 2019 04:13:54 -0800 (PST)
MIME-Version: 1.0
References: <CALVd-wOQCtsKK5jpMGc5R3-cCrYi-=-sQmGzvnLMCD=pdTk31g@mail.gmail.com>
	<TYAPR01MB2031B0D1EF1448ED96F21032927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<CALVd-wNod6oxi=t3KCiDg2HKO6nqBNWt+3avaBTTV=3x3yAT3w@mail.gmail.com>
	<CAJTo0LaB0Ca1n+nAe0bCiSDMnA+SkZEYPfydAZMd-s_gbhFf4Q@mail.gmail.com>
	<CALVd-wOkq6wwojJ+U6o=X9aMa4MA8PfJfVFgvp3DrWiZTnfsGA@mail.gmail.com>
	<CAJTo0LY=6Q7QV29hbAvkxDE1Dpzv4xm8LiQKMoB9va13KQN_cg@mail.gmail.com>
In-Reply-To: <CAJTo0LY=6Q7QV29hbAvkxDE1Dpzv4xm8LiQKMoB9va13KQN_cg@mail.gmail.com>
From: chaitanya cherukuri <ccvk.chaitanya@gmail.com>
Date: Mon, 25 Feb 2019 07:13:43 -0500
Message-ID: <CALVd-wMF0gNMnDbr=xMd2vsLzu6peAizK5MgY6XS=tWdFMy=HA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to Install Third party rpm packages
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
X-List-Received-Date: Mon, 25 Feb 2019 12:13:55 -0000
Content-Type: multipart/alternative; boundary="000000000000d129840582b6df6c"

--000000000000d129840582b6df6c
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 25, 2019 at 5:09 AM Burton, Ross <ross.burton@intel.com> wrote:

> On Mon, 25 Feb 2019 at 00:45, chaitanya cherukuri
> <ccvk.chaitanya@gmail.com> wrote:
> > Thank you for the clarification.
> > In do_install(), I used rpm2cpio.sh to extract the rpm and then copied
> the rpm contents in the right place.
> >         $rpm2cpio.sh *.rpm | cpio -idmv
> > I hope this is the right way to handle RPM packages.
>
> Put the RPM in SRC_URI and bitbake will unpack it for you.
> Thank you this was helpful..
> > RPM has a post-installation script that I need to handle. This script
> executes after the installation of RPM. Could I know what is the efficient
> way to run the script?
>
> Easiest way is to just copy what it does into the recipe.  Assuming
> that a postinst script for Fedora will work on your Yocto distribution
> is a risky move, just like you wouldn't expect the script to run
> without errors on Debian.
> If I understand correctly, you want to me copy what script is doing in
> do_install(). I was thinking to  add the script has startup to a YOCTO
> Image, so that I don't need to copy anything manually and let the script to
> its job. This is how I am doing it in do_install()

         install -m 0755 ${S}/startup-script ${D}${sysconfdir}/init.d/
ln -sf ../init.d/startup-script ${D}${sysconfdir}/rcS.d/S90startup-script

> I don't know if there are any downfall by doing this way. If I add this
> script as startup script does this get executed on device reset?

Ross
>

Chaitanya

-- 
--
Chaitanya

--000000000000d129840582b6df6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&quot;co=
mic sans ms&quot;,sans-serif;color:rgb(61,133,198)"></div><div dir=3D"ltr">=
<div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif;=
color:#3d85c6"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Mon, Feb 25, 2019 at 5:09 AM Burton, Ross &lt;<=
a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Mon, 25 Feb=
 2019 at 00:45, chaitanya cherukuri<br>&lt;<a href=3D"mailto:ccvk.chaitanya=
@gmail.com" target=3D"_blank">ccvk.chaitanya@gmail.com</a>&gt; wrote:<br>&g=
t; Thank you for the clarification.<br>&gt; In do_install(), I used rpm2cpi=
o.sh to extract the rpm and then copied the rpm contents in the right place=
.<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$rpm2cpio.sh *.rpm | cpio -idmv<=
br>&gt; I hope this is the right way to handle RPM packages.<br>
<br>Put the RPM in SRC_URI and bitbake will unpack it for you.<br><font fac=
e=3D"verdana, sans-serif"><span class=3D"gmail_default" style=3D"color:rgb(=
61,133,198)">Thank you this was helpful.</span><span class=3D"gmail_default=
" style=3D"color:rgb(61,133,198)">.=C2=A0</span><br></font>&gt; RPM has a p=
ost-installation script that I need to handle. This script executes after t=
he installation of RPM. Could I know what is the efficient way to run the s=
cript?<br>
<br>Easiest way is to just copy what it does into the recipe.=C2=A0 Assumin=
g<br>that a postinst script for Fedora will work on your Yocto distribution=
<br>is a risky move, just like you wouldn&#39;t expect the script to run<br=
>without errors on Debian.<br>
<span class=3D"gmail_default" style=3D"color:rgb(61,133,198)"><font face=3D=
"verdana, sans-serif"> If I understand correctly, you want to me copy what =
script is doing in do_install(). I was thinking to=C2=A0 add the script has=
 startup to a YOCTO Image, so that I don&#39;t need to copy anything manual=
ly and let the script to its job. This is how I am doing it in do_install()=
</font></span></blockquote><div>=C2=A0<span style=3D"color:rgb(61,133,198);=
font-family:&quot;comic sans ms&quot;,sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0</span><span style=3D"background-color:rgb(245,245,245);color:rgb(=
112,112,112);font-family:Arial,Helvetica,Geneva,sans-serif;font-size:16px;w=
hite-space:pre-wrap">install -m 0755 ${S}/startup-script ${D}${sysconfdir}/=
init.d/</span></div><div><span style=3D"color:rgb(112,112,112);font-family:=
Arial,Helvetica,Geneva,sans-serif;font-size:16px;white-space:pre-wrap;backg=
round-color:rgb(245,245,245)">	ln -sf ../init.d/startup-script  ${D}${sysco=
nfdir}/rcS.d/S90startup-script</span>=C2=A0=C2=A0<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><span class=3D"gmail_default" style=3D"co=
lor:rgb(61,133,198)"><font face=3D"verdana, sans-serif">I don&#39;t know if=
 there are any downfall by doing this way. If I add this script as startup =
script does this get executed on device reset?</font></span></blockquote><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Ross<br>
</blockquote></div><br clear=3D"all"><div><div class=3D"gmail_default" styl=
e=3D"color:rgb(61,133,198)"><font face=3D"verdana, sans-serif">Chaitanya</f=
ont></div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div =
dir=3D"ltr"><span style=3D"color:rgb(61,133,198)"><span style=3D"font-famil=
y:&quot;comic sans ms&quot;,sans-serif">--<br>Chaitanya</span></span><br></=
div></div></div>

--000000000000d129840582b6df6c--
