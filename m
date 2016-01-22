Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 449F8E0079A; Fri, 22 Jan 2016 12:31:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05A8FE00444
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 12:31:28 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id 123so28258862wmz.0
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 12:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=B13MTm38cGt3ukIXz+29a6CPjApDUCRBif0A9496Elg=;
	b=YAX2uQDrG/ZsEwdJz4IcCfT8CZRT29UbsgxHCQHk3H1zCj+i5EBysAfUv4IBTvF3/S
	jQ/6IaMq8fzEm34iBsGartR8aGSy4i0LRa09zFdulaDKyYo2KlObUEWQsW5kaRMW85GD
	PLuYQIxxKsCYVYIV1+jxvwEel5ZBeLUNmLW/qh2BZEvxR9YtzA77BB+Vw5APssa51//j
	jig50rO6KYtpiLCAvRWj1k644RgwLPsTcS8IFJt5Mr954FYzz2ULLFZkbu+NihWUFcAF
	kG94qNpQqz86QbLaMAKRRX8zd/+CYC3REbuWgPV25GZM7Nil3DXGh+D69U6IWZGEUXqe
	hzcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=B13MTm38cGt3ukIXz+29a6CPjApDUCRBif0A9496Elg=;
	b=cnFbleXvKrM+nQI41KFu/qI4UYsUsGK/UYZXzY59+h7v7odSpxf9ec1C4Pb7HlkQFO
	cf9ErxPLVOjo7US4+BpjdDgN+O9Q+6pLMtNeGW8p2z+XuAK2VMpmKoB+NsOEG3jNsqWy
	dRQl08HASxG6pLekvJkRLA9NpZBNBI/kgAyzJ1tEEqnQkWR+Ct0UySgkIr8RNuYiwQk7
	IqGY4US0SdxZ8je/6BENCUqk8RprOaJyjI9i1p6HSJial1fYEoPPx27MM8/qn3JjvE0J
	GIg16lCN0rhSHKMixNR2uMRGo+HemlW0q29t55xEEiEYQvmWOFqa0R/1II7eOgehbWnt
	bbwQ==
X-Gm-Message-State: AG10YOQ1WRZ42SLhunLVa1L6fpQ13Drj3k7b0JsiL/dsgDmsJxqLbu1xmLEJ7kyMOwC670N1JI9q33KLwNEUmg==
X-Received: by 10.28.19.204 with SMTP id 195mr5890746wmt.1.1453494687177; Fri,
	22 Jan 2016 12:31:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.53.2 with HTTP; Fri, 22 Jan 2016 12:31:07 -0800 (PST)
In-Reply-To: <D96972A3E240BC4EACF7427F056A1F40AA7727@ORSMSX105.amr.corp.intel.com>
References: <56A24847.9030807@mentor.com>
	<D96972A3E240BC4EACF7427F056A1F40AA7727@ORSMSX105.amr.corp.intel.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Fri, 22 Jan 2016 15:31:07 -0500
Message-ID: <CANge7vUTDqqVObLvfrp=ePM0HHJuv2uJZG7KbrQg7Zt2BpxfCw@mail.gmail.com>
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
X-List-Received-Date: Fri, 22 Jan 2016 20:31:32 -0000
Content-Type: multipart/alternative; boundary=001a1146e6488322360529f21a72

--001a1146e6488322360529f21a72
Content-Type: text/plain; charset=UTF-8

> Is there a way to produce a signed u-boot-spl image during the build, that
> can be used directly on the target without using the EDS?
>
>
If you upgrade to the U-Boot 2016.01 (or maybe even earlier?), mkimage
actually supports adding the Bootrom signature to the SPL for you.  The
current makefile is kind enough to concatenate the U-Boot SPL and its DTS
for you, and then run mkpimage to create an 'spl/u-boot-spl-dts.sfp' file
[1].

If that doesn't work for you, you might find [2] to be useful.  The bootrom
"signature" is simple enough to implement in a do_compile_append() or
custom task.

[1]
http://git.denx.de/?p=u-boot.git;a=blob;f=Makefile;h=c9c2cbedc641853c7886ffb023e5798362152899;hb=6905f4d3c7be46fed4859f51f0a8f9a1107c22e7#l1012

[2] https://github.com/maximeh/mkpimage

--001a1146e6488322360529f21a72
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div bgcolor=3D"white" li=
nk=3D"blue" vlink=3D"purple" lang=3D"EN-US"><div><div><div><p class=3D"MsoN=
ormal">
Is there a way to produce a signed u-boot-spl image during the build, that =
can be used directly on the target without using the EDS?<br>
<br></p></div></div></div></div></blockquote><div><br></div><div>If you upg=
rade to the U-Boot 2016.01 (or maybe even earlier?), mkimage actually suppo=
rts adding the Bootrom signature to the SPL for you.=C2=A0 The current make=
file is kind enough to concatenate the U-Boot SPL and its DTS for you, and =
then run mkpimage to create an &#39;spl/u-boot-spl-dts.sfp&#39; file [1].<b=
r><br></div><div>If that doesn&#39;t work for you, you might find [2] to be=
 useful.=C2=A0 The bootrom &quot;signature&quot; is simple enough to implem=
ent in a do_compile_append() or custom task.<br></div><div><br>[1] <a href=
=3D"http://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3DMakefile;h=3Dc9c2cbedc6=
41853c7886ffb023e5798362152899;hb=3D6905f4d3c7be46fed4859f51f0a8f9a1107c22e=
7#l1012">http://git.denx.de/?p=3Du-boot.git;a=3Dblob;f=3DMakefile;h=3Dc9c2c=
bedc641853c7886ffb023e5798362152899;hb=3D6905f4d3c7be46fed4859f51f0a8f9a110=
7c22e7#l1012</a><br><br>[2] <a href=3D"https://github.com/maximeh/mkpimage"=
>https://github.com/maximeh/mkpimage</a><br><br><br> </div></div></div></di=
v>

--001a1146e6488322360529f21a72--
