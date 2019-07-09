Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60D4CE00C81; Mon,  8 Jul 2019 22:52:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C39DE00C6A
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 22:52:53 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id j5so21227861ioj.8
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2019 22:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jiss3HS69pT9kNvhEP8Bazr7vG594amvD7Um6pOanjM=;
	b=SjSj0g868SdZvCotvYri2CLze2QM5cuS+uXMqaRm4mjmNosM058s29AgB3fqQDb+Lf
	w7DSGmOsPZA7i2Hu5FwuailwOuBt1Son9BFhH3X0w4ol6WsE0grJWNXDUKDDJbKkK8w0
	TbUTVjmpy4LOlnX8bB7Vz4SFnOfcfU1mzT/gqOq1eScjV/GhaCqDQqqLrrpvg0d6ZMYn
	j6BZzAMdBGkF9anjl7Xhd1IHN+qGcQWEIkCLiT0AQ84mb/K3NTkUfEo1roMa2OdnbwhQ
	vBHgM//byxs4nGf3eBRz4u84lPxTLragd358qgLlXtWFIpr4Qpw4kIAcPushwTI9jI+3
	h/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jiss3HS69pT9kNvhEP8Bazr7vG594amvD7Um6pOanjM=;
	b=UVTt6VfGPUMDEkzTxBkK+hM9S4qr8IFz6ZmIe4E9iBRdRi5MEqgHrrz4KqojKQncr2
	SLzMLK2f6Vi8iRKLLAZ8EUirlvyMT4nAIhBA40F0gUAXg/UokdXH5hHc24sjFqYnIbyx
	upR0luacGiTeEtebr8wNdEmxcRFUlH48et8XRswqLbKPv++Wi7JV4nn+L7tP7ihTXVEE
	SsiqLnB5y+6td+qoavs7hxOKitt6gfFdGu71e/QJwFCb4YptfGAkOfoOQVUfJPXJtVC+
	Z5szOounSSDbwM55piR4pJh+8HOZadzJS12dVF+BU3C3RZX3pppp2zAkwCDmzo+MjTLk
	yWVg==
X-Gm-Message-State: APjAAAWNJmkpSDcS7ZYkpwjMlhoc02PLA+/qhchGW1Wayy+FowQDu/xj
	Gx8bBBhMi5gpBjDoq6XEuVmdgqqv2iJeFVRbRKd6NQJC0EA=
X-Google-Smtp-Source: APXvYqy7nEcAujv91qozNMoxC/NL4oFC1eLlHpG92NLbW+H9Bgl2+jB+AZJFFAjYCUlUQ1TXdQS6WV18ECpcT6PheFA=
X-Received: by 2002:a02:914c:: with SMTP id b12mr26845743jag.105.1562651573227;
	Mon, 08 Jul 2019 22:52:53 -0700 (PDT)
MIME-Version: 1.0
From: Onur Eser <onureser12@gmail.com>
Date: Tue, 9 Jul 2019 08:52:41 +0300
Message-ID: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
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
X-List-Received-Date: Tue, 09 Jul 2019 05:52:55 -0000
Content-Type: multipart/alternative; boundary="000000000000ee1553058d392b33"

--000000000000ee1553058d392b33
Content-Type: text/plain; charset="UTF-8"

Hello All,

I have talked to my BSP provider and they have solved the conflict files
issue with an update. Now I am able to create and boot a Yocto Image with
Meta-Qt5 recipes and 'dev_pkgs' in it. But still cannot create a toolchain.
Nor with I guess it is trying to compile something before qtdeclarative,
but these 'something' depends on qtdeclarative.

My image is core image is Weston. I added the line 'inherit
populate_sdk_qt5' to my core-image-weston.bb file. And tried both commands
'bitbake meta-toolchain-qt5' and 'bitbake -c populate_sdk
core-image-weston'. The result is the same.

I cut just the error part of my output:

| cd qdeclarativefolderlistmodel/ && ( test -e Makefile ||
/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/recipe-sysroot-native/usr/bin/qt5/qmake
-o Makefile
/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/git/tests/auto/declarative/qdeclarativefolderlistmodel/
qdeclarativefolderlistmodel.pro ) && make -f Makefile
| Project ERROR: Unknown module(s) in QT: declarative widgets
| Makefile:88: recipe for target 'sub-qdeclarativecomponent-make_first'
failed
| make[2]: *** [sub-qdeclarativecomponent-make_first] Error 3
| make[2]: *** Waiting for unfinished jobs....
| Project ERROR: Unknown module(s) in QT: declarative
| Project ERROR: Unknown module(s) in QT: declarative
| Makefile:113: recipe for target 'sub-qdeclarativecontext-make_first'
failed
| make[2]: *** [sub-qdeclarativecontext-make_first] Error 3
| Project ERROR: Unknown module(s) in QT: declarative
| Makefile:138: recipe for target 'sub-qdeclarativeengine-make_first' failed
| make[2]: *** [sub-qdeclarativeengine-make_first] Error 3
| Makefile:63: recipe for target 'sub-parserstress-make_first' failed
| make[2]: *** [sub-parserstress-make_first] Error 3
| make[2]: Entering directory
'/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual/declarative'
| make[2]: Nothing to be done for 'first'.
| make[2]: Leaving directory
'/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual/declarative'
| make[1]: Leaving directory
'/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual'
| Project ERROR: Unknown module(s) in QT: declarative
| Makefile:163: recipe for target 'sub-qdeclarativeerror-make_first' failed
| make[2]: *** [sub-qdeclarativeerror-make_first] Error 3
| Project ERROR: Unknown module(s) in QT: declarative
| Makefile:188: recipe for target
'sub-qdeclarativefolderlistmodel-make_first' failed
| make[2]: *** [sub-qdeclarativefolderlistmodel-make_first] Error 3
| make[2]: Leaving directory
'/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/auto/declarative'
| Makefile:45: recipe for target 'sub-declarative-make_first' failed
| make[1]: *** [sub-declarative-make_first] Error 2
| make[1]: Leaving directory
'/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/auto'
| Makefile:45: recipe for target 'sub-auto-make_first' failed
| make: *** [sub-auto-make_first] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile_ptest_base (log file is located at
/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/temp/log.do_compile_ptest_base.29566)
ERROR: Task (/home/closx/poky/meta-qt5/recipes-qt/qt5/qtquick1_git.bb:do_compile_ptest_base)
failed with exit code '1'

What do you guys think the reason of this issue may be? Any solution offers?

My full output:
https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX

Another source issue again?
Have a lovely day!
Onur

--000000000000ee1553058d392b33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,</div><div><br><div>I have talked to my BSP=
 provider and they have solved the conflict files issue with an update. Now=
 I am able to create and boot a Yocto Image with Meta-Qt5 recipes and &#39;=
dev_pkgs&#39; in it. But still=20
cannot create a toolchain. Nor with I guess it is trying to compile somethi=
ng=20
before qtdeclarative, but these &#39;something&#39; depends on qtdeclarativ=
e.</div><div><br></div><div>My image is core image is Weston. I added the l=
ine &#39;inherit populate_sdk_qt5&#39; to my <a href=3D"http://core-image-w=
eston.bb">core-image-weston.bb</a> file. And tried both commands &#39;bitba=
ke meta-toolchain-qt5&#39; and &#39;bitbake -c populate_sdk core-image-west=
on&#39;. The result is the same.<br></div><div><br></div><div>I cut just th=
e error part of my output:</div><div><br></div><div>| cd qdeclarativefolder=
listmodel/ &amp;&amp; ( test -e Makefile || /home/closx/poky/build/tmp/work=
/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r=
0/recipe-sysroot-native/usr/bin/qt5/qmake -o Makefile /home/closx/poky/buil=
d/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2=
476dcd53-r0/git/tests/auto/declarative/qdeclarativefolderlistmodel/<a href=
=3D"http://qdeclarativefolderlistmodel.pro" target=3D"_blank">qdeclarativef=
olderlistmodel.pro</a> ) &amp;&amp; make -f Makefile<br>| Project ERROR: Un=
known module(s) in QT: declarative widgets<br>| Makefile:88: recipe for tar=
get &#39;sub-qdeclarativecomponent-make_first&#39; failed<br>| make[2]: ***=
 [sub-qdeclarativecomponent-make_first] Error 3<br>| make[2]: *** Waiting f=
or unfinished jobs....<br>| Project ERROR: Unknown module(s) in QT: declara=
tive<br>| Project ERROR: Unknown module(s) in QT: declarative<br>| Makefile=
:113: recipe for target &#39;sub-qdeclarativecontext-make_first&#39; failed=
<br>| make[2]: *** [sub-qdeclarativecontext-make_first] Error 3<br>| Projec=
t ERROR: Unknown module(s) in QT: declarative<br>| Makefile:138: recipe for=
 target &#39;sub-qdeclarativeengine-make_first&#39; failed<br>| make[2]: **=
* [sub-qdeclarativeengine-make_first] Error 3<br>| Makefile:63: recipe for =
target &#39;sub-parserstress-make_first&#39; failed<br>| make[2]: *** [sub-=
parserstress-make_first] Error 3<br>| make[2]: Entering directory &#39;/hom=
e/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.1=
0.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual/declarative&#39;<br>| make[=
2]: Nothing to be done for &#39;first&#39;.<br>| make[2]: Leaving directory=
 &#39;/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qt=
quick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual/declarative&#39;<=
br>| make[1]: Leaving directory &#39;/home/closx/poky/build/tmp/work/cortex=
a9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build=
/tests/manual&#39;<br>| Project ERROR: Unknown module(s) in QT: declarative=
<br>| Makefile:163: recipe for target &#39;sub-qdeclarativeerror-make_first=
&#39; failed<br>| make[2]: *** [sub-qdeclarativeerror-make_first] Error 3<b=
r>| Project ERROR: Unknown module(s) in QT: declarative<br>| Makefile:188: =
recipe for target &#39;sub-qdeclarativefolderlistmodel-make_first&#39; fail=
ed<br>| make[2]: *** [sub-qdeclarativefolderlistmodel-make_first] Error 3<b=
r>| make[2]: Leaving directory &#39;/home/closx/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/=
tests/auto/declarative&#39;<br>| Makefile:45: recipe for target &#39;sub-de=
clarative-make_first&#39; failed<br>| make[1]: *** [sub-declarative-make_fi=
rst] Error 2<br>| make[1]: Leaving directory &#39;/home/closx/poky/build/tm=
p/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476d=
cd53-r0/build/tests/auto&#39;<br>| Makefile:45: recipe for target &#39;sub-=
auto-make_first&#39; failed<br>| make: *** [sub-auto-make_first] Error 2<br=
>| ERROR: oe_runmake failed<span class=3D"gmail-im"><br>| WARNING: exit cod=
e 1 from a shell command.<br></span>| ERROR: Function failed: do_compile_pt=
est_base (log file is located at /home/closx/poky/build/tmp/work/cortexa9hf=
-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/temp/log.=
do_compile_ptest_base.29566)<span class=3D"gmail-im"><br>ERROR: Task (/home=
/closx/poky/meta-qt5/recipes-qt/qt5/qtquick1_git.bb:do_compile_ptest_base) =
failed with exit code &#39;1&#39;</span></div><div><span class=3D"gmail-im"=
><br></span></div><div><span class=3D"gmail-im">What do you guys think the =
reason of this issue may be? Any solution offers?<br></span></div><div><br>=
</div><div>My full output:</div><div><a href=3D"https://paste.ee/p/PupWr#Ep=
vqnw9FoasgQEBhIXqQ8hH7veMcRybX" target=3D"_blank">https://paste.ee/p/PupWr#=
Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX</a></div><div><br></div><div>Another sourc=
e issue again?</div><div>Have a lovely day!<br></div><div>Onur<br></div></d=
iv></div>

--000000000000ee1553058d392b33--
