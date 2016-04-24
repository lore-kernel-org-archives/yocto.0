Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07F2BE00C70; Sun, 24 Apr 2016 14:06:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD1D2E007B7
	for <yocto@yoctoproject.org>; Sun, 24 Apr 2016 14:06:31 -0700 (PDT)
Received: by mail-ob0-f178.google.com with SMTP id n10so63224051obb.2
	for <yocto@yoctoproject.org>; Sun, 24 Apr 2016 14:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=yzSQyOtrelncsNdx1145PfeiEbOX2RMEU+29gpQycA8=;
	b=B4rPAN5Kb9sVf6HGbQ8rRvFZtzuzuW6ncygVC0kONvWsWEJY+kctTi1mDTkv52kqKH
	BBdKY0rlHa0MkDW1yJarDnAvP/yWDN5+TJv5LqO0rv7P0bzeT0fWQLhExzbegfHHuVVn
	AemPc3Q4t8zVoxsErVMofnC39CS0wcLN+1V/Nbsl7P4n7MYBSgarQnjtA8YkgLPRFJSr
	BORR38eyMJ7eAPYvhGgJZS2i45pAgqwisT4GSColZdrozoNC5R40tJ0zK0VrRSZX16HX
	mVTkpBbz0l0w+mGFMBt3QB8DMMiG4eQzqHQIDLWFB0ENcM19VSIQ4scsEr1XGDfIOda4
	9Z2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=yzSQyOtrelncsNdx1145PfeiEbOX2RMEU+29gpQycA8=;
	b=ZlW/3BG9CBQIjHgT+BUcaSslszTC2jGLBW8nUxO846ST0ZALRGtGw+2h6JsZ+wXnJy
	vLx82Vaspte44W6Scv4pQYBSLGeE/lwindZwgbL7C3K0DYqlzFkGFNZRSjKB5g0ZzZYQ
	jQQYPt2Itii10lv0Ojv7lP7M/EP75u+XKrfT8kRD8o/kTVO/UwyG4KucjDTFbDiJx3Ef
	TLRiHLTyF5snbC7QO54iAmjQR8PPaMO/2ziu0pjCsnKMnmtmTENtgxalcx7bHqpTRfh4
	7SmmmNUGZqG6iz0bYCjJB+IXNVMUF6HRvwPsCvQsL5ntTPcdzATid4ZG4lXPEv2HBeuA
	3KJA==
X-Gm-Message-State: AOPr4FXVcl+jOL/kCTv2bv49/+6H7BlxfetHxCQQ22df3OhHUa4uBzPC1nvp2GgyeW5DsZzVx1wYIZhydB2IKA==
MIME-Version: 1.0
X-Received: by 10.182.113.138 with SMTP id iy10mr13060253obb.27.1461531990743; 
	Sun, 24 Apr 2016 14:06:30 -0700 (PDT)
Received: by 10.157.37.101 with HTTP; Sun, 24 Apr 2016 14:06:30 -0700 (PDT)
In-Reply-To: <43F0718C449F6A46B393DA2BEC8E01280C9FE07D@post>
References: <000f01d19dfa$51e59400$f5b0bc00$@gasera.fi>
	<43F0718C449F6A46B393DA2BEC8E01280C9FE07D@post>
Date: Sun, 24 Apr 2016 14:06:30 -0700
Message-ID: <CAEKp-aY7dyXZSAvFD8tJCP-rQDhg08SF=srT0GscMGqMi1-h6Q@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
To: Peter Bergin <peter.bergin@tritech.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Customize login prompt text in Yocto
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
X-List-Received-Date: Sun, 24 Apr 2016 21:06:36 -0000
Content-Type: multipart/alternative; boundary=089e0149c71c22e2d10531416fb8

--089e0149c71c22e2d10531416fb8
Content-Type: text/plain; charset=UTF-8

>
> the information shown is from the file /etc/issue. You can for example do
> post-processing on this file and change the information. You can add this
> to your image recipe.
>
> update_issue() {
>     echo "Your text" > ${IMAGE_ROOTFS}/etc/issue
> }
>
> ROOTFS_POSTPROCESS_COMMAND += " update issue; "
>


The more "yoctonic" way of setting this is to modify the DISTRO_NAME
variable, which is set in the distro configuration file e.g. poky.conf. If
you are building your own distro it you may want to derive your own distro
configuration file from the ones that Poky provides. There you can also set
other variables such as DISTRO_VERSION, MAINTAINER, etc.

Cheers,
Rudi

--089e0149c71c22e2d10531416fb8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF">the in=
formation shown is from the file /etc/issue. You can for example do post-pr=
ocessing on this file and change the information. You can add this to your =
image recipe.<br>
<br>
update_issue() {<br>
=C2=A0=C2=A0=C2=A0 echo &quot;Your text&quot; &gt; ${IMAGE_ROOTFS}/etc/issu=
e<br>
}<br>
<br>
ROOTFS_POSTPROCESS_COMMAND +=3D &quot; update issue; &quot;<br></div></bloc=
kquote><div><br></div><div></div></div><div class=3D"gmail_signature"><div>=
<font face=3D"garamond, serif"><br></font></div><div><font face=3D"garamond=
, serif">The more &quot;yoctonic&quot; way of setting this is to modify the=
 DISTRO_NAME variable, which is set in the distro configuration file e.g. p=
oky.conf. If you are building your own distro it you may want to derive you=
r own distro configuration file from the ones that Poky provides. There you=
 can also set other variables such as DISTRO_VERSION, MAINTAINER, etc.</fon=
t></div><div><font face=3D"garamond, serif"><br></font></div><div><font fac=
e=3D"garamond, serif">Cheers,</font></div><div><font face=3D"garamond, seri=
f">Rudi</font></div></div>
</div></div>

--089e0149c71c22e2d10531416fb8--
