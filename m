Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A63D5E00CF7; Fri,  1 Dec 2017 09:41:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,URIBL_SBL autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: waveshare.com]
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2944E00CE8
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 09:41:14 -0800 (PST)
Received: by mail-ua0-f181.google.com with SMTP id q13so8498912uaq.8
	for <yocto@yoctoproject.org>; Fri, 01 Dec 2017 09:41:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=h0aRJ4hDCCFr6gPRYUBXHeJBtZlNpMuj/mHq90XfgW8=;
	b=S/tit2b9k3KePpCkFZ4XUnOD/HdC1UMWCTTWG8+rLBKrJYo5/qXbtF0jJTOxCKdrSJ
	+4pjoGMP62t/Cq3NO5wQDRGQMuBlKI8p1T3fGDCHPDmeJ4Qj37+F4m+k7s0IQw2BOIBz
	KMD9hBrP6H9FFJiJD+DFmrzB/YwCLiYfAaEVTor6it14IW6D5760CrpQzhWrwp+IYfz1
	bMJM3XAiinSHJsGYlrxYphd9qiMKwiVtL/IB29YniRR4jl6U/67tcJTqpP/I6IwLmiNv
	x21R5rp4xC5Q4pkoQFQ8XnCBV+raaaW2BvE/LZUZcmy85jCw/ywM1a42FU+yA6QF3/yd
	EgnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=h0aRJ4hDCCFr6gPRYUBXHeJBtZlNpMuj/mHq90XfgW8=;
	b=TwEy4IrpdSBBX2h6lMV599RYiN5esTS4ewL2ztQetZHqgu6ThKR8ASwddEZ2RekKgI
	RZiLssoz3mY9zTFpl+vq6EmmmH/9ASkWskyx59heGaouz0j8bLkVZ3ssisRrNc37xO/g
	WYAoo2Vbfk9+1KsF4J3e1CBJBGmgSWZk4krukOaHAl0m6Eva3U4yMXRAohkyDmntVpB3
	Mm8YvBfUDoXwg96bWIIXgjmfZaDYk41u6sC+foX9Q7GVuKKw1tKWtxSlbPW7NlviPEPN
	csjQsVogvo8Zls7lFbbRClQPuRVgTmrcblm4BzQQU2DHeEDSnsIInedTOeGWpuYpb1iK
	x4IQ==
X-Gm-Message-State: AKGB3mKda+1OKzSFZplq0AblImtV4RYB6RjbZjJCGsnQu8ZdyNiaGI06
	3sJ6SJCxh78hHXBiTqmJN8nBu/rm8quR/jQmH8REpJJKJNU=
X-Google-Smtp-Source: AGs4zMYZM3Co8hh0UFrbOHGSlz1hk+a7kOifkpf6cDfPawyt4WA5Dc4OCyrpkcv6M0ZtyTqoTHD2+atkdUR2ATbhehA=
X-Received: by 10.176.3.164 with SMTP id 33mr4701454uau.152.1512150073662;
	Fri, 01 Dec 2017 09:41:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.22.41 with HTTP; Fri, 1 Dec 2017 09:40:33 -0800 (PST)
X-Originating-IP: [90.152.4.101]
In-Reply-To: <CAPyrkgwCUkbo+XOF-fXf3WNpqGrgB0jp6GOxDFzsR2U6_1PyUg@mail.gmail.com>
References: <1511994009-11240-1-git-send-email-drew.moseley@northern.tech>
	<CAPyrkgz4w-EW6Q+Erv3DL391NTUSiCKG-DPrydDmX9NEapwrNg@mail.gmail.com>
	<CAPyrkgwCUkbo+XOF-fXf3WNpqGrgB0jp6GOxDFzsR2U6_1PyUg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 1 Dec 2017 17:40:33 +0000
Message-ID: <CAK18fxGiokB+B9QBfs_ag4Ewd25AFxbrbCbpx1RLKJMHhzuaJA@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto <yocto@yoctoproject.org>, drew.moseley@northern.tech
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: Setup lcd_rotate for Raspberry Pi display
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
X-List-Received-Date: Fri, 01 Dec 2017 17:41:16 -0000
Content-Type: multipart/alternative; boundary="94eb2c06c446fcf4e6055f4adf46"

--94eb2c06c446fcf4e6055f4adf46
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2017 at 5:43 PM, Paul Barker <pbarker@toganlabs.com> wrote:

> On Thu, Nov 30, 2017 at 5:16 PM, Paul Barker <pbarker@toganlabs.com>
> wrote:
> > On Wed, Nov 29, 2017 at 10:20 PM,  <drew.moseley@northern.tech> wrote:
> >> From: Drew Moseley <drew.moseley@northern.tech>
> >>
> >> Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
> >> ---
> >>  docs/extra-build-config.md              | 6 ++++++
> >>  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
> >>  2 files changed, 12 insertions(+)
> >>
> >> diff --git a/docs/extra-build-config.md b/docs/extra-build-config.md
> >> index 380d969..0390eee 100644
> >> --- a/docs/extra-build-config.md
> >> +++ b/docs/extra-build-config.md
> >> @@ -170,6 +170,12 @@ Screen LCD, HDMI interface (<
> http://www.waveshare.com/7inch-HDMI-LCD-C.htm>) Rev
> >>
> >>      WAVESHARE_1024X600_C_2_1 =3D "1"
> >>
> >> +If you would like to use the Raspberry Pi, 7 inch Capacitive Touch
> Screen
> >> +LCD (https://www.raspberrypi.org/products/raspberry-pi-touch-display/=
),
> please
> >> +set the following in your local.conf:
> >> +
> >> +    RASPBERRYPI_DISPLAY =3D "1"
> >> +
> >>  ## Enable UART
> >>
> >>  RaspberryPi 0, 1, 2 and CM will have UART console enabled by default.
> >> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb
> b/recipes-bsp/bootfiles/rpi-config_git.bb
> >> index ca4160b..e9a4fe2 100644
> >> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> >> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> >> @@ -127,6 +127,12 @@ do_deploy() {
> >>          echo "hdmi_cvt 1024 600 60 6 0 0 0" >> ${DEPLOYDIR}/bcm2835-
> bootfiles/config.txt
> >>          echo "hdmi_drive=3D1" >> ${DEPLOYDIR}/bcm2835-
> bootfiles/config.txt
> >>      fi
> >> +
> >> +    # Raspberry Pi 7" Display/Touch screen (
> https://www.raspberrypi.org/products/raspberry-pi-touch-display/)
> >> +    if [ "${RASPBERRYPI_DISPLAY}" =3D "1" ]; then
> >> +        echo "# Raspberry Pi 7\" display/touch screen" >>
> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >> +        echo "lcd_rotate=3D2" >> ${DEPLOYDIR}/bcm2835-
> bootfiles/config.txt
> >> +    fi
> >>  }
> >>
> >>  do_deploy_append_raspberrypi3-64() {
> >
> > This all looks good in general. Just a quick check though - are all
> > users of this display going to want that lcd_rotate value? I've never
> > used this display so not sure if that's specific to particular use
> > cases or not.
> >
> > If you're happy that this is applicable for everyone could you submit
> > this as a pull request on github
> > (https://github.com/agherzan/meta-raspberrypi).
> >
>
> Someone has come back off-list and said they use that display without
> the lcd_rotate setting. I think we'll have to drop this then.
>
> It may be good to have an RPI_EXTRA_CONFIG variable or similar to add
> arbitrary text to the config file, so you could do something like
> this:
>
> RPI_EXTRA_CONFIG =3D " \
>     # Raspberry Pi 7\" display/touch screen \
>     lcd_rotate=3D2 \
>     "
>
> How does that sound?
>
>
>
I like this.



--
Andrei Gherzan


--
Andrei Gherzan

On Thu, Nov 30, 2017 at 5:43 PM, Paul Barker <pbarker@toganlabs.com> wrote:

> On Thu, Nov 30, 2017 at 5:16 PM, Paul Barker <pbarker@toganlabs.com>
> wrote:
> > On Wed, Nov 29, 2017 at 10:20 PM,  <drew.moseley@northern.tech> wrote:
> >> From: Drew Moseley <drew.moseley@northern.tech>
> >>
> >> Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
> >> ---
> >>  docs/extra-build-config.md              | 6 ++++++
> >>  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
> >>  2 files changed, 12 insertions(+)
> >>
> >> diff --git a/docs/extra-build-config.md b/docs/extra-build-config.md
> >> index 380d969..0390eee 100644
> >> --- a/docs/extra-build-config.md
> >> +++ b/docs/extra-build-config.md
> >> @@ -170,6 +170,12 @@ Screen LCD, HDMI interface (<
> http://www.waveshare.com/7inch-HDMI-LCD-C.htm>) Rev
> >>
> >>      WAVESHARE_1024X600_C_2_1 =3D "1"
> >>
> >> +If you would like to use the Raspberry Pi, 7 inch Capacitive Touch
> Screen
> >> +LCD (https://www.raspberrypi.org/products/raspberry-pi-touch-display/=
),
> please
> >> +set the following in your local.conf:
> >> +
> >> +    RASPBERRYPI_DISPLAY =3D "1"
> >> +
> >>  ## Enable UART
> >>
> >>  RaspberryPi 0, 1, 2 and CM will have UART console enabled by default.
> >> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb
> b/recipes-bsp/bootfiles/rpi-config_git.bb
> >> index ca4160b..e9a4fe2 100644
> >> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> >> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> >> @@ -127,6 +127,12 @@ do_deploy() {
> >>          echo "hdmi_cvt 1024 600 60 6 0 0 0" >> ${DEPLOYDIR}/bcm2835-
> bootfiles/config.txt
> >>          echo "hdmi_drive=3D1" >> ${DEPLOYDIR}/bcm2835-
> bootfiles/config.txt
> >>      fi
> >> +
> >> +    # Raspberry Pi 7" Display/Touch screen (
> https://www.raspberrypi.org/products/raspberry-pi-touch-display/)
> >> +    if [ "${RASPBERRYPI_DISPLAY}" =3D "1" ]; then
> >> +        echo "# Raspberry Pi 7\" display/touch screen" >>
> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >> +        echo "lcd_rotate=3D2" >> ${DEPLOYDIR}/bcm2835-
> bootfiles/config.txt
> >> +    fi
> >>  }
> >>
> >>  do_deploy_append_raspberrypi3-64() {
> >
> > This all looks good in general. Just a quick check though - are all
> > users of this display going to want that lcd_rotate value? I've never
> > used this display so not sure if that's specific to particular use
> > cases or not.
> >
> > If you're happy that this is applicable for everyone could you submit
> > this as a pull request on github
> > (https://github.com/agherzan/meta-raspberrypi).
> >
>
> Someone has come back off-list and said they use that display without
> the lcd_rotate setting. I think we'll have to drop this then.
>
> It may be good to have an RPI_EXTRA_CONFIG variable or similar to add
> arbitrary text to the config file, so you could do something like
> this:
>
> RPI_EXTRA_CONFIG =3D " \
>     # Raspberry Pi 7\" display/touch screen \
>     lcd_rotate=3D2 \
>     "
>
> How does that sound?
>
> --
> Paul Barker
> Tog=C3=A1n Labs Ltd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c06c446fcf4e6055f4adf46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
On Thu, Nov 30, 2017 at 5:43 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=
=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@toganlabs.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5">On Thu, Nov 30, 2017 at =
5:16 PM, Paul Barker &lt;<a href=3D"mailto:pbarker@toganlabs.com">pbarker@t=
oganlabs.com</a>&gt; wrote:<br>
&gt; On Wed, Nov 29, 2017 at 10:20 PM,=C2=A0 &lt;drew.moseley@northern.tech=
&gt; wrote:<br>
&gt;&gt; From: Drew Moseley &lt;drew.moseley@northern.tech&gt;<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Drew Moseley &lt;drew.moseley@northern.tech&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 docs/<a href=3D"http://extra-build-config.md" rel=3D"norefer=
rer" target=3D"_blank">extra-build-config.md</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 | 6 ++++++<br>
&gt;&gt;=C2=A0 recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a> | 6 ++++++<b=
r>
&gt;&gt;=C2=A0 2 files changed, 12 insertions(+)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/docs/<a href=3D"http://extra-build-config.md" rel=3D"=
noreferrer" target=3D"_blank">extra-build-config.md</a> b/docs/<a href=3D"h=
ttp://extra-build-config.md" rel=3D"noreferrer" target=3D"_blank">extra-bui=
ld-config.md</a><br>
&gt;&gt; index 380d969..0390eee 100644<br>
&gt;&gt; --- a/docs/<a href=3D"http://extra-build-config.md" rel=3D"norefer=
rer" target=3D"_blank">extra-build-config.md</a><br>
&gt;&gt; +++ b/docs/<a href=3D"http://extra-build-config.md" rel=3D"norefer=
rer" target=3D"_blank">extra-build-config.md</a><br>
&gt;&gt; @@ -170,6 +170,12 @@ Screen LCD, HDMI interface (&lt;<a href=3D"ht=
tp://www.waveshare.com/7inch-HDMI-LCD-C.htm" rel=3D"noreferrer" target=3D"_=
blank">http://www.waveshare.com/<wbr>7inch-HDMI-LCD-C.htm</a>&gt;) Rev<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 WAVESHARE_1024X600_C_2_1 =3D &quot;1&quot;<br>
&gt;&gt;<br>
&gt;&gt; +If you would like to use the Raspberry Pi, 7 inch Capacitive Touc=
h Screen<br>
&gt;&gt; +LCD (<a href=3D"https://www.raspberrypi.org/products/raspberry-pi=
-touch-display/" rel=3D"noreferrer" target=3D"_blank">https://www.raspberry=
pi.org/<wbr>products/raspberry-pi-touch-<wbr>display/</a>), please<br>
&gt;&gt; +set the following in your local.conf:<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 RASPBERRYPI_DISPLAY =3D &quot;1&quot;<br>
&gt;&gt; +<br>
&gt;&gt;=C2=A0 ## Enable UART<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 RaspberryPi 0, 1, 2 and CM will have UART console enabled by=
 default.<br>
&gt;&gt; diff --git a/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_gi=
t.bb" rel=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a> b/rec=
ipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"noreferrer" =
target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
&gt;&gt; index ca4160b..e9a4fe2 100644<br>
&gt;&gt; --- a/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
&gt;&gt; +++ b/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
&gt;&gt; @@ -127,6 +127,12 @@ do_deploy() {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_cvt 1024 600 60 =
6 0 0 0&quot; &gt;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_drive=3D1&quot; =
&gt;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 # Raspberry Pi 7&quot; Display/Touch screen (<a hre=
f=3D"https://www.raspberrypi.org/products/raspberry-pi-touch-display/" rel=
=3D"noreferrer" target=3D"_blank">https://www.raspberrypi.org/<wbr>products=
/raspberry-pi-touch-<wbr>display/</a>)<br>
&gt;&gt; +=C2=A0 =C2=A0 if [ &quot;${RASPBERRYPI_DISPLAY}&quot; =3D &quot;1=
&quot; ]; then<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;# Raspberry Pi 7\&quot; di=
splay/touch screen&quot; &gt;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/confi=
g.txt<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;lcd_rotate=3D2&quot; &gt;&=
gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;&gt; +=C2=A0 =C2=A0 fi<br>
&gt;&gt;=C2=A0 }<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 do_deploy_append_raspberrypi3-<wbr>64() {<br>
&gt;<br>
&gt; This all looks good in general. Just a quick check though - are all<br=
>
&gt; users of this display going to want that lcd_rotate value? I&#39;ve ne=
ver<br>
&gt; used this display so not sure if that&#39;s specific to particular use=
<br>
&gt; cases or not.<br>
&gt;<br>
&gt; If you&#39;re happy that this is applicable for everyone could you sub=
mit<br>
&gt; this as a pull request on github<br>
&gt; (<a href=3D"https://github.com/agherzan/meta-raspberrypi" rel=3D"noref=
errer" target=3D"_blank">https://github.com/agherzan/<wbr>meta-raspberrypi<=
/a>).<br>
&gt;<br>
<br>
</div></div>Someone has come back off-list and said they use that display w=
ithout<br>
the lcd_rotate setting. I think we&#39;ll have to drop this then.<br>
<br>
It may be good to have an RPI_EXTRA_CONFIG variable or similar to add<br>
arbitrary text to the config file, so you could do something like<br>
this:<br>
<br>
RPI_EXTRA_CONFIG =3D &quot; \<br>
=C2=A0 =C2=A0 # Raspberry Pi 7\&quot; display/touch screen \<br>
=C2=A0 =C2=A0 lcd_rotate=3D2 \<br>
=C2=A0 =C2=A0 &quot;<br>
<br>
How does that sound?<br>
<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br><br></div></div></b=
lockquote><div><br></div><div>I like this.</div><div><br></div><div><br><br=
 clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div><d=
iv dir=3D"ltr"><div>--</div>Andrei Gherzan</div></div></div></div></div> </=
div></div><br></div></div><div class=3D"gmail_extra"><br clear=3D"all"><div=
><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div>--</div>Andrei Gherzan</div></div></div=
></div></div>
<br><div class=3D"gmail_quote">On Thu, Nov 30, 2017 at 5:43 PM, Paul Barker=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:pbarker@toganlabs.com" target=3D"_=
blank">pbarker@toganlabs.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On Thu, Nov 30, 2017 at 5=
:16 PM, Paul Barker &lt;<a href=3D"mailto:pbarker@toganlabs.com">pbarker@to=
ganlabs.com</a>&gt; wrote:<br>
&gt; On Wed, Nov 29, 2017 at 10:20 PM,=C2=A0 &lt;drew.moseley@northern.tech=
&gt; wrote:<br>
&gt;&gt; From: Drew Moseley &lt;drew.moseley@northern.tech&gt;<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Drew Moseley &lt;drew.moseley@northern.tech&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 docs/<a href=3D"http://extra-build-config.md" rel=3D"norefer=
rer" target=3D"_blank">extra-build-config.md</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 | 6 ++++++<br>
&gt;&gt;=C2=A0 recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a> | 6 ++++++<b=
r>
&gt;&gt;=C2=A0 2 files changed, 12 insertions(+)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/docs/<a href=3D"http://extra-build-config.md" rel=3D"=
noreferrer" target=3D"_blank">extra-build-config.md</a> b/docs/<a href=3D"h=
ttp://extra-build-config.md" rel=3D"noreferrer" target=3D"_blank">extra-bui=
ld-config.md</a><br>
&gt;&gt; index 380d969..0390eee 100644<br>
&gt;&gt; --- a/docs/<a href=3D"http://extra-build-config.md" rel=3D"norefer=
rer" target=3D"_blank">extra-build-config.md</a><br>
&gt;&gt; +++ b/docs/<a href=3D"http://extra-build-config.md" rel=3D"norefer=
rer" target=3D"_blank">extra-build-config.md</a><br>
&gt;&gt; @@ -170,6 +170,12 @@ Screen LCD, HDMI interface (&lt;<a href=3D"ht=
tp://www.waveshare.com/7inch-HDMI-LCD-C.htm" rel=3D"noreferrer" target=3D"_=
blank">http://www.waveshare.com/<wbr>7inch-HDMI-LCD-C.htm</a>&gt;) Rev<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 WAVESHARE_1024X600_C_2_1 =3D &quot;1&quot;<br>
&gt;&gt;<br>
&gt;&gt; +If you would like to use the Raspberry Pi, 7 inch Capacitive Touc=
h Screen<br>
&gt;&gt; +LCD (<a href=3D"https://www.raspberrypi.org/products/raspberry-pi=
-touch-display/" rel=3D"noreferrer" target=3D"_blank">https://www.raspberry=
pi.org/<wbr>products/raspberry-pi-touch-<wbr>display/</a>), please<br>
&gt;&gt; +set the following in your local.conf:<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 RASPBERRYPI_DISPLAY =3D &quot;1&quot;<br>
&gt;&gt; +<br>
&gt;&gt;=C2=A0 ## Enable UART<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 RaspberryPi 0, 1, 2 and CM will have UART console enabled by=
 default.<br>
&gt;&gt; diff --git a/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_gi=
t.bb" rel=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a> b/rec=
ipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"noreferrer" =
target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
&gt;&gt; index ca4160b..e9a4fe2 100644<br>
&gt;&gt; --- a/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
&gt;&gt; +++ b/recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>config_git.bb</a><br>
&gt;&gt; @@ -127,6 +127,12 @@ do_deploy() {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_cvt 1024 600 60 =
6 0 0 0&quot; &gt;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;hdmi_drive=3D1&quot; =
&gt;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 # Raspberry Pi 7&quot; Display/Touch screen (<a hre=
f=3D"https://www.raspberrypi.org/products/raspberry-pi-touch-display/" rel=
=3D"noreferrer" target=3D"_blank">https://www.raspberrypi.org/<wbr>products=
/raspberry-pi-touch-<wbr>display/</a>)<br>
&gt;&gt; +=C2=A0 =C2=A0 if [ &quot;${RASPBERRYPI_DISPLAY}&quot; =3D &quot;1=
&quot; ]; then<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;# Raspberry Pi 7\&quot; di=
splay/touch screen&quot; &gt;&gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/confi=
g.txt<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;lcd_rotate=3D2&quot; &gt;&=
gt; ${DEPLOYDIR}/bcm2835-<wbr>bootfiles/config.txt<br>
&gt;&gt; +=C2=A0 =C2=A0 fi<br>
&gt;&gt;=C2=A0 }<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 do_deploy_append_raspberrypi3-<wbr>64() {<br>
&gt;<br>
&gt; This all looks good in general. Just a quick check though - are all<br=
>
&gt; users of this display going to want that lcd_rotate value? I&#39;ve ne=
ver<br>
&gt; used this display so not sure if that&#39;s specific to particular use=
<br>
&gt; cases or not.<br>
&gt;<br>
&gt; If you&#39;re happy that this is applicable for everyone could you sub=
mit<br>
&gt; this as a pull request on github<br>
&gt; (<a href=3D"https://github.com/agherzan/meta-raspberrypi" rel=3D"noref=
errer" target=3D"_blank">https://github.com/agherzan/<wbr>meta-raspberrypi<=
/a>).<br>
&gt;<br>
<br>
</div></div>Someone has come back off-list and said they use that display w=
ithout<br>
the lcd_rotate setting. I think we&#39;ll have to drop this then.<br>
<br>
It may be good to have an RPI_EXTRA_CONFIG variable or similar to add<br>
arbitrary text to the config file, so you could do something like<br>
this:<br>
<br>
RPI_EXTRA_CONFIG =3D &quot; \<br>
=C2=A0 =C2=A0 # Raspberry Pi 7\&quot; display/touch screen \<br>
=C2=A0 =C2=A0 lcd_rotate=3D2 \<br>
=C2=A0 =C2=A0 &quot;<br>
<br>
How does that sound?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--94eb2c06c446fcf4e6055f4adf46--
