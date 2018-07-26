Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 652ECE00CE0; Thu, 26 Jul 2018 13:51:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2FE4E00CDD
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 13:51:55 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id y19-v6so3007994qto.5
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 13:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=oCHngxsDVu3c8Ce4IQxQebuLX2ahJUp6kCzgFJhb/fA=;
	b=hiiKx4QJ6KGNNNG8THGQqXXUQDvvNmECZmYaN/SpuDjKo1F8GaW8r70qsIjuc6OHfS
	biOUGCm1NbIuIN6tB4HoKM0KFCvAuYmI0bahuXK+VPAV/ameqX0A0c1qKB1h4oQ4dyP3
	Yb83SZ3lQpI44LurylTGeOZ7Qn5HwfGKxPisLBqHpz2Pek+lBKgO5/PCF/eUZU3X5UJS
	ohmlEjOb6P0RHhKGZstt8xt1+364PAK7xJM40RPhkJtbsHngNMqDk7tpDSPMSkioNjAR
	W0+qwl/jJh1u4p+/sBMMosMG3O+g3dHuuEIV+J01tkJJ+RhKeF9E1XgNZAub8KhMYn+8
	C7zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oCHngxsDVu3c8Ce4IQxQebuLX2ahJUp6kCzgFJhb/fA=;
	b=Dl1LiWk7UX858wSRCtmZ7gtKD9QlAmB4dwJA7aDdzafIaJhAHtDvx2/VNjI6GFstft
	rkRuJZzldJYlhQbz/3sWcwUjmlPqI5i+CKZVn/FlWwhFVYjS1o5t2AzghR1VCXcb+4F8
	pCkEwMR/+2ODUlwBwUS2h0A74drikv1zbRk7VVPZK8RVkxr3iWn0DiIUWwRioCuqNvCt
	xtAFyu0Jv8QblFGHLNg+4e6D8pgWyTRhhk0H4QXrin7+hQvdzSkxww7rzLathgM8A0/+
	1TK7kqgX/hlW1IYAglpPw6pHy4YCPWiREPa7sOb8nGKSgrmeAnzJtLMxTF7s4MmKPjrk
	4niQ==
X-Gm-Message-State: AOUpUlE6G7NrPLC/3fOuPmTiAf/w7rsqxvjOAvE20SawReNQIzh3VCwL
	XpUXehsTiIfFDZUduhrH73xeQTbwOKWHbhUW6PIeiT7DhgzaLg==
X-Google-Smtp-Source: AAOMgpdUYx6cQrgC/rALWwYFxUuq4pV4VcnhIwV1WaGakLSjnuDDyBEqWDKgBaR5Jx6EsKReHOzvWfv9bbkRVdevfc0=
X-Received: by 2002:ac8:2432:: with SMTP id
	c47-v6mr3511509qtc.355.1532638314860; 
	Thu, 26 Jul 2018 13:51:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Thu, 26 Jul 2018 13:51:54 -0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Thu, 26 Jul 2018 16:51:54 -0400
Message-ID: <CANmTPBY1UhLdVCTEpD1SAbyLGfZKdCVBjdnq6SQEtjg0svwR6Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: net-snmp_5.7.3.bbappend
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
X-List-Received-Date: Thu, 26 Jul 2018 20:51:56 -0000
Content-Type: multipart/alternative; boundary="00000000000053a6ee0571ed2a07"

--00000000000053a6ee0571ed2a07
Content-Type: text/plain; charset="UTF-8"

Hi,

I created a bbappend in the same directory where *net-snmp_5.7.3.bb
<http://net-snmp_5.7.3.bb>* resides:


/sources/meta-openembedded/meta-networking/recipes-protocols/net-snmp$ *cat
net-snmp_5.7.3.bbappend*



EXTRA_OECONF += " --enable-mini-agent --with-default-snmp-version=3
--disable-debugging \
                  --with-logfile='/var/log/snmp' --with-transports='UDP
TCP' --enable-blumenthal-aes  "






did

$ *bitbake -c compile net-snmp*
$ *MACHINE=imx7d-phyboard-zeta-**001 bitbake  fsl-image-pk-imx-15*


Does not seem to make any difference. The manifest files for the rootfs are
identical with the previous build without the bbappend.


Any hints?

Thanks,
S

--00000000000053a6ee0571ed2a07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi,</div><div><br></div><div><div> I c=
reated a bbappend in the same directory where <b><a href=3D"http://net-snmp=
_5.7.3.bb">net-snmp_5.7.3.bb</a></b> resides:</div><div><br><div style=3D"m=
argin-left:40px"><span style=3D"font-family:monospace,monospace"></span><br=
></div><div style=3D"margin-left:40px"><span style=3D"font-family:monospace=
,monospace"></span><span style=3D"font-family:monospace,monospace">/<wbr>so=
urces/meta-openembedded/<wbr>meta-networking/recipes-<wbr>protocols/net-snm=
p$ <b>cat net-snmp_5.7.3.bbappend</b><br><br><br><br>EXTRA_OECONF +=3D &quo=
t; --enable-mini-agent --with-default-snmp-version=3D3=C2=A0 --disable-debu=
gging \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --with-logfile=3D&#39;/var/log/snmp=
&#39; --with-transports=3D&#39;UDP TCP&#39; --enable-blumenthal-aes=C2=A0 &=
quot;<br><br><br><br></span></div></div><div><br></div><div><br></div><div>=
<br></div><div>did <br></div><div><br></div><div><span style=3D"font-family=
:monospace,monospace">$ <b>bitbake -c compile net-snmp</b></span></div><div=
><span style=3D"font-family:monospace,monospace">$ <b>MACHINE=3Dimx7d-phybo=
ard-zeta-</b></span><b><span style=3D"font-family:monospace,monospace">00<w=
br>1 bitbake=C2=A0 fsl-image-pk-imx-15</span></b></div><br></div><div><br><=
/div><div>Does not seem to make any difference. The manifest files for the =
rootfs are identical with the previous build without the bbappend.</div><di=
v><br></div><div><br></div><div class=3D"gmail_extra">Any hints?</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Thanks,</div><di=
v class=3D"gmail_extra">S<br></div><div class=3D"gmail_extra"><br></div></d=
iv>

--00000000000053a6ee0571ed2a07--
