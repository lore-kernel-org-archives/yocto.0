Return-Path: <pcjegan@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8301E01206
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 07:05:53 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id ez12so746334wid.15
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 07:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dJGHvTCEFrBtjD+KV6PSE9B1W4LqmpgFwspCH8RJGR0=;
	b=cygMKd27XWeygxPjlse0+eIkv71/Mzqyk8WlziN2q2Pu2OcvsRcmZtM4dwUcozHp9z
	pl4ee9qT4CGKHLyzC2xUbAHiq7pLrrllpnqeO9xEz9MMtux2K0cvKtCIgrUdvGLAJEB4
	Gk5ExAxAxui/I2NBMOIHmfg6OHvcovKc0QfNu/tuUSq8uHS1eKnQDiwgqL7BXtvGv0uo
	5eTwDYE1YbmDOV7Qa78q7xofqtAq35Chh6ql/22MSlOx7UePJ4EI76twiLgZYqDJNtWk
	KZr7XRdzaSrDrOR6Ph4MwAq4FbfaYQElIRg8MH9CfAwTuXrGKFuE3+0pWyZ23Vt7prvt
	jHyg==
X-Received: by 10.194.202.230 with SMTP id kl6mr17968374wjc.9.1378821952510;
	Tue, 10 Sep 2013 07:05:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.94.101 with HTTP; Tue, 10 Sep 2013 07:05:32 -0700 (PDT)
In-Reply-To: <522F013F.7070002@horus.es>
References: <522F013F.7070002@horus.es>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Tue, 10 Sep 2013 19:35:32 +0530
Message-ID: <CAAA4K6JvKPBSUZAwYwUVFCj_n64B-L1N3xN5cwuUs4Cg6ijPNg@mail.gmail.com>
To: =?ISO-8859-1?Q?Jose_M=AA_Ferreiro?= <jose.ferreiro@horus.es>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add new module to recipe + meta-toolchain-qt: add gdb
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
X-List-Received-Date: Tue, 10 Sep 2013 14:05:55 -0000
Content-Type: multipart/alternative; boundary=047d7b873a10b0215e04e60800ec

--047d7b873a10b0215e04e60800ec
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, Sep 10, 2013 at 4:53 PM, Jose M=AA Ferreiro <jose.ferreiro@horus.es=
>wrote:

> Hello
>
> We have compiled meta-toolchain-qt (Yocto dylan). Now we can run QT
> applications on Desktop (Ubuntu 12.04) and on target (iMX6 sabre Lite
> board). We can also debug the applications on board, but we can not debug
> on desktop.
>
> When /usr/bin/gdb is started it starts automatically /usr/bin/python. It
> fails because Ubuntu python does not recognize sys.lib variable from
> /op/poky...python. We have found no way to tell gdb to start changing
> PYTHONHOME to Ubuntu python home to avoid the problem.
>
> So we need to add gdb to the toolchain. If we get it to work, we suppose
> the /op/poky...gdb will start the /opt/poky...python (we test it and that
> python knows what sys.lib is).
>
> We try to add to conf/local.conf: TOOLCHAIN_HOST_TASK_append =3D "
> nativesdk-gdb". But nativesdk-gdb is not a defined name.
>

try adding packagegroup-cross-canadian-${TRANSLATED_TARGET_ARCH} in
TOOLCHAIN_HOST_TASK_append which will add cross toolchain to your sdk which
includes cross gdb as well. There is no nativesdk-gdb afaik unless if
someone says otherwise. see ./recipes-core/packagegroups/
packagegroup-cross-canadian.bb for details.


>
> So the cuestion is: how can i know what recipes are avaliable to sdk host
> toolchain and what are their names?
>
> Thank you and best regards
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoprojec=
t.org/listinfo/yocto>
>


Cheers,

--047d7b873a10b0215e04e60800ec
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Tue, Sep 10, 2013 at 4:53 PM, Jose M=AA Ferreiro <span dir=3D"=
ltr">&lt;<a href=3D"mailto:jose.ferreiro@horus.es" target=3D"_blank">jose.f=
erreiro@horus.es</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Hello<br>
<br>
We have compiled meta-toolchain-qt (Yocto dylan). Now we can run QT applica=
tions on Desktop (Ubuntu 12.04) and on target (iMX6 sabre Lite board). We c=
an also debug the applications on board, but we can not debug on desktop.<b=
r>


<br>
When /usr/bin/gdb is started it starts automatically /usr/bin/python. It fa=
ils because Ubuntu python does not recognize sys.lib variable from /op/poky=
...python. We have found no way to tell gdb to start changing PYTHONHOME to=
 Ubuntu python home to avoid the problem.<br>


<br>
So we need to add gdb to the toolchain. If we get it to work, we suppose th=
e /op/poky...gdb will start the /opt/poky...python (we test it and that pyt=
hon knows what sys.lib is).<br>
<br>
We try to add to conf/local.conf: TOOLCHAIN_HOST_TASK_append =3D &quot; nat=
ivesdk-gdb&quot;. But nativesdk-gdb is not a defined name.<br></blockquote>=
<div><br></div><div>try adding=A0packagegroup-cross-canadian-${TRANSLATED_T=
ARGET_ARCH} in TOOLCHAIN_HOST_TASK_append which will add cross toolchain to=
 your sdk which includes cross gdb as well. There is no nativesdk-gdb afaik=
 unless if someone says otherwise. see=A0./recipes-core/packagegroups/<a hr=
ef=3D"http://packagegroup-cross-canadian.bb">packagegroup-cross-canadian.bb=
</a> for details.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">
<br>
So the cuestion is: how can i know what recipes are avaliable to sdk host t=
oolchain and what are their names?<br>
<br>
Thank you and best regards<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div>Cheers,</div></div></div>

--047d7b873a10b0215e04e60800ec--
