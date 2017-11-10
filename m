Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D1EEE00D14; Fri, 10 Nov 2017 02:07:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f176.google.com (mail-ot0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80ABDE00C59
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 02:07:50 -0800 (PST)
Received: by mail-ot0-f176.google.com with SMTP id u10so401381otc.12
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 02:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=5j82ErRsK6pwIxCR8ddiaRsum2WfMpT9MTZPE5HZGX4=;
	b=dqXqe6mO0+DI0/4iU1YaBWYQ4cMHjRLuPtrTQQuVOBv+qH8jbC5aXmfiRXQBz8cU43
	+AG+GPhytNuo72adLQCDvuHSape3vQ9QGzPjbPiWj7ZhymDpaa+8HaIe+MgwYzo6M1nr
	7mYP2Vj0Dum3XzLM27k6tzwC/HWfel3Ad/JybQmFY0ZMEoMRGpAxVa18NRhS4xyJ/cMB
	FAS/5Gpwc+bT5SiwlKPWeVVN6ydILFWG4wG5TT3PW6xJ/U6SZOJTevn9XtKj3ki8Ljsi
	4gA2L1zsjDASbUJn0gmb8i0vTMEriTJ8JXSB7coCz5ZwvFXO97+S9y/Kv8kKQtT9q3FA
	QSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5j82ErRsK6pwIxCR8ddiaRsum2WfMpT9MTZPE5HZGX4=;
	b=A0RKeDmppA7iA6oeG3h0g/swKtXcC7qlLcTr7txPyt9oeWMI9dgA97lriVacg3PQTq
	BzN6ftdg98lDxcN3nxVRE1JFhQHWTZRU8wkxIpe2Fyi2nrsU8cNGQdoekUqwcmYB/44Q
	ODo+bK356TOzKu7kHjv2PnKh5JxO7Qs7s4dS7oeaCcMUvASzOfs7fn0kCQ7MYYHn57nr
	rReBk5KX6qWgoQhmKIIdh+59vpkmX3vAcFXVYO3orJXiWYepx3Sx+RQzem/gauas5q8z
	r3fwmFvpVGBAiRva5AJx8CIpefHZenWo/6qssnbaU19xuwntL2NlllkCyKyud8OA8FEP
	0Qzw==
X-Gm-Message-State: AJaThX4pk6l0DGS/LJ7eDF2Bj3Kwfyj7HflED4IFlAsDtN3rNCENQqcQ
	j027zWxvR+m1Ib0OnNa5JJHjOR9utfMogmR7xxCrJrcJ
X-Google-Smtp-Source: AGs4zMbmwuarmerJ7YP5G1XB4HlaylspAqknh7D1IBd3gABvTg8lM2tPHON4epMHk2PvNuWOj2H+73Yc0gl0ZHl5U2k=
X-Received: by 10.157.65.204 with SMTP id v12mr2318509oti.365.1510308469505;
	Fri, 10 Nov 2017 02:07:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Fri, 10 Nov 2017 02:07:49 -0800 (PST)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 10 Nov 2017 11:07:49 +0100
Message-ID: <CAOT_U5ZjfZh3v387oXMqagiMdUEgzCAeDjTj-VnL6t3qHMDhbg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Using devtool for adding a systemd service
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
X-List-Received-Date: Fri, 10 Nov 2017 10:07:51 -0000
Content-Type: multipart/alternative; boundary="94eb2c1bfce2d39801055d9e17f2"

--94eb2c1bfce2d39801055d9e17f2
Content-Type: text/plain; charset="UTF-8"

Hi,
I need to add a systemd service that needs no additional sources
compiled, but just needs an available command executed at boot.

I've created a basis for the recipe in my layer:

nrf52-usb-systemd/
|-- files
|   `-- btattach-nrf-acm.service
`-- nrf52-usb-systemd.bb


together with a recipe template (nrf52-usb-systemd.bb)
for which I don't know if works yet.

  SUMMARY = "Writes patterns to the fb device"
  LICENSE = "MIT"
  LIC_FILES_CHKSUM =
"file://COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

  inherit systemd

  REQUIRED_DISTRO_FEATURES= "systemd"

  SRC_URI = "file://btattach-nrf-acm.service"

  do_install () {

      install -m 0644 ${WORKDIR}/btattach-nrf-acm.service
${D}${sysconfdir}/systemd/system
   }

  NATIVE_SYSTEMD_SUPPORT = "1"
  SYSTEMD_PACKAGES = "${PN}"
  SYSTEMD_SERVICE_${PN} = "fb-draw.service"


I'm not sure I got the install command right and
if the service file is making it way to the proper location.

Instead of building the whole image, flashing and checking
it out, I would like to test how devtool could help here.

I execute:

devtool build nrf52-usb-systemd

this results in a creation of a workspace with the sources files.
What I am not seeing is a creation of a device sysroot which would
show me that the do_install was correctly written.

Given that the device sysroot directory on the host would be called
"sysroot" was hoping to be able do confirm that the following took
place

${D}${sysconfdir}/systemd/system -> .sysroot/etc/ssytemd/system

and confirming there is a

.sysroot/etc/ssytemd/system/btattach-nrf-acm.service


Is this possible with devtool, or am I misinterpreting
what it's purpose is?

--94eb2c1bfce2d39801055d9e17f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I need to add a systemd service that needs no addi=
tional sources</div><div>compiled, but just needs an available command exec=
uted at boot.=C2=A0</div><div><br></div><div>I&#39;ve created a basis for t=
he recipe in my layer:</div><div><br></div><div><div>nrf52-usb-systemd/</di=
v><div>|-- files</div><div>|=C2=A0 =C2=A0`-- btattach-nrf-acm.service</div>=
<div>`-- <a href=3D"http://nrf52-usb-systemd.bb">nrf52-usb-systemd.bb</a></=
div></div><div><br></div><div><br></div><div>together with a recipe templat=
e (<a href=3D"http://nrf52-usb-systemd.bb">nrf52-usb-systemd.bb</a>)</div><=
div> for which I don&#39;t know if works yet.</div><div><br></div><div><div=
>=C2=A0 SUMMARY =3D &quot;Writes patterns to the fb device&quot;</div><div>=
=C2=A0 LICENSE =3D &quot;MIT&quot;</div><div>=C2=A0 LIC_FILES_CHKSUM =3D &q=
uot;file://COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420&quot;</div><d=
iv><br></div><div>=C2=A0 inherit systemd</div><div><br></div><div>=C2=A0 RE=
QUIRED_DISTRO_FEATURES=3D &quot;systemd&quot;</div><div><br></div><div>=C2=
=A0 SRC_URI =3D &quot;file://btattach-nrf-acm.service&quot;</div><div><br><=
/div><div>=C2=A0 do_install () {<br></div><div><br></div><div>=C2=A0 =C2=A0=
 =C2=A0 install -m 0644 ${WORKDIR}/btattach-nrf-acm.service ${D}${sysconfdi=
r}/systemd/system</div><div>=C2=A0 =C2=A0}</div><div><br></div><div>=C2=A0 =
NATIVE_SYSTEMD_SUPPORT =3D &quot;1&quot;</div><div>=C2=A0 SYSTEMD_PACKAGES =
=3D &quot;${PN}&quot;</div><div>=C2=A0 SYSTEMD_SERVICE_${PN} =3D &quot;fb-d=
raw.service&quot;</div></div><div><br></div><div><br></div><div>I&#39;m not=
 sure I got the install command right and</div><div>if the service file is =
making it way to the proper location.</div><div><br></div><div>Instead of b=
uilding the whole image, flashing and checking=C2=A0</div><div>it out, I wo=
uld like to test how devtool could help here.</div><div><br></div><div>I ex=
ecute:</div><div><br></div><div>devtool build nrf52-usb-systemd<br></div><d=
iv><br></div><div>this results in a creation of a workspace with the source=
s files.</div><div>What I am not seeing is a creation of a device sysroot w=
hich would</div><div>show me that the do_install was correctly written.<br>=
</div><div><br></div><div>Given that the device sysroot directory on the ho=
st would be called</div><div>&quot;sysroot&quot; was hoping to be able do c=
onfirm that the following took=C2=A0</div><div>place</div><div><br></div><d=
iv>${D}${sysconfdir}/systemd/system -&gt; .sysroot/etc/ssytemd/system<br></=
div><div><br></div><div>and confirming there is a=C2=A0</div><div><br></div=
><div>.sysroot/etc/ssytemd/system/btattach-nrf-acm.service</div><div><br></=
div><div><br></div><div>Is this possible with devtool, or am I misinterpret=
ing=C2=A0</div><div>what it&#39;s purpose is?</div><div><br></div></div>

--94eb2c1bfce2d39801055d9e17f2--
