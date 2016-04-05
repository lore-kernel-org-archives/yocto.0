Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88506E00C3A; Tue,  5 Apr 2016 14:30:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D676E00C27
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 14:30:03 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id ui10so25883269igc.1
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2016 14:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QmJ6XC5p1sRrT3vZXbZETyVqhWkorag6hCAxKM6Gxhk=;
	b=M31L7gaV7WPD0yF7VbuhSQlcULlwEC7U3DThLMW3Oj8QiuDSfehF2L+ajqs+4Joj5r
	chJBgJ2OJSqRf9fenmZFvgF8URjecgSFfVbhxbvBHg2jeteTAHeYRwBRMoSAWka4DlH6
	TAZQRwOP+qVlkmnEpbPtH5OLdRbyOZflahh1RlfdlZrZG9GMWg+W1x7E0Jn3vHIGfuaJ
	QTQ0quWEd+ngRppBx4obdp4auhxdR/fjL7L8k/obymbyXr+Xzn7W78veqMGlBGmb2Hx1
	IpZhuSkutuUrSOHmqsQr8Io/PCNEtZMns4gvjZZBvVjydUsP1F14lfI/2HRd1JU+a8py
	yG4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QmJ6XC5p1sRrT3vZXbZETyVqhWkorag6hCAxKM6Gxhk=;
	b=L+sNZ0g+zpP2AQs+q3+1UP7NAU9GTMUNbN7wK+t3OBvqYGzK1XONHoLGQn74zrAdmS
	5hn/01iZt7EWIuL9L0+NXdvz5roZvwu97cnoakXe4739HZ+zq/+9lkjv3n/6LJl3LPX1
	9JMHpNvpUAtI0uMQevq8HJnSIE0cizLA7Sht3fjyMlB1n381Itv+nUz3JsOkssomYKwa
	NwlOuMtXaiexz1pFmlHc98YwtKmUievpq7uzYcemwKY5owCYXNMJoSaK9PxQDHucExsY
	n8xIStN+bpyGWiUKbpvpkvy25vIXJ9LknkbCKt0ROMqHSGBneZepTxpaBZ1ZIDPeqatq
	7XxQ==
X-Gm-Message-State: AD7BkJKAopfndMAcf89q0+umhX3w8wwTtWePqdJV2sLzN5CgC+3JINOu3bTMNQpUmlz4wmUWVZHZzhiBmxlhD7X7
X-Received: by 10.50.67.113 with SMTP id m17mr17826025igt.52.1459891803218;
	Tue, 05 Apr 2016 14:30:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Tue, 5 Apr 2016 14:29:43 -0700 (PDT)
In-Reply-To: <CALRMKQo7GPHQLPLTm_dO9uoQgBhGriNW9GFBoG6VOPfaqCeHAA@mail.gmail.com>
References: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
	<25644105.gyxDGl902X@rjs-zotac.streifs.net>
	<CALRMKQo7GPHQLPLTm_dO9uoQgBhGriNW9GFBoG6VOPfaqCeHAA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 Apr 2016 22:29:43 +0100
Message-ID: <CAJTo0LaW9jWNK8x_MuxoSjJUsWVTBTA5mN4EtmaFFYLhAC4Edw@mail.gmail.com>
To: Ronald Oakes <ronaldo@brc2.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Tue, 05 Apr 2016 21:30:07 -0000
Content-Type: multipart/alternative; boundary=047d7bd753ea577bd7052fc38c91

--047d7bd753ea577bd7052fc38c91
Content-Type: text/plain; charset=UTF-8

On 5 April 2016 at 19:55, Ronald Oakes <ronaldo@brc2.com> wrote:

> Illegal instruction
>

It probably built a binary to run on your host using compiler flags for
your target, which means that the binary contains instructions your
processor can't execute.

What release of OE/Poky/Yocto/whatever is this?

Ross

--047d7bd753ea577bd7052fc38c91
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 April 2016 at 19:55, Ronald Oakes <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ronaldo@brc2.com" target=3D"_blank">ronaldo@brc2.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":ys" class=3D"a3s" style=
=3D"overflow:hidden">Illegal instruction<br></div></blockquote></div><br>It=
 probably built a binary to run on your host using compiler flags for your =
target, which means that the binary contains instructions your processor ca=
n&#39;t execute.</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">What release of OE/Poky/Yocto/whatever is this?</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7bd753ea577bd7052fc38c91--
