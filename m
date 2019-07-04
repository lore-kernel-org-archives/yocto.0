Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78425E00D35; Thu,  4 Jul 2019 01:45:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C440BE00B3F
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 01:45:24 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id g20so1675806ioc.12
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 01:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yy9LIkakQQNnTt/X0qc3FXgaI7zn+XDGjTNyeaWSiq4=;
	b=GqpQFoPgXbc0htNc9wgNiFWAEE2S03otWL1c/fKWEeS07hentjLDj5lRqc1M7uDLqj
	X1ALoVoPA+PTexb5WcozlMwk6ZnNBXjgraoCV16Pz3GJFOmv3R0Kh95fMBKtiuOTYal0
	DR5XN5PzhzwKipDXIFqyKFMSiTBKhqX+LwgpP9SfzlJmWzU1Q5sfEgDfxyGuzLYw7XbC
	DR1Gvvreh6p0toqBaRu/BTq86RaAEHCwZuGJaadBGzIirOezOYupHp+sjJ+gbM6BfwFT
	aMQcE87M8Q6rDRsaySqdGEhlrb57AgKtkf0iL+mU0rahCSEubXpxwyDxddYh6miSD8wJ
	dvVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yy9LIkakQQNnTt/X0qc3FXgaI7zn+XDGjTNyeaWSiq4=;
	b=AijvVaag0sIre/hIEcedC5ISs3MZt/n5QBFXTN46+PLDDfcmbna97R+IeRmhT90CCQ
	6mhAY2QoGHAouYhA+ICc9yj7hxFOpcMTbMjNLEs42l96qjZc4DJsVeOsB3FsrM6momom
	s0eVAJyNsgvGwpSqKhb2Y8G4VHugw89BY2LB4XOXAhO09BbD1GEjj0MhRIXm3KMTdrhl
	vJOcvYxVfNCSNgs6u7ezC6CF7g10yWeMkx2RKZ0fDqul3HQLBsLbcaoX7+6IB9jCo2kY
	ewH7/D2oqemzshWHnvLwKT4Td+7yR5BowwkfAdQu0eeDxtJgNkgGfz762nS59n6xjHz/
	w4cw==
X-Gm-Message-State: APjAAAURxZTb4phsDdJ80SJ4Vc8syrzc/e0TjreUH1uRaA8d7kD75lZj
	/Hqw24LB9lg8e6k56QEi1OKJ3qMSyVQodIsn4tXVoN3zbNk=
X-Google-Smtp-Source: APXvYqwc8xiNg2h9BlIvYxb92IJD+xB7hbl0xlgPbUT5Ao8JxjHb5SXARZMaL/li9Y8EaPH0gTuvhCQt3t6QJv9J9Ow=
X-Received: by 2002:a02:ca19:: with SMTP id i25mr49459351jak.6.1562229923749; 
	Thu, 04 Jul 2019 01:45:23 -0700 (PDT)
MIME-Version: 1.0
From: Onur Eser <onureser12@gmail.com>
Date: Thu, 4 Jul 2019 11:45:12 +0300
Message-ID: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Json-Glib failed to build during the building of Weston image
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
X-List-Received-Date: Thu, 04 Jul 2019 08:45:25 -0000
Content-Type: multipart/alternative; boundary="000000000000a9a4e5058cd6ff32"

--000000000000a9a4e5058cd6ff32
Content-Type: text/plain; charset="UTF-8"

Hello Yocto Community!
When I was trying to build core-image-weston with meta-qt5 and meta-fsl-arm
layer for my imx6 (Humming Board 2 - Armv7) board, it gave an error on
compilation of the "jason-glib". I would suprised if my image was builded
without errors. I never could have finished a Yocto or Qt-cross building in
my life...

So, my error log is,

Got pkgconfig variable girdir :
Program g-ir-scanner found: YES
(/home/closx/poky/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/json-glib/1.4.2-r0/recipe-sysroot-native/usr/bin/g-ir-scanner)
Adding test "array".
Adding test "boxed".
Adding test "builder".
Adding test "generator".
Adding test "gvariant".
Adding test "invalid".
Adding test "node".
Adding test "object".
Adding test "parser".
Adding test "path".
Adding test "reader".
Adding test "serialize-simple".
Adding test "serialize-complex".
Adding test "serialize-full".
ERROR: meson failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_configure (log file is located at
/home/closx/poky/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/json-glib/1.4.2-r0/temp/log.do_configure.13333)

Thanks,
Have a good day!
Onur

--000000000000a9a4e5058cd6ff32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Yocto Community!</div><div>When I was trying to=
 build core-image-weston with meta-qt5 and meta-fsl-arm layer for my imx6 (=
Humming Board 2 - Armv7) board, it gave an error on compilation of the &quo=
t;jason-glib&quot;. I would suprised if my image was builded without errors=
. I never could have finished a Yocto or Qt-cross building in my life...</d=
iv><div><br></div><div>So, my error log is,</div><div><br></div><div>Got pk=
gconfig variable girdir : <br>Program g-ir-scanner found: YES (/home/closx/=
poky/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/json-glib/1.4.2-=
r0/recipe-sysroot-native/usr/bin/g-ir-scanner)<br>Adding test &quot;array&q=
uot;.<br>Adding test &quot;boxed&quot;.<br>Adding test &quot;builder&quot;.=
<br>Adding test &quot;generator&quot;.<br>Adding test &quot;gvariant&quot;.=
<br>Adding test &quot;invalid&quot;.<br>Adding test &quot;node&quot;.<br>Ad=
ding test &quot;object&quot;.<br>Adding test &quot;parser&quot;.<br>Adding =
test &quot;path&quot;.<br>Adding test &quot;reader&quot;.<br>Adding test &q=
uot;serialize-simple&quot;.<br>Adding test &quot;serialize-complex&quot;.<b=
r>Adding test &quot;serialize-full&quot;.<br>ERROR: meson failed<br>WARNING=
: exit code 1 from a shell command.<br>ERROR: Function failed: do_configure=
 (log file is located at /home/closx/poky/build/tmp-glibc/work/cortexa9hf-n=
eon-oe-linux-gnueabi/json-glib/1.4.2-r0/temp/log.do_configure.13333)</div><=
div><br></div><div>Thanks,</div><div>Have a good day!</div><div>Onur<br></d=
iv></div>

--000000000000a9a4e5058cd6ff32--
