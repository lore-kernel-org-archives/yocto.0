Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC199E00CC4; Mon,  4 Sep 2017 04:05:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_10_20,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f170.google.com (mail-wr0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA9DE00BBF
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 04:05:48 -0700 (PDT)
Received: by mail-wr0-f170.google.com with SMTP id j3so553658wrb.3
	for <yocto@yoctoproject.org>; Mon, 04 Sep 2017 04:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1ZlfqWagRqRFIlq8fhKqMZm7ckXkGR3TfTwYB8yHIZw=;
	b=nYmiHrOnPFi1S52JBhptCARaBvMXq11wMd8dGQVa7OEGJstM5uvkh4X6j+29hKIYPx
	1nxKg9FeoCKs2X597daDwIq+njfbnPo0B0AjncFXUdd5Htk3fd0Fh6mVnjDk8repqctc
	SPCANvkqlyK52qQBOQvn7k/6eECJzRqV9L5yuqWrqeFrPl5ds7x/sPVbA0twW6nzWyIA
	deMYlM5KB69P5KWcCNLDiNZyx9lSLq/DK9p9Ld7Pko8Zu0tqMLF1uqqLInWnvc+b6XES
	vqWVaatpA1JvcOq56G0loo59hA5/CuxEUSPQFFlFtSNo0625os/8mbsDK3G35K6lcF85
	WxIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1ZlfqWagRqRFIlq8fhKqMZm7ckXkGR3TfTwYB8yHIZw=;
	b=RPnVyfk3rE32MLaYc+/FHTkbFdTsYL6/DA0Q+oiFe+qiBSNEl/UW4HusbIGRBrOHTm
	hdNIgfcjH2QXDNCc2Cvtm6bbeyuXFsjlISNg6L5RLhcxXBCm/13XDDX5JSLainvp8ogr
	a/9sE07AHOxPADrkIXgARSu1gpDyfDV9C5K//t2mvx6l4G9Ujx5xpebkOQ0rlfnSwIH4
	6XRfVMGWUYaTQwlRGMHgwnYoVZPKKPTy4tuhB+3V4c3VzHgK7pvwwRm1U4qgBj/+lx/D
	DyAtw3A4RtYKmh+AUFgJWj3Jx2rJSEivxptCusGzkTcTsPqDFz+7ysusoJakVCARCApF
	gu7g==
X-Gm-Message-State: AHPjjUjWyT4ll5+yb3sReh0TtTeiSqjyXEu8TenlsuXrhls81d+wSNV6
	02hzi9+a7bAbqa4ifpPTEDEKaMCyTwr5
X-Google-Smtp-Source: ADKCNb4chczZviUxA4OEZFkk9eQtVKUAECZgs0YkU17Bs3GruopKOoEz964+ve0et1D4JS3KflbhsjFrhdSev1ZZmeA=
X-Received: by 10.223.170.137 with SMTP id h9mr48291wrc.91.1504523147380; Mon,
	04 Sep 2017 04:05:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.45.195 with HTTP; Mon, 4 Sep 2017 04:05:06 -0700 (PDT)
X-Originating-IP: [109.150.130.236]
In-Reply-To: <CACMwXoUxrv9OzS18w0VkhULmajWC3YiZsV0G=fcV=LXMTSXS2g@mail.gmail.com>
References: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
	<1503576301-18920-2-git-send-email-mickey.happygolucky@gmail.com>
	<CAPyrkgz_zRA3+FL6v9yrvaZNeEGh5OH+j6edbusjU1xooB6+qA@mail.gmail.com>
	<CACMwXoUxrv9OzS18w0VkhULmajWC3YiZsV0G=fcV=LXMTSXS2g@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 4 Sep 2017 12:05:06 +0100
Message-ID: <CAK18fxHqPHzKV_VbQ01VBFUbapYwc9ghWrmSJ5f8dGWtpHMCzg@mail.gmail.com>
To: Yusuke Mitsuki <mickey.happygolucky@gmail.com>, michal@resin.io
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
X-List-Received-Date: Mon, 04 Sep 2017 11:05:49 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b45d2c1a94905585b1790"

--94eb2c1b45d2c1a94905585b1790
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 25, 2017 at 9:17 PM, Yusuke Mitsuki <
mickey.happygolucky@gmail.com> wrote:

> okay. I will try.
>
> 2017-08-25 17:51 GMT+09:00 Paul Barker <pbarker@toganlabs.com>:
>
>> On Thu, Aug 24, 2017 at 1:05 PM, Yusuke Mitsuki
>> <mickey.happygolucky@gmail.com> wrote:
>> > hciattach on raspberrypi0-wifi failed because BCM43430A1.hcd is not
>> found.
>> >
>> > Paches that in order to use bluetooth with BCM43430 are not enabled.
>> > Functions are only enabled with raspberrypi3 in bluez5_%.bbappend like
>> as follows:
>> >
>> > - SRC_URI_append_raspberrypi3
>> > - do_install_append_raspberrypi3()
>> > - FILES_${PN}_append_raspberrypi3
>> > - SYSTEMD_SERVICE_${PN}_append_raspberrypi3
>> >
>> > These should be enabled with raspberrypi0-wifi too.
>> >
>> > Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
>> > ---
>> >  recipes-connectivity/bluez5/bluez5_%.bbappend | 25
>> +++++++++++++++++++++++++
>> >  1 file changed, 25 insertions(+)
>> >
>> > diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend
>> b/recipes-connectivity/bluez5/bluez5_%.bbappend
>> > index 956d776..075dc2b 100644
>> > --- a/recipes-connectivity/bluez5/bluez5_%.bbappend
>> > +++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
>> > @@ -24,3 +24,28 @@ FILES_${PN}_append_raspberrypi3 = " \
>> >      "
>> >
>> >  SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " brcm43438.service"
>> > +
>> > +SRC_URI_append_raspberrypi0-wifi = " \
>> > +    file://BCM43430A1.hcd \
>> > +    file://0001-bcm43xx-Add-bcm43xx-3wire-variant.patch \
>> > +    file://0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch
>> \
>> > +    file://0003-Increase-firmware-load-timeout-to-30s.patch \
>> > +    file://0004-Move-the-43xx-firmware-into-lib-firmware.patch \
>> > +    file://brcm43438.service \
>> > +    "
>> > +
>> > +do_install_append_raspberrypi0-wifi() {
>> > +    install -d ${D}/lib/firmware/brcm/
>> > +    install -m 0644 ${WORKDIR}/BCM43430A1.hcd
>> ${D}/lib/firmware/brcm/BCM43430A1.hcd
>> > +
>> > +    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true',
>> 'false', d)}; then
>> > +        install -d ${D}${systemd_unitdir}/system
>> > +        install -m 0644 ${WORKDIR}/brcm43438.service
>> ${D}${systemd_unitdir}/system
>> > +    fi
>> > +}
>> > +
>> > +FILES_${PN}_append_raspberrypi0-wifi = " \
>> > +    /lib/firmware/brcm/BCM43430A1.hcd \
>> > +    "
>> > +
>> > +SYSTEMD_SERVICE_${PN}_append_raspberrypi0-wifi = " brcm43438.service"
>>
>> I don't like the amount of duplication here. Could you define some
>> common variables and use those in the appends? This will make it
>> easier to change/upgrade in the future and avoid risk of the
>> duplicates falling out of sync with each other.
>>
>> Eg.
>>
>>     RPI_WIFI_SOURCES = "...."
>>
>>     SRC_URI_append_raspberrypi3 = "${RPI_WIFI_SOURCES}"
>>     SRC_URI_append_raspberrypi0-wifi = "${RPI_WIFI_SOURCES}"
>>
>>
I know Michal worked on this not long ago. Michal, could you give us some
hints here? Maybe backport the changes in resinOS?


--
Andrei Gherzan

--94eb2c1b45d2c1a94905585b1790
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br>
<br><div class=3D"gmail_quote">On Fri, Aug 25, 2017 at 9:17 PM, Yusuke Mits=
uki <span dir=3D"ltr">&lt;<a href=3D"mailto:mickey.happygolucky@gmail.com" =
target=3D"_blank">mickey.happygolucky@gmail.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">okay. I wi=
ll try.</div><div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-08-25 17:51 GMT+09:00 =
Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:pbarker@toganlabs.com" =
target=3D"_blank">pbarker@toganlabs.com</a>&gt;</span>:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div class=3D"gmail-m_-353798385577942004=
9HOEnZb"><div class=3D"gmail-m_-3537983855779420049h5">On Thu, Aug 24, 2017=
 at 1:05 PM, Yusuke Mitsuki<br>
&lt;<a href=3D"mailto:mickey.happygolucky@gmail.com" target=3D"_blank">mick=
ey.happygolucky@gmail.com</a><wbr>&gt; wrote:<br>
&gt; hciattach on raspberrypi0-wifi failed because BCM43430A1.hcd is not fo=
und.<br>
&gt;<br>
&gt; Paches that in order to use bluetooth with BCM43430 are not enabled.<b=
r>
&gt; Functions are only enabled with raspberrypi3 in bluez5_%.bbappend like=
 as follows:<br>
&gt;<br>
&gt; - SRC_URI_append_raspberrypi3<br>
&gt; - do_install_append_raspberrypi3<wbr>()<br>
&gt; - FILES_${PN}_append_raspberrypi<wbr>3<br>
&gt; - SYSTEMD_SERVICE_${PN}_append_r<wbr>aspberrypi3<br>
&gt;<br>
&gt; These should be enabled with raspberrypi0-wifi too.<br>
&gt;<br>
&gt; Signed-off-by: Yusuke Mitsuki &lt;<a href=3D"mailto:mickey.happygoluck=
y@gmail.com" target=3D"_blank">mickey.happygolucky@gmail.com</a><wbr>&gt;<b=
r>
&gt; ---<br>
&gt;=C2=A0 recipes-connectivity/bluez5/bl<wbr>uez5_%.bbappend | 25 ++++++++=
+++++++++++++++++<br>
&gt;=C2=A0 1 file changed, 25 insertions(+)<br>
&gt;<br>
&gt; diff --git a/recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend b/reci=
pes-connectivity/bluez5/<wbr>bluez5_%.bbappend<br>
&gt; index 956d776..075dc2b 100644<br>
&gt; --- a/recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend<br>
&gt; +++ b/recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend<br>
&gt; @@ -24,3 +24,28 @@ FILES_${PN}_append_raspberrypi<wbr>3 =3D &quot; \<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;<br>
&gt;=C2=A0 SYSTEMD_SERVICE_${PN}_append_r<wbr>aspberrypi3 =3D &quot; brcm43=
438.service&quot;<br>
&gt; +<br>
&gt; +SRC_URI_append_raspberrypi0-w<wbr>ifi =3D &quot; \<br>
&gt; +=C2=A0 =C2=A0 file://BCM43430A1.hcd \<br>
&gt; +=C2=A0 =C2=A0 file://0001-bcm43xx-Add-bcm43x<wbr>x-3wire-variant.patc=
h \<br>
&gt; +=C2=A0 =C2=A0 file://0002-bcm43xx-The-UART-s<wbr>peed-must-be-reset-a=
fter-the-f<wbr>irmw.patch \<br>
&gt; +=C2=A0 =C2=A0 file://0003-Increase-firmware-<wbr>load-timeout-to-30s.=
patch \<br>
&gt; +=C2=A0 =C2=A0 file://0004-Move-the-43xx-firm<wbr>ware-into-lib-firmwa=
re.patch \<br>
&gt; +=C2=A0 =C2=A0 file://brcm43438.service \<br>
&gt; +=C2=A0 =C2=A0 &quot;<br>
&gt; +<br>
&gt; +do_install_append_raspberrypi<wbr>0-wifi() {<br>
&gt; +=C2=A0 =C2=A0 install -d ${D}/lib/firmware/brcm/<br>
&gt; +=C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firm=
ware/brcm/BCM4343<wbr>0A1.hcd<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 if ${@bb.utils.contains(&#39;DISTRO_F<wbr>EATURES&#39;,=
 &#39;systemd&#39;, &#39;true&#39;, &#39;false&#39;, d)}; then<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_unitdir}/system<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/brcm43438.serv=
ice ${D}${systemd_unitdir}/system<br>
&gt; +=C2=A0 =C2=A0 fi<br>
&gt; +}<br>
&gt; +<br>
&gt; +FILES_${PN}_append_raspberryp<wbr>i0-wifi =3D &quot; \<br>
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
=C2=A0 =C2=A0 SRC_URI_append_raspberrypi0-wi<wbr>fi =3D &quot;${RPI_WIFI_SO=
URCES}&quot;<br>
<span class=3D"gmail-m_-3537983855779420049HOEnZb"><font color=3D"#888888">=
<br></font></span></blockquote></div></div></div></div></blockquote><div><b=
r></div><div>I know Michal worked on this not long ago. Michal, could you g=
ive us some hints here? Maybe backport the changes in resinOS?</div><div><b=
r></div><div><br class=3D"gmail-Apple-interchange-newline">--</div><div>And=
rei Gherzan=C2=A0</div></div><br></div></div>

--94eb2c1b45d2c1a94905585b1790--
