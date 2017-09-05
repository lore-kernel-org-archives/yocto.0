Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3AEBE00C09; Tue,  5 Sep 2017 15:25:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44E91E009F5
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 15:25:01 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id o22so1452692vke.5
	for <yocto@yoctoproject.org>; Tue, 05 Sep 2017 15:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wwS/v6Bjjvb2zSiEDcPH3TphJOtohxPtHA7K/DsOC6Q=;
	b=qnF51ZtxrpzSruHx8Z+lhT9dbGhMGLf6lYQaQFdC/dEJy84P9h3XEcWLe9r6nQeBhh
	3tkYkP/FqQLF2dWLAxETVMRro/EfdsWMwdnKtNJu91GQ+4vM8K1nPsi/9iC9GVcn0QWJ
	NDP329wg9XigipIve5m/pVDM3AZcdobFPMfVA8Wtm+fSp63JRMYsmMytlrHkR1pTIlXf
	IVwcD2cTDPNG1H7dxIT4O7ZJkGuOwGSWP3rUpMqCB0qFeUj9dSxx+qkD0Km1yQldjg8M
	gWJP8YNrdASAi8nglI+yVeCilBUK9LDifPwITrfXNL1CfRc/e/aeDkjjDHYkWZ5LalSc
	+sWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wwS/v6Bjjvb2zSiEDcPH3TphJOtohxPtHA7K/DsOC6Q=;
	b=KiDWpYt3UNqGqvw1oAYDmicqbvo0gThuoQJ+1RuZ+YbQzux07uQuMZg8rhg5gViYLH
	Vzxi4aJ1FcDRf028qmVKY8s0dWhlPvzWdTETT2zK1rjB9/L4rYYZhdmSNkf9ljSB7VHS
	e3EnY0EBDHsaenRiwKW4JMirtVrzMNVKUcH81D5yEs31XXc4mWN4QFvsox7YH4OAnDWw
	sC1025xHrAfOtdLt2c3l+lmKhKhYywQOyEt/ZW62d3Y4/3aVJdVuHBEZNaYLyMMDBIov
	0SLCSvrbYn2ggWcgcIypw1AeBuS/Se07dgB9W2eKJ7ib5oQtfmrjacN8l8P54Stt5kp9
	imbg==
X-Gm-Message-State: AHPjjUj5H9Y9mGMp5fJjKjIslLfHgrpAo7N4MI24hoFx97pFyLRvF+LC
	JaoxGyc7YeBR9Dl6FvpUoBEsSSKuuw==
X-Google-Smtp-Source: ADKCNb6QvfypQ3AP1kEjo0xeFw36kBgQzFMOd8J+kFJCZPIHY2sr7CPvCpJt/DdmnwKlz7OO/Jxvp8WBtHiwMVfA1I0=
X-Received: by 10.31.14.138 with SMTP id 132mr355985vko.67.1504650301147; Tue,
	05 Sep 2017 15:25:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.201.130 with HTTP; Tue, 5 Sep 2017 15:25:00 -0700 (PDT)
In-Reply-To: <CAK18fxHqPHzKV_VbQ01VBFUbapYwc9ghWrmSJ5f8dGWtpHMCzg@mail.gmail.com>
References: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
	<1503576301-18920-2-git-send-email-mickey.happygolucky@gmail.com>
	<CAPyrkgz_zRA3+FL6v9yrvaZNeEGh5OH+j6edbusjU1xooB6+qA@mail.gmail.com>
	<CACMwXoUxrv9OzS18w0VkhULmajWC3YiZsV0G=fcV=LXMTSXS2g@mail.gmail.com>
	<CAK18fxHqPHzKV_VbQ01VBFUbapYwc9ghWrmSJ5f8dGWtpHMCzg@mail.gmail.com>
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Date: Wed, 6 Sep 2017 07:25:00 +0900
Message-ID: <CACMwXoV25vDWoY2u=Yd0v3y6v7_Sw4r9h-pdT_24zx88TLx=kA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: michal@resin.io, yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 05 Sep 2017 22:25:02 -0000
Content-Type: multipart/alternative; boundary="001a11455a1ab60fc3055878b2ed"

--001a11455a1ab60fc3055878b2ed
Content-Type: text/plain; charset="UTF-8"

Sorry I am late.
I could not get time enough for this work.

I will send patches soon.

By the way, If the Michal's  work that Andrei pointed and my patches are
similar, please drop my patches.



2017-09-04 20:05 GMT+09:00 Andrei Gherzan <andrei@gherzan.ro>:

>
>
> On Fri, Aug 25, 2017 at 9:17 PM, Yusuke Mitsuki <
> mickey.happygolucky@gmail.com> wrote:
>
>> okay. I will try.
>>
>> 2017-08-25 17:51 GMT+09:00 Paul Barker <pbarker@toganlabs.com>:
>>
>>> On Thu, Aug 24, 2017 at 1:05 PM, Yusuke Mitsuki
>>> <mickey.happygolucky@gmail.com> wrote:
>>> > hciattach on raspberrypi0-wifi failed because BCM43430A1.hcd is not
>>> found.
>>> >
>>> > Paches that in order to use bluetooth with BCM43430 are not enabled.
>>> > Functions are only enabled with raspberrypi3 in bluez5_%.bbappend like
>>> as follows:
>>> >
>>> > - SRC_URI_append_raspberrypi3
>>> > - do_install_append_raspberrypi3()
>>> > - FILES_${PN}_append_raspberrypi3
>>> > - SYSTEMD_SERVICE_${PN}_append_raspberrypi3
>>> >
>>> > These should be enabled with raspberrypi0-wifi too.
>>> >
>>> > Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
>>> > ---
>>> >  recipes-connectivity/bluez5/bluez5_%.bbappend | 25
>>> +++++++++++++++++++++++++
>>> >  1 file changed, 25 insertions(+)
>>> >
>>> > diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend
>>> b/recipes-connectivity/bluez5/bluez5_%.bbappend
>>> > index 956d776..075dc2b 100644
>>> > --- a/recipes-connectivity/bluez5/bluez5_%.bbappend
>>> > +++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
>>> > @@ -24,3 +24,28 @@ FILES_${PN}_append_raspberrypi3 = " \
>>> >      "
>>> >
>>> >  SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " brcm43438.service"
>>> > +
>>> > +SRC_URI_append_raspberrypi0-wifi = " \
>>> > +    file://BCM43430A1.hcd \
>>> > +    file://0001-bcm43xx-Add-bcm43xx-3wire-variant.patch \
>>> > +    file://0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch
>>> \
>>> > +    file://0003-Increase-firmware-load-timeout-to-30s.patch \
>>> > +    file://0004-Move-the-43xx-firmware-into-lib-firmware.patch \
>>> > +    file://brcm43438.service \
>>> > +    "
>>> > +
>>> > +do_install_append_raspberrypi0-wifi() {
>>> > +    install -d ${D}/lib/firmware/brcm/
>>> > +    install -m 0644 ${WORKDIR}/BCM43430A1.hcd
>>> ${D}/lib/firmware/brcm/BCM43430A1.hcd
>>> > +
>>> > +    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true',
>>> 'false', d)}; then
>>> > +        install -d ${D}${systemd_unitdir}/system
>>> > +        install -m 0644 ${WORKDIR}/brcm43438.service
>>> ${D}${systemd_unitdir}/system
>>> > +    fi
>>> > +}
>>> > +
>>> > +FILES_${PN}_append_raspberrypi0-wifi = " \
>>> > +    /lib/firmware/brcm/BCM43430A1.hcd \
>>> > +    "
>>> > +
>>> > +SYSTEMD_SERVICE_${PN}_append_raspberrypi0-wifi = " brcm43438.service"
>>>
>>> I don't like the amount of duplication here. Could you define some
>>> common variables and use those in the appends? This will make it
>>> easier to change/upgrade in the future and avoid risk of the
>>> duplicates falling out of sync with each other.
>>>
>>> Eg.
>>>
>>>     RPI_WIFI_SOURCES = "...."
>>>
>>>     SRC_URI_append_raspberrypi3 = "${RPI_WIFI_SOURCES}"
>>>     SRC_URI_append_raspberrypi0-wifi = "${RPI_WIFI_SOURCES}"
>>>
>>>
> I know Michal worked on this not long ago. Michal, could you give us some
> hints here? Maybe backport the changes in resinOS?
>
>
> --
> Andrei Gherzan
>
>

--001a11455a1ab60fc3055878b2ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Sorry I am late.</div><div>I could not get time =
enough for this work.</div></div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">I will send patches soon.</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">By the way,=C2=A0If the Michal&#3=
9;s<span style=3D"font-size:14px">=C2=A0</span>=C2=A0work that Andrei point=
ed and my patches are similar, please drop my patches.</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">2017-09-04 20:05 GMT+09:00 Andrei=
 Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=
=3D"_blank">andrei@gherzan.ro</a>&gt;</span>:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><br>
<br><div class=3D"gmail_quote"><div><div class=3D"gmail-h5">On Fri, Aug 25,=
 2017 at 9:17 PM, Yusuke Mitsuki <span dir=3D"ltr">&lt;<a href=3D"mailto:mi=
ckey.happygolucky@gmail.com" target=3D"_blank">mickey.happygolucky@gmail.co=
m</a><wbr>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">okay. I will try.</div><div class=3D"gmail-m_-15637=
17419044950744gmail-HOEnZb"><div class=3D"gmail-m_-1563717419044950744gmail=
-h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-08-25 1=
7:51 GMT+09:00 Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:pbarker@=
toganlabs.com" target=3D"_blank">pbarker@toganlabs.com</a>&gt;</span>:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail-m_-156=
3717419044950744gmail-m_-3537983855779420049HOEnZb"><div class=3D"gmail-m_-=
1563717419044950744gmail-m_-3537983855779420049h5">On Thu, Aug 24, 2017 at =
1:05 PM, Yusuke Mitsuki<br>
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
<span class=3D"gmail-m_-1563717419044950744gmail-m_-3537983855779420049HOEn=
Zb"><font color=3D"#888888"><br></font></span></blockquote></div></div></di=
v></div></blockquote><div><br></div></div></div><div>I know Michal worked o=
n this not long ago. Michal, could you give us some hints here? Maybe backp=
ort the changes in resinOS?</div><div><br></div><div><br class=3D"gmail-m_-=
1563717419044950744gmail-Apple-interchange-newline">--</div><div>Andrei Ghe=
rzan=C2=A0</div></div><br></div></div>
</blockquote></div><br></div></div>

--001a11455a1ab60fc3055878b2ed--
