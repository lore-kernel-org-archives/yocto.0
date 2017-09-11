Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFB95E00C3A; Mon, 11 Sep 2017 05:40:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yahiafarghaly[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5652EE00BB1
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 05:40:04 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id v36so12171693ioi.1
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 05:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7T83bitm+a1FmNQL/wrqvAFEkAl9FUzWjwKolGpOVYI=;
	b=b5EaYf9+HlePBUWLBtmA7+UCZZx+NgVtbPv+gxwgVJDRuHO24ITInYoFFKJApwox08
	W6qJSeA7FWVB7bJ8OxV+h+/d+mFTCJGoh0yUk+qzftyoJyqJHIYHNluaBiVFjcs8BAjw
	X+gQlxP099i2BJyzapVRV//k8oB5qTdepurYilQZ5+PORkoGyc9xf8PMWfGcZkj30jXi
	K/z6x9B7wyNQc+JETPj4brswnVNKArBVo5lpmttpuSFlq/flP6VyVEGBfS19U389LXav
	sIne1Y0/L2BaOtdO6PFSMJOmLqWsFISukdQpXBQ6LWHHcGJqQ5FYeXt2+n0CpYquxOE8
	9E3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7T83bitm+a1FmNQL/wrqvAFEkAl9FUzWjwKolGpOVYI=;
	b=NMglVlnNlNpOMo/ouBeZbV1icLaTAmXzhlPLnvgC5V3rFYy5AXHOs2hjy5CR7DBrf0
	o1EsrtwUIhutgEHCqN4lrlet0gAhsADa9l1TscPpn+H0oJQU+3pMHSL54y/tkgK7SGSm
	nhUdjWjtGaNd+s33j2kgXI/74aFsAa31RmIhEUjgBzliergsYxyE/dlqSG6FxqiRt4OP
	J2zADY35dpC16DkfUzCy0KqaJ/Z3b5y1+ZcHpvLi9TTOMk0s86tVxFVFQDIwphs753Qm
	XHnkBpWRXjvWRzuPgNL+QbWUicnbGBDmTZs9D6Wb10k5NocvfN+98Ja8t+bjOfQzEJqX
	g93Q==
X-Gm-Message-State: AHPjjUhq0yf7A77pwebc4OWz9kJrhftIX9h+Ok1Knrjta9Kr5fYtsdlf
	GbGHcRn26MUz0tDUzDcU4S/mzM45RkbJ
X-Google-Smtp-Source: AOwi7QDvdj4Co4K0Yn+6dEaQCtGYJ7m9V9WH6gTISzDH3TN8LgN+h5HwpNXq8SrsrhuQ8wR770Fl479mNSe+6LjXX6M=
X-Received: by 10.202.76.9 with SMTP id z9mr11486315oia.253.1505133604136;
	Mon, 11 Sep 2017 05:40:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.82.15 with HTTP; Mon, 11 Sep 2017 05:40:03 -0700 (PDT)
In-Reply-To: <CAK18fxEwEQE-aNvpDdvWHQbzTb-c_vX9s9qN12gjMtcaYWEtkw@mail.gmail.com>
References: <CABFXn3HvU4iNJ=GztVqe=yqMTwBS=hvbYXtXN=va0tLjdDEPqg@mail.gmail.com>
	<CAK18fxEwEQE-aNvpDdvWHQbzTb-c_vX9s9qN12gjMtcaYWEtkw@mail.gmail.com>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Mon, 11 Sep 2017 14:40:03 +0200
Message-ID: <CABFXn3Ht3Gk7UoBjorALWY98x1wNuXAWVv2GpLu-iP-eCFysUw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Could not inherit file classes/pypi.bbclass
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
X-List-Received-Date: Mon, 11 Sep 2017 12:40:05 -0000
X-Groupsio-MsgNum: 37780
Content-Type: multipart/related; boundary="EIhWJIZ0jy83d1zX23U7"

--EIhWJIZ0jy83d1zX23U7
Content-Type: multipart/alternative; boundary="001a113df0fad081390558e939a6"

--001a113df0fad081390558e939a6
Content-Type: text/plain; charset="UTF-8"

ok,thanks it is now building. i have another question, i don't need to use
the meta-gstreamer1.0 layer if i will use the gstreamer in your multimedia
layer with *IMAGE_INSTALL_append = gstreamer ?*

On 11 September 2017 at 13:58, Andrei Gherzan <andrei@gherzan.ro> wrote:

>
>
> On 11 Sep 2017 12:51, "yahia farghaly" <yahiafarghaly@gmail.com> wrote:
>
> i cloned the latest pyro version with meta-raspberry pi . i added
> meta-raspberrypi to bblayer and adjust the machine ?= "raspberry pi" when i
> bitbake rpi-hwup-image*.*
>
> it throws me the error of
> *ERROR: ParseError at
> /home/yahia/Desktop/elinux_dev/bake_factory/git_versions/poky/meta-raspberrypi/recipes-devtools/python/rpi-gpio_0.6.3.bb:8
> <http://rpi-gpio_0.6.3.bb:8>: Could not inherit file classes/pypi.bbclass*
>
>
> There is a dependency in the README which you missed in the bblayers.
> Namely meta-python.
> --
> Andrei Gherzan
> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
>



-- 
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113df0fad081390558e939a6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/9667a0b0d7b72042aeb9dd6bac9096228fd48734.png?u=3D1822760"/=
>ok,thanks it is now building. i have another question, i don&#39;t need to=
 use the=C2=A0meta-gstreamer1.0 layer if i will use the gstreamer in your m=
ultimedia layer with <i>IMAGE_INSTALL_append =3D gstreamer ?</i></div><div =
class=3D"gmail_extra"><br/><div class=3D"gmail_quote">On 11 September 2017 =
at 13:58, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@ghe=
rzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br/><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"auto"><span class=3D""><div data-sma=
rtmail=3D"gmail_signature" dir=3D"auto"><br/></div><div class=3D"gmail_extr=
a" dir=3D"auto"><br/><div class=3D"gmail_quote">On 11 Sep 2017 12:51, &#34;=
yahia farghaly&#34; &lt;<a href=3D"mailto:yahiafarghaly@gmail.com" target=
=3D"_blank">yahiafarghaly@gmail.com</a>&gt; wrote:<br type=3D"attribution"=
/><blockquote class=3D"m_-7996419818173971398quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><img widt=
h=3D"0" height=3D"0" class=3D"m_-7996419818173971398m_8985797129070672451ma=
iltrack-img" alt=3D"" style=3D"display:flex" src=3D"cid:attach_0_15D95A7C70=
18765B_29417@groups.io"/>i cloned the latest pyro version with meta-raspber=
ry pi . i added meta-raspberrypi to bblayer and adjust the machine ?=3D &#3=
4;raspberry pi&#34; when i bitbake rpi-hwup-image<i class=3D"m_-79964198181=
73971398m_8985797129070672451gmail-icon-hdd" title=3D"" style=3D"display:in=
line-block;width:14px;height:14px;margin-top:1px;line-height:14px;vertical-=
align:text-top;background-image:url(&#34;http://../img/glyphicons-halflings=
.png&#34;);background-position:0px -144px;background-repeat:no-repeat;margi=
n-left:6px;color:rgb(51,51,51);font-family:&#34;Helvetica Neue&#34;,Helveti=
ca,Arial,sans-serif;font-size:14px">.</i><div><br/></div><div>it throws me =
the error of=C2=A0</div><div><i>ERROR: ParseError at /home/yahia/Desktop/el=
inux_dev<wbr/>/bake_factory/git_versions/pok<wbr/>y/meta-raspberrypi/recipe=
s-dev<wbr/>tools/python/<a href=3D"http://rpi-gpio_0.6.3.bb:8" target=3D"_b=
lank">rpi-gpio_0.6.3.<wbr/>bb:8</a>: Could not inherit file classes/pypi.bb=
class</i></div></div></blockquote></div></div><div dir=3D"auto"><br/></div>=
</span><div dir=3D"auto">There is a dependency in the README which you miss=
ed in the bblayers. Namely meta-python.</div><div dir=3D"auto"><span style=
=3D"font-family:sans-serif">--</span><br style=3D"font-family:sans-serif"/=
><span style=3D"font-family:sans-serif">Andrei Gherzan</span><br style=3D"f=
ont-family:sans-serif"/><span style=3D"font-family:sans-serif">gpg: rsa4096=
/D4D94F67AD0E9640 | t: @agherzan</span></div></div>
</blockquote></div><br/><br clear=3D"all"/><div><br/></div>-- <br/><div cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"font-fam=
ily:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px"=
>Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></sp=
an><div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, serif, E=
mojiFont"><span style=3D"font-size:13px">Graduated from Faculty of Engineer=
ing - Electronics and Communications Department at Cairo University.</span>=
</font><br/></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,=
Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"https:=
//linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_bla=
nk"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emo=
jiFont"><span style=3D"font-size:13px">Linkedin</span></font></a><font size=
=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a h=
ref=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" target=
=
=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,=
serif,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a></d=
iv></div></div></div></div></div>
</div>
</body></html>

--001a113df0fad081390558e939a6--

--EIhWJIZ0jy83d1zX23U7
Content-Id: <attach_0_15D95A7C7018765B_29417@groups.io>
X-Attachment-Id: attach_0_15D95A7C7018765B_29417@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--EIhWJIZ0jy83d1zX23U7--
