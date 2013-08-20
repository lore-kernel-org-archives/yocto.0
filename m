Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D651E00747
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 07:33:20 -0700 (PDT)
Received: by mail-lb0-f179.google.com with SMTP id v1so544201lbd.38
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 07:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=PTfBwjbg43bNiutp7oavsK3frdFjDi2XuZoZigW+Oh8=;
	b=rCo1PFD8DmSYM8W4XQ4ak/v6qNup3eRyann2Y+5uIRFP1615mIIy8AJGvMFQG5eQX5
	CwfkwiT5iHvtJiq4PN+jqVzbWaXRAyTtfX4Kyy25JKcPLTXFW3SES6uvWC16VcQ+HAQl
	Krcn/pf1p5uYkRIkMr7TYPWrMXeNZYOljteXFnjTaNXqiTYSpYTrkUn2s+n8lcFZzJKt
	dk2cfvtijRF4OOqUquR6aefDv2c1n34AHfPFFEhnBPrSB0Qs8oiN+tlIgFMyUlYzXo4D
	9O1o0j6iceMjNnmaM0fHyqX6khFkYDrmO+fKX0JK1l3s2ohGbBtYYdqGeYAtITFw46ti
	oVkA==
X-Received: by 10.112.57.49 with SMTP id f17mr2962456lbq.26.1377009198862;
	Tue, 20 Aug 2013 07:33:18 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Tue, 20 Aug 2013 07:32:58 -0700 (PDT)
In-Reply-To: <3B6DFE55BDC846AB8432B5A9E188EA98@PAULD>
References: <A3D4719B266E4F519452EFCF893FEF4A@PAULD>
	<CABcZANkcqBYLH+X07-o5Pn5=C8offw8eYr3e_FOtEqZxHu+s0Q@mail.gmail.com>
	<3B6DFE55BDC846AB8432B5A9E188EA98@PAULD>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 20 Aug 2013 07:32:58 -0700
X-Google-Sender-Auth: XpZ2di05fUyLMAABlQDNearUSsw
Message-ID: <CABcZANn3ogPD0j6Xj4DookFwHxTRHT77-GD5OViyrMg3gYO_hA@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Trying to tweak a build with a setup.cfg file
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
X-List-Received-Date: Tue, 20 Aug 2013 14:33:24 -0000
Content-Type: multipart/alternative; boundary=001a1133eaca26998104e461f077

--001a1133eaca26998104e461f077
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 19, 2013 at 11:40 PM, Paul D. DeRocco <pderocco@ix.netcom.com>w=
rote:

> I suspect what happened is that support for the "subdir=3D" option on loc=
al
> files was added in 2009, then someone thought, why have this obscure
> syntax? Simpler to impose the directory structure on the local files in
> the metadata, allow file:// to refer to any pathname, not just a filename=
,
> and have the file copy routine create any necessary subdirectories in the
> build tree. So they took that option out. Just a guess.
>

We've always supported directories in file:// uris. The unpacking process
was moved from base.bbclass into the bitbake fetchers. See
https://github.com/openembedded/bitbake/blob/master/lib/bb/fetch2/__init__.=
py#L1234-L1240.
Not sure why it didn't work for you, though. I'm guessing it has to do with
the way it changes the current working directory before running the
command, rather than directly altering the destination directory =E2=80=94 =
if the
command being run uses an absolute path, the current working directory
wouldn't affect anything. *shrug*
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1133eaca26998104e461f077
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Aug 19, 2013 at 11:40 PM, Paul D. DeRocco <span dir=3D"ltr">&lt;<a =
href=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":71" style=3D"overflow:hidden">I suspect what h=
appened is that support for the &quot;subdir=3D&quot; option on local<br>


files was added in 2009, then someone thought, why have this obscure<br>
syntax? Simpler to impose the directory structure on the local files in<br>
the metadata, allow file:// to refer to any pathname, not just a filename,<=
br>
and have the file copy routine create any necessary subdirectories in the<b=
r>
build tree. So they took that option out. Just a guess.</div></blockquote><=
/div><br>We&#39;ve always supported directories in file:// uris. The unpack=
ing process was moved from base.bbclass into the bitbake fetchers. See=C2=
=A0<a href=3D"https://github.com/openembedded/bitbake/blob/master/lib/bb/fe=
tch2/__init__.py#L1234-L1240">https://github.com/openembedded/bitbake/blob/=
master/lib/bb/fetch2/__init__.py#L1234-L1240</a>. Not sure why it didn&#39;=
t work for you, though. I&#39;m guessing it has to do with the way it chang=
es the current working directory before running the command, rather than di=
rectly altering the destination directory =E2=80=94 if the command being ru=
n uses an absolute path, the current working directory wouldn&#39;t affect =
anything. *shrug*<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a1133eaca26998104e461f077--
