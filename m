Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18FCBE00A38; Fri,  7 Aug 2015 02:25:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yoctomailinglist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DD33E009FD
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 02:25:40 -0700 (PDT)
Received: by qged69 with SMTP id d69so70725772qge.0
	for <yocto@yoctoproject.org>; Fri, 07 Aug 2015 02:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Fsvhp31Up2w23Mj+kVnVGqf8Jc9cNymOx6YFXN1X3Ak=;
	b=AFC7H3gubifk5ahc4Z5FX5Sz1WsPemPfdoybG1TLkXwojYs4/aCUhjIzShmJXj3NZZ
	dNKKLnOWRUenEE2gzuFjEzNtTn1Pk0gzCIKP7br0brRCvxSIjJ1Ev4j1iJoeESx8+ZbG
	WdEneDCbPEL4nHD1H2ggZYxaerDMyyicpUuGAB/yuOxS0UUnJaM/9aAp3Vs9cHp+pdSO
	CEQnDJ5sw34KQjjBIFQtpOHTyFdZjUKQsM7kYhE9te4YLXo/gb9BNkw2QhzMej77hQWB
	XDkHoAjXOVF3cahAUWOZ+6l61Pm1ICyUQRPKYapeTOd/mIOFA0QDY4UygTTBBwqc4QNq
	hhog==
MIME-Version: 1.0
X-Received: by 10.140.133.145 with SMTP id 139mr11837750qhf.76.1438939540272; 
	Fri, 07 Aug 2015 02:25:40 -0700 (PDT)
Received: by 10.140.39.148 with HTTP; Fri, 7 Aug 2015 02:25:40 -0700 (PDT)
Date: Fri, 7 Aug 2015 11:25:40 +0200
Message-ID: <CACTu1LisUnCWjJxrPeUnYyZRpcAoCEA9YQ6QduJhDjH8DFEnYA@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: yocto@yoctoproject.org
Subject: libmcrypt not part of the image
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
X-List-Received-Date: Fri, 07 Aug 2015 09:25:42 -0000
Content-Type: multipart/alternative; boundary=001a1136f73626b9ea051cb53853

--001a1136f73626b9ea051cb53853
Content-Type: text/plain; charset=UTF-8

I added the meta-openembedded layer to my configuration. I want to have
libmcrypt (in meta-openembedded/meta-oe/recipes-support) on my system:

IMAGE_INSTALL += "libmcrypt"

The library (libmcrypt.so) is actually being built. Everything is located
in "libmcrypt/2.5.8-r0/package/usr", however after flashing the image
libmcrypt is not part of the filesystem.

I tried writing some kind of "libmcrypt_%.bbappend" with

do_install() {
install -m 0755 ${WORKDIR}/package/usr ${D}/
}

However, I get a bitbake error that do_install failed but there is exact
message. Any ideas how to solve this properly?

--001a1136f73626b9ea051cb53853
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I added the meta-openembedded layer to my configuration. I=
 want to have libmcrypt (in meta-openembedded/meta-oe/recipes-support) on m=
y system:<div><br></div><div>IMAGE_INSTALL +=3D &quot;libmcrypt&quot;<br></=
div><div><br></div><div>The library (libmcrypt.so) is actually being built.=
 Everything is located in &quot;libmcrypt/2.5.8-r0/package/usr&quot;, howev=
er after flashing the image libmcrypt is not part of the filesystem.</div><=
div><br></div><div>I tried writing some kind of &quot;libmcrypt_%.bbappend&=
quot; with</div><div><br></div><div><div>do_install() {</div><div><span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">	</span>install -m 0755 ${W=
ORKDIR}/package/usr ${D}/</div><div>}</div></div><div><br></div><div>Howeve=
r, I get a bitbake error that do_install failed but there is exact message.=
 Any ideas how to solve this properly?</div><div><br></div><div><br></div><=
/div>

--001a1136f73626b9ea051cb53853--
