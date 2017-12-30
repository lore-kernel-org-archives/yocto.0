Return-Path: <dafna3@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F158E00D39; Sat, 30 Dec 2017 09:26:10 -0800 (PST)
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
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 670A1E006D3
	for <yocto@yoctoproject.org>; Sat, 30 Dec 2017 09:26:09 -0800 (PST)
Received: by mail-qt0-f172.google.com with SMTP id g9so57167997qth.9
	for <yocto@yoctoproject.org>; Sat, 30 Dec 2017 09:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=RjOE1Xnwhb6K36N47sfXp8ok4OVhntUHu1YQxzBm0jI=;
	b=CJMD7TaufB5zOuhD+v7o9Vhxj52HR/K2suHCN1Z1iiNQU75+u6wRhhkLwecnBs+qUc
	7Xy2i6c2cIYc+Ho57iFALbvjRns69RGJEMxMekbGcRLwG0cg5lq9fOSfaGIqOMEl42DM
	dmuOF02qJzvI6ME7E7PW1T8eTcWxMtbFSCqSrZ8LQQQcbaAXyQQyHnyuFQw+tcc5zQdB
	K7APaTMehzX7DC8rkFDE463coW7XBwQ+BfUGr+RkrfHkN/VsyIIP0+q0qkZTDNAtzkew
	sPvYkBOlPjkh0K7IhYZ9XjgzgY28RqCIZMEIi3JnYIKjPu5x78ZTmWueO4tgItLUPFmR
	yJ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RjOE1Xnwhb6K36N47sfXp8ok4OVhntUHu1YQxzBm0jI=;
	b=d7qy1bVSE8OKazwQIUhcLPj7pLuhBuVNkRcm3pzj6J+jtvjax1ie77URd6gfkOiuz0
	ywgP1iLV4fG/l5Mcv6K4v5cz6mFte5ULY0/mBVGbYa9odi/tRaOQhbK3W4Tfe3fu6ygz
	xOCX22D9hPqN7Y5/SE6+EyLVz8CFBPJnTVufDv+beMZnWCOYei2iR9YvODyv/wrYKqNH
	zx3ChfWWfTeN8oCqpjGJvrvGxRgN6pEXqiaGh1sTENqAxvkJpXM0XSefy7+H5N+hxGBP
	itbXPKb/vI7WXhex/v7N3EebhogGzKHzPHWxKrScQIW5bsTORVkQl27rTV1Bw++Vv31A
	XwFQ==
X-Gm-Message-State: AKGB3mLNw0OVZXge7mEMTsakVhcvXVktBbPrxJFuTbxa6xiNfyBvUodV
	3f42HAhCCpxA+f+UWByNUlI5op1H4kG8dWee5/EFmg==
X-Google-Smtp-Source: ACJfBotglR+3WGPvZux0UgJTK98qiyxMmcpBrqMIFXjpg8O3fHhWGBCaY4kjcvbfKevSEbrOVx1uyEsguFieCNTkwr4=
X-Received: by 10.200.24.58 with SMTP id q55mr53547467qtj.184.1514654768242;
	Sat, 30 Dec 2017 09:26:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.44.117 with HTTP; Sat, 30 Dec 2017 09:25:47 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Sat, 30 Dec 2017 19:25:47 +0200
Message-ID: <CAJ1myNTqQiSk-v+XcHrUY1NfgShKoNdAandDgD8tD04imHL_fQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: setting DEPENDS variable to specific package version
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
X-List-Received-Date: Sat, 30 Dec 2017 17:26:10 -0000
Content-Type: multipart/alternative; boundary="f403045d62526b264b0561920b49"

--f403045d62526b264b0561920b49
Content-Type: text/plain; charset="UTF-8"

Hi,

I want to add the vlc package , which has "lua" package in it's DEPNENDS
variable.
But vlc needs lua5.2 and the default is lua5.3
So when running vlc on the target I get "undefined symbol" in the
liblua_plugin.so
So how do I set the packages in DEPENDS to be in specific version ?

I added lua_5.2.2.bb found in this repo
https://git.congatec.com/yocto/meta-openembedded.git to
meta-openembedded/meta-oe/recipes-devtools/lua/

and added

PREFERRED_VERSION_lua = "5.2%"

to meta-openembedded/meta-multimedia/recipes-multimedia/vlc/vlc.inc

but this didn't have any effect.

thanks

--f403045d62526b264b0561920b49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-linestyle1 gmail-colourline" style=3D"=
font-family:Consolas,&quot;Lucida Console&quot;,monospace;padding-left:7px;=
word-wrap:break-word;color:rgb(0,0,0);font-size:12.8px"><span style=3D"font=
-size:12.8px">Hi,</span></div><div class=3D"gmail-linestyle1 gmail-colourli=
ne" style=3D"font-family:Consolas,&quot;Lucida Console&quot;,monospace;padd=
ing-left:7px;word-wrap:break-word;color:rgb(0,0,0);font-size:12.8px"><span =
style=3D"font-size:12.8px"><br></span></div><div class=3D"gmail-linestyle1 =
gmail-colourline" style=3D"font-family:Consolas,&quot;Lucida Console&quot;,=
monospace;padding-left:7px;word-wrap:break-word;color:rgb(0,0,0);font-size:=
12.8px"><span style=3D"font-size:12.8px">I want to add the vlc package , wh=
ich has &quot;lua&quot; package in it&#39;s DEPNENDS variable.</span><br></=
div><div class=3D"gmail-linestyle2 gmail-colourline" style=3D"font-family:C=
onsolas,&quot;Lucida Console&quot;,monospace;padding-left:7px;word-wrap:bre=
ak-word;color:rgb(0,0,0);font-size:12.8px">But vlc needs lua5.2 and the def=
ault is lua5.3</div><div class=3D"gmail-linestyle2 gmail-colourline" style=
=3D"padding-left:7px;word-wrap:break-word"><font color=3D"#000000" face=3D"=
Consolas, Lucida Console, monospace"><span style=3D"font-size:12.8px">So wh=
en running vlc on the target I get &quot;undefined symbol&quot; in the libl=
ua_plugin.so</span></font><br></div><div class=3D"gmail-linestyle2 gmail-co=
lourline" style=3D"padding-left:7px;word-wrap:break-word"><font color=3D"#0=
00000" face=3D"Consolas, Lucida Console, monospace"><span style=3D"font-siz=
e:12.8px">So how do I set the packages in DEPENDS to be in specific version=
 ?</span></font><br></div><div class=3D"gmail-linestyle2 gmail-colourline" =
style=3D"padding-left:7px;word-wrap:break-word"><font color=3D"#000000" fac=
e=3D"Consolas, Lucida Console, monospace"><span style=3D"font-size:12.8px">=
<br></span></font></div><div class=3D"gmail-linestyle2 gmail-colourline" st=
yle=3D"padding-left:7px;word-wrap:break-word"><font color=3D"#000000" face=
=3D"Consolas, Lucida Console, monospace"><span style=3D"font-size:12.8px">I=
 added <a href=3D"http://lua_5.2.2.bb">lua_5.2.2.bb</a> found in this repo =
<a href=3D"https://git.congatec.com/yocto/meta-openembedded.git">https://gi=
t.congatec.com/yocto/meta-openembedded.git</a>=C2=A0to meta-openembedded/me=
ta-oe/recipes-devtools/lua/</span></font></div><div class=3D"gmail-linestyl=
e2 gmail-colourline" style=3D"padding-left:7px;word-wrap:break-word"><font =
color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span style=
=3D"font-size:12.8px"><br></span></font></div><div class=3D"gmail-linestyle=
2 gmail-colourline" style=3D"padding-left:7px;word-wrap:break-word"><font c=
olor=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span style=
=3D"font-size:12.8px">and added=C2=A0</span></font></div><div class=3D"gmai=
l-linestyle2 gmail-colourline" style=3D"padding-left:7px;word-wrap:break-wo=
rd"><font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><s=
pan style=3D"font-size:12.8px"><br></span></font></div><div class=3D"gmail-=
linestyle2 gmail-colourline" style=3D"padding-left:7px;word-wrap:break-word=
"><font color=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><spa=
n style=3D"font-size:12.8px">PREFERRED_VERSION_lua =3D &quot;5.2%&quot;</sp=
an><br></font></div><div class=3D"gmail-linestyle2 gmail-colourline" style=
=3D"padding-left:7px;word-wrap:break-word"><font color=3D"#000000" face=3D"=
Consolas, Lucida Console, monospace"><span style=3D"font-size:12.8px"><br><=
/span></font></div><div class=3D"gmail-linestyle2 gmail-colourline" style=
=3D"padding-left:7px;word-wrap:break-word"><font color=3D"#000000" face=3D"=
Consolas, Lucida Console, monospace"><span style=3D"font-size:12.8px">to=C2=
=A0</span></font><span style=3D"color:rgb(0,0,0);font-family:Consolas,&quot=
;Lucida Console&quot;,monospace;font-size:12.8px">meta-openembedded/</span>=
<span style=3D"font-size:12.8px;color:rgb(0,0,0);font-family:Consolas,&quot=
;Lucida Console&quot;,monospace">meta-multimedia/recipes-multimedia/vlc/vlc=
.inc</span></div><div class=3D"gmail-linestyle2 gmail-colourline" style=3D"=
padding-left:7px;word-wrap:break-word"><span style=3D"font-size:12.8px;colo=
r:rgb(0,0,0);font-family:Consolas,&quot;Lucida Console&quot;,monospace"><br=
></span></div><div class=3D"gmail-linestyle2 gmail-colourline" style=3D"pad=
ding-left:7px;word-wrap:break-word"><span style=3D"font-size:12.8px;color:r=
gb(0,0,0);font-family:Consolas,&quot;Lucida Console&quot;,monospace">but th=
is didn&#39;t have any effect.</span></div><div class=3D"gmail-linestyle2 g=
mail-colourline" style=3D"padding-left:7px;word-wrap:break-word"><font colo=
r=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span style=3D"f=
ont-size:12.8px"><br></span></font></div><div class=3D"gmail-linestyle2 gma=
il-colourline" style=3D"padding-left:7px;word-wrap:break-word"><font color=
=3D"#000000" face=3D"Consolas, Lucida Console, monospace"><span style=3D"fo=
nt-size:12.8px">thanks</span></font></div></div>

--f403045d62526b264b0561920b49--
