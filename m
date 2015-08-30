Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B962E00B59; Sat, 29 Aug 2015 18:48:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f169.google.com (mail-yk0-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE021E00B18
	for <yocto@yoctoproject.org>; Sat, 29 Aug 2015 18:48:20 -0700 (PDT)
Received: by ykdz80 with SMTP id z80so48992306ykd.0
	for <yocto@yoctoproject.org>; Sat, 29 Aug 2015 18:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uW8wKrXJ9pDMTHdHN5gQ4qr1c533WANpTkHzLaELhaA=;
	b=V8x05jdxO3xzBz5ccn1JDGzFZfr3K7dcuT3UuaCDPqTd68IHO3aGEfYjNBLCuBtgyE
	41FeofBSJ2W7RNJ68b9IPDIM4f6v9KvkJgsomiJXxNj5jRV/0/hPPLVmw8KqLV4DmqB4
	ayDFRV+NWNLSL1UlTxLcOwG4Fs8AL6MZjjemg4gksQjWk4lmkNZR1B3PP8Y8rqccUCvO
	5wPhAIs0IdrYFH2p35TPYe1QyoWU+XyiytvwLHYyJY0VnmHkpsAC6Vok5Yo71YqwgBT7
	agVGV6psH9lBzlnvoIdKxFq9kwGVUeqYgjZMm5EeI6NxH/hQKWf3GQP6pGgLf3Ep1acL
	/p+Q==
MIME-Version: 1.0
X-Received: by 10.129.80.136 with SMTP id e130mr15970854ywb.94.1440899300411; 
	Sat, 29 Aug 2015 18:48:20 -0700 (PDT)
Received: by 10.129.56.133 with HTTP; Sat, 29 Aug 2015 18:48:20 -0700 (PDT)
Date: Sat, 29 Aug 2015 22:48:20 -0300
Message-ID: <CAF3SDA6ahVQkDng1eD1F3ELsnDdzdpwodRnz2O8MNnAm0-gprQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Using device tree on raspberrypi with poky distro.
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
X-List-Received-Date: Sun, 30 Aug 2015 01:48:23 -0000
Content-Type: multipart/alternative; boundary=001a1147e58af55182051e7d822f

--001a1147e58af55182051e7d822f
Content-Type: text/plain; charset=UTF-8

Hi all, I'm trying to test my nrf24l01+ driver on rasp B. I've edited the
bcm2708-rpi-b.dts file adding this in place of spidev@0 node.

        nrf24l01p@0 {
                compatible = "nrf24";
                reg = <0>;
                gpio-irq = <&gpio 24 0>;
                gpio-ce   = <&gpio 25 0>;
                spi-max-frequency = <8000000>;
       };

Compiled the kernel and copy kernel and dtb to first partition of SDCard
containing the rpi image. I expect to get /sys/class/spi_master/spi0.0
folder but got nothing. spi_master folder is empty. What I'm missing?


Best regards,
- dhs


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a1147e58af55182051e7d822f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi all, I&#39;m trying to test my nrf24l01+ driv=
er on rasp B. I&#39;ve edited the bcm2708-rpi-b.dts file adding this in pla=
ce of spidev@0 node.<br><br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nrf2=
4l01p@0 {<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible =3D &quot;nrf24&quot;;<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 reg =3D &lt;0&gt;;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gpio-irq =3D &lt;&amp;gpio=
 24 0&gt;;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gpio-ce=C2=A0=C2=A0 =3D &lt;&amp;gpio 25 0&g=
t;;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 spi-max-frequency =3D &lt;8000000&gt;;<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };<br><br></div>Compiled the kernel and copy=
 kernel and dtb to first partition of SDCard containing the rpi image. I ex=
pect to get /sys/class/spi_master/spi0.0 folder but got nothing. spi_master=
 folder is empty. What I&#39;m missing?<br><br><br></div><div>Best regards,=
<br></div><div>- dhs<br></div><div><div><br clear=3D"all"><div><br>-- <br><=
div class=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do o=
r do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b><=
/i><br></div></div>
</div></div></div></div>

--001a1147e58af55182051e7d822f--
