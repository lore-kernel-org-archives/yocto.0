Return-Path: <bachmmar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5744BE00C4F; Thu, 15 Sep 2016 22:49:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bachmmar[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 707D1E00C46
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 22:49:27 -0700 (PDT)
Received: by mail-lf0-f41.google.com with SMTP id h127so58629032lfh.0
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 22:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=x5NSO5lEUXx7v+aQjD9AodI4aCICYh5Jkmn2z5RkDqs=;
	b=dsAeP8Q8QzwuCEGx9WGeOVYpUmMnIdF9JGRXJz/wFK8RZKfIKRUPIZGLF4Ip8W2JlW
	mOfbS+xZnS5rsLqqI+t6twLhk2c+M22djoLkEh3ZSsEopLnXPtpuEwpZD3dd+opGe0P1
	1VK0UmCoL89MMWWEw8wjwKoekfkWZs2P10Rz81QhMbhxl+GkkFA0KhBv7vdOZ7G7vurY
	8nkzFggnUZ49edWqNaEjmRrcjK9b2qxhhUN1nAXJ/TVX/WLevW+a7wUHHqfV8UwthGo9
	Mqpk1tiJ5+b7WmKxN8Fg6myJfceGU4ZfyjKX/8LN9UHNlkm/4hiPFkNhfPfzyYIA1m40
	vycQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=x5NSO5lEUXx7v+aQjD9AodI4aCICYh5Jkmn2z5RkDqs=;
	b=QDw45XL5WNr/Lj4o6Yr4K2YZKTqSrk2/Qbd+9wk67/n/OwX0PoIRydD0Vjzti0NegR
	iFtmZ+O4vTeyJzM0Q2zjX3UoVZEOVGZcfMnvsT2//hD1BG7pEkp9U8UxOaKErLxqOdeV
	YVeddBU4i98Wd6dvIY/xolfdbz6IHo1hzIbJKtK6Vm4f3G5ApYN8ewH+JSKeM8b9iS9d
	Sqm/PEysiTCvClfGBoPpmXIxFwtH2NoqlUC5W0Sei9YSe9mOmVxITidqZMTlTNUuSCzU
	Nt0bTQm2oEVgES03/a7FrWE+Ez/p8CERlgTAH4ye5gxH3Sivs4QGLHMuvTWPxC2Yn07b
	f5bQ==
X-Gm-Message-State: AE9vXwMuRFNpJdUHSsOaB3wD+TYvM+xqEUdNkBeSLRvmBIxmtXImhsRRCEbvv2jJQ2t8/ps8pHu4j0HeiWus5Q==
X-Received: by 10.25.166.2 with SMTP id p2mr5039713lfe.134.1474004966508; Thu,
	15 Sep 2016 22:49:26 -0700 (PDT)
MIME-Version: 1.0
From: Martin Bachmann <bachmmar@gmail.com>
Date: Fri, 16 Sep 2016 05:49:15 +0000
Message-ID: <CAKS7W1q_uWwcoo69j6MYC0VNSxtY9fc9hQ7jEB7o+4Mq4qB7wQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to compile and install a recipe natively
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
X-List-Received-Date: Fri, 16 Sep 2016 05:49:29 -0000
Content-Type: multipart/alternative; boundary=001a11411d666d0dfc053c99861a

--001a11411d666d0dfc053c99861a
Content-Type: text/plain; charset=UTF-8

How can i instruct yocto to compile and install a package for example
opencv natively and for the target.
In my recipe I've added RDEPENDS += "opencv " and yocto installs the
libraries in the target rootfs. But now i'd like the libraries compiled
natively and installed to x86_x64-linux rootfs. This would allow me to
unittest my application on the host.

I've added "BBCLASSEXTEND =+ "native nativesdk "  to the opencv_3.0.bb
recipe.

If i add DEPENDS += "opencv-native " to my recipe nothing will be installed
to x86_x64-linux.
If i add RDEPENDS += "opencv-native " i get:
"WARNING: QA Issue: testrecipe rdepends on opencv-native, but it isn't a
build dependency?" and
"error: Can't install testrecipe-1.0-r0@arm1176jzfshf_vfp: no package
provides opencv-native"

Has anyone done something like that?

--001a11411d666d0dfc053c99861a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How can i instruct yocto to compile and install a package =
for example opencv natively and for the target.<div>In my recipe I&#39;ve a=
dded RDEPENDS=C2=A0+=3D &quot;opencv &quot; and yocto installs the librarie=
s in the target rootfs. But now i&#39;d like the libraries compiled nativel=
y and installed to x86_x64-linux rootfs. This would allow me to unittest my=
 application on the host.</div><div><br></div><div><span style=3D"line-heig=
ht:1.5">I&#39;ve added &quot;</span>BBCLASSEXTEND =3D+ &quot;native natives=
dk &quot; =C2=A0to the <a href=3D"http://opencv_3.0.bb">opencv_3.0.bb</a> r=
ecipe.=C2=A0<br></div><div><br></div><div>If i add=C2=A0<span style=3D"line=
-height:1.5">DEPENDS=C2=A0</span><span style=3D"line-height:1.5">+=3D &quot=
;opencv-native &quot; to my recipe nothing will be installed to x86_x64-lin=
ux.</span></div><div><span class=3D"inbox-inbox-Apple-converted-space" styl=
e=3D"line-height:1.5">If i add=C2=A0</span><span style=3D"line-height:1.5">=
RDEPENDS=C2=A0</span><span style=3D"line-height:1.5">+=3D &quot;opencv-nati=
ve &quot; i get:</span></div><div><span style=3D"line-height:1.5">&quot;W</=
span>ARNING: QA Issue: testrecipe rdepends on opencv-native, but it isn&#39=
;t a build dependency?&quot;<span class=3D"inbox-inbox-Apple-converted-spac=
e" style=3D"line-height:1.5">=C2=A0and=C2=A0</span></div><div><span class=
=3D"inbox-inbox-Apple-converted-space" style=3D"line-height:1.5">&quot;erro=
r: Can&#39;t install testrecipe-1.0-r0@arm1176jzfshf_vfp: no package provid=
es opencv-native&quot;</span></div><div><br></div><div>Has anyone done some=
thing like that?</div></div>

--001a11411d666d0dfc053c99861a--
