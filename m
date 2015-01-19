Return-Path: <sm0ketst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EA65E0070B; Mon, 19 Jan 2015 05:13:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sm0ketst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
Received: from mail-yk0-f179.google.com (mail-yk0-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18819E004F2
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 05:13:14 -0800 (PST)
Received: by mail-yk0-f179.google.com with SMTP id 19so14534737ykq.10
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 05:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tJoasMb0FxKC3zKnLhrIR9BIhcoUpWALqAmOW/GKi40=;
	b=u4AMzKPhFHOmkQ0GIohNT+TMTqems3Edvxvw1QOigJFBFy2iXtEkD1reBNTJgLEYoK
	q/YwpCqnuSvP7qCeJykfxne6n0xxJWAtwkzVWQXJn6gwioqZzR6aILW89Gx+ziY3Oc++
	C0fJYwTMGP9H8yAM5ibUHTy+0xZLArcrZ8lyZ1rhaXG6YIOWL1eNbkgMk2YCnurSN5mV
	+rzEWbIP9tu+S7EX9tobd+CrMbAAiT1HxjghkLqx3HIvYZJiQkWDQBRltbxxpSib3O8/
	aFkZ1mzFJlbD4Xe198rWIz9ABnNjgatzza5PK30qLqX7PEHb+hbfHz/4DCU0+L9/Z6No
	/2hg==
MIME-Version: 1.0
X-Received: by 10.236.29.17 with SMTP id h17mr18285523yha.188.1421673193035;
	Mon, 19 Jan 2015 05:13:13 -0800 (PST)
Received: by 10.170.166.87 with HTTP; Mon, 19 Jan 2015 05:13:12 -0800 (PST)
Date: Mon, 19 Jan 2015 14:13:12 +0100
Message-ID: <CABMtxuza7K7iQOKC+zTeq77wZqgqeL9KoFPjsz50aYd3sqJKqw@mail.gmail.com>
From: "J.J. Garcia" <sm0ketst@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-mingw] No recipes available for: gdb-cross-canadian_7.8.1.bbappend
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
X-List-Received-Date: Mon, 19 Jan 2015 13:13:17 -0000
Content-Type: multipart/alternative; boundary=089e0158b50ca85e33050d0115bb

--089e0158b50ca85e33050d0115bb
Content-Type: text/plain; charset=UTF-8

Hello all,

I'm trying to get the toolchain for windows/mingw and im having the
following message when "bitbake meta-toolchain"

ERROR: No recipes available for:

/home/jjgarcia/Development/yocto/es-devel/yocto/poky/meta-mingw/recipes-devtools/gdb/gdb-cross-canadian_7.8.1.bbappend

I'm trying with:

$ git clone -b dizzy git://git.yoctoproject.org/poky.git
$ cd poky; git clone git://git.yoctoproject.org/meta-mingw

Configuring as follow:
- local.conf with
MACHINE ??= "genericx86"
SDKMACHINE ?= "i686-mingw32"
PACKAGE_CLASSES ?= "package_deb"

and
- bblayers.conf
BBLAYERS ?= " \
  ... (adding)
  /home/jjgarcia/Development/yocto/es-devel/yocto/poky/meta-mingw \

Help appreciated,

Thanks in advance,

Regards

JJ

--089e0158b50ca85e33050d0115bb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><br></div><div>I&#39;m trying to get the to=
olchain for windows/mingw and im having the following message when &quot;bi=
tbake meta-toolchain&quot;=C2=A0</div><div><div><br></div><div>ERROR: No re=
cipes available for:</div><div>=C2=A0 /home/jjgarcia/Development/yocto/es-d=
evel/yocto/poky/meta-mingw/recipes-devtools/gdb/gdb-cross-canadian_7.8.1.bb=
append</div></div><div><br></div><div>I&#39;m trying with:</div><div><br></=
div><div>$ git clone -b dizzy git://<a href=3D"http://git.yoctoproject.org/=
poky.git">git.yoctoproject.org/poky.git</a><br></div><div>$ cd poky; git cl=
one git://<a href=3D"http://git.yoctoproject.org/meta-mingw">git.yoctoproje=
ct.org/meta-mingw</a></div><div><br></div><div>Configuring as follow:</div>=
<div>- local.conf with=C2=A0</div><div><div>MACHINE ??=3D &quot;genericx86&=
quot;</div><div>SDKMACHINE ?=3D &quot;i686-mingw32&quot;<br></div></div><di=
v><div>PACKAGE_CLASSES ?=3D &quot;package_deb&quot;</div></div><div><br></d=
iv><div>and=C2=A0</div><div>- bblayers.conf=C2=A0</div><div><div>BBLAYERS ?=
=3D &quot; \</div><div>=C2=A0 ... (adding)</div><div>=C2=A0 /home/jjgarcia/=
Development/yocto/es-devel/yocto/poky/meta-mingw \<br></div></div><div><br>=
</div><div>Help appreciated,</div><div><br></div><div>Thanks in advance,</d=
iv><div><br></div><div>Regards</div><div><br></div><div>JJ</div><div><br></=
div></div>

--089e0158b50ca85e33050d0115bb--
