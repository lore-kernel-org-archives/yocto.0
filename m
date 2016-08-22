Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D462E00D20; Mon, 22 Aug 2016 01:56:48 -0700 (PDT)
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
	*      [209.85.218.47 listed in list.dnswl.org]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4900FE00BFF
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 01:56:44 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id c15so141866202oig.0
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 01:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=I1kuvhgJRD75G/7B8G2z4FDzP1t0a7TLblEytBctKDg=;
	b=MSh+mnZ2rDkbC4qAAppnJGwyFxs87RXk5vuoXy0hwOLNNAneTs9KDQV5IDzzC2B9AZ
	zMRAeXMjNK3NbKlrT4/hUX0OR+SSy2197UxAUvAgWuVrciVvQKQbkLA0EHBZMtPpUHC/
	Tp4fr8+cTE6WboftIg9ADDzzxcf3qKbE9jGOQuxYK+ACAAOEsYKUw83GQzYdJMKMVFa8
	Y8vSKbMwjt0nX2SP5bxwEEIJ8RZP8eD2CvmVOLAeOMqHA0zuN6yJ2bSSWRyZi0ZI9aGR
	09nuXdFJJXENnkH/+nmTcneY5wNtVsUCRTN3N0aOPRUvcVvpxSqA8E1ftNq6f0q+qXv7
	hN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=I1kuvhgJRD75G/7B8G2z4FDzP1t0a7TLblEytBctKDg=;
	b=CP6oK7B4fclrtzNigtKUdwRgP4MiW4Bjp5CMrqXe9EHEZdIRWtb/LxEs0EFOBdJ9R7
	99qgtcgDmorcLazG2IfREfS3AeSSa1eC9j/9RCOzeIqD9YbG4LeDhDlwroQZk2bMJo9E
	Vkw1LO91YlOWYSnWIMoR2lToH9TcobdRDGhmsMIlHi221BOExYfrhBWyA0T/o1dEthyV
	+BTKiuzFH5fefdMW4me+4MQwz4nwYTTSf64WoZv1e4rJnCxiqTAb9tG0rV4Vh8TTTbZ4
	cO8HrmcUPFGKdy4I5PlAou3T9i9mX+22SHhjDRhTuEm9ERLT9VF/ozhHNPGMhN7SnTFo
	IWvw==
X-Gm-Message-State: AEkoouv4wVzjwO2R2k9lYkNEoAuPmoM5LU1Btg1LoRK6q2hmd0AOtm0Y+m+iyoyYR0a7glx8aXFr7edFYN3YuuNj
X-Received: by 10.157.46.119 with SMTP id c52mr12594370otd.6.1471856203890;
	Mon, 22 Aug 2016 01:56:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.241.11 with HTTP; Mon, 22 Aug 2016 01:56:13 -0700 (PDT)
In-Reply-To: <CAAVaN8xtJH-qwxO-n+0z8C8T5axW9iQXV=mvj6-hZxxQay_PRQ@mail.gmail.com>
References: <CAAVaN8xtJH-qwxO-n+0z8C8T5axW9iQXV=mvj6-hZxxQay_PRQ@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 22 Aug 2016 11:56:13 +0300
Message-ID: <CAHiDW_GK=qve1LA_ddTNCbgare0VMGHsJL7zPoh9sPv0jA9B9A@mail.gmail.com>
To: Andy Ng <andreas2025@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: debug version of a package
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
X-List-Received-Date: Mon, 22 Aug 2016 08:56:48 -0000
Content-Type: multipart/alternative; boundary=001a113d133431eebb053aa53aef

--001a113d133431eebb053aa53aef
Content-Type: text/plain; charset=UTF-8

On 21 August 2016 at 16:55, Andy Ng <andreas2025@gmail.com> wrote:

> Hi,
>
> How do I trigger the build of the debug version of a single package?
>

Binaries are (almost) always built with debug symbols, there's nothing that
needs to be done there. The unstripped debug binaries are typically
packaged into "<recipename>-dbg" package, while stripped versions of those
binaries go into other packages. To get debug binaries onto an image, you
can either add the specific -dbg packages with IMAGE_INSTALL_append or add
all debug packages with image features:
    EXTRA_IMAGE_FEATURES += "tools-debug dbg-pkgs"

Jussi



> Thank you
> Andy
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113d133431eebb053aa53aef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
1 August 2016 at 16:55, Andy Ng <span dir=3D"ltr">&lt;<a href=3D"mailto:and=
reas2025@gmail.com" target=3D"_blank">andreas2025@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
How do I trigger the build of the debug version of a single package?<br></b=
lockquote><div><br></div><div>Binaries are (almost) always built with debug=
 symbols, there&#39;s nothing that needs to be done there. The unstripped d=
ebug binaries are typically packaged into &quot;&lt;recipename&gt;-dbg&quot=
; package, while stripped versions of those binaries go into other packages=
. To get debug binaries onto an image, you can either add the specific -dbg=
 packages with=C2=A0IMAGE_INSTALL_append or add all debug packages with ima=
ge features:</div><div>=C2=A0 =C2=A0 EXTRA_IMAGE_FEATURES +=3D &quot;tools-=
debug dbg-pkgs&quot;</div><div><br></div><div>Jussi<br></div><div><br></div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Thank you<br>
<span class=3D""><font color=3D"#888888">Andy<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div>

--001a113d133431eebb053aa53aef--
