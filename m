Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EE12E00D75; Wed, 18 Sep 2019 01:26:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4ED5E008C8
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 01:26:40 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id c3so7835015qtv.10
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 01:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=agfntXOVeVBQN484WeIOZ5CCF5ktzMaDP8Fyyzy02SM=;
	b=FSZ+sFS2QQeLQKWq5AWe+Q6Yc8I/vlgNpmFFP4H/t8D2fg/3HIu3VCztHeKt7n6w1v
	bPlvWm5mh9TY61FGq9BrDZ58c8P3H07WBcCwU4/Ips1kFmf1J60UoBBZqQZ+5heSipCT
	9JECv8WbCshob1faV2YE1wj8w9rR+kTN0VveQrbxqTX4syS6FPdsxwxS69LlwZa8A1vJ
	/nn6TCb1q/ir3voGXLMVtUPjdVBepyce6bq2fWdwaoOwOR46R5JXeelnoisuNPPSMuI9
	/oe2VEcvwY82qLcu/oGLlAf9V0Xlgz8cDId35oop4HXIXK308R3cnao6TH2/8sX+09Y4
	6tfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=agfntXOVeVBQN484WeIOZ5CCF5ktzMaDP8Fyyzy02SM=;
	b=b3f70FJFEXz08705ybgO72zH81DhLPDTwv2899ptjBNyUJFOog10maCztDYqTjxBwi
	2fTY/QwrbCRL+BLgaRnyHp5BvPKvXYI2g8KFRwf90f8LtSijvO/Lu17WZ26E75EBkhOe
	dRYimCnkBbWJL5xbidW9IaNJBc96JCSfRszuo+iWjjr+lPQPycXHglebwkliao8XNwOV
	kgp/urrC00ygpQ6Vb8y/5flwEYnP6GdQrraldssLfFb1aWHdXjUzNsa3JZReqweYye4u
	2UYkLz9M0i9vCSLp85CEAVG2addf8dE6OrKf683ebz8C0wIz0INjYFvU7N9k0aGmjtUs
	ezpA==
X-Gm-Message-State: APjAAAVfkbp/OqFCGBTl9qZK1j5A1NKUDwiFGYO1WkmBwxNV/cf5AzzJ
	Gu0AHoClvh5uJr+mx2YTTvlCNZ+JQkkLJdhWeR67qx8=
X-Google-Smtp-Source: APXvYqwXnS+yKZymf50hNCWmUBqlvM6WS0/bn6TjInhDYZloG5RQ7GbPiVG1s6c459MhpXXdz6b0W4nJNyPFIGAhPZE=
X-Received: by 2002:aed:3687:: with SMTP id f7mr2837703qtb.195.1568795199934; 
	Wed, 18 Sep 2019 01:26:39 -0700 (PDT)
MIME-Version: 1.0
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Wed, 18 Sep 2019 11:26:29 +0300
Message-ID: <CA+FhBv9bStUZ1kMrmxRh7AnxbxT9Uth8Jh1wWtiQ-a9e7SXKPA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Changing HOST_CC_ARCH temporarily in recipe
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
X-List-Received-Date: Wed, 18 Sep 2019 08:26:42 -0000
Content-Type: multipart/alternative; boundary="0000000000009e15b80592cf985c"

--0000000000009e15b80592cf985c
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a package which requires to first build a x64 binary which is then
used to compile the target platform binaries.

The way I got away with it was to build that host binary from
do_configure_prepend() and then continue with the build procedure.

I recently upgraded to GCC7 + warrior and now building the host binary
from do_configure_prepend fails due to this error:
testCCompiler.c:1:0: error: bad value (armv8-a+crc) for -march= switch

I figured that the arch switch (building for tegra) is defined
in HOST_CC_ARCH as:
-march=armv8-a+crc -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat
-Wformat-security -Werror=format-security

If I clear HOST_CC_ARCH in my recipe file, do_configure_prepend succeeds
but of course the rest of the build will fail.

So i'm trying to do something like this:
do_configure_prepend(){
    export HOST_CC_ARCH_BACKUP="${HOST_CC_ARCH}"
    HOST_CC_ARCH=""
    echo "HOST_CC_ARCH before cmake: ${HOST_CC_ARCH}"
    CC="${BUILD_CC}" CXX="${BUILD_CXX}" CCFLAGS="${BUILD_CFLAGS}"
 CXXFLAGS="${BUILD_CPPFLAGS} -std=c++11" LDFLAGS="${BUILD_LDFLAGS}" cmake
${S}
    make
    HOST_CC_ARCH="${HOST_CC_ARCH_BACKUP}"
}

There I still get:
HOST_CC_ARCH before cmake:  -march=armv8-a+crc -fstack-protector-strong
 -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security

So HOST_CC_ARCH doesn't get updated.

How can I temporarily reset HOST_CC_ARCH?

Thanks,
-Damien

--0000000000009e15b80592cf985c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have a package which requires to =
first build a x64 binary which is then used to compile the target platform =
binaries.</div><div><br></div><div>The way I got away with it was to build =
that host binary from do_configure_prepend() and then continue with the bui=
ld procedure.</div><div><br></div><div>I recently upgraded to GCC7 + warrio=
r and now building the host binary from=C2=A0do_configure_prepend fails due=
 to this error:</div><div>testCCompiler.c:1:0: error: bad value (armv8-a+cr=
c) for -march=3D switch<br></div><div><br></div><div>I figured that the arc=
h switch (building for tegra) is defined in=C2=A0HOST_CC_ARCH as:</div><div=
>-march=3Darmv8-a+crc -fstack-protector-strong =C2=A0-D_FORTIFY_SOURCE=3D2 =
-Wformat -Wformat-security -Werror=3Dformat-security<br></div><div><br></di=
v><div>If I clear=C2=A0HOST_CC_ARCH in my recipe file, do_configure_prepend=
 succeeds but of course the rest of the build will fail.</div><div><br></di=
v><div>So i&#39;m trying to do something like this:</div><div>do_configure_=
prepend(){<br></div><div>=C2=A0 =C2=A0 export=C2=A0HOST_CC_ARCH_BACKUP=3D&q=
uot;${HOST_CC_ARCH}&quot;</div><div>=C2=A0 =C2=A0 HOST_CC_ARCH=3D&quot;&quo=
t;<br></div><div>=C2=A0 =C2=A0=C2=A0echo &quot;HOST_CC_ARCH before cmake: $=
{HOST_CC_ARCH}&quot;</div><div>=C2=A0 =C2=A0 CC=3D&quot;${BUILD_CC}&quot; C=
XX=3D&quot;${BUILD_CXX}&quot; CCFLAGS=3D&quot;${BUILD_CFLAGS}&quot; =C2=A0C=
XXFLAGS=3D&quot;${BUILD_CPPFLAGS} -std=3Dc++11&quot; LDFLAGS=3D&quot;${BUIL=
D_LDFLAGS}&quot; cmake ${S}<br></div><div>=C2=A0 =C2=A0 make</div><div>=C2=
=A0 =C2=A0 HOST_CC_ARCH=3D&quot;${HOST_CC_ARCH_BACKUP}&quot;<br></div><div>=
}</div><div><br></div><div>There I still get:</div><div>HOST_CC_ARCH before=
 cmake: =C2=A0-march=3Darmv8-a+crc -fstack-protector-strong =C2=A0-D_FORTIF=
Y_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security<br></div>=
<div><br></div><div>So=C2=A0HOST_CC_ARCH doesn&#39;t get updated.</div><div=
><br></div><div>How can I temporarily reset=C2=A0HOST_CC_ARCH?</div><div><b=
r></div><div>Thanks,</div><div>-Damien</div></div>

--0000000000009e15b80592cf985c--
