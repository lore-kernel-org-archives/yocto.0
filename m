Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2CF5E00C5B; Wed, 28 Nov 2018 16:10:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9660E009AA
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 16:10:02 -0800 (PST)
Received: by mail-wm1-f52.google.com with SMTP id c126so439824wmh.0
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 16:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=y1zt/BxqA57bIVLZ++yoA8UlTWfi5dXjGAn/WuwKNvU=;
	b=fevo4QiQtoDTRziE7E1WuEwB4jLj1grkWEPIyl1rftVDNuvL657UuH7lgJvTrl5I6h
	kTXwK7/qOZl3KTpXjP1bKQr+hX7U9UjTo4RvgFih37ZgsMn+n8d0RrBynx5w9+Ekchou
	6IB9ImmxAihx1hafPvtj69ipEsVRhHmoLgYnH8b7Y8+LUXAo8mJH14n50iCAtM6xm0j2
	snN9Ewi9EXN/Tl5EcYdHPCLqPZ3IUahf8DId2gLHYftEzCSqBzL3uttaCiPi3y2bcA6n
	vW6/sq38Xhqbcutu32v4fYmyW7VhaKCklbjTWS592Zj/Xt2Ve+Qt58C5jV5nQT2C7sYE
	IfYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=y1zt/BxqA57bIVLZ++yoA8UlTWfi5dXjGAn/WuwKNvU=;
	b=rloHyzQjkR54uAREpRLbI5ppGP3Qcr6Uebwu79TLOZJh9DQbvsu5CFVPrrOpW5DGrr
	9RYiKtzeRWuJHA8Gwxh9LI/2LBI5jZrwQAxw73nSUimy1ymYVzd15AUjwVxKRhaxPoDR
	z66HNNeBanCVWM0Qdn23d18XPiI3Ye4tlbqt1i/Da2/H0Jq5Rj2/LeuieSl4x43TYRzG
	LLqda7zkPvnB5Q7AybUkw4deeKcH/VEJHiuQHw6KV2nsAEzGmfLE+OQWh31K+zdgnbF5
	jrkiOmI7k/RUhjyXAV51EBGiPHkDJtHnyiNhL+CLIj1n6lXCDUhgHQnGliSnLHZ0aaaO
	UYXA==
X-Gm-Message-State: AA+aEWbXeKZwVlESR4EMSB9BoysXLvKb/8qGVqAncMHeuVFQ2Wpa5iSJ
	DZds7oUv1D+OdMn61rycPxA40MxtSsaibaB8G+5nKfTS
X-Google-Smtp-Source: AFSGD/VaYhoTqZX66LVWsFaCGtYgNknc4H/j276InXtymtFAHtgpyuEQ3GQh1FCN4j+OrwxvoGF5feHnJEGNZdSlfpU=
X-Received: by 2002:a1c:b94b:: with SMTP id j72mr4292988wmf.58.1543450201394; 
	Wed, 28 Nov 2018 16:10:01 -0800 (PST)
MIME-Version: 1.0
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Wed, 28 Nov 2018 16:09:50 -0800
Message-ID: <CAB=6tBRrH+BUNcQ4Hs_hyoNO8rP0VVbJkd5-tuE_yh6KYVn7HA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Thud - /lib64 link - Build Failure
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
X-List-Received-Date: Thu, 29 Nov 2018 00:10:04 -0000
Content-Type: multipart/alternative; boundary="000000000000fb955c057bc280f8"

--000000000000fb955c057bc280f8
Content-Type: text/plain; charset="UTF-8"

Background: I have an image that works in pyro. I am migrating the image to
thud.

Some of the add-on code to our image requires the /lib64 directory (in
particular the VirtualBox Additions). I have proven that a simple symlink
(/lib -> /lib64) fixes the problem. This symlink was being applied with the
following code at the very bottom of the image:

IMAGE_PREPROCESS_COMMAND += "symlink_lib64; "

symlink_lib64() {

    ln -s /lib ${IMAGE_ROOTFS}/lib64

}


When I use that same code with Yocto thud, I get the following build error:

DEBUG: Executing shell function prelink_image

Size before prelinking 818112.

/build/poky/tmp/work/qemux86_64-linux/common-os-image/1.0-r0/recipe-sysroot-native/usr/sbin/prelink:
Could not record directory /lib/modules-load.d: No such file or directory

WARNING: exit code 1 from a shell command.


Looking at the image generation diagram here (
https://www.yoctoproject.org/docs/2.6/overview-manual/overview-manual.html#image-generation-dev-environment),
it would seem to indicate that IMAGE_PREPROCESS_COMMAND runs after the
linker steps in do_rootfs. So it is unclear why prelink is failing during
the do_image phase.

Where is the correct place to create a /lib -> /lib64 symlink in our image
recipe?

Thank you,

..Ch:W..

--000000000000fb955c057bc280f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Background: I have an image that wor=
ks in pyro. I am migrating the image to thud.=C2=A0=C2=A0</div><div><br></d=
iv>Some of the add-on code to our image requires the /lib64 directory (in p=
articular the VirtualBox Additions). I have proven that a simple symlink (/=
lib -&gt; /lib64) fixes the problem. This symlink was being applied with th=
e following code at the very bottom of the image:<div><br></div><div><block=
quote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>





<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:no=
rmal;font-family:&quot;Courier New&quot;;color:rgb(40,254,20);background-co=
lor:rgba(0,0,0,0.9)"><span class=3D"gmail-s1" style=3D"font-variant-ligatur=
es:no-common-ligatures">IMAGE_PREPROCESS_COMMAND +=3D &quot;symlink_lib64; =
&quot;</span></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:no=
rmal;font-family:&quot;Courier New&quot;;color:rgb(40,254,20);background-co=
lor:rgba(0,0,0,0.9)"><span class=3D"gmail-s1" style=3D"font-variant-ligatur=
es:no-common-ligatures">symlink_lib64() {</span></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:no=
rmal;font-family:&quot;Courier New&quot;;color:rgb(40,254,20);background-co=
lor:rgba(0,0,0,0.9)"><span class=3D"gmail-s1" style=3D"font-variant-ligatur=
es:no-common-ligatures"><span class=3D"gmail-Apple-converted-space">=C2=A0 =
=C2=A0 </span>ln -s /lib ${IMAGE_ROOTFS}/lib64</span></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:no=
rmal;font-family:&quot;Courier New&quot;;color:rgb(40,254,20);background-co=
lor:rgba(0,0,0,0.9)"><span class=3D"gmail-s1" style=3D"font-variant-ligatur=
es:no-common-ligatures">}</span></p></div></blockquote><div><br></div><div>=
When I use that same code with Yocto thud, I get the following build error:=
</div><div><br></div></div><blockquote style=3D"margin:0px 0px 0px 40px;bor=
der:none;padding:0px"><div><div>





<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:no=
rmal;font-family:&quot;Courier New&quot;;color:rgb(40,254,20);background-co=
lor:rgba(0,0,0,0.9)"><span class=3D"gmail-s1" style=3D"font-variant-ligatur=
es:no-common-ligatures">DEBUG: Executing shell function prelink_image</span=
></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:no=
rmal;font-family:&quot;Courier New&quot;;color:rgb(40,254,20);background-co=
lor:rgba(0,0,0,0.9)"><span class=3D"gmail-s1" style=3D"font-variant-ligatur=
es:no-common-ligatures">Size before prelinking 818112.</span></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:no=
rmal;font-family:&quot;Courier New&quot;;color:rgb(40,254,20);background-co=
lor:rgba(0,0,0,0.9)"><span class=3D"gmail-s1" style=3D"font-variant-ligatur=
es:no-common-ligatures">/build/poky/tmp/work/qemux86_64-linux/common-os-ima=
ge/1.0-r0/recipe-sysroot-native/usr/sbin/prelink: Could not record director=
y /lib/modules-load.d: No such file or directory</span></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:12px;line-height:no=
rmal;font-family:&quot;Courier New&quot;;color:rgb(40,254,20);background-co=
lor:rgba(0,0,0,0.9)"><span class=3D"gmail-s1" style=3D"font-variant-ligatur=
es:no-common-ligatures">WARNING: exit code 1 from a shell command.</span></=
p></div></div></blockquote><div><div><br></div><div>Looking at the image ge=
neration diagram here (<a href=3D"https://www.yoctoproject.org/docs/2.6/ove=
rview-manual/overview-manual.html#image-generation-dev-environment">https:/=
/www.yoctoproject.org/docs/2.6/overview-manual/overview-manual.html#image-g=
eneration-dev-environment</a>), it would seem to indicate that IMAGE_PREPRO=
CESS_COMMAND runs after the linker steps in do_rootfs. So it is unclear why=
 prelink is failing during the do_image phase.=C2=A0</div><div><br></div><d=
iv>Where is the correct place to create a /lib -&gt; /lib64 symlink in our =
image recipe?</div><div><br></div><div>Thank you,</div><div><br></div><div>=
..Ch:W..</div></div></div></div>

--000000000000fb955c057bc280f8--
