Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AFFFE007B5; Fri, 22 Jan 2016 12:33:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
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
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B601E00444
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 12:33:36 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id u188so32425677wmu.1
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 12:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=n2bZ41XfdXqepNmVN+Hi9K3b/cKO/KsdZRjgTu4f9Tw=;
	b=jfEDIvu2JeY9PEEWu4jkNOG23ZE/su2uW5+TbSRAUKfLGDz3UGe1SzHl5zbHZdYfUV
	A+Hbb97i7sNP2P43dhog9cb++LYKPAgXnLpzPCDXgTljtIvkWsLB7RN/Yv6M4idAJX63
	BxceL9cJO1hJkvytOiao4dSv1Wj4SkIYxhNFBkSX/qHfKhCbp7Tb05ph7tLNOYToYGVH
	19mh7w3Am4G985IXZ+rMt2MNde1UQETwISY34F5bVs3SRUO89NGW3z1aBe68977wwHF5
	ZUcg/fd2PYbRO/t5XsUuW/p/W3HfBh379QBKfWA1r5Oxv6boVyZN0IzdziLkpsxuEC+R
	XC9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=n2bZ41XfdXqepNmVN+Hi9K3b/cKO/KsdZRjgTu4f9Tw=;
	b=JWb05KwFsF0K5puz0WnCq6n5mGCy+KJtyfEWsVyNLWW51Xf3ycU28CDpP0iZ/To3j9
	bWs5Wp8SE/BpDRyH9uX+F6nD73Zn6QhfWe8hniJUA0gJun41KHE+OIhM3PKdf7RC9qov
	UOJhaJKuEtK9Xf4hFdbM18dHfLt9Qygoa6H/JRU2mvnUJUa76m7eRSrgrY7MDf+qvJ96
	Nzp+20ri+3Trfya+GgZqwf3kWVLYomxXZKtKXbRbhalhGGLrbNjO2GHqEuOlrDC1yA+L
	7LnTQZkvqy9ZGCyTMOh2PNS5qMD8KZvKYlA3viynFE8qzY6wxOl0wy6H54SPVwTSEPwS
	+U+Q==
X-Gm-Message-State: AG10YOR5vOUKZTgxFjm1QkXwPLIaRK5ED3csWsbiENJIkIytK9eZX+uGp49uFAYB4SYxgI4mBJYjh+FDRVkUHA==
X-Received: by 10.28.19.204 with SMTP id 195mr5898373wmt.1.1453494815507; Fri,
	22 Jan 2016 12:33:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.53.2 with HTTP; Fri, 22 Jan 2016 12:33:15 -0800 (PST)
In-Reply-To: <CANge7vUTDqqVObLvfrp=ePM0HHJuv2uJZG7KbrQg7Zt2BpxfCw@mail.gmail.com>
References: <56A24847.9030807@mentor.com>
	<D96972A3E240BC4EACF7427F056A1F40AA7727@ORSMSX105.amr.corp.intel.com>
	<CANge7vUTDqqVObLvfrp=ePM0HHJuv2uJZG7KbrQg7Zt2BpxfCw@mail.gmail.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Fri, 22 Jan 2016 15:33:15 -0500
Message-ID: <CANge7vU1AFhZL5eXF2Lp3nmSrCVJYFXCv-8pqjuHduoWH=F-0A@mail.gmail.com>
To: "Randle, William C" <william.c.randle@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yvanderv@opensource.altera.com" <yvanderv@opensource.altera.com>
Subject: Re: Altera Cyclone V u-boot-spl with meta-altera
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
X-List-Received-Date: Fri, 22 Jan 2016 20:33:39 -0000
Content-Type: multipart/alternative; boundary=001a1146e648294b7f0529f22237

--001a1146e648294b7f0529f22237
Content-Type: text/plain; charset=UTF-8

>
>
> If you upgrade to the U-Boot 2016.01 (or maybe even earlier?), mkimage
> actually supports adding the Bootrom signature to the SPL for you.  The
> current makefile is kind enough to concatenate the U-Boot SPL and its DTS
> for you, and then run mkpimage to create an 'spl/u-boot-spl-dts.sfp' file
> [1].
>
> If that doesn't work for you, you might find [2] to be useful.  The
> bootrom "signature" is simple enough to implement in a do_compile_append()
> or custom task.
>
> [1]
> http://git.denx.de/?p=u-boot.git;a=blob;f=Makefile;h=c9c2cbedc641853c7886ffb023e5798362152899;hb=6905f4d3c7be46fed4859f51f0a8f9a1107c22e7#l1012
>
> [2] https://github.com/maximeh/mkpimage
>
>
>
Typo correction: u-boot-with-spl-dtb.sfp

--001a1146e648294b7f0529f22237
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><span class=3D""><div><br></div=
></span><div>If you upgrade to the U-Boot 2016.01 (or maybe even earlier?),=
 mkimage actually supports adding the Bootrom signature to the SPL for you.=
=C2=A0 The current makefile is kind enough to concatenate the U-Boot SPL an=
d its DTS for you, and then run mkpimage to create an &#39;spl/u-boot-spl-d=
ts.sfp&#39; file [1].<br><br></div><div>If that doesn&#39;t work for you, y=
ou might find [2] to be useful.=C2=A0 The bootrom &quot;signature&quot; is =
simple enough to implement in a do_compile_append() or custom task.<br></di=
v><div><br>[1] <a href=3D"http://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3DM=
akefile;h=3Dc9c2cbedc641853c7886ffb023e5798362152899;hb=3D6905f4d3c7be46fed=
4859f51f0a8f9a1107c22e7#l1012" target=3D"_blank">http://git.denx.de/?p=3Du-=
boot.git;a=3Dblob;f=3DMakefile;h=3Dc9c2cbedc641853c7886ffb023e5798362152899=
;hb=3D6905f4d3c7be46fed4859f51f0a8f9a1107c22e7#l1012</a><br><br>[2] <a href=
=3D"https://github.com/maximeh/mkpimage" target=3D"_blank">https://github.c=
om/maximeh/mkpimage</a><br><br><br></div></div></div></div></blockquote><di=
v><br>Typo correction: u-boot-with-spl-dtb.sfp <br></div></div><br></div></=
div>

--001a1146e648294b7f0529f22237--
