Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36F7EE00B48; Tue, 28 Nov 2017 07:00:30 -0800 (PST)
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
	*      [74.125.82.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f173.google.com (mail-ot0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7156BE00A9C
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 07:00:28 -0800 (PST)
Received: by mail-ot0-f173.google.com with SMTP id h9so108081oti.0
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 07:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hHdTcNYD19NxPvwF46M4hAOim3xBANDsi6hs8Tfgyz4=;
	b=H/1wkNijKNWeY9JlJH5zgXkUTcDz1BUMR71KZrC47plSKj08vGHf9j6rQesEKKUtLF
	ADaoXHEqeWOImjKxQw7AM+kYVcmLhEvtzO1/ZKwENYrIw49OXXtbhvzkgXjpxhDALAFk
	Z113nWbDOyoPKPTSdQzQnw7uk0iHKHM1PfgArHdtiTj8iT+z+tQyWQEL4+QUTHpRO4c1
	Iy1SKpl/fvF9vmXM+28UsS2jmTBW/MFKst0fPZdVYWIGud++d1+8VIaFmX7Rdgeun5OL
	odDRlttACzdyF4aBwM1nvMM1kvk6C+rveCo8Zl0mwbj/ElcJi4JRape20b/dEgOSuYHD
	9ywA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hHdTcNYD19NxPvwF46M4hAOim3xBANDsi6hs8Tfgyz4=;
	b=rppmWgaBPzAmROhT3NdZT0C5sk+FpJa/cU3OIPY5Pfm7o6MFrF3fxWR7VLXW0xtggM
	5AVv00vaHINT5O53iXOe+j3pUVDNXLtSeCImzdpkW+PKoVZyGWJqZigUVH518+qnziww
	dzQDRPQ2+0iono7j5QKqumjkRqNbkm63NIcgPdaycS/Ta6rmb9PxhOGOnTgLB0fU1rBI
	JVhNNzqSx3Tf1A9vxDiMOebvjkz0FyKLVMHOPV5RCTBb+2/qVDjXvV826zdrxzk6CZn5
	Rmk4ZM1gRoiJjuoeHgLmSEdaT4sfbpPPUHSB6oKqx5rBIWyGknTaoXJCjdM7GceVpypE
	ZiTQ==
X-Gm-Message-State: AJaThX7IIGxkF7kD1l0eQ0jXEOFa/XStdssXTHDh/DLgy16xzV4OmzWv
	GaPYLkaTAIZ9HmMN2oUy+ECj2zwK45fT0OOxZ6k=
X-Google-Smtp-Source: AGs4zMba/YyfsV/ML4wBapzmL+C/6wd7hVwIsalq09LiyFzJyqOngNSw4QHgciqBwLc21qRWCBfpjtCI1jOP1609f3E=
X-Received: by 10.157.62.181 with SMTP id b50mr29190060otc.160.1511881228353; 
	Tue, 28 Nov 2017 07:00:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Tue, 28 Nov 2017 07:00:27 -0800 (PST)
In-Reply-To: <CAOT_U5YEjzDEo=AUBdmkaQ0eLeV98YDuqrpxtOHCoZJqr1bvrQ@mail.gmail.com>
References: <CAE0QtjN1jE1ci2J1cMC8sQ2Pw70AOTc5bP8rQsrN2fBRpbhGxw@mail.gmail.com>
	<CAOT_U5YEjzDEo=AUBdmkaQ0eLeV98YDuqrpxtOHCoZJqr1bvrQ@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Tue, 28 Nov 2017 10:00:27 -0500
Message-ID: <CAE0QtjPT5dnRYa+tcHPCi+K=Ej0aNOuaTYXufzpEch-452P26A@mail.gmail.com>
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
X-List-Received-Date: Tue, 28 Nov 2017 15:00:30 -0000
Content-Type: multipart/alternative; boundary="001a11407a8c8f03f4055f0c4753"

--001a11407a8c8f03f4055f0c4753
Content-Type: text/plain; charset="UTF-8"

Thanks Alan, I follow your instruction and it works eventually!

But I got another question:

   - I am using official Raspberry-PI WIFI dongle (BCM43143)
   - I configure kernel so that driver "brcm80211" is enabled, however,
   WIFI is not working.
   - Then I add driver "ipw2x00", then WIFI works.
   - So my question, why do we need both "ipw2x00" and "brcm80211" for
   official Raspberry-PI WIFI dongle?
   - (Sometimes the WIFI dongle works if I add drivers: "brcm80211,
   iwlwifi, rt2x00", without "ipw2x00", so I am really confused!)

Thanks!







On Tue, Nov 21, 2017 at 12:04 PM, Alan Martinovic <alan.martinovic@senic.com
> wrote:

> Some hints on where to start at:
>
> > What should I do to add support for "usb WIFI dongle"
>
> Am guessing the dongle works with Raspbian or id gets detected
> once you plug it into a desktop Linux machine.
> Once you do that type:
>
>     dmesg
>
> And it will list the kernel modules related to your dongle.
> You can use those buzzwords to google for what does
> enabling the dongle actually translates to in terms of kernel config.
>
> After that (depending what linux you're using) figure out how to
> run menuconfig. It might be something like:
>
>     bitbake your-kernel-package-name -c menuconfig
>
> and try checking out the boxes that you found out
> might be relevant to your wifi dongle.
> Save it, build the image, and see if it got you somewhere.
>
>
>
>
>
>
>
> On Tue, Nov 21, 2017 at 5:32 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
> > I am confused on adding support for "usb WIFI dongle":
> > * My boards do NOT have WIFI capability, so I will add a "usb WIFI
> dongle".
> >   (I have two boards: Raspberri-PI-2, SIMATIC IOT-2020)
> > * Suppose we start from "core-image-sato"
> > * What should I do to add support for "usb WIFI dongle"
> > * After we build/boot the image, how can we verify and bring the WIFI up?
> >
> > Thanks!
> > Jerry
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a11407a8c8f03f4055f0c4753
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Alan, I follow your instruction and it works eventu=
ally!<div><span class=3D"gmail-scrollOnMaxWidth"><p>But I got another quest=
ion:</p><ul><li>I am using official Raspberry-PI WIFI dongle (BCM43143)</li=
><li>I configure kernel so that driver &quot;brcm80211&quot; is enabled, ho=
wever, WIFI is not working.</li><li>Then I add driver &quot;ipw2x00&quot;, =
then WIFI works.</li><li>So my question, why do we need both &quot;ipw2x00&=
quot; and &quot;brcm80211&quot; for official Raspberry-PI WIFI dongle?</li>=
<li>(Sometimes the WIFI dongle works if I add drivers: &quot;brcm80211, iwl=
wifi, rt2x00&quot;, without &quot;ipw2x00&quot;, so I am really confused!)<=
/li></ul><p>Thanks!<br></p><p><br></p><p><br></p><p><br></p></span><div><br=
></div><div><br></div></div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Tue, Nov 21, 2017 at 12:04 PM, Alan Martinovic <span di=
r=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank=
">alan.martinovic@senic.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">Some hints on where to start at:<br>
<span class=3D""><br>
&gt; What should I do to add support for &quot;usb WIFI dongle&quot;<br>
<br>
</span>Am guessing the dongle works with Raspbian or id gets detected<br>
once you plug it into a desktop Linux machine.<br>
Once you do that type:<br>
<br>
=C2=A0 =C2=A0 dmesg<br>
<br>
And it will list the kernel modules related to your dongle.<br>
You can use those buzzwords to google for what does<br>
enabling the dongle actually translates to in terms of kernel config.<br>
<br>
After that (depending what linux you&#39;re using) figure out how to<br>
run menuconfig. It might be something like:<br>
<br>
=C2=A0 =C2=A0 bitbake your-kernel-package-name -c menuconfig<br>
<br>
and try checking out the boxes that you found out<br>
might be relevant to your wifi dongle.<br>
Save it, build the image, and see if it got you somewhere.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
<br>
<br>
<br>
<br>
On Tue, Nov 21, 2017 at 5:32 PM, Jerry Lian &lt;<a href=3D"mailto:jerry.lia=
n@gmail.com">jerry.lian@gmail.com</a>&gt; wrote:<br>
&gt; I am confused on adding support for &quot;usb WIFI dongle&quot;:<br>
&gt; * My boards do NOT have WIFI capability, so I will add a &quot;usb WIF=
I dongle&quot;.<br>
&gt;=C2=A0 =C2=A0(I have two boards: Raspberri-PI-2, SIMATIC IOT-2020)<br>
&gt; * Suppose we start from &quot;core-image-sato&quot;<br>
&gt; * What should I do to add support for &quot;usb WIFI dongle&quot;<br>
&gt; * After we build/boot the image, how can we verify and bring the WIFI =
up?<br>
&gt;<br>
&gt; Thanks!<br>
&gt; Jerry<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a11407a8c8f03f4055f0c4753--
