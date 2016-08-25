Return-Path: <christoph@macht-blau.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E4EFE01090; Thu, 25 Aug 2016 09:55:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA19DE0108D
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 09:55:21 -0700 (PDT)
Received: by mail-qk0-f169.google.com with SMTP id l2so51685702qkf.3
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 09:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=macht-blau-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=xHInS88wRdf4Jdp22Reqe8us06pV4fuOlt1Txx9HFcE=;
	b=zd0BRG8QP01ETZdTGlaYEzUQHmOuC78sZJJIa+TDa53trJkuxD3hJRugtJ99H/QyTN
	jHjCLGvCELETYl8wToWz5wSvoPFlXbQbDlfsXTWRgl7qogeq3QA/mLAAgSCCKL6GRSK/
	FWo51Oyk64iR4Kp4h6HxQkh8jWslGg0AJJiBocwaWvyHokvXed/kAEXSO9hy6NrIcHuZ
	I3PAGBAh0IjSxjV5Q2SGAi4svZ7523tdvrdeeOQeypXPmo+dINjGiIjqUXRaD0SrcU0v
	yGB4R0i2+QijOwsuNS9K0FueR6dT8hhvYREtmBe25TNUL64OTtOgdMXDq9FfmFWeBzFt
	KQtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=xHInS88wRdf4Jdp22Reqe8us06pV4fuOlt1Txx9HFcE=;
	b=XAgwCui2klU96+tdj70VE3aX1wn5PNRu8M3zfGFt5sfDo/hnaeB2Cy5WR4hft/dJe2
	QtXsZsb2/UmGgnqGCTCxYop6Wrq9ZUOlnRr5Hb78yZTospgh8dOH2vQGe9U4B01rsP9C
	lZJHmCwka7aZsQOxKIWaNytpkBorFVPu6j+B0uSzT1PwmUAN63pd5XyIKUIlIFrltPQ4
	0X9n+ISzXxlpP/iGCrPGEfxSibS5e8NQkVifNzIjSDris9j3YPCiWGayqdU+IweqYVHC
	6YNQ2igGvTjiGrk2uFKxG9UJgNc8j+RgBdCkf5vuJuEMLuhI/qH1pgFsY/eKbw2jYucb
	+fVA==
X-Gm-Message-State: AE9vXwMOGIMY0Hi0ttzvTnWPrwatjI9SiJ2t2XL3YGc5iqNTOn8iIsNJnLKSthRD3AWvZaCiSx5Ei0hR8M+6tA==
X-Received: by 10.55.100.21 with SMTP id y21mr11133696qkb.281.1472144120711;
	Thu, 25 Aug 2016 09:55:20 -0700 (PDT)
MIME-Version: 1.0
Sender: christoph@macht-blau.org
Received: by 10.55.142.67 with HTTP; Thu, 25 Aug 2016 09:55:20 -0700 (PDT)
X-Originating-IP: [140.181.87.162]
From: "C. Handel" <opensource@macht-blau.org>
Date: Thu, 25 Aug 2016 18:55:20 +0200
X-Google-Sender-Auth: Liw2PY-qzcglsaCrgrmATqfeVy8
Message-ID: <CADjFtT=xLSMVF_AK87F2H9nUen+DV3ovwixJypfW8bDTy42Ncw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: systemd-networkd
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
X-List-Received-Date: Thu, 25 Aug 2016 16:55:25 -0000
Content-Type: multipart/alternative; boundary=94eb2c05602e5fadc2053ae843ee

--94eb2c05602e5fadc2053ae843ee
Content-Type: text/plain; charset=UTF-8

   hi,

i'm trying to build an image with systemd that runs systemd-networkd to
initialize the network.

So far it boots, the interface goes up and it receives an IP via dhcp.

I now try to update my hostname from the one received by dhcp. As far as i
understand systemd, the systemd-networkd sends a dbus message, this will
trigger systemd-hostnamed. The setting of the hostname is protected by
polkit. This is all configured. I can see the message on the bus and is
also see the log entry of hostnamed. But the hostname does not change

Aug 25 16:29:08 genericx86-64 systemd-networkd[203]: enp0s3: Gained carrier
Aug 25 16:29:08 genericx86-64 systemd[1]: Starting Hostname Service...
Aug 25 16:29:08 genericx86-64 systemd[1]: Starting Authorization Manager...
Aug 25 16:29:08 genericx86-64 systemd-hostnamed[216]: Changed host name to
'vm009'


Did I miss anything?

Greetings
   Christoph



the bbappend for systemd

FILESEXTRAPATHS_append := "${THISDIR}/files:"
SRC_URI += "file://eth.network"

FILES_${PN} += "{sysconfdir}/systemd/network/*"

PACKAGECONFIG += "networkd resolved timesyncd hostnamed polkit myhostname"

# for version 230 yocto fixes this
# networkd requires a user
USERADD_PARAM_${PN} += "--system -d / -M --shell /bin/nologin
systemd-network;"
# resolved requires a user
USERADD_PARAM_${PN} += "--system -d / -M --shell /bin/nologin
systemd-resolve;"
# timesyncd requires a user
USERADD_PARAM_${PN} += "--system -d / -M --shell /bin/nologin
systemd-timesync;"

do_install_append() {
  install -d ${D}${sysconfdir}/systemd/network/
  install -m 0644 ${WORKDIR}/*.network ${D}${sysconfdir}/systemd/network/
}



and the eth.network


[Match]
Name=en*

[Network]
DHCP=ipv4

[DHCP]
UseDNS=true
UseNTP=true
UseHostname=true
UseDomains=true
UseRoutes=true
# otherwise a uuid is generated and we only assign via MAC address
ClientIdentifier=mac

--94eb2c05602e5fadc2053ae843ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0 =C2=A0hi,<div><br></div><div>i&#39;m trying to buil=
d an image with systemd that runs systemd-networkd to initialize the networ=
k.</div><div><br></div><div>So far it boots, the interface goes up and it r=
eceives an IP via dhcp.=C2=A0</div><div><br></div><div>I now try to update =
my hostname from the one received by dhcp. As far as i understand systemd, =
the systemd-networkd sends a dbus message, this will trigger systemd-hostna=
med. The setting of the hostname is protected by polkit. This is all config=
ured. I can see the message on the bus and is also see the log entry of hos=
tnamed. But the hostname does not change</div><div><br></div><div>Aug 25 16=
:29:08 genericx86-64 systemd-networkd[203]: enp0s3: Gained carrier<br></div=
><div>Aug 25 16:29:08 genericx86-64 systemd[1]: Starting Hostname Service..=
.<br></div><div><div>Aug 25 16:29:08 genericx86-64 systemd[1]: Starting Aut=
horization Manager...</div></div><div>Aug 25 16:29:08 genericx86-64 systemd=
-hostnamed[216]: Changed host name to &#39;vm009&#39;<br></div><div><br></d=
iv><div><br></div><div>Did I miss anything?</div><div><br></div><div>Greeti=
ngs</div><div>=C2=A0 =C2=A0Christoph</div><div><br></div><div><br></div><di=
v><br></div><div>the bbappend for systemd</div><div><br></div><div><div>FIL=
ESEXTRAPATHS_append :=3D &quot;${THISDIR}/files:&quot;</div><div>SRC_URI +=
=3D &quot;file://eth.network&quot;</div><div><br></div><div>FILES_${PN} +=
=3D &quot;{sysconfdir}/systemd/network/*&quot;</div><div><br></div><div>PAC=
KAGECONFIG +=3D &quot;networkd resolved timesyncd hostnamed polkit myhostna=
me&quot;</div><div><br></div><div># for version 230 yocto fixes this</div><=
div># networkd requires a user</div><div>USERADD_PARAM_${PN} +=3D &quot;--s=
ystem -d / -M --shell /bin/nologin systemd-network;&quot;</div><div># resol=
ved requires a user</div><div>USERADD_PARAM_${PN} +=3D &quot;--system -d / =
-M --shell /bin/nologin systemd-resolve;&quot;</div><div># timesyncd requir=
es a user</div><div>USERADD_PARAM_${PN} +=3D &quot;--system -d / -M --shell=
 /bin/nologin systemd-timesync;&quot;</div><div><br></div><div>do_install_a=
ppend() {</div><div>=C2=A0 install -d ${D}${sysconfdir}/systemd/network/</d=
iv><div>=C2=A0 install -m 0644 ${WORKDIR}/*.network ${D}${sysconfdir}/syste=
md/network/</div><div>}</div></div><div><br></div><div><br></div><div><br><=
/div><div>and the eth.network</div><div><br></div><div><br></div><div><div>=
[Match]</div><div>Name=3Den*</div><div><br></div><div>[Network]</div><div>D=
HCP=3Dipv4</div><div><br></div><div>[DHCP]</div><div>UseDNS=3Dtrue</div><di=
v>UseNTP=3Dtrue</div><div>UseHostname=3Dtrue</div><div>UseDomains=3Dtrue</d=
iv><div>UseRoutes=3Dtrue</div><div># otherwise a uuid is generated and we o=
nly assign via MAC address</div><div>ClientIdentifier=3Dmac</div></div><div=
><br></div><div><br></div><div><br></div></div>

--94eb2c05602e5fadc2053ae843ee--
