Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF8A6E00A39; Fri, 20 Apr 2018 04:07:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0A4AE00843
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 04:07:45 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id s25-v6so4109808ioa.0
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 04:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=I2LAn0yHn+VnkovfFVYpR0sBE9SzKdHz7Q3pHqdb5NY=;
	b=r5nHityoPnZZdFuatTs8EfUUMCHAvmat0kWb6lAjF1iiIQ18g8LIX7uKXth7uozNI5
	rWqn/uUiCXJFVd1gK7KhpFEfTxdbQkEIpaYlW2670YsQ8fHUQlzdxlr1XpRBwpHWovuG
	05fRWF2KRj5X31Mx6B7jLW8G8u7YPvyGG1nuQmoeq2cX+Draa0cu0DWabqs/9PkprfAH
	Evk+T1XaHmncOwgL3hFPewiI4yq2kwl8Gw9WlytIbRW8OBwbSEpP+C2Fm/94zAoeVqJu
	m0f971KY98EYgy9kB4UgZCoJ+L3n+WaHQKYrWAN95kc+Hh0S5CDkcv3y/Zt3p6nN17OD
	ingA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=I2LAn0yHn+VnkovfFVYpR0sBE9SzKdHz7Q3pHqdb5NY=;
	b=KazkzPtnliwPnZTbJCfhMhzBMuoAFEoxRiGYp04qg8f3ZGTgggeB7t3wcXXnBeygUq
	bvmmCR+gti3/0cUj3mjl+EAyg2ZLTcfm3Gpyk+QByc7vbaCCqpwNleqNXsjU9ajcz1ke
	6lecBPw+RGWJYhBWhhqTbPiEvnU2W56QnMd0A+31a3sCT1RmeYCyApHOp+KEyuzlh2jw
	kuBRxh3A/kMt3P0NDYfxEF0rWpRldnjF/IFhNyaRL1BKKr2XdPZ+UbSMHa2iGjQXV6r/
	PbtmDHCt3biWGkh66/ZJyyKvez5acpoMAEIxT+LHrnjYtYZq8p/qWpcdiLpecVr7R/vI
	80+w==
X-Gm-Message-State: ALQs6tBuZ/UDE8cHREx22PMkEWcui2P8qHeaZEC8s0TVnea5BbkuhRLW
	EwnnKhbboWiHhduaX1n0f4VZDxlO4ZuegvdBLOat
X-Google-Smtp-Source: AB8JxZqxzDfJs2UpI429Ddsf/+y7XBwCwvliz2CWp16AL+DHGCmWZO+1NbKPs6toKbuRAg7uDMP397x197wjMuxxsRk=
X-Received: by 2002:a6b:4e19:: with SMTP id
	c25-v6mr3419240iob.302.1524222464703; 
	Fri, 20 Apr 2018 04:07:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:69d5:0:0:0:0:0 with HTTP; Fri, 20 Apr 2018 04:07:44
	-0700 (PDT)
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Fri, 20 Apr 2018 14:07:44 +0300
Message-ID: <CA+FhBv8FaL1aSfHAvJ7PuEX2CRxTQ7TB4Xh6V1EnkwscUThizA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 20 Apr 2018 08:16:57 -0700
Subject: How to install kernel objects in /lib
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
X-List-Received-Date: Fri, 20 Apr 2018 11:07:47 -0000
Content-Type: multipart/alternative; boundary="00000000000091427f056a45b21e"

--00000000000091427f056a45b21e
Content-Type: text/plain; charset="UTF-8"

Hi,

I made a recipe to build and install a kernel object. See

SUMMARY = "Kernel module for EPIX grabber"
LICENSE = "CLOSED"

inherit module

SRC_URI = "file://Makefile \
           file://pixcilnx_aarch64_4.4.a \
           file://pixcipub.c \
           file://pixcipub.h \
           file://pixci.rc \
           file://pixci.conf \
          "

S = "${WORKDIR}"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.

do_install() {
    # First create the directories
    install -d
${D}${base_libdir}/modules/${KERNEL_VERSION}/kernel/drivers/misc
    install -d ${D}${sysconfdir}/init.d
    install -d ${D}${sysconfdir}/default/

    # Then add the files
    install -m 555 -g root -o root ${B}/pixci.ko ${D}${base_libdir
}/modules/${KERNEL_VERSION}/kernel/drivers/misc/pixci.ko
    install -m 555 -g root -o root ${WORKDIR}/pixci.rc
${D}${sysconfdir}/init.d/pixci
    install -m 644 -g root -o root ${WORKDIR}/pixci.conf
${D}${sysconfdir}/default/pixci
}

# Include all installed files from /etc and /lib
FILES_${PN} += "${base_libdir
}/modules/${KERNEL_VERSION}/kernel/drivers/misc/pixci.ko"
FILES_${PN} += "${sysconfdir}/init.d/pixci"
FILES_${PN} += "${sysconfdir}/default/pixci"

If I use base_libdir to install the kernel object where the scripts expect
it to be, I get an error:
nothing provides kernel-module-pixci-4.4.38-l4t-r28.1+g79e4600 needed by
pixci-3.8.01-r0.jetson_tx2

But if I use libdir variable the kernel object is packages and installed
properly.

Could anyone explain me why?

Thanks,
-Damien

--00000000000091427f056a45b21e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I made a recipe to build and instal=
l a kernel object. See</div><div><br></div><div><div>SUMMARY =3D &quot;Kern=
el module for EPIX grabber&quot;</div><div>LICENSE =3D &quot;CLOSED&quot;</=
div><div><br></div><div>inherit module</div><div><br></div><div>SRC_URI =3D=
 &quot;file://Makefile \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://pixcilnx_aarch64_4.4.a \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0file://pixcipub.c \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0file://pixcipub.h \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0file://pixci.rc \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
file://pixci.conf \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;</di=
v><div><br></div><div>S =3D &quot;${WORKDIR}&quot;</div><div><br></div><div=
># The inherit of module.bbclass will automatically name module packages wi=
th</div><div># &quot;kernel-module-&quot; prefix as required by the oe-core=
 build environment.</div><div><br></div><div>do_install() {=C2=A0 =C2=A0=C2=
=A0</div><div>=C2=A0 =C2=A0 # First create the directories</div><div>=C2=A0=
 =C2=A0 install -d ${D}${base_libdir}/modules/${KERNEL_VERSION}/kernel/driv=
ers/misc</div><div>=C2=A0 =C2=A0 install -d ${D}${sysconfdir}/init.d</div><=
div>=C2=A0 =C2=A0 install -d ${D}${sysconfdir}/default/</div><div><br></div=
><div>=C2=A0 =C2=A0 # Then add the files</div><div>=C2=A0 =C2=A0 install -m=
 555 -g root -o root ${B}/pixci.ko ${D}${<span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline">base_lib=
dir</span>}/modules/${KERNEL_VERSION}/kernel/drivers/misc/pixci.ko</div><di=
v>=C2=A0 =C2=A0 install -m 555 -g root -o root ${WORKDIR}/pixci.rc ${D}${sy=
sconfdir}/init.d/pixci</div><div>=C2=A0 =C2=A0 install -m 644 -g root -o ro=
ot ${WORKDIR}/pixci.conf ${D}${sysconfdir}/default/pixci</div><div>}</div><=
div><br></div><div># Include all installed files from /etc and /lib</div><d=
iv>FILES_${PN} +=3D &quot;${<span style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial;float:none;display:inline">base_libdir</span>}/m=
odules/${KERNEL_VERSION}/kernel/drivers/misc/pixci.ko&quot;</div><div>FILES=
_${PN} +=3D &quot;${sysconfdir}/init.d/pixci&quot;</div><div>FILES_${PN} +=
=3D &quot;${sysconfdir}/default/pixci&quot;</div></div><div><div><br></div>=
<div>If I use=C2=A0<span style=3D"color:rgb(34,34,34);font-family:arial,san=
s-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline">base_libdir to install the ker=
nel object where the scripts expect it to be, I get an error:</span></div><=
div><span style=3D"text-align:start;text-indent:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline"><div>nothing provides kernel-module-pixci-4.4.38-l4t=
-r28.1+g79e4600 needed by pixci-3.8.01-r0.jetson_tx2</div><div><br></div><d=
iv>But if I use=C2=A0<span style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline">libdir variable the kernel o=
bject is packages and installed properly.</span></div><div><span style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial;float:none;displa=
y:inline"><br></span></div><div><span style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline">Could anyone expl=
ain me why?</span></div><div><br></div></span></div><div>Thanks,</div><div>=
-Damien</div><br>
</div></div>

--00000000000091427f056a45b21e--
