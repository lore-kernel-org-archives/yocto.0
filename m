Return-Path: <zaifupb@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2621AE0127D
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 14:51:31 -0700 (PDT)
Received: by mail-qa0-f48.google.com with SMTP id i13so674931qae.7
	for <yocto@yoctoproject.org>; Tue, 07 May 2013 14:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=tqiQWTLUbi8EQTfTcZqyJOdfwPZtkuO3Nj5ZLHzqNCc=;
	b=VHZWdOU/1qCRGDUVo3ki8JVyh0tUGR7OU/Lzs1PxeHDCd4aBtzcOoXprPqk+t/v81p
	TNL/O1opV7VdgciVhiItFuf9ehc1vAuW84wyyJMJWDKX2WV3EXdnCk9ElWcRBBOBv6f2
	5fRbEanUQqPudYOFd6i/M9is+HuyF4BAIcQlsfc9+Co8f9Mf/6KwnVbjPPccauYsA4CJ
	+RKcXgX80CCiterEVXgnpv/I3ikEzkOICVb7FRmsflqUZKS1Oms9CVXkCDIpo89z97Os
	rrJ9MqVrzuBOpIu0L9oe6fNtLB3cDT17tj+u5C8qIYGhRDXlwbEkpfN19WiiZpc4zXRx
	logg==
MIME-Version: 1.0
X-Received: by 10.224.190.137 with SMTP id di9mr2979831qab.95.1367963490121;
	Tue, 07 May 2013 14:51:30 -0700 (PDT)
Received: by 10.229.164.76 with HTTP; Tue, 7 May 2013 14:51:30 -0700 (PDT)
Date: Tue, 7 May 2013 23:51:30 +0200
Message-ID: <CABx0rKFD26wSiabvtxBgYNVJw-uZNKddDbgDwpi3d6cb1EyCag@mail.gmail.com>
From: Zaif upb <zaifupb@gmail.com>
To: yocto@yoctoproject.org
Subject: Building Custom Images- Need help
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
X-List-Received-Date: Tue, 07 May 2013 21:51:31 -0000
Content-Type: multipart/alternative; boundary=20cf300fb30be5367304dc27d15b

--20cf300fb30be5367304dc27d15b
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I am newbie for Yocto project, please help me.

 I would like to know the process of making custom image for gumstix. I
have been through this
http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#usingpoky-extend-addpkg
manual but things are not clear yet.

I can successfully build *gumstix-console-image. *I need to integrate
Gstreamer and OpenCV libraries into that image. I do not know how to
proceed.

I edited *gumstix-console-image*.bb file according to  Streaming video with
Gumstix<http://www.jumpnowtek.com/?option=com_content&view=article&id=81:gumstix-dsp-gstreamer&catid=35:gumstix&Itemid=67>as
mentioned here for Gstreamer. It breaks badly.

Any Idea how can I integrate them in my Image?

Thank You for your Help.

Regards,
Zaifupb

--20cf300fb30be5367304dc27d15b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi all,<br><br></div>I =
am newbie for Yocto project, please help me.<br><br>=A0I would like to know=
 the process of making custom image for gumstix. I have been through this=
=A0 <a href=3D"http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.h=
tml#usingpoky-extend-addpkg">http://www.yoctoproject.org/docs/1.4/dev-manua=
l/dev-manual.html#usingpoky-extend-addpkg</a>=A0 manual but things are not =
clear yet.<br>
<br></div>I can successfully build <i>gumstix-console-image. </i>I need to =
integrate Gstreamer and OpenCV libraries into that image. I do not know how=
 to proceed. <br><br></div>I edited <i>gumstix-console-image</i>.bb file ac=
cording to=A0=A0<a href=3D"http://www.jumpnowtek.com/?option=3Dcom_content&=
amp;view=3Darticle&amp;id=3D81:gumstix-dsp-gstreamer&amp;catid=3D35:gumstix=
&amp;Itemid=3D67">Streaming video with Gumstix</a> as mentioned here for Gs=
treamer. It breaks badly.<br>
<br></div>Any Idea how can I integrate them in my Image?<br><br></div>Thank=
 You for your Help.<br><br></div>Regards,<br></div>Zaifupb<br></div>

--20cf300fb30be5367304dc27d15b--
