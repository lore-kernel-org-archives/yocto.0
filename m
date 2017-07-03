Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 554CDE00B65; Mon,  3 Jul 2017 05:29:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.172 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29757E00B49
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 05:29:33 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id p21so144521076qke.3
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 05:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1HbX3eBw0D6FsgphrHxY2qsBXZ2kxeqblUCQorH4Nws=;
	b=2DN3mhuGK02XpE282VP1/nfiXLN5pljWhu/sBmB70IuF7275H+KBMfXnlTO9L4t1hk
	XHTMW2m3ZJO98JdLCdTMhYg/ebwCYy3m0zgcQSodSqtjbfEpIGpeTQ3CPkg2TUutPW74
	vwLvYMS5WKCq26xFOIXUmjJQIJyMss8YtNQuVJbj2HxnksBBjdHUnC0f65EzLddAyKW+
	iV+4j5vO1/vhzy0+k3MjF96eWGuBOVctT2xps3MtTlinc62uq/gCTT7unetnlA2mhe6G
	vYOR3w2SuQbRDp5wBehGyYT6Sj6bEYEZ52sEz3iZg+VmJKg0az8baz4C6G3uFb+0nZAq
	Yuow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1HbX3eBw0D6FsgphrHxY2qsBXZ2kxeqblUCQorH4Nws=;
	b=o9yyxTcTwFMmuHfi/1iALyuwxLJh2Zu5UotFLNG6cQpf8Nsh/nOm/Czbec21sS6JJj
	pxFVJ12SL39r6FP8uS/didg7vUytPMmJOTG7HeUpHlKMjSrvygatN+xqGWTfxq7dtQIK
	xtBxuu2iIkbMrzpxCiOaGE6hjV9d2jItU7D1mQ3WxXIIlNJjkF1OjU3frtv+BxsXLgYY
	wRIRywM/AsH6wM5Lk4SM6DDwFjdguHXZSvG6OnDtf3122BQ06Nr60cyqAAGFFwAKjc03
	PSDx+hcfPrjesCmbMcOU87JfTl0WPxvb2odsxAl0Q1/ncoeCeYh+3WL6JThl5dCj01WG
	7l2g==
X-Gm-Message-State: AKS2vOxRSIgz4chBp8A9qeRGCqUFNU1gEpMkDXGolTuX+AQ3wfhFQewW
	ezUlapoQNeUruCrNiYuEeIf2k5X/zc1s
X-Received: by 10.55.101.151 with SMTP id z145mr42451941qkb.127.1499084973133; 
	Mon, 03 Jul 2017 05:29:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.31.118 with HTTP; Mon, 3 Jul 2017 05:29:12 -0700 (PDT)
In-Reply-To: <CABaDK3WSki7XPP=CzmHsmL3qV3YuwEviSTqLp_ftz65agw=vgQ@mail.gmail.com>
References: <CABaDK3WSki7XPP=CzmHsmL3qV3YuwEviSTqLp_ftz65agw=vgQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 3 Jul 2017 13:29:12 +0100
Message-ID: <CAJTo0LYdN-t9KHdQHuOJ1qO=0tJG-Vbo=YoLT6RAuDqw0oeOPQ@mail.gmail.com>
To: Joseph Ngigi <jngigiw@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: /meta/recipes-support/attr/acl_2.2.52.bb:do_configure) failed with exit code '1'
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
X-List-Received-Date: Mon, 03 Jul 2017 12:29:35 -0000
Content-Type: multipart/alternative; boundary="001a11482a724fe71d055368eb6e"

--001a11482a724fe71d055368eb6e
Content-Type: text/plain; charset="UTF-8"

On 3 July 2017 at 13:11, Joseph Ngigi <jngigiw@gmail.com> wrote:

> | ../../pango-1.40.3/tests/gen-all-unicode.c:1:18: fatal error: glib.h:
> No such file or directory
> |  #include <glib.h>
> |                   ^
> | compilation terminated.
>

glib-2.0-native is a build dependency so this shouldn't have happened.


> | ./configure: line 11139: syntax error near unexpected token
> `subdir-objects'
> | ./configure: line 11139: `AUTOMAKE_OPTIONS(subdir-objects)'
>

We also build our own autoconf so this shouldn't have happened either.

Is this a totally clean pyro build?  Anything special in the local.conf?
Tried without the BSP layer, using MACHINE=qemuarm?

Ross

--001a11482a724fe71d055368eb6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 3 July 2017 at 13:11, Joseph Ngigi <span dir=3D"ltr">&l=
t;<a href=3D"mailto:jngigiw@gmail.com" target=3D"_blank">jngigiw@gmail.com<=
/a>&gt;</span> wrote:<div class=3D"gmail_extra"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">| ../../pango-1.40.3/tests/=
gen-<wbr>all-unicode.c:1:18: fatal error: glib.h: No such file or directory=
<br>|=C2=A0 #include &lt;glib.h&gt;<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ^<br>| compilation terminated.<br></div></blockquote><div><br></div><div>g=
lib-2.0-native is a build dependency so this shouldn&#39;t have happened.</=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">| ./co=
nfigure: line 11139: syntax error near unexpected token `subdir-objects&#39=
;<br>| ./configure: line 11139: `AUTOMAKE_OPTIONS(subdir-<wbr>objects)&#39;=
</div></blockquote><div><br></div><div>We also build our own autoconf so th=
is shouldn&#39;t have happened either.</div><div><br></div><div>Is this a t=
otally clean pyro build?=C2=A0 Anything special in the local.conf?=C2=A0 Tr=
ied without the BSP layer, using MACHINE=3Dqemuarm?</div><div><br></div><di=
v>Ross=C2=A0</div></div></div></div>

--001a11482a724fe71d055368eb6e--
