Return-Path: <ryan.harkin@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BA09E005BB; Mon,  5 Feb 2018 05:29:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C787E00B1A
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 05:29:53 -0800 (PST)
Received: by mail-qt0-f182.google.com with SMTP id t25so5941258qtg.3
	for <yocto@yoctoproject.org>; Mon, 05 Feb 2018 05:29:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=UyAUGaQ07X5WiVo6wJuTddDoDJUrtxInnj0OaZ7uaTY=;
	b=eNbEbfXFF1c3j6mce5tOSHiOkcMyVHGRWKq4OnkJe5t9P/eaFw4BEZ5vfkMwXly8Dx
	IAztbPVO4ABwX3gohoQtuzThaMdkjEi29bza1UqNiaGBoHiOG2P/71SGCIcKKS7e4CIa
	H8e70TZPz6DQ5mJGN2D63YFVAyyHx5ETit9KI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=UyAUGaQ07X5WiVo6wJuTddDoDJUrtxInnj0OaZ7uaTY=;
	b=Z7haIwq3/JCRbGoGmtKj7wCHFqCxP30ZaTl+yjXx0t3nYMx93qjwsyhpPcZtQ40poE
	LJEvBz17aMtntqe4OtxZTTbEfN/tvq8kOsp17eMVDQ8oxF7SCrFmlK4Nc4NSLpqUToOg
	2uCL4IcKJOGs3OBEv8PNKwTsV6yQXxR0Ibn7aqaHqEzvuDKcKe9uVmvg2GdBgVJ45Ogq
	7InYgIKyH3kLtfQK+3otUmrS6aWu6Iy/0wlCl8i07WNZAjnyuZooM0MNx6oGDLxnEA7f
	kYdmEloF8uCFNUBFjWpL/+gFsIsgAjeoqhWXrZO0mas2av1dtj6rWFG7DHIVgWFbHaw0
	Qoiw==
X-Gm-Message-State: APf1xPAQ4izFCff6gBKbWfgqEIughBP3s7jSccwHA7AHkvMSVstyUACr
	HcjhRtGnvIb6KgmCXV0STSUrqx/9ME2No5+f2hJcqbi0IBo=
X-Google-Smtp-Source: AH8x225CZURH5jMkojC6B+NBLoJCH90E56KsnAIlBuiCOgwCUZMXe4T4BVhnzmWg15kRPDMqR3AmTIoPe20w7AnzsFw=
X-Received: by 10.237.61.71 with SMTP id h7mr12529642qtf.54.1517837393064;
	Mon, 05 Feb 2018 05:29:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.86.19 with HTTP; Mon, 5 Feb 2018 05:29:52 -0800 (PST)
From: Ryan Harkin <ryan.harkin@linaro.org>
Date: Mon, 5 Feb 2018 13:29:52 +0000
Message-ID: <CAD0U-h+74_o_2dQG+OoBDq-t2o3P0H-CUJCtHd+5D5M5f969wg@mail.gmail.com>
To: yocto@yoctoproject.org, meta-freescale@yoctoproject.org, 
	phil@raspberrypi.org, andrei@gherzan.com, arend.vanspriel@broadcom.com
Subject: brcmfmac43430-sdio.bin and BCM43430A1.hcd and upstream linux-firmware
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
X-List-Received-Date: Mon, 05 Feb 2018 13:29:55 -0000
Content-Type: multipart/alternative; boundary="001a113da7eaa40a5a0564770eb7"

--001a113da7eaa40a5a0564770eb7
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm sure there's a lot of history around this topic, so I'm sorry if this
is opening up old wounds. I'm sure it's not straight forward.

First, a bit of background:

I'm using an NXP WaRP7 board. It has a Murata LBEE5KL1DX WiFi/Bluetooth
chip, which is in turn has a Cypress CYW4343W chipset.

I use meta-freescale*, but I use a 4.14 kernel, so I have various bbappend
over-rides for that in my own layer that I'm developing.

One big difference between 4.1 and 4.14 is the CYW4343W firmware. The 4.1
kernel from meta-freescale uses an older firmware for these components and
they don't work for my 4.14 setup.

As I'm also building for RaspberryPi3 and have meta-raspberrypi in my
environment, it's been convenient for me to use a bbappend in my own layer
to get the firmware from meta-raspberrypi into my WaRP7 build.

But this no longer works well since a recent commit to lock down the recipe
[3]. I've created bbappends for both wifi and BT firmware as a workaround.
But this isn't really a nice approach, I think.

It seems better to have both the WiFi and BT firmware upstream in
linux-firmware and take it from the regular linux-firmware.bb.

Currently, there is an old version of the WiFi firmware upstream [4] but
nothing for BT, to my knowledge.

There is a newer version of the wifi f/w available publicly [1] and on
meta-freescale [2], but this hasn't been sent upstream. I'm sure this is a
complex situation and it's not clear to me where this firmware came from
and what licensing restrictions it comes with other than Phil Elwell's
comment [1] from almost 5 months ago:

"Cypress are happy for that firmware and nvram.txt to be redistributed,
They are in the process of investigating a few issues for us, but I would
expect that firmware or a further update to it to eventually appear in the
linux-firmware repo."

Who, if anyone, is responsible for this or who can I contact to try to get
both of these upstream in linux-firmware?

I don't think it's appropriate for me to try to send it there, saying as I
don't know the origin or licensing terms that come with either blob. But if
nobody else wants to do it...

Or is there another way I should be getting this firmware, like getting it
copy from Cypress and hosting it in my own layer? (Hosting it myself seems
very wrong, saying as it's a component used on many boards and I see many
others struggling with this same issue).

Finally, the brcmfmac43430-sdio.txt configuration file appears to be a
separate delivery from the .bin file and isn't in linux-firmware. I presume
there's some sensible reason for that, like board specific values, etc...
But for my purposes, I need a place to pull it from where its provenance is
known, or a version I can legally host and redistribute.

Again the licensing terms of the files in meta-raspberrypi aren't clear to
me and I don't want to tread on any toes. So where am I supposed to get
that file from in a way that I can be sure I'm permitted to redistribute it?

Regards,
Ryan.

[1] XECDesign tell Andrei Gherzan they were given permission to
redistribute 7.45.41.46 firmware with raspbian
https://github.com/RPi-Distro/repo/issues/88

[2] Andrei Gherzan updates meta-raspberrypi to use WiFi firmware 7.45.41.46
https://github.com/agherzan/meta-raspberrypi/commit/acd58692356df2bbdc3aa1d6b15f44c104ad3b45

[3] Martin Kelly's commit to change linux-firmware_%bbappend to be rpi
specific:
https://github.com/agherzan/meta-raspberrypi/commit/61c2a965a21cfc927b817dc517100d31c07ffa95

[4] Arend van Spriel adds 7.45.41.26 to linux-firmware
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/brcm/brcmfmac43430-sdio.bin?id=c4c07a8d1128d50a5c2885ceea1abbebaa82f820

[5] Tom Doehring adds the BT firware
https://github.com/agherzan/meta-raspberrypi/commit/1317a894faa671c82193c1f18074d84db2cb9e35

[6] Andrei Gherzan updates the BT firmware from Raspbian
https://github.com/agherzan/meta-raspberrypi/commit/f864b1068fada7c70d409e4aad7075dd6f78569e

--001a113da7eaa40a5a0564770eb7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I&#39;m sure there&#39;s a lot of history ar=
ound this topic, so I&#39;m sorry if this is opening up old wounds. I&#39;m=
 sure it&#39;s not straight forward.<br><br>First, a bit of background:<br>=
<br>I&#39;m using an NXP WaRP7 board. It has a Murata LBEE5KL1DX WiFi/Bluet=
ooth chip, which is in turn has a Cypress CYW4343W chipset.<br><br>I use me=
ta-freescale*, but I use a 4.14 kernel, so I have various bbappend over-rid=
es for that in my own layer that I&#39;m developing.<br><br>One big differe=
nce between 4.1 and 4.14 is the <span style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline">CYW4343W</span> f=
irmware. The 4.1 kernel from meta-freescale uses an older firmware for thes=
e components and they don&#39;t work for my 4.14 setup.<br><br>As I&#39;m a=
lso building for RaspberryPi3 and have meta-raspberrypi in my environment, =
it&#39;s been convenient for me to use a bbappend in my own layer to get th=
e firmware from meta-raspberrypi into my WaRP7 build.<br><br>But this no lo=
nger works well since a recent commit to lock down the recipe [3]. I&#39;ve=
 created bbappends for both wifi and BT firmware as a workaround. But this =
isn&#39;t really a nice approach, I think.<br><br>It seems better to have b=
oth the WiFi and BT firmware upstream in linux-firmware and take it from th=
e regular <a href=3D"http://linux-firmware.bb">linux-firmware.bb</a>.<br><b=
r>Currently, there is an old version of the WiFi firmware upstream [4] but =
nothing for BT, to my knowledge.<br><br>There is a newer version of the wif=
i f/w available publicly [1] and on meta-freescale [2], but this hasn&#39;t=
 been sent upstream. I&#39;m sure this is a complex situation and it&#39;s =
not clear to me where this firmware came from and what licensing restrictio=
ns it comes with other than Phil Elwell&#39;s comment [1] from almost 5 mon=
ths ago:<br><br>&quot;Cypress are happy for that firmware and nvram.txt to =
be redistributed, They are in the process of investigating a few issues for=
 us, but I would expect that firmware or a further update to it to eventual=
ly appear in the linux-firmware repo.&quot;<br><br>Who, if anyone, is respo=
nsible for this or who can I contact to try to get both of these upstream i=
n linux-firmware?<br><br>I don&#39;t think it&#39;s appropriate for me to t=
ry to send it there, saying as I don&#39;t know the origin or licensing ter=
ms that come with either blob. But if nobody else wants to do it...<br><br>=
Or is there another way I should be getting this firmware, like getting it =
copy from Cypress and hosting it in my own layer? (Hosting it myself seems =
very wrong, saying as it&#39;s a component used on many boards and I see ma=
ny others struggling with this same issue).<br><br>Finally, the brcmfmac434=
30-sdio.txt configuration file appears to be a separate delivery from the .=
bin file and isn&#39;t in linux-firmware. I presume there&#39;s some sensib=
le reason for that, like board specific values, etc... But for my purposes,=
 I need a place to pull it <span style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline">from<span>=C2=A0</span=
></span>where its provenance is known, or a version I can legally host and =
redistribute.<br><br>Again the licensing terms of the files in meta-raspber=
rypi aren&#39;t clear to me and I don&#39;t want to tread on any toes. So w=
here am I supposed to get that file from in a way that I can be sure I&#39;=
m permitted to redistribute it?<br><br>Regards,<br>Ryan.<br><br>[1] XECDesi=
gn tell Andrei Gherzan they were given permission to redistribute 7.45.41.4=
6 firmware with raspbian<br><a href=3D"https://github.com/RPi-Distro/repo/i=
ssues/88">https://github.com/RPi-Distro/repo/issues/88</a><br><br>[2] Andre=
i Gherzan updates meta-raspberrypi to use WiFi firmware 7.45.41.46<br><a hr=
ef=3D"https://github.com/agherzan/meta-raspberrypi/commit/acd58692356df2bbd=
c3aa1d6b15f44c104ad3b45">https://github.com/agherzan/meta-raspberrypi/commi=
t/acd58692356df2bbdc3aa1d6b15f44c104ad3b45</a><br><br>[3] Martin Kelly&#39;=
s commit to change linux-firmware_%bbappend to be rpi specific:<br><a href=
=3D"https://github.com/agherzan/meta-raspberrypi/commit/61c2a965a21cfc927b8=
17dc517100d31c07ffa95">https://github.com/agherzan/meta-raspberrypi/commit/=
61c2a965a21cfc927b817dc517100d31c07ffa95</a><br><br>[4] Arend van Spriel ad=
ds 7.45.41.26 to linux-firmware<br><a href=3D"https://git.kernel.org/pub/sc=
m/linux/kernel/git/firmware/linux-firmware.git/commit/brcm/brcmfmac43430-sd=
io.bin?id=3Dc4c07a8d1128d50a5c2885ceea1abbebaa82f820">https://git.kernel.or=
g/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/brcm/brcmfmac=
43430-sdio.bin?id=3Dc4c07a8d1128d50a5c2885ceea1abbebaa82f820</a><br><br>[5]=
 Tom Doehring adds the BT firware<br><a href=3D"https://github.com/agherzan=
/meta-raspberrypi/commit/1317a894faa671c82193c1f18074d84db2cb9e35">https://=
github.com/agherzan/meta-raspberrypi/commit/1317a894faa671c82193c1f18074d84=
db2cb9e35</a><br><br>[6] Andrei Gherzan updates the BT firmware from Raspbi=
an<br><a href=3D"https://github.com/agherzan/meta-raspberrypi/commit/f864b1=
068fada7c70d409e4aad7075dd6f78569e">https://github.com/agherzan/meta-raspbe=
rrypi/commit/f864b1068fada7c70d409e4aad7075dd6f78569e</a><br></div>

--001a113da7eaa40a5a0564770eb7--
