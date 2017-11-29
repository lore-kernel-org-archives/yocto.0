Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D4BAE00C97; Wed, 29 Nov 2017 08:00:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f174.google.com (mail-ot0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0055CE00C78
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 08:00:22 -0800 (PST)
Received: by mail-ot0-f174.google.com with SMTP id b54so3412286otd.8
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 08:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jm/5y/4ZiTlKaakBpGEfi1DVfBpRwt7sBfSZFH4O8cY=;
	b=HZb3zFKPrO3prtiCYi3HAlGal/EyA8SzRFAaAMBb/VJkIov6qqOzSC88AOvK9J777L
	mFkSrwfIrHngmFZiNUu9kI2IP7wsBuoeDRoP9X/eZQCFAT5idetb6w0+MCMfdhYG+oVi
	J+avpWb4N35BfqeZ9NDy9ZJhVVOHh2f8S2yVq3esMWT+scbDK6npShUPHHoWrykeW7Ve
	i3b6mfCJfCPjvazhnCAiU5u+4QmZOEQUWMAaeDRmn9gi1qHWPdxSQ9bY2OGa4cYkPnHg
	Rb1xT3I/b743e7EW8tCxGKlLa9Uap6pHMJBbjtBJ/Cy9jQvgCnWdWMYDrA/i6pVs5aF5
	yMKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jm/5y/4ZiTlKaakBpGEfi1DVfBpRwt7sBfSZFH4O8cY=;
	b=NqRJM6YcUpH6bqVvq330on1kD/uk/SOIcimSfnRyj/p9aobkNn2UgMRjv2x+KJNJWv
	bvKb9rXnM1jRGIz5F+KkVbwz6lyJW9UdmM+Z3vCnDzN5ug4IPy4gO9p2jKX3VaG1vYh5
	ooYExH1SdEPajRNVl3DlnhNlQQxzeOAalzLlWSJ5PeMQSv9gKi6Cy9c9FqggM6kP/TF3
	W68iRyoSz16Az7gOHf+6fAoLW9TRGiEJb3t38xGdGy52PAk6spK6FIZNoi7tM8iqxDvo
	DQAR/D6ELokp3GQeh0/XD+w0eRdqS9f2I16y6vinaMuspxKieqxiRRCry31f1lGaXTuC
	9HDA==
X-Gm-Message-State: AJaThX42xxi0xUNNHJknnuAPh+EAh7iD1sewOjwBE0evszWL8rmvVTtZ
	um4EmqHg5IxNpZlPtOqoj36z1Drk06I/9t7ThAE=
X-Google-Smtp-Source: AGs4zMZ0T5yrge68OBR++17B9KNdBI9OfipUqePGNROqeMnJyqiMHhchX7OWD/x7eO4uDtUNb5qJmc2m1B1k18O/7e4=
X-Received: by 10.157.62.181 with SMTP id b50mr2799172otc.160.1511971221924;
	Wed, 29 Nov 2017 08:00:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 29 Nov 2017 08:00:21 -0800 (PST)
In-Reply-To: <CAOT_U5bW-F3b8JjfVru8evSF0M3SMEz7ZsVUqrpk-qijZoLS8g@mail.gmail.com>
References: <CAE0QtjN1jE1ci2J1cMC8sQ2Pw70AOTc5bP8rQsrN2fBRpbhGxw@mail.gmail.com>
	<CAOT_U5YEjzDEo=AUBdmkaQ0eLeV98YDuqrpxtOHCoZJqr1bvrQ@mail.gmail.com>
	<CAE0QtjPT5dnRYa+tcHPCi+K=Ej0aNOuaTYXufzpEch-452P26A@mail.gmail.com>
	<CAOT_U5bW-F3b8JjfVru8evSF0M3SMEz7ZsVUqrpk-qijZoLS8g@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 29 Nov 2017 11:00:21 -0500
Message-ID: <CAE0QtjOT03oCgu-s4=tA-c4ZBnwWZN+cqaa8AtdnhFRAL83WBw@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to add support for "usb WIFI dongle"?
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
X-List-Received-Date: Wed, 29 Nov 2017 16:00:24 -0000
Content-Type: multipart/alternative; boundary="001a11407a8c97f139055f213b0c"

--001a11407a8c97f139055f213b0c
Content-Type: text/plain; charset="UTF-8"

How can we tell whether "ipw2x00" is driver or firmware?
* I check wiki:
https://en.wikipedia.org/wiki/Comparison_of_open-source_wireless_drivers
* It seems that "ipw2x00" IS a driver, right?

* (And logically, we should not be required to select firmware, right?)
* (I mean: logically, if we select the driver, yocoto should select
corresponding firmware automatically for us, right?)

Thanks!






On Tue, Nov 28, 2017 at 1:18 PM, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> I can't confirm, but it just might be that "ipw2x00" is actually a
> firmware.
> (Haven't seen a firware specified explicetly in the menu config before).
>
> Ref: https://wiki.debian.org/brcm80211
>
> I recently had a question that might share some light on the firmware
> - driver relation:
>  (given that it really is firmware you check in the menuconfig)
>
> https://electronics.stackexchange.com/questions/
> 342118/design-decision-for-dynamic-firmware-loading
>
>
> On Tue, Nov 28, 2017 at 4:00 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
> > Thanks Alan, I follow your instruction and it works eventually!
> >
> > But I got another question:
> >
> > I am using official Raspberry-PI WIFI dongle (BCM43143)
> > I configure kernel so that driver "brcm80211" is enabled, however, WIFI
> is
> > not working.
> > Then I add driver "ipw2x00", then WIFI works.
> > So my question, why do we need both "ipw2x00" and "brcm80211" for
> official
> > Raspberry-PI WIFI dongle?
> > (Sometimes the WIFI dongle works if I add drivers: "brcm80211, iwlwifi,
> > rt2x00", without "ipw2x00", so I am really confused!)
> >
> > Thanks!
> >
> >
> >
> >
> >
> >
> >
> > On Tue, Nov 21, 2017 at 12:04 PM, Alan Martinovic
> > <alan.martinovic@senic.com> wrote:
> >>
> >> Some hints on where to start at:
> >>
> >> > What should I do to add support for "usb WIFI dongle"
> >>
> >> Am guessing the dongle works with Raspbian or id gets detected
> >> once you plug it into a desktop Linux machine.
> >> Once you do that type:
> >>
> >>     dmesg
> >>
> >> And it will list the kernel modules related to your dongle.
> >> You can use those buzzwords to google for what does
> >> enabling the dongle actually translates to in terms of kernel config.
> >>
> >> After that (depending what linux you're using) figure out how to
> >> run menuconfig. It might be something like:
> >>
> >>     bitbake your-kernel-package-name -c menuconfig
> >>
> >> and try checking out the boxes that you found out
> >> might be relevant to your wifi dongle.
> >> Save it, build the image, and see if it got you somewhere.
> >>
> >>
> >>
> >>
> >>
> >>
> >>
> >> On Tue, Nov 21, 2017 at 5:32 PM, Jerry Lian <jerry.lian@gmail.com>
> wrote:
> >> > I am confused on adding support for "usb WIFI dongle":
> >> > * My boards do NOT have WIFI capability, so I will add a "usb WIFI
> >> > dongle".
> >> >   (I have two boards: Raspberri-PI-2, SIMATIC IOT-2020)
> >> > * Suppose we start from "core-image-sato"
> >> > * What should I do to add support for "usb WIFI dongle"
> >> > * After we build/boot the image, how can we verify and bring the WIFI
> >> > up?
> >> >
> >> > Thanks!
> >> > Jerry
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >
> >
>

--001a11407a8c97f139055f213b0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How can we tell whether &quot;ipw2x00&quot; is driver or f=
irmware?<div>* I check wiki:=C2=A0<a href=3D"https://en.wikipedia.org/wiki/=
Comparison_of_open-source_wireless_drivers">https://en.wikipedia.org/wiki/C=
omparison_of_open-source_wireless_drivers</a></div><div>* It seems that &qu=
ot;ipw2x00&quot; IS a driver, right?</div><div><br></div><div>* (And logica=
lly, we should not be required to select firmware, right?)</div><div>* (I m=
ean: logically, if we select the driver, yocoto should select corresponding=
 firmware automatically for us, right?)</div><div><br></div><div>Thanks!</d=
iv><div><br></div><div><br></div><div><br></div><div><br></div><div><br></d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, =
Nov 28, 2017 at 1:18 PM, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:alan.martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I can&#39;t confi=
rm, but it just might be that &quot;ipw2x00&quot; is actually a firmware.<b=
r>
(Haven&#39;t seen a firware specified explicetly in the menu config before)=
.<br>
<br>
Ref: <a href=3D"https://wiki.debian.org/brcm80211" rel=3D"noreferrer" targe=
t=3D"_blank">https://wiki.debian.org/<wbr>brcm80211</a><br>
<br>
I recently had a question that might share some light on the firmware<br>
- driver relation:<br>
=C2=A0(given that it really is firmware you check in the menuconfig)<br>
<br>
<a href=3D"https://electronics.stackexchange.com/questions/342118/design-de=
cision-for-dynamic-firmware-loading" rel=3D"noreferrer" target=3D"_blank">h=
ttps://electronics.<wbr>stackexchange.com/questions/<wbr>342118/design-deci=
sion-for-<wbr>dynamic-firmware-loading</a><br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On Tue, Nov 28, 2017 at 4:00 PM, Jerry Lian &lt;<a href=3D"mailto:jerry.lia=
n@gmail.com">jerry.lian@gmail.com</a>&gt; wrote:<br>
&gt; Thanks Alan, I follow your instruction and it works eventually!<br>
&gt;<br>
&gt; But I got another question:<br>
&gt;<br>
&gt; I am using official Raspberry-PI WIFI dongle (BCM43143)<br>
&gt; I configure kernel so that driver &quot;brcm80211&quot; is enabled, ho=
wever, WIFI is<br>
&gt; not working.<br>
&gt; Then I add driver &quot;ipw2x00&quot;, then WIFI works.<br>
&gt; So my question, why do we need both &quot;ipw2x00&quot; and &quot;brcm=
80211&quot; for official<br>
&gt; Raspberry-PI WIFI dongle?<br>
&gt; (Sometimes the WIFI dongle works if I add drivers: &quot;brcm80211, iw=
lwifi,<br>
&gt; rt2x00&quot;, without &quot;ipw2x00&quot;, so I am really confused!)<b=
r>
&gt;<br>
&gt; Thanks!<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Nov 21, 2017 at 12:04 PM, Alan Martinovic<br>
&gt; &lt;<a href=3D"mailto:alan.martinovic@senic.com">alan.martinovic@senic=
.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Some hints on where to start at:<br>
&gt;&gt;<br>
&gt;&gt; &gt; What should I do to add support for &quot;usb WIFI dongle&quo=
t;<br>
&gt;&gt;<br>
&gt;&gt; Am guessing the dongle works with Raspbian or id gets detected<br>
&gt;&gt; once you plug it into a desktop Linux machine.<br>
&gt;&gt; Once you do that type:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0dmesg<br>
&gt;&gt;<br>
&gt;&gt; And it will list the kernel modules related to your dongle.<br>
&gt;&gt; You can use those buzzwords to google for what does<br>
&gt;&gt; enabling the dongle actually translates to in terms of kernel conf=
ig.<br>
&gt;&gt;<br>
&gt;&gt; After that (depending what linux you&#39;re using) figure out how =
to<br>
&gt;&gt; run menuconfig. It might be something like:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0bitbake your-kernel-package-name -c menuconfig<=
br>
&gt;&gt;<br>
&gt;&gt; and try checking out the boxes that you found out<br>
&gt;&gt; might be relevant to your wifi dongle.<br>
&gt;&gt; Save it, build the image, and see if it got you somewhere.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Nov 21, 2017 at 5:32 PM, Jerry Lian &lt;<a href=3D"mailto:=
jerry.lian@gmail.com">jerry.lian@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; I am confused on adding support for &quot;usb WIFI dongle&quo=
t;:<br>
&gt;&gt; &gt; * My boards do NOT have WIFI capability, so I will add a &quo=
t;usb WIFI<br>
&gt;&gt; &gt; dongle&quot;.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0(I have two boards: Raspberri-PI-2, SIMATIC IOT-2=
020)<br>
&gt;&gt; &gt; * Suppose we start from &quot;core-image-sato&quot;<br>
&gt;&gt; &gt; * What should I do to add support for &quot;usb WIFI dongle&q=
uot;<br>
&gt;&gt; &gt; * After we build/boot the image, how can we verify and bring =
the WIFI<br>
&gt;&gt; &gt; up?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks!<br>
&gt;&gt; &gt; Jerry<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; ______________________________<wbr>_________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a11407a8c97f139055f213b0c--
