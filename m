Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D50E6E00C44; Mon, 11 Sep 2017 04:51:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_24,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_SPAM, T_REMOTE_IMAGE,
	WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.6 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A279E00C35
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 04:51:42 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id y123so24314988iod.0
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 04:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=ziinNLuPSMMjMhyTabrpyESFHcaNL4MR4x3kEcOTimE=;
	b=KFx/YLkstGS6RBYbHASyeXqbp0n1IwkrIN7gz3Ev4WZgP8ihF5lN+gZEDbwwV+UYdB
	f86BcJwO8ruXuZb+5v7Nz+aoUGVlUyBcack2G/UQ0tEAPa4SzQqU7w13qFZJVTTdKyTQ
	uRlJiod8Wg6ZBmSmBA/tF2WL69aJLpfXny4MQkDxsz4/pGbWtAr+BX4OZ/XdgBBB/BaN
	bXBmHB7hE6pP/JX2PjZod9lHGYeNJEDFpNc4BBesRKXkeS7LprnRfkA4f9zw6DM8AvF7
	b/IF9GedKEZgONVv9U1gBN22luMuc4cMtO7UyWKPy3rrWF0nFXxWQV5PoCzWap5QmgOq
	m7Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=ziinNLuPSMMjMhyTabrpyESFHcaNL4MR4x3kEcOTimE=;
	b=O4CqNIBbaktRy/zc56ATi+P3SX3/qFamsCLnue+Ym2fV98MGNt5LV5lmUUVNmSHuIE
	fWwIFi8E/MNX2vVv60tKFORo4jS9GCCuE+/ediekd1pLFLaTAawD+jp7yi8KzQ+UzU5U
	Gx1o2xIxc4xmtCN3B3/y/rUcF3aQ3SIR2fHHmSexnad0ZWBWNgae5sGiMi+7RoqrT0r4
	vlmokLrSWMmbaofyrmSafM+SUGgfh8SKF8EUGLkHHcuydmwem9+O3hUEpp2qttzNvRLu
	dH+rZlI9VNMIOTIjnzJOk+uO8EMOhQS/UlCuc92TiKcf/KsIBkx9ZgMUKH2kT9cSltDr
	lpzg==
X-Gm-Message-State: AHPjjUhllaPQOCfdeWUeMh7IylRhmBFnuKqB0yT+5MbMhs3v71cuRHBQ
	UqWXzxehKQxwZnx6UinHy4gl4fUXRPii
X-Google-Smtp-Source: AOwi7QCmop6bc/URorxylptDVAntc7yuxPWj0jkoTNz0E5Qmp60d9JEejC3iraVkasF2S5C/RGJX4lgShJZ5A0nnNXg=
X-Received: by 10.202.184.4 with SMTP id i4mr1930601oif.269.1505130701420;
	Mon, 11 Sep 2017 04:51:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.82.15 with HTTP; Mon, 11 Sep 2017 04:51:40 -0700 (PDT)
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Mon, 11 Sep 2017 13:51:40 +0200
Message-ID: <CABFXn3HvU4iNJ=GztVqe=yqMTwBS=hvbYXtXN=va0tLjdDEPqg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Could not inherit file classes/pypi.bbclass
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
X-List-Received-Date: Mon, 11 Sep 2017 11:51:42 -0000
Content-Type: multipart/alternative; boundary="001a113cea24cc7ea70558e88c3f"

--001a113cea24cc7ea70558e88c3f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i cloned the latest pyro version with meta-raspberry pi . i added
meta-raspberrypi to bblayer and adjust the machine ?=3D "raspberry pi" when=
 i
bitbake rpi-hwup-image*.*

it throws me the error of
*ERROR: ParseError at
/home/yahia/Desktop/elinux_dev/bake_factory/git_versions/poky/meta-raspberr=
ypi/recipes-devtools/python/rpi-gpio_0.6.3.bb:8
<http://rpi-gpio_0.6.3.bb:8>: Could not inherit file classes/pypi.bbclass*


--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>



=E2=80=8C

--001a113cea24cc7ea70558e88c3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/7ffec95=
444b618b8cfa3835462cfeef35f30a364.png?u=3D1822760">i cloned the latest pyro=
 version with meta-raspberry pi . i added meta-raspberrypi to bblayer and a=
djust the machine ?=3D &quot;raspberry pi&quot; when i bitbake rpi-hwup-ima=
ge<i class=3D"gmail-icon-hdd" title=3D"" style=3D"display:inline-block;widt=
h:14px;height:14px;margin-top:1px;line-height:14px;vertical-align:text-top;=
background-image:url(&quot;../img/glyphicons-halflings.png&quot;);backgroun=
d-position:0px -144px;background-repeat:no-repeat;margin-left:6px;color:rgb=
(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-seri=
f;font-size:14px">.</i><div><br></div><div>it throws me the error of=C2=A0<=
/div><div><i>ERROR: ParseError at /home/yahia/Desktop/elinux_dev/bake_facto=
ry/git_versions/poky/meta-raspberrypi/recipes-devtools/python/<a href=3D"ht=
tp://rpi-gpio_0.6.3.bb:8">rpi-gpio_0.6.3.bb:8</a>: Could not inherit file c=
lasses/pypi.bbclass</i></div><div><br></div><div><br></div>-- <br><div clas=
s=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"=
1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emo=
jiFont"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><s=
pan style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-seri=
f,serif,EmojiFont;font-size:16px"></span><div><font color=3D"#777777" face=
=3D"Tahoma, sans-serif, Arial, serif, EmojiFont"><span style=3D"font-size:1=
3px">Graduated from Faculty of Engineering - Electronics and Communications=
 Department at Cairo University.</span></font><br></div><div style=3D"color=
:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=
=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-f=
amily:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13p=
x">Linkedin</span></font></a><font size=3D"1" color=3D"#777777" style=3D"fo=
nt-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size=
:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafargha=
ly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D=
"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-s=
ize:13px">GitHub</span></font></a></div></div></div></div></div></div>
<br><br><br>=E2=80=8C</div>

--001a113cea24cc7ea70558e88c3f--
