Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 922CEE00CC6; Fri, 25 Aug 2017 13:17:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7A27E00B1B
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 13:17:08 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id q189so2590060vke.4
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 13:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zcHeZIgq4seQGwS15t/RS7XchiepZuyUDXQ9kRvZDn4=;
	b=jghF+Dv+m0yxsWwK06WDzaw5fkdFBhX++SyL17YA/nVQ36vvEL2YyWKJ4UjnyqOz2D
	3Td1TzsRvb7CN7Hf8ygBfyWutgIEehCd795cRAixoNCCsqjSvxFp37+b9WYJ6K79WFDc
	zAgJNB2/W5M5mCpY9yKmkIgkqjOMJ7/GmbhuQF9QlG0WZt9FHu/L2Z1hM4yhIf6AtPEM
	iBYPPcCVke3UBVAwA8esUDjhY1foXkQv0+VRKyK+pE+s2ShzIRWLuOFV4BDsJJEIkFTR
	fQCGHi54RvlQtKn/mDjvT0zIuYu2eFo/sBSm3M0uGkCxlbom0wzG7vrD+kq+xFPhZtLu
	qCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zcHeZIgq4seQGwS15t/RS7XchiepZuyUDXQ9kRvZDn4=;
	b=UAdhBUgcvFREg6NrwHtvhjsh/tf84jkEuaZgW8wj3ZhlFUid/YyMdN40OAfFi2Dr90
	4FyuIhtBEnSNmpHqo7FmBwTWrW429vEvuChCboWLLajzrKQUflwXDWYjnA4SA4otghRJ
	adsMiXk4nzbLFM2zWJGbz7HvbKCJp5gge209+BspUzjj5qyYh6O0Jw3IOPqViPUu23OJ
	48jQ8tHcBAEeDe8IO5SzEgXKk6ubvbohjbjKm6RF0Tk4gRVJ92ZfPZtUOj28/vsyAj9f
	GGIOWuWkQig2DTIQRykWnli9upOE8jd7kcOTqKSc3wWIaCR3MBxNstmhvTFNXqFNIDN+
	CInA==
X-Gm-Message-State: AHYfb5hQVmbO/q8JopH42EVLZfSivGSNiYD4Ib+LGV2Xr3FpeDhZgwdW
	ufzLOqm2/QVnWTcFABDsxV1rFRV/jQ==
X-Received: by 10.31.60.78 with SMTP id j75mr7200158vka.38.1503692227663; Fri,
	25 Aug 2017 13:17:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.211.129 with HTTP; Fri, 25 Aug 2017 13:17:07 -0700 (PDT)
In-Reply-To: <CAPyrkgz_zRA3+FL6v9yrvaZNeEGh5OH+j6edbusjU1xooB6+qA@mail.gmail.com>
References: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
	<1503576301-18920-2-git-send-email-mickey.happygolucky@gmail.com>
	<CAPyrkgz_zRA3+FL6v9yrvaZNeEGh5OH+j6edbusjU1xooB6+qA@mail.gmail.com>
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Date: Sat, 26 Aug 2017 05:17:07 +0900
Message-ID: <CACMwXoUxrv9OzS18w0VkhULmajWC3YiZsV0G=fcV=LXMTSXS2g@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] bluez5: add functions for raspberrypi0-wifi
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
X-List-Received-Date: Fri, 25 Aug 2017 20:17:09 -0000
Content-Type: multipart/alternative; boundary="001a11438c1e14db91055799a1e2"

--001a11438c1e14db91055799a1e2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

okay. I will try.

2017-08-25 17:51 GMT+09:00 Paul Barker <pbarker@toganlabs.com>:

> On Thu, Aug 24, 2017 at 1:05 PM, Yusuke Mitsuki
> <mickey.happygolucky@gmail.com> wrote:
> > hciattach on raspberrypi0-wifi failed because BCM43430A1.hcd is not
> found.
> >
> > Paches that in order to use bluetooth with BCM43430 are not enabled.
> > Functions are only enabled with raspberrypi3 in bluez5_%.bbappend like
> as follows:
> >
> > - SRC_URI_append_raspberrypi3
> > - do_install_append_raspberrypi3()
> > - FILES_${PN}_append_raspberrypi3
> > - SYSTEMD_SERVICE_${PN}_append_raspberrypi3
> >
> > These should be enabled with raspberrypi0-wifi too.
> >
> > Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
> > ---
> >  recipes-connectivity/bluez5/bluez5_%.bbappend | 25
> +++++++++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> >
> > diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend
> b/recipes-connectivity/bluez5/bluez5_%.bbappend
> > index 956d776..075dc2b 100644
> > --- a/recipes-connectivity/bluez5/bluez5_%.bbappend
> > +++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
> > @@ -24,3 +24,28 @@ FILES_${PN}_append_raspberrypi3 =3D " \
> >      "
> >
> >  SYSTEMD_SERVICE_${PN}_append_raspberrypi3 =3D " brcm43438.service"
> > +
> > +SRC_URI_append_raspberrypi0-wifi =3D " \
> > +    file://BCM43430A1.hcd \
> > +    file://0001-bcm43xx-Add-bcm43xx-3wire-variant.patch \
> > +    file://0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.p=
atch
> \
> > +    file://0003-Increase-firmware-load-timeout-to-30s.patch \
> > +    file://0004-Move-the-43xx-firmware-into-lib-firmware.patch \
> > +    file://brcm43438.service \
> > +    "
> > +
> > +do_install_append_raspberrypi0-wifi() {
> > +    install -d ${D}/lib/firmware/brcm/
> > +    install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firmware/brcm/
> BCM43430A1.hcd
> > +
> > +    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true',
> 'false', d)}; then
> > +        install -d ${D}${systemd_unitdir}/system
> > +        install -m 0644 ${WORKDIR}/brcm43438.service
> ${D}${systemd_unitdir}/system
> > +    fi
> > +}
> > +
> > +FILES_${PN}_append_raspberrypi0-wifi =3D " \
> > +    /lib/firmware/brcm/BCM43430A1.hcd \
> > +    "
> > +
> > +SYSTEMD_SERVICE_${PN}_append_raspberrypi0-wifi =3D " brcm43438.service=
"
>
> I don't like the amount of duplication here. Could you define some
> common variables and use those in the appends? This will make it
> easier to change/upgrade in the future and avoid risk of the
> duplicates falling out of sync with each other.
>
> Eg.
>
>     RPI_WIFI_SOURCES =3D "...."
>
>     SRC_URI_append_raspberrypi3 =3D "${RPI_WIFI_SOURCES}"
>     SRC_URI_append_raspberrypi0-wifi =3D "${RPI_WIFI_SOURCES}"
>
> --
> Paul Barker
> Tog=C3=A1n Labs Ltd
>

--001a11438c1e14db91055799a1e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">okay. I will try.</div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">2017-08-25 17:51 GMT+09:00 Paul Barker <span dir=3D"=
ltr">&lt;<a href=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker=
@toganlabs.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cla=
ss=3D"HOEnZb"><div class=3D"h5">On Thu, Aug 24, 2017 at 1:05 PM, Yusuke Mit=
suki<br>
&lt;<a href=3D"mailto:mickey.happygolucky@gmail.com">mickey.happygolucky@gm=
ail.com</a><wbr>&gt; wrote:<br>
&gt; hciattach on raspberrypi0-wifi failed because BCM43430A1.hcd is not fo=
und.<br>
&gt;<br>
&gt; Paches that in order to use bluetooth with BCM43430 are not enabled.<b=
r>
&gt; Functions are only enabled with raspberrypi3 in bluez5_%.bbappend like=
 as follows:<br>
&gt;<br>
&gt; - SRC_URI_append_raspberrypi3<br>
&gt; - do_install_append_<wbr>raspberrypi3()<br>
&gt; - FILES_${PN}_append_<wbr>raspberrypi3<br>
&gt; - SYSTEMD_SERVICE_${PN}_append_<wbr>raspberrypi3<br>
&gt;<br>
&gt; These should be enabled with raspberrypi0-wifi too.<br>
&gt;<br>
&gt; Signed-off-by: Yusuke Mitsuki &lt;<a href=3D"mailto:mickey.happygoluck=
y@gmail.com">mickey.happygolucky@gmail.com</a><wbr>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend | 25 ++++++++=
+++++++++++++++++<br>
&gt;=C2=A0 1 file changed, 25 insertions(+)<br>
&gt;<br>
&gt; diff --git a/recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend b/reci=
pes-connectivity/bluez5/<wbr>bluez5_%.bbappend<br>
&gt; index 956d776..075dc2b 100644<br>
&gt; --- a/recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend<br>
&gt; +++ b/recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend<br>
&gt; @@ -24,3 +24,28 @@ FILES_${PN}_append_<wbr>raspberrypi3 =3D &quot; \<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;<br>
&gt;=C2=A0 SYSTEMD_SERVICE_${PN}_append_<wbr>raspberrypi3 =3D &quot; brcm43=
438.service&quot;<br>
&gt; +<br>
&gt; +SRC_URI_append_raspberrypi0-<wbr>wifi =3D &quot; \<br>
&gt; +=C2=A0 =C2=A0 file://BCM43430A1.hcd \<br>
&gt; +=C2=A0 =C2=A0 file://0001-bcm43xx-Add-<wbr>bcm43xx-3wire-variant.patc=
h \<br>
&gt; +=C2=A0 =C2=A0 file://0002-bcm43xx-The-UART-<wbr>speed-must-be-reset-a=
fter-the-<wbr>firmw.patch \<br>
&gt; +=C2=A0 =C2=A0 file://0003-Increase-firmware-<wbr>load-timeout-to-30s.=
patch \<br>
&gt; +=C2=A0 =C2=A0 file://0004-Move-the-43xx-<wbr>firmware-into-lib-firmwa=
re.<wbr>patch \<br>
&gt; +=C2=A0 =C2=A0 file://brcm43438.service \<br>
&gt; +=C2=A0 =C2=A0 &quot;<br>
&gt; +<br>
&gt; +do_install_append_<wbr>raspberrypi0-wifi() {<br>
&gt; +=C2=A0 =C2=A0 install -d ${D}/lib/firmware/brcm/<br>
&gt; +=C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firm=
ware/brcm/<wbr>BCM43430A1.hcd<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 if ${@bb.utils.contains(&#39;DISTRO_<wbr>FEATURES&#39;,=
 &#39;systemd&#39;, &#39;true&#39;, &#39;false&#39;, d)}; then<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_unitdir}/system<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/brcm43438.serv=
ice ${D}${systemd_unitdir}/system<br>
&gt; +=C2=A0 =C2=A0 fi<br>
&gt; +}<br>
&gt; +<br>
&gt; +FILES_${PN}_append_<wbr>raspberrypi0-wifi =3D &quot; \<br>
&gt; +=C2=A0 =C2=A0 /lib/firmware/brcm/BCM43430A1.<wbr>hcd \<br>
&gt; +=C2=A0 =C2=A0 &quot;<br>
&gt; +<br>
&gt; +SYSTEMD_SERVICE_${PN}_append_<wbr>raspberrypi0-wifi =3D &quot; brcm43=
438.service&quot;<br>
<br>
</div></div>I don&#39;t like the amount of duplication here. Could you defi=
ne some<br>
common variables and use those in the appends? This will make it<br>
easier to change/upgrade in the future and avoid risk of the<br>
duplicates falling out of sync with each other.<br>
<br>
Eg.<br>
<br>
=C2=A0 =C2=A0 RPI_WIFI_SOURCES =3D &quot;....&quot;<br>
<br>
=C2=A0 =C2=A0 SRC_URI_append_raspberrypi3 =3D &quot;${RPI_WIFI_SOURCES}&quo=
t;<br>
=C2=A0 =C2=A0 SRC_URI_append_raspberrypi0-<wbr>wifi =3D &quot;${RPI_WIFI_SO=
URCES}&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd<br>
</font></span></blockquote></div><br></div>

--001a11438c1e14db91055799a1e2--
