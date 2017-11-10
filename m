Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA1F8E00CFF; Fri, 10 Nov 2017 07:44:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f172.google.com (mail-ot0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC3B2E00CEC
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 07:44:05 -0800 (PST)
Received: by mail-ot0-f172.google.com with SMTP id 15so8472293otj.7
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 07:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dn7bweOjHBM5a6uj79LP7WlXKTbIX4X7wntGbCzFyIQ=;
	b=hxa3bhgr0CNxSjmhNAOuu2dR43LNR49+Ik4BqIhdCbKEuAb41Mhf/ZZDTVQO2kow4H
	QKYFNQElrF56lgfxB45uDz9ulqg7YSxCQqC5k1V9MjIATF5yOQX/xi5BaNXYqrGsnfvH
	pT8dGQ3OuP/Osj99ZaEQxczfMOwwucr0Q4P7/wGv8nzmuV2o+g/5K6bajY28hd1mvFzn
	zLs+YeRsG1l71I/PXWCT32qw+I+9OHrEVb0dQ0oLqMN4gzhPnTO03yf3jEjOaxrn/qj7
	1EhKg9/2STvOraV6OrlrFurJSFCyUseudBnnlmA5ZdLtX52efYGFHnEgXopb6Lca6jLj
	rfhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dn7bweOjHBM5a6uj79LP7WlXKTbIX4X7wntGbCzFyIQ=;
	b=MlHzpNGzXbdYyf3jQGpUtnE9dM42GBswoiIv/bcjA72G8F5DcN7LT9xztrzdbwKiPD
	vtdC98KhtRIMf/jrZ/9eNwm7BSOAB8Yew+ZKU5hCJ7bpaVHGBCQ9CDreAJn0aXggqXic
	DlAFKyVieKDWsMg65ZRo5Q6CjNO+NHbiQ5D2xBOjUG5e6eCDptnYhIE0dqDBZ5ZipN+k
	qdsmkEWBxAuwPMexlfeg9kv2D/xPVB5N0fDWe2gZLyy8TxNrLYComQn/l6m9tgnRmg/O
	DBDBXGGGqzytNJqpIqlf7uACxbwY4BH967ad9XUXBHrI6SKb0YtbggAMxoQ125+tUUar
	hBBQ==
X-Gm-Message-State: AJaThX6ecSdhV/KjTix+w+ScyqeecBKqH9zBs4gCzR3I8uKGqwTRNrfb
	4FtJ6Q68W6JEAKWN3dp1ML4xZFDF9PVqyGLn3at0HQ==
X-Google-Smtp-Source: AGs4zMZmwzu4WfLrFLRZtxGODwZwXO2yw2vfACPs/94E+tpPs3lmfbPPLAtdRquJubLWmO6PIstBFFXctw69Ne/QrEE=
X-Received: by 10.157.59.180 with SMTP id k49mr488735otc.288.1510328644978;
	Fri, 10 Nov 2017 07:44:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Fri, 10 Nov 2017 07:44:04 -0800 (PST)
In-Reply-To: <1510327141.5010.7.camel@collabora.co.uk>
References: <CAOT_U5ZjfZh3v387oXMqagiMdUEgzCAeDjTj-VnL6t3qHMDhbg@mail.gmail.com>
	<1510327141.5010.7.camel@collabora.co.uk>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 10 Nov 2017 16:44:04 +0100
Message-ID: <CAOT_U5bto3xPZ0ja8iL8CkX7UvR-nrA0zSf75=cs1KSfcAPurQ@mail.gmail.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Using devtool for adding a systemd service
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
X-List-Received-Date: Fri, 10 Nov 2017 15:44:06 -0000
Content-Type: multipart/alternative; boundary="001a11490a8260f8dd055da2ca26"

--001a11490a8260f8dd055da2ca26
Content-Type: text/plain; charset="UTF-8"

Thanks,
I made a workaround by looking for a sysroot in the tmp-glibc
(not sure why the -glibc part, seems to be called tmp in poky).

Seems like the "sysroot" I was looking for is called rootfs.
So I located it with:

find tmp-glibc -iname rootfs


On Fri, Nov 10, 2017 at 4:19 PM, Fabien Lahoudere <
fabien.lahoudere@collabora.co.uk> wrote:

> Hi
>
> I don't think that devtool will help you in this case.
> IIUC, what you need is to check if your file is populated in the package?
>
> You can verify this by checking package content after the build.
> For example :
>         dpkg-deb -c <package-path>
> will show you all files installed by the package.
>
> I think rpm and opkg provide similar mechanism to extract packages
> contents.
>
> You can also mount your rootfs partition using loop devices.
>
> On Fri, 2017-11-10 at 11:07 +0100, Alan Martinovic wrote:
> > Hi,
> > I need to add a systemd service that needs no additional sources
> > compiled, but just needs an available command executed at boot.
> >
> > I've created a basis for the recipe in my layer:
> >
> > nrf52-usb-systemd/
> > |-- files
> > |   `-- btattach-nrf-acm.service
> > `-- nrf52-usb-systemd.bb
> >
> >
> > together with a recipe template (nrf52-usb-systemd.bb)
> > for which I don't know if works yet.
> >
> >   SUMMARY = "Writes patterns to the fb device"
> >   LICENSE = "MIT"
> >   LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=
> 3da9cfbcb788c80a0384361b4de20420"
> >
> >   inherit systemd
> >
> >   REQUIRED_DISTRO_FEATURES= "systemd"
> >
> >   SRC_URI = "file://btattach-nrf-acm.service"
> >
> >   do_install () {
> >
> >       install -m 0644 ${WORKDIR}/btattach-nrf-acm.service
> ${D}${sysconfdir}/systemd/system
> >    }
> >
> >   NATIVE_SYSTEMD_SUPPORT = "1"
> >   SYSTEMD_PACKAGES = "${PN}"
> >   SYSTEMD_SERVICE_${PN} = "fb-draw.service"
> >
> >
> > I'm not sure I got the install command right and
> > if the service file is making it way to the proper location.
> >
> > Instead of building the whole image, flashing and checking
> > it out, I would like to test how devtool could help here.
> >
> > I execute:
> >
> > devtool build nrf52-usb-systemd
> >
> > this results in a creation of a workspace with the sources files.
> > What I am not seeing is a creation of a device sysroot which would
> > show me that the do_install was correctly written.
> >
> > Given that the device sysroot directory on the host would be called
> > "sysroot" was hoping to be able do confirm that the following took
> > place
> >
> > ${D}${sysconfdir}/systemd/system -> .sysroot/etc/ssytemd/system
> >
> > and confirming there is a
> >
> > .sysroot/etc/ssytemd/system/btattach-nrf-acm.service
> >
> >
> > Is this possible with devtool, or am I misinterpreting
> > what it's purpose is?
> >
> --
> Fabien
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11490a8260f8dd055da2ca26
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks,<div>I made a workaround by looking for a sysroot i=
n the tmp-glibc=C2=A0</div><div>(not sure why the -glibc part, seems to be =
called tmp in poky).</div><div><br></div><div>Seems like the &quot;sysroot&=
quot; I was looking for is called rootfs.</div><div>So I located it with:</=
div><div><br></div><div>find tmp-glibc=C2=A0-iname rootfs<br></div><div><br=
></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On F=
ri, Nov 10, 2017 at 4:19 PM, Fabien Lahoudere <span dir=3D"ltr">&lt;<a href=
=3D"mailto:fabien.lahoudere@collabora.co.uk" target=3D"_blank">fabien.lahou=
dere@collabora.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">Hi<br>
<br>
I don&#39;t think that devtool will help you in this case.<br>
IIUC, what you need is to check if your file is populated in the package?<b=
r>
<br>
You can verify this by checking package content after the build.<br>
For example :<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dpkg-deb -c &lt;package-path&gt;<br>
will show you all files installed by the package.<br>
<br>
I think rpm and opkg provide similar mechanism to extract packages contents=
.<br>
<br>
You can also mount your rootfs partition using loop devices.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Fri, 2017-11-10 at 11:07 +0100, Alan Martinovic wrote:<br>
&gt; Hi,<br>
&gt; I need to add a systemd service that needs no additional sources<br>
&gt; compiled, but just needs an available command executed at boot.=C2=A0<=
br>
&gt;<br>
&gt; I&#39;ve created a basis for the recipe in my layer:<br>
&gt;<br>
&gt; nrf52-usb-systemd/<br>
&gt; |-- files<br>
&gt; |=C2=A0 =C2=A0`-- btattach-nrf-acm.service<br>
&gt; `-- <a href=3D"http://nrf52-usb-systemd.bb" rel=3D"noreferrer" target=
=3D"_blank">nrf52-usb-systemd.bb</a><br>
&gt;<br>
&gt;<br>
&gt; together with a recipe template (<a href=3D"http://nrf52-usb-systemd.b=
b" rel=3D"noreferrer" target=3D"_blank">nrf52-usb-systemd.bb</a>)<br>
&gt; for which I don&#39;t know if works yet.<br>
&gt;<br>
&gt; =C2=A0 SUMMARY =3D &quot;Writes patterns to the fb device&quot;<br>
&gt; =C2=A0 LICENSE =3D &quot;MIT&quot;<br>
&gt; =C2=A0 LIC_FILES_CHKSUM =3D &quot;file://COPYING.MIT;md5=3D<wbr>3da9cf=
bcb788c80a0384361b4de204<wbr>20&quot;<br>
&gt;<br>
&gt; =C2=A0 inherit systemd<br>
&gt;<br>
&gt; =C2=A0 REQUIRED_DISTRO_FEATURES=3D &quot;systemd&quot;<br>
&gt;<br>
&gt; =C2=A0 SRC_URI =3D &quot;file://btattach-nrf-acm.<wbr>service&quot;<br=
>
&gt;<br>
&gt; =C2=A0 do_install () {<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/btattach-nrf-acm.<wbr>=
service ${D}${sysconfdir}/systemd/<wbr>system<br>
&gt; =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; =C2=A0 NATIVE_SYSTEMD_SUPPORT =3D &quot;1&quot;<br>
&gt; =C2=A0 SYSTEMD_PACKAGES =3D &quot;${PN}&quot;<br>
&gt; =C2=A0 SYSTEMD_SERVICE_${PN} =3D &quot;fb-draw.service&quot;<br>
&gt;<br>
&gt;<br>
&gt; I&#39;m not sure I got the install command right and<br>
&gt; if the service file is making it way to the proper location.<br>
&gt;<br>
&gt; Instead of building the whole image, flashing and checking=C2=A0<br>
&gt; it out, I would like to test how devtool could help here.<br>
&gt;<br>
&gt; I execute:<br>
&gt;<br>
&gt; devtool build nrf52-usb-systemd<br>
&gt;<br>
&gt; this results in a creation of a workspace with the sources files.<br>
&gt; What I am not seeing is a creation of a device sysroot which would<br>
&gt; show me that the do_install was correctly written.<br>
&gt;<br>
&gt; Given that the device sysroot directory on the host would be called<br=
>
&gt; &quot;sysroot&quot; was hoping to be able do confirm that the followin=
g took=C2=A0<br>
&gt; place<br>
&gt;<br>
&gt; ${D}${sysconfdir}/systemd/<wbr>system -&gt; .sysroot/etc/ssytemd/syste=
m<br>
&gt;<br>
&gt; and confirming there is a=C2=A0<br>
&gt;<br>
&gt; .sysroot/etc/ssytemd/system/<wbr>btattach-nrf-acm.service<br>
&gt;<br>
&gt;<br>
&gt; Is this possible with devtool, or am I misinterpreting=C2=A0<br>
&gt; what it&#39;s purpose is?<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Fabien<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a11490a8260f8dd055da2ca26--
