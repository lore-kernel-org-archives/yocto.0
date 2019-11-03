Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6387EE00D60; Sun,  3 Nov 2019 01:21:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 016A4E00A07
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2019 01:21:29 -0800 (PST)
Received: by mail-qk1-f170.google.com with SMTP id i19so5587294qki.2
	for <yocto@yoctoproject.org>; Sun, 03 Nov 2019 01:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=rkXKVfKiO0eNnnyuqbDOOKrl6/VJsEIEKkW2bj35004=;
	b=O/yFnpBVPLW37zbwMF7pWEboD0sRUa58b6YEyXkBiGLmO/0ZsCQW5FHNam8G6C7P/H
	bvTKI4GCZmm3mJx5idN6HfNb0anthyCACdlKzfxkfr1oNK8WOn2npiGMudn+JRNUs8i4
	MM8/JAP/ByGKNH5doyAkpNv2mspu6uQk65sDxnPU0AL8c4jMA3f7OnczhQ25Q2N+w/OQ
	bdgRuoNmuQzFLyBrQY+4W7tk5r4nwnSC5G7PzQAfg5OzwcDF/d1Tc9N3lO2a//LwYH0A
	+hCkt+UV/PkA7v5FLEkT2qIZweW1Dk1tNPQrWGxRoCZE10o2AVunHH0f032wharsg/n9
	YnZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=rkXKVfKiO0eNnnyuqbDOOKrl6/VJsEIEKkW2bj35004=;
	b=JavwoXgrnfUVBl1g6LAxLtc2GGJFJB4KnjVJuV1y5XQEHUtxS9MvlZTN+R2C+Rr70T
	f246CZmt1T/rtARXxSQFsEr+YAJvusSmgTM3VQH+LwpQj3OtU5wjhD5abelidT8I94zh
	DliQ6ZzeyJAZiChFwsi3gR66bHNMgh+uZEZulaZizhwUb2cODvWtI2uRRrg70zQ2hluL
	9hzW7wQK+WWrJmiEQ1gIy3Ik5uGrl2ujEIhxHkEpIkU86McW1Tpuok3pV5nfVNc7UZqL
	HO5CMLyVUtL0woIYUE3Rc6CLLIhjbcOnv3PnQKMAaGK4nGrzjNQssuspyatI4kzBof5R
	preQ==
X-Gm-Message-State: APjAAAWsNYn90y30jqWto1s17SD4QKbq5tyROFsBLETsqla6BEzeuii+
	Uosc7UEqkEquFDMBZAm9SJOemUc/ZAF05HWFKAQFiskgE9THgQ==
X-Google-Smtp-Source: APXvYqy80HPtNdibnhnC5nvScdIsRxoYx/LCHs+xo8zWaLFfk73ROALgLUQPgesKrUYTZbWW9h9lD00WTwnwTv+bbOw=
X-Received: by 2002:a37:7c42:: with SMTP id x63mr8916169qkc.134.1572772888891; 
	Sun, 03 Nov 2019 01:21:28 -0800 (PST)
MIME-Version: 1.0
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Sun, 3 Nov 2019 10:21:17 +0100
Message-ID: <CACKFPN0f4eSrq8zjcOU1gdvv9QfMNCx=d2AXHdheCJq1se8SOg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 06 Nov 2019 08:04:51 -0800
Subject: Kernel modules packaged but not installed
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
X-List-Received-Date: Sun, 03 Nov 2019 09:21:30 -0000
Content-Type: multipart/alternative; boundary="0000000000005ad66105966db993"

--0000000000005ad66105966db993
Content-Type: text/plain; charset="UTF-8"

Hi all. I have a weird issue with the kernel modules not being installed in
the image and also not packaged.
I see the packages for individual "kernel-module-*.ipk" modules but the
"kernel-modules_*.ipk" is always
empty.

I'm also able to see the "modules-${MACHINE}.tgz" in DEPLOYDIR which has
all the modules in there, just fine.

In my image file I've also set this:
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"

This is the kernel recipe:
https://gitlab.com/dimtass/meta-allwinner-hx/blob/master/recipes-kernel/linux/linux-stable_4.19.bb

And this is the conf folder
https://gitlab.com/dimtass/meta-allwinner-hx/tree/master/conf

For some reason I can't figure out why modules are not ending up in the
image.

If I do it manually in a do_install_append like this:
do_install_append() {
    # Install kernel-modules
install -d ${D}${nonarch_base_libdir}
    oe_runmake INSTALL_MOD_PATH=${D} modules_install
}

then it works, but I guess that shouldn't be the right way.

Any suggestions or ideas?

Thanks!

--0000000000005ad66105966db993
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all. I have a weird issue with the=C2=A0kernel modules =
not being installed in the image and also not packaged.<div>I see the packa=
ges for individual &quot;kernel-module-*.ipk&quot; modules but the &quot;ke=
rnel-modules_*.ipk&quot; is always</div><div>empty.</div><div><br></div><di=
v>I&#39;m also able to see the &quot;modules-${MACHINE}.tgz&quot; in DEPLOY=
DIR which has all the modules in there, just fine.</div><div><br></div><div=
>In my image file I&#39;ve also set this:</div><div>MACHINE_ESSENTIAL_EXTRA=
_RRECOMMENDS +=3D &quot;kernel-modules&quot;<br></div><div><br></div><div>T=
his is the kernel recipe:</div><div><a href=3D"https://gitlab.com/dimtass/m=
eta-allwinner-hx/blob/master/recipes-kernel/linux/linux-stable_4.19.bb">htt=
ps://gitlab.com/dimtass/meta-allwinner-hx/blob/master/recipes-kernel/linux/=
linux-stable_4.19.bb</a><br></div><div><br></div><div>And this is the conf =
folder</div><div><a href=3D"https://gitlab.com/dimtass/meta-allwinner-hx/tr=
ee/master/conf">https://gitlab.com/dimtass/meta-allwinner-hx/tree/master/co=
nf</a><br></div><div><br></div><div>For some reason I can&#39;t figure out =
why modules are not ending=C2=A0up in the image.</div><div><br></div><div>I=
f I do it manually in a do_install_append like this:</div><div>do_install_a=
ppend() {<br>=C2=A0 =C2=A0 # Install kernel-modules<br>	install -d ${D}${no=
narch_base_libdir}<br>=C2=A0 =C2=A0 oe_runmake INSTALL_MOD_PATH=3D${D} modu=
les_install<br>}<br></div><div><br></div><div>then it works, but I guess th=
at shouldn&#39;t be the right way.</div><div><br></div><div>Any suggestions=
 or ideas?</div><div><br></div><div>Thanks!</div></div>

--0000000000005ad66105966db993--
