Return-Path: <giuseppe.diguglielmo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEA8FE009AA; Fri,  5 May 2017 07:40:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (giuseppe.diguglielmo[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99BC2E00970
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 07:40:25 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id p24so10968845ioi.0
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 07:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=KnHC1AjbSubd/eneEPqfy+azzghuRhaTpBLg6PdQNeM=;
	b=n+gd/3qaP7DWWlem1DOCu1OL+u2QAOClMMjClVpwqZoVN4kmFhkZ/J8Sj17nQus1X4
	N7bRtTYBsikhJzqmE6my8qJ6Ub3H/2tX2Z9NAGIgXI71Q4UB4rCWMJS/jguxhp0FbgeS
	vK4P1AqOCmko9Ug7GunzQqUUytYwq8c+rBrifBBR0qSwEfvB5ziR1JOoQxWs9coK7sRQ
	eHNqhuaqHmd5d/z0XTztjXyfHd9urXpMCUY8fbA7QQg+fn/Cyy04uPDNYL78kDRu11D9
	5r3OxKCZpNvCUBFTegeeylZgDDlk7yAWa380V9yoPijnJk4K1fpKt1x1FMaBK10c6c7g
	Rl3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KnHC1AjbSubd/eneEPqfy+azzghuRhaTpBLg6PdQNeM=;
	b=LSNgZiUBuCoafCrpq/BIN1peHFsRwYLp56pYrdt5fOitrDlzUFewYMYDQRUSJYQgX5
	6TqMFBoB4+8HwBw+mO5dGViuW4jKHVTOUH2VeqkWkU8qXQLyilVMxdzYKqvEflD2mgAD
	jpVJi9kLoVJZuU42TUnmCL1qFq/kNRBnp9+lDRdteXxrLjVuzNKzyFyTly44ZLFqX8NL
	x5c6qrCvRjXSqyxiS8s2++nCZbi5X/s5pLvY9YWHLe8ulKqLnljoUiX1lJxtDs/RxADI
	CRPAdiSXu2EZw1EsJv7C9h3gITG7Uo0M2BWZ4xytcbPJzbSgU7aOnppcL2vfGNBcnb5c
	dGzA==
X-Gm-Message-State: AN3rC/5L8ZhAIqvAP4ONl8U86uDJ0e3jP6qlie9sdc9LeBoaNxArx0da
	ziaVAXn5ZwBDd6OkZXjtPTtzGBG3ikZx
X-Received: by 10.107.31.78 with SMTP id f75mr56703517iof.44.1493995224358;
	Fri, 05 May 2017 07:40:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.208.9 with HTTP; Fri, 5 May 2017 07:40:23 -0700 (PDT)
From: Giuseppe Di Guglielmo <giuseppe.diguglielmo@gmail.com>
Date: Fri, 5 May 2017 10:40:23 -0400
Message-ID: <CAOiuDAXJjtK37Zx-7WmoUW9PUXQPdBLorcx7d17=s3gEwaqutg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Creating a new recipe
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
X-List-Received-Date: Fri, 05 May 2017 14:40:27 -0000
X-Groupsio-MsgNum: 35894
Content-Type: multipart/mixed; boundary=001a114043cca558df054ec7de3c

--001a114043cca558df054ec7de3c
Content-Type: multipart/alternative; boundary=001a114043cca558d9054ec7de3a

--001a114043cca558d9054ec7de3a
Content-Type: text/plain; charset=UTF-8

Hi all,
I am trying to create a new recipe for Bazel (from Google):
https://bazel.build/versions/master/docs/install-compile-source.html

The standard compilation flow is relatively simple: "Unzip the archive and
call bash ./compile.sh; this will create a bazel binary in output/bazel.
This binary is self-contained, so it can be copied to a directory on the
PATH (such as /usr/local/bin) or used in-place."

I need some support on how to debug the recipe file that I attach.

In do_compile(), I run bash ./compile.sh. This requires the JAVA_HOME
variable that I export hard-coded because at the moment I do not know how
to fetch that path in a recipe. At this point the compile.sh fails and I do
not know how to debug. Please, can you have a look at it and provide me
some comments?

do_compile () {
        export
JAVA_HOME=/home/giuseppe/research/projects/zynq/yocto/build/tmp/work/zc702_zynq7-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/usr/lib/jvm/openjdk-8
        bash ./compile.sh
}

Giuseppe

--001a114043cca558d9054ec7de3a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div>I am trying to create a new recipe for Bazel (=
from Google):</div><div><a href=3D"https://bazel.build/versions/master/docs=
/install-compile-source.html">https://bazel.build/versions/master/docs/inst=
all-compile-source.html</a><br></div><div><br></div><div>The standard compi=
lation flow is relatively simple:=C2=A0<span style=3D"color:rgb(68,68,68);f=
ont-family:robotodraft,&quot;helvetica neue&quot;,helvetica,arial,sans-seri=
f;font-size:14px">&quot;Unzip the archive and </span>call=C2=A0<code style=
=3D"font-size:13px;box-sizing:border-box;font-family:&quot;source code pro&=
quot;,monospace;padding:2px 4px;color:rgb(199,37,78);background-color:rgb(2=
49,249,249);border-radius:4px">bash ./compile.sh</code>;<span style=3D"colo=
r:rgb(68,68,68);font-family:robotodraft,&quot;helvetica neue&quot;,helvetic=
a,arial,sans-serif;font-size:14px"> this will create a </span>bazel<span st=
yle=3D"color:rgb(68,68,68);font-family:robotodraft,&quot;helvetica neue&quo=
t;,helvetica,arial,sans-serif;font-size:14px"> binary </span>in=C2=A0<code =
style=3D"font-size:13px;box-sizing:border-box;font-family:&quot;source code=
 pro&quot;,monospace;padding:2px 4px;color:rgb(199,37,78);background-color:=
rgb(249,249,249);border-radius:4px">output/bazel</code>.<span style=3D"colo=
r:rgb(68,68,68);font-family:robotodraft,&quot;helvetica neue&quot;,helvetic=
a,arial,sans-serif;font-size:14px"> This binary is self-contained, so it ca=
n be copied to a directory on the PATH (such as=C2=A0</span><code style=3D"=
font-size:13px;box-sizing:border-box;font-family:&quot;source code pro&quot=
;,monospace;padding:2px 4px;color:rgb(199,37,78);background-color:rgb(249,2=
49,249);border-radius:4px">/usr/local/bin</code><span style=3D"color:rgb(68=
,68,68);font-family:robotodraft,&quot;helvetica neue&quot;,helvetica,arial,=
sans-serif;font-size:14px">) or used </span>in-place<span style=3D"color:rg=
b(68,68,68);font-family:robotodraft,&quot;helvetica neue&quot;,helvetica,ar=
ial,sans-serif;font-size:14px">.</span>&quot;</div><div><br></div><div>I ne=
ed some support on how to debug the recipe file that I=C2=A0attach.</div><d=
iv><br></div><div>In do_compile(), I run=C2=A0<font face=3D"monospace, mono=
space" size=3D"1" color=3D"#ff0000">bash ./compile.sh</font>. This requires=
 the JAVA_HOME variable that I export hard-coded because at the moment I do=
 not know how to fetch that path in a recipe. At this point the compile.sh =
fails and I do not know how to debug. Please, can you have a look at it and=
 provide me some comments?</div><div><br></div><div><div><font face=3D"mono=
space, monospace" color=3D"#ff0000" size=3D"1">do_compile () {</font></div>=
<div><font face=3D"monospace, monospace" color=3D"#ff0000" size=3D"1">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 export JAVA_HOME=3D/home/giuseppe/research/project=
s/zynq/yocto/build/tmp/work/zc702_zynq7-poky-linux-gnueabi/core-image-minim=
al/1.0-r0/rootfs/usr/lib/jvm/openjdk-8</font></div><div><font face=3D"monos=
pace, monospace" color=3D"#ff0000" size=3D"1">=C2=A0 =C2=A0 =C2=A0 =C2=A0 b=
ash ./compile.sh</font></div><div><font face=3D"monospace, monospace" color=
=3D"#ff0000" size=3D"1">}</font></div></div><div><br></div><div>Giuseppe</d=
iv></div>

--001a114043cca558d9054ec7de3a--

--001a114043cca558df054ec7de3c
Content-Type: application/octet-stream; name="bazel.bb"
Content-Disposition: attachment; filename="bazel.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j2bxz8bo0

U1VNTUFSWSA9ICJCYXplbDogQ29ycmVjdCwgcmVwcm9kdWNpYmxlLCBhbmQgZmFzdCBidWlsZHMg
Zm9yIGV2ZXJ5b25lLiIKTElDRU5TRSA9ICJBcGFjaGUtMi4wIgpMSUNfRklMRVNfQ0hLU1VNID0g
ImZpbGU6Ly9MSUNFTlNFLnR4dDttZDU9M2I4M2VmOTYzODdmMTQ2NTVmYzg1NGRkYzNjNmJkNTci
CgpTUkNfVVJJID0gImh0dHBzOi8vZ2l0aHViLmNvbS9iYXplbGJ1aWxkL2JhemVsL3JlbGVhc2Vz
L2Rvd25sb2FkLzAuNC41L2JhemVsLTAuNC41LWRpc3QuemlwIgpTUkNfVVJJW21kNXN1bV0gPSAi
ZTQ1ZmY5YjMxYmMzYzgxMTE2N2FiODU5MzBiZDYzNzgiClNSQ19VUklbc2hhMjU2c3VtXSA9ICIy
YjczN2JlNDI2Nzg5MDA0NzBhZTllNDhjOTc1YWM1YjIyOTZkOWFlMjNjMDA3YmYxMTgzNTBkYmU3
YzA1NTJiIgoKCkRFUEVORFMgPSAib3Blbmpkay04IgoKaW5oZXJpdCBqYXZhLWxpYnJhcnkKCmRv
X3VucGFjayAoKSB7CiAgICAgICAgdW56aXAgJHtQTn0tMC40LjUtZGlzdC56aXAKICAgICAgICBl
Y2hvICR7bGliZGlyfQp9Cgpkb19jb25maWd1cmUgKCkgewogICAgICAgIDoKfQoKZG9fY29tcGls
ZSAoKSB7CglleHBvcnQgSkFWQV9IT01FPS9ob21lL2dpdXNlcHBlL3Jlc2VhcmNoL3Byb2plY3Rz
L3p5bnEveW9jdG8vYnVpbGQvdG1wL3dvcmsvemM3MDJfenlucTctcG9reS1saW51eC1nbnVlYWJp
L2NvcmUtaW1hZ2UtbWluaW1hbC8xLjAtcjAvcm9vdGZzL3Vzci9saWIvanZtL29wZW5qZGstOAog
ICAgICAgIGJhc2ggLi9jb21waWxlLnNoCn0KCmRvX2luc3RhbGwgKCkgewoJOgp9Cgo=

--001a114043cca558df054ec7de3c--
