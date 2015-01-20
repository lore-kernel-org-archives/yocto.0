Return-Path: <sm0ketst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CFB7E00853; Tue, 20 Jan 2015 03:54:55 -0800 (PST)
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
	*      [209.85.160.178 listed in list.dnswl.org]
Received: from mail-yk0-f178.google.com (mail-yk0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37746E0082D
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 03:54:49 -0800 (PST)
Received: by mail-yk0-f178.google.com with SMTP id 20so16780570yks.9
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 03:54:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=Ll38ba3L4r16VoRmAZfJYGROTR47yz9zJjmByh6npyE=;
	b=sUR1sF3Wt4gjxAAdZp29iT9DydMYgf1sDODYYVO5L+0Y4FYMzs82Vn9OP8wKER4xW1
	Qu2HY6hxUMmTWFps2CknllcV4dFzDY39jBMG7NqaITgfokip6OlwlywYY9GDpKgdDLc5
	XkkcmVP5BNgeCivIdJvREaX/Z2bumeUJ2HN+K4IOyQdxU/YoH8062k4wfnEzG85q66YD
	WwRk13gW1j+YRTQY5AbQOWRff1IKTEaYClkOZK6rsfMLVfuJZIzPAiz4RvxHk5AiDxK1
	O9KdIu+VHglQDG431rwHkGYp4EMGF/cY+5phiMWfLrgYhXmVpIATeyd3agH7tqMLq/Jw
	3QZw==
MIME-Version: 1.0
X-Received: by 10.236.220.168 with SMTP id o38mr21033743yhp.32.1421754888537; 
	Tue, 20 Jan 2015 03:54:48 -0800 (PST)
Received: by 10.170.166.87 with HTTP; Tue, 20 Jan 2015 03:54:48 -0800 (PST)
Date: Tue, 20 Jan 2015 12:54:48 +0100
Message-ID: <CABMtxux3G1aoWfq8rQqV1oa2y=aRLkTEdq7etXWXFBTLL-=gtw@mail.gmail.com>
From: "J.J. Garcia" <sm0ketst@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-mingw] /etc/ld.so.cache dereferencing problem extracting in mingw. workaround
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
X-List-Received-Date: Tue, 20 Jan 2015 11:54:55 -0000
Content-Type: multipart/alternative; boundary=001a11c2be0c16ce3e050d141b17

--001a11c2be0c16ce3e050d141b17
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm using poky/meta-mingw (master for both) and when im deploying the
tarball into mingw i have dereferencing problems with /etc/ld.so.cache. It
is not possible to create the symlink (not included in the tarball after
inspection) so the linker fails resolving.

I've also build the core-image-minimal and deployed in an x86 unit and i
have copied the /etc/ld.so.cache from there to the mingw setup and now the
$CC works fine after sourcing the environment options for a very basic
hello-world.c source.

Now i realized that for daisy branch there is an entry dealing with this
issue, didn't check in detail.

machine-sdk/*-mingw32.conf: Disable SDKTAROPTS
<http://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw/commit/?h=daisy>

Is it expected to be ported to the master?

is it recommended to go for poky/meta-mingw both for dizzy branch? I tried
before mixing poky/dizzy and meta-mingw/master and i had issues with
gdb-cross-canadian_7.8.1.bbappend version number, so..???

Thanks in advance,

Regards

JJ

--001a11c2be0c16ce3e050d141b17
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m using poky/meta-mingw (=
master for both) and when im deploying the tarball into mingw i have derefe=
rencing problems with /etc/ld.so.cache. It is not possible to create the sy=
mlink (not included in the tarball after inspection) so the linker fails re=
solving.</div><div><br></div><div>I&#39;ve also build the core-image-minima=
l and deployed in an x86 unit and i have copied the /etc/ld.so.cache from t=
here to the mingw setup and now the $CC works fine after sourcing the envir=
onment options for a very basic hello-world.c source.</div><div><br></div><=
div>Now i realized that for daisy branch there is an entry dealing with thi=
s issue, didn&#39;t check in detail.</div><div><br></div><div><a href=3D"ht=
tp://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw/commit/?h=3Ddaisy" style=
=3D"color:white;text-decoration:none;font-family:sans-serif;font-size:13px;=
white-space:nowrap;background-color:rgb(85,85,85)">machine-sdk/*-mingw32.co=
nf: Disable SDKTAROPTS</a><br></div><div><br></div><div>Is it expected to b=
e ported to the master?</div><div><br></div><div>is it recommended to go fo=
r poky/meta-mingw both for dizzy branch? I tried before mixing poky/dizzy a=
nd meta-mingw/master and i had issues with=C2=A0<span style=3D"font-size:13=
px">gdb-cross-canadian_7.8.1.</span><span style=3D"font-size:13px">bbappend=
 version number, so..???</span></div><div><span style=3D"font-size:13px"><b=
r></span></div><div><span style=3D"font-size:13px">Thanks in advance,</span=
></div><div><span style=3D"font-size:13px"><br></span></div><div><span styl=
e=3D"font-size:13px">Regards</span></div><div><span style=3D"font-size:13px=
"><br></span></div><div><span style=3D"font-size:13px">JJ</span></div><div>=
<br></div></div>

--001a11c2be0c16ce3e050d141b17--
