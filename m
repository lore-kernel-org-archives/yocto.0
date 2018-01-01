Return-Path: <dafna3@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E9D6E00CBE; Mon,  1 Jan 2018 05:03:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dafna3[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1038DE00A84
	for <yocto@yoctoproject.org>; Mon,  1 Jan 2018 05:03:37 -0800 (PST)
Received: by mail-qk0-f175.google.com with SMTP id x7so41579622qkb.0
	for <yocto@yoctoproject.org>; Mon, 01 Jan 2018 05:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UVksqUxNi94BurFB0u6wWELDOK6KAQ6GBeBXl+mRTio=;
	b=fcgsq0r0l+yQaMZOvzct4KNh1U1csGK2i/3CqngKPvgtCytYJvVt/RJ5Kcw5aaRNM5
	ov8k8qtUhVyJaHQ2jwP298gvipkLyUJ1KrOgXy5yZJbtKT924AmfjmdKrV507wXUhLGo
	5AapDfnriUK4qLWaf+B159zuiCa7NIrnZ5XB3G5nuf8vGe1YJFOeT6ohJ4GLZ/cHhhgW
	qwajcZR7zyN2Z5e0+0P1TMjDy8ylra2+N9Tc3pSAaQ8Lk+oYvIAi5i4mXvvFIu4+yRsI
	IpglEvug09yqJmIKitJFkYAlXir+84dfzsXwJ/eoZrwlVq+W7IPExN5Vfe7TjnWWV24h
	OaQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UVksqUxNi94BurFB0u6wWELDOK6KAQ6GBeBXl+mRTio=;
	b=Ry1Yp3FmU2lAIv3e3xVrgpLYFBd6ZLkwlGWm+KommOCJ9w5/wGHiJZMcRoiUhymgP7
	tkBD5dWT2Q1dQEbuPTIK91LQvXJgeGCyiTvhZAgXjZflrjBRtzd3Fz2Nm6E8RBYpSBg3
	w/cDZMhPXbKZB5OoypvrAZKCW+efLMZs4cq/LV9QhM/VcUzRLqSyRdjJmZXqqm023a3b
	5tWzji1Qbh26ZuJYdQapfNk/le5LHuJ4Bm7N32Z2hEN3VtCcZbZfQ741WyXy2bjtBPmh
	K8bustuthno1jzCxy8k0TM0EzO6aLEb+WWf4kHt2jLQ53Cj0Lv2qIEyDqrdkQfsm8xaP
	s98g==
X-Gm-Message-State: AKGB3mL7cogmdLgWU05yCBMkT1N8qUugwJFtIYz1vXzv/YhrUCf+kzQj
	cK7zCFI4fC2aQxP8TFG0u9d+KFO/vvUbZ/OUPTiwag==
X-Google-Smtp-Source: ACJfBosiMMM+K4jwYcx5h3RxAB6M1Z/kpX4d1iOi8X4YyXZFh1ueXopXv4QWOk4PALY/qJSlIgkCI0C1NkKeobepZOA=
X-Received: by 10.55.41.28 with SMTP id p28mr60098098qkh.56.1514811817248;
	Mon, 01 Jan 2018 05:03:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.44.117 with HTTP; Mon, 1 Jan 2018 05:03:16 -0800 (PST)
In-Reply-To: <f6706ba2-6e01-956d-d4c1-a8261b756d17@actia.se>
References: <CAJ1myNTqQiSk-v+XcHrUY1NfgShKoNdAandDgD8tD04imHL_fQ@mail.gmail.com>
	<f6706ba2-6e01-956d-d4c1-a8261b756d17@actia.se>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Mon, 1 Jan 2018 15:03:16 +0200
Message-ID: <CAJ1myNTX=ovnMEMg1p0PVuuveFWCFDcsbbRdFr5nEsP_Yqk_XA@mail.gmail.com>
To: John Ernberg <john.ernberg@actia.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setting DEPENDS variable to specific package version
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
X-List-Received-Date: Mon, 01 Jan 2018 13:03:40 -0000
Content-Type: multipart/alternative; boundary="001a114054f644cdd70561b69c24"

--001a114054f644cdd70561b69c24
Content-Type: text/plain; charset="UTF-8"

Hi,
thanks,
I work alone, and have no people I know to consult with.
Does the PREFERRED_VERSION influence static linking only ? So that the
package version in the DEPENDS list is decided according to that variable ?
If so, why can't it be a recipe specific ?
If I want package A to statically link with lua5.3 and package B to be
statically linked with lua5.2 . How can I do that ?

Thanks


On Mon, Jan 1, 2018 at 2:27 PM, John Ernberg <john.ernberg@actia.se> wrote:

> Hi Dafna,
> On 12/30/2017 06:25 PM, Dafna Hirschfeld wrote:
>
> Hi,
>
> I want to add the vlc package , which has "lua" package in it's DEPNENDS
> variable.
> But vlc needs lua5.2 and the default is lua5.3
> So when running vlc on the target I get "undefined symbol" in the
> liblua_plugin.so
> So how do I set the packages in DEPENDS to be in specific version ?
>
> I added lua_5.2.2.bb found in this repo https://git.congatec.com/
> yocto/meta-openembedded.git to meta-openembedded/meta-oe/
> recipes-devtools/lua/
>
> and added
>
> PREFERRED_VERSION_lua = "5.2%"
>
> to meta-openembedded/meta-multimedia/recipes-multimedia/vlc/vlc.inc
>
> but this didn't have any effect.
>
> thanks
>
>
> PREFERRED_VERSION is a config-variable, try setting it in your local.conf.
>
> Best regards // John
>

--001a114054f644cdd70561b69c24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div>thanks,</div><div>I work alone, and have no =
people I know to consult with.</div><div>Does the=C2=A0<span style=3D"font-=
size:12.8px">PREFERRED_VERSION influence=C2=A0static linking only ? So that=
 the package version in the DEPENDS list is decided according to that varia=
ble ?</span></div><div><span style=3D"font-size:12.8px">If so, why can&#39;=
t it be a recipe specific ?</span></div><div><span style=3D"font-size:12.8p=
x">If I want package A to statically=C2=A0link with lua5.3 and package B to=
 be statically=C2=A0linked with lua5.2 . How can I do that ?</span></div><d=
iv><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"fo=
nt-size:12.8px">Thanks</span></div><div><br></div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Mon, Jan 1, 2018 at 2:27 PM, John=
 Ernberg <span dir=3D"ltr">&lt;<a href=3D"mailto:john.ernberg@actia.se" tar=
get=3D"_blank">john.ernberg@actia.se</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">



<div bgcolor=3D"#FFFFFF" text=3D"#000000">
<p>Hi Dafna,</p><div><div class=3D"h5">
<div class=3D"m_6802263814092701579moz-cite-prefix">On 12/30/2017 06:25 PM,=
 Dafna Hirschfeld wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div class=3D"m_6802263814092701579gmail-linestyle1 m_6802263814092701579gm=
ail-colourline">
<span style=3D"font-size:12.8px">Hi,</span></div>
<div class=3D"m_6802263814092701579gmail-linestyle1 m_6802263814092701579gm=
ail-colourline">
<span style=3D"font-size:12.8px"><br>
</span></div>
<div class=3D"m_6802263814092701579gmail-linestyle1 m_6802263814092701579gm=
ail-colourline">
<span style=3D"font-size:12.8px">I want to add the vlc package , which has =
&quot;lua&quot; package in it&#39;s DEPNENDS variable.</span><br>
</div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline">
But vlc needs lua5.2 and the default is lua5.3</div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px">So when running vlc on the target I get &quot;un=
defined symbol&quot; in the liblua_plugin.so</span></font><br>
</div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px">So how do I set the packages in DEPENDS to be in=
 specific version ?</span></font><br>
</div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px"><br>
</span></font></div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px">I added
<a href=3D"http://lua_5.2.2.bb" target=3D"_blank">lua_5.2.2.bb</a> found in=
 this repo
<a href=3D"https://git.congatec.com/yocto/meta-openembedded.git" target=3D"=
_blank">
https://git.congatec.com/<wbr>yocto/meta-openembedded.git</a>=C2=A0to meta-=
openembedded/meta-oe/<wbr>recipes-devtools/lua/</span></font></div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px"><br>
</span></font></div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px">and added=C2=A0</span></font></div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px"><br>
</span></font></div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px">PREFERRED_VERSION_lua =3D &quot;5.2%&quot;</span=
><br>
</font></div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px"><br>
</span></font></div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px">to=C2=A0</span></font><span>meta-openembedded/</=
span><span>meta-<wbr>multimedia/recipes-multimedia/<wbr>vlc/vlc.inc</span><=
/div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<span><br>
</span></div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<span>but this didn&#39;t have any effect.</span></div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px"><br>
</span></font></div>
<div class=3D"m_6802263814092701579gmail-linestyle2 m_6802263814092701579gm=
ail-colourline" style=3D"padding-left:7px;word-wrap:break-word">
<font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span =
style=3D"font-size:12.8px">thanks</span></font></div>
</div>
<br>
<fieldset class=3D"m_6802263814092701579mimeAttachmentHeader"></fieldset> <=
br>
</blockquote></div></div>
PREFERRED_VERSION is a config-variable, try setting it in your local.conf.<=
br>
<br>
Best regards // John<br>
</div>

</blockquote></div><br></div>

--001a114054f644cdd70561b69c24--
