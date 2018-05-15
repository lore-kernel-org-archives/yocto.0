Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF7AFE00C61; Tue, 15 May 2018 05:25:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ABCAE009CF
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 05:25:41 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id p3-v6so899460itc.0
	for <yocto@yoctoproject.org>; Tue, 15 May 2018 05:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=DIiqQ5k1H0SOCVgYWq0sUPqCgBW4IedtDu6yU1UiNaY=;
	b=FbAywb4dxNutSutPr0EZNVmgtUgzcWOG82fUXOTWQUN0shiGMx3UWb2sZkMWjg5Vco
	iSnOIolKwu9G608d2bl8fPgVfxGvs8fIL51/D5AdWWjZRgWgaWf8vCe0+vGDqMzjUKJD
	edL4l7jrbwx1Rj5KhDxb17o466clMvb2K3g75d1nOWNJ4i23Ek8sgu4/TZXeoQJWzWUB
	m4aWcT3wIeyaR2VToZnjxplMbgde3baW58r7x5OQVlj9nPWtafL4B3968VJY7W1gwIe0
	s0MBxbFI0zI90cZ9D8Y6sMUNbgBSYxBZvZFZd9QZyWQmBY5invOmp+4P2dvb2BIu7Jni
	L5hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=DIiqQ5k1H0SOCVgYWq0sUPqCgBW4IedtDu6yU1UiNaY=;
	b=gkWjuGPWrunvFGyWxY32PuC/4lek2UPlRj7XPGrEvFxB9CQqXFMGtuDNWTu2LhwhcN
	0vWQYZe11+sN0twpnG/0OG3IsJyn5AHWHswLRIefjgpBXryIf/6QRycxFrdGFlsV42lJ
	UiQius5u9DryBLuylxp6viO/A9H/qcTlrzgS/zqamYFYNRlTJPA9ueJY0s5Ygu6/NX6r
	XtZyNdfuZ4KUkBaTMfPC9mQLe7/d2vz5y6Tnp8OxBMGNDqPpPAORIdFoplq4Nm/Sx/cX
	x8qF0Y5ctvxF9oDiIKR5SL7kYRBXQlUIWuotRqz3Uj6R6F1QndBGlHzhGoHPQ/seeGeZ
	Vn9A==
X-Gm-Message-State: ALKqPwcWBpch5vki0Sl+CTfcL86sWWHLHnLUjwYRcuw0B2HcQHQKcBXE
	/I6RmTsrmNYXQNOqMIPOpsJBfCiTyxBHAZVEMdRD
X-Google-Smtp-Source: AB8JxZrw5T6+FHo7mJD3uV4zasgh6dxL3CuLmdyH8mPN/XMrG46PSSa6rSqYpR/5D8ExGAjLPaLDZZFFMKDMEjrdfeo=
X-Received: by 2002:a24:7f0d:: with SMTP id
	r13-v6mr14831532itc.39.1526387140197; 
	Tue, 15 May 2018 05:25:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:b45:0:0:0:0:0 with HTTP;
	Tue, 15 May 2018 05:25:39 -0700 (PDT)
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Tue, 15 May 2018 15:25:39 +0300
Message-ID: <CA+FhBv97PdbD8W32rX67FqAdq2ftoYHW4MAyNbPYe8A9Yvuqbg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: LIC_FILES_CHKSUM: spaces in file names
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
X-List-Received-Date: Tue, 15 May 2018 12:25:41 -0000
Content-Type: multipart/alternative; boundary="0000000000004803b5056c3db3af"

--0000000000004803b5056c3db3af
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a base recipe generated with devtool.

The package I build has several license files which contain space
characters in the file names.

LIC_FILES_CHKSUM =
"file://COPYRIGHT.md;md5=b229ca0c79785e9e86311477e7bdd9ea \
                                         file://LICENSES/MIT
License.txt;md5=3ba96e7848c3cedc5df2d00094a0d0f3 \
                                         file://LICENSES/FreeImage Public
License.txt;md5=ffcd65468a2d2b3e3e43fbaf63ceedf7 \
                                         file://LICENSES/Boost Software
License.txt;md5=2c7a3fa82e66676005cd4ee2608fd7d2 \
                                         file://LICENSES/zlib-libpng
License.txt;md5=09b00738058950409d6955872d715416 \
                                         file://LICENSES/OpenSIFT
License.txt;md5=7a69fc0ac94076df51f7db9b0c02fe7c \
                                         file://LICENSES/ISSL
License.txt;md5=1ba0d78ed416760e4a8ef3dc121e69c8"

Bitbake fails and seem to break at the first space character
LIC_FILES_CHKSUM contains an invalid URL:
License.txt;md5=3ba96e7848c3cedc5df2d00094a0d0f3

How can I deal with this? Any other options than renaming the files?

I tried surrounding with quotes, "\ "using, nothing helps.

Thanks,
-Damien

--0000000000004803b5056c3db3af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have a base recipe generated with=
 devtool.</div><div><br></div><div>The package I build has several license =
files which contain space characters in the file names.</div><div><br></div=
><div><div>LIC_FILES_CHKSUM =3D &quot;file://COPYRIGHT.md;md5=3Db229ca0c797=
85e9e86311477e7bdd9ea \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://LICENSES/MIT License.txt;md5=3D3ba96e=
7848c3cedc5df2d00094a0d0f3 \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://LICENSES/FreeImage Public Lice=
nse.txt;md5=3Dffcd65468a2d2b3e3e43fbaf63ceedf7 \</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"colo=
r:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial;float:none;display:i=
nline">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0<span>=C2=A0</span></span>file://LICENSES/Boost Software License.t=
xt;md5=3D2c7a3fa82e66676005cd4ee2608fd7d2 \</div><div><span style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<=
span>=C2=A0=C2=A0</span></span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://LICENSES/zlib-libpng License.txt;md5=3D0=
9b00738058950409d6955872d715416 \</div><div><span style=3D"color:rgb(34,34,=
34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-space:=
normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span>=C2=
=A0=C2=A0</span></span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 file://LICENSES/OpenSIFT License.txt;md5=3D7a69fc0ac94076=
df51f7db9b0c02fe7c \</div><div><span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span>=C2=A0=C2=A0</spa=
n></span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 file://LICENSES/ISSL License.txt;md5=3D1ba0d78ed416760e4a8ef3dc121e69c8=
&quot;</div></div><div><br></div><div>Bitbake fails and seem to break at th=
e first space character</div><div>LIC_FILES_CHKSUM contains an invalid URL:=
 License.txt;md5=3D3ba96e7848c3cedc5df2d00094a0d0f3<br></div><div><br></div=
><div>How can I deal with this? Any other options than renaming the files?=
=C2=A0</div><div><br></div><div>I tried surrounding with quotes, &quot;\ &q=
uot;using, nothing helps.</div><div><br></div><div>Thanks,</div><div>-Damie=
n</div></div>

--0000000000004803b5056c3db3af--
