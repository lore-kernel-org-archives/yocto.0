Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E86CE00DF0; Mon, 13 Nov 2017 07:54:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F620E00DC2
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 07:54:12 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id b189so9357081wmd.0
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 07:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5LSUbc60hMniOC8qBcqsbJaK3Drz1IC3MZU56Fsdsa4=;
	b=iCxGoARt6UPQcB3gvQJysnD2Zytq0+2EsfA3ONURgmRSL7OnMpf3so9oYmi6LywO2o
	6SZo7WBGFRPxxXtt0hsnnrIHdsNXVnemdlW5S1tlKd15o+1bXeAfRc3NTJqUzgwG9Hp4
	vk/xTOwOz9Wypbm3t0GHe3R6q+xdA/F3brvrfcaXqCfrQp9KPuQPERy9GOVe4sHglgV/
	rdkDUvV/GXuwccUUWzI4d09X34YfNMGoR0yOG92Thro1fisyjnUnUZnmKwvZqoJMOQNX
	Twg1pugConQWUdS+8B14UKrsqUrFlAIp5Ui16idJzyCF7hCNljfzTL6KE7iSHlXfWdxU
	mTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5LSUbc60hMniOC8qBcqsbJaK3Drz1IC3MZU56Fsdsa4=;
	b=kbt/rmlBePD7uJyBHci2NvfcazhPP2UxkM/ijdhK/jeZwYLYHguj9DdHbbe7iETHSu
	D87nhz4VlCrNg6NJjs8QDSPerFD4Rikh/UP3q6lUMPNlPDc2deeSdy7VRwV9sI9E1nee
	XKC/n4fYc0hvoLTMVB7wYgT6wuLt/EOLNS6C0HvY8hT9A9OJqscsZEslaUtttKYJUhTm
	3/J/tNbBRhO4NdZu0hdYMPJVIxfqXK3yMfd4TGhT5bQNsy/SQn8PqFK9W2Eh42BJkzAz
	9rEQcgeExKPH/9ttG0rmwwevBZKLBRGPFXy5+/EOVwAvTevsZY4sgys5sEwooVpAWP19
	XfvA==
X-Gm-Message-State: AJaThX75yiE4pGtIeuJVMicsRMclHoZDiJlkOa1/InReLSa+BJ2C6ZcT
	Mb6NPXgL5sexBlt2/+ohCUwekTj2VzMogZ7mv0g=
X-Google-Smtp-Source: AGs4zMaCi9Yk9zXWnZuRj5vzusoCw4cjKlRQyo6LeXJ4unHzyGsK/fPPrxL+JdyPj3OfNBAJgJCCvOUtncq2Q8UbSsI=
X-Received: by 10.28.46.137 with SMTP id u131mr6828046wmu.64.1510588452168;
	Mon, 13 Nov 2017 07:54:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Mon, 13 Nov 2017 07:54:11 -0800 (PST)
In-Reply-To: <20171113093038.6be7155c@lsandov1-mobl2.zpn.intel.com>
References: <CAG8GRtgq1qPe78V+fu-C6Mb7WZ_+B6_8r9Z0u594PLNE0BWR4w@mail.gmail.com>
	<20171113093038.6be7155c@lsandov1-mobl2.zpn.intel.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 13 Nov 2017 16:54:11 +0100
Message-ID: <CAGAf8Lx0z6kLDaH5-P-8fX0_HOAGH5_oheAXVKOfrX-M0ggn0w@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Bitbake fails when enabling tools-testapps
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
X-List-Received-Date: Mon, 13 Nov 2017 15:54:25 -0000
Content-Type: multipart/alternative; boundary="001a11422f3c17e994055ddf484c"

--001a11422f3c17e994055ddf484c
Content-Type: text/plain; charset="UTF-8"

Hello Chris,

I could not give you some viable advice regarding YOCTO (I see that you are
using lot of layers):
meta
meta-poky
meta-yocto-bsp    = "HEAD:50cc15335ebcdfa2a2fc52c11fa01695dfdb9e26"
meta-oe
meta-python
meta-networking
meta-filesystems  = "HEAD:b2ce52334cf88e07f703cf25ced92302edd5b0e9"
meta-virtualization = "HEAD:88277c84962e9d07ec777896a0ca8bd7db9ff5e2"
meta-intel        = "HEAD:4cd63f57820ce0e4ebd598251d3a13b5a4b9b791"
meta-intel-realsense = "HEAD:211ce75af387b65fe894f13b3468148d2b9ab23d"
meta-intel-aero-base = "HEAD:0c9f7a359c71f3c8b9f47efede194da51ccaefd7"
meta-intel-aero   = "HEAD:a96a8fed779d6c02119ad9965e66bd051ff75a07"

But I can give you some advise to trace the problem. This is how I tries to
discover intel-aero in qemux86-64 poky build:

[user@192 poky]$ pwd
/home/user/YOCTO/oe_core_embedded/poky
[user@192 poky]$ find . -name intel-aero*
[user@192 poky]$ cd build/conf
[user@192 conf]$ cat bblayers.conf
# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION = "2"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

BBLAYERS ?= " \
  /home/user/YOCTO/oe_core_embedded/poky/meta \
  /home/user/YOCTO/oe_core_embedded/poky/meta-poky \
  /home/user/YOCTO/oe_core_embedded/poky/meta-yocto-bsp \
  "
[user@192 conf]$

I also tried to find dependencies, from your log: ltp

[user@192 conf]$ cd -
/home/user/YOCTO/oe_core_embedded/poky
[user@192 poky]$ find . -name ltp*
./meta/recipes-extended/ltp
./meta/recipes-extended/ltp/ltp_20170516.bb
./meta/recipes-extended/ltp/ltp
[user@192 poky]$

As Leonardo suggested the research direction, I just added couple of "stick
and rope" methods, to help you to brainstorm further.

Zoran

On Mon, Nov 13, 2017 at 4:30 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Sun, 12 Nov 2017 01:18:45 -0700
> Chris Hughes <89dragon@gmail.com> wrote:
>
> > Hoping this is the right place to get help with the following issue.
> >
> > I'm using bitbake to build a custom image of the intel-aero / yocto
> sources.
> >
>
> Make sure all layer dependencies are included into the conf/bblayers.conf
> file. There must be at least one recipe that either implicity (by default,
> a recipe provides itself with the same name) or explicity (with PROVIDES) ,
> otherwise you see what you mentioned.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11422f3c17e994055ddf484c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Chris,<div><br></div><div>I could not give you some =
viable advice regarding YOCTO (I see that you are using lot of layers):</di=
v><div><div style=3D"font-size:12.8px">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</div><div style=3D"font-size:12.8px">meta-poky=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div style=3D"font-size:12.8px">meta-y=
octo-bsp=C2=A0 =C2=A0 =3D &quot;HEAD:<wbr>50cc15335ebcdfa2a2fc52c11fa016<wb=
r>95dfdb9e26&quot;</div><div style=3D"font-size:12.8px">meta-oe=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div style=3D"font-size:12.8px">meta-p=
ython=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div style=3D"font-size:12.8px">meta-=
networking=C2=A0 =C2=A0</div><div style=3D"font-size:12.8px">meta-filesyste=
ms=C2=A0 =3D &quot;HEAD:<wbr>b2ce52334cf88e07f703cf25ced923<wbr>02edd5b0e9&=
quot;</div><div style=3D"font-size:12.8px">meta-virtualization =3D &quot;HE=
AD:<wbr>88277c84962e9d07ec777896a0ca8b<wbr>d7db9ff5e2&quot;</div><div style=
=3D"font-size:12.8px">meta-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;HEAD:=
<wbr>4cd63f57820ce0e4ebd598251d3a13<wbr>b5a4b9b791&quot;</div><div style=3D=
"font-size:12.8px">meta-intel-realsense =3D &quot;HEAD:<wbr>211ce75af387b65=
fe894f13b346814<wbr>8d2b9ab23d&quot;</div><div style=3D"font-size:12.8px">m=
eta-intel-aero-base =3D &quot;HEAD:<wbr>0c9f7a359c71f3c8b9f47efede194d<wbr>=
a51ccaefd7&quot;</div><div style=3D"font-size:12.8px">meta-intel-aero=C2=A0=
 =C2=A0=3D &quot;HEAD:<wbr>a96a8fed779d6c02119ad9965e66bd<wbr>051ff75a07&qu=
ot;</div></div><div><br></div><div>But I can give you some advise to trace =
the problem. This is how I tries to discover intel-aero in qemux86-64 poky =
build:</div><div><br></div><div><div>[user@192 poky]$ pwd</div><div>/home/u=
ser/YOCTO/oe_core_embedded/poky</div><div>[user@192 poky]$ find . -name int=
el-aero*</div><div>[user@192 poky]$ cd build/conf</div><div>[user@192 conf]=
$ cat bblayers.conf=C2=A0</div><div># POKY_BBLAYERS_CONF_VERSION is increas=
ed each time build/conf/bblayers.conf</div><div># changes incompatibly</div=
><div>POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;</div><div><br></div><div=
>BBPATH =3D &quot;${TOPDIR}&quot;</div><div>BBFILES ?=3D &quot;&quot;</div>=
<div><br></div><div>BBLAYERS ?=3D &quot; \</div><div>=C2=A0 /home/user/YOCT=
O/oe_core_embedded/poky/meta \</div><div>=C2=A0 /home/user/YOCTO/oe_core_em=
bedded/poky/meta-poky \</div><div>=C2=A0 /home/user/YOCTO/oe_core_embedded/=
poky/meta-yocto-bsp \</div><div>=C2=A0 &quot;</div><div>[user@192 conf]$</d=
iv></div><div><br></div><div>I also tried to find dependencies, from your l=
og:=C2=A0<span style=3D"font-size:12.8px">ltp</span></div><div><span style=
=3D"font-size:12.8px"><br></span></div><div><div><span style=3D"font-size:1=
2.8px">[user@192 conf]$ cd -</span></div><div><span style=3D"font-size:12.8=
px">/home/user/YOCTO/oe_core_embedded/poky</span></div><div><span style=3D"=
font-size:12.8px">[user@192 poky]$ find . -name ltp*</span></div><div><span=
 style=3D"font-size:12.8px">./meta/recipes-extended/ltp</span></div><div><s=
pan style=3D"font-size:12.8px">./meta/recipes-extended/ltp/<a href=3D"http:=
//ltp_20170516.bb">ltp_20170516.bb</a></span></div><div><span style=3D"font=
-size:12.8px">./meta/recipes-extended/ltp/ltp</span></div><div><span style=
=3D"font-size:12.8px">[user@192 poky]$=C2=A0</span></div></div><div><br></d=
iv><div>As Leonardo suggested the research direction, I just added couple o=
f &quot;stick and rope&quot; methods, to help you to brainstorm further.</d=
iv><div><br></div><div>Zoran</div></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Mon, Nov 13, 2017 at 4:30 PM, Leonardo Sandoval <=
span dir=3D"ltr">&lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.int=
el.com" target=3D"_blank">leonardo.sandoval.gonzalez@linux.intel.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Sun, =
12 Nov 2017 01:18:45 -0700<br>
Chris Hughes &lt;<a href=3D"mailto:89dragon@gmail.com">89dragon@gmail.com</=
a>&gt; wrote:<br>
<br>
&gt; Hoping this is the right place to get help with the following issue.<b=
r>
&gt;<br>
&gt; I&#39;m using bitbake to build a custom image of the intel-aero / yoct=
o sources.<br>
&gt;<br>
<br>
</span>Make sure all layer dependencies are included into the conf/bblayers=
.conf file. There must be at least one recipe that either implicity (by def=
ault,=C2=A0 a recipe provides itself with the same name) or explicity (with=
 PROVIDES) , otherwise you see what you mentioned.<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a11422f3c17e994055ddf484c--
