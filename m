Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03704E00ACF; Tue, 13 Jun 2017 14:56:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0080AE00888
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 14:56:33 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id u12so191218617qth.0
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 14:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/R7keokE0/hkgK6scB2M6U4V4RXEu2bbGrQB8WnYfDI=;
	b=KUyXuy1O+UgfKSrOpyWM6U2OlgTarwPX1m12mI8R77HJETmJaPTzb/Mm8REh8L0NqZ
	IO5Vq3D7K5Q1kliIh7JoQi5TSJVr+pO6uwiqGbn10kmj/lzm8U4vbXZ1K+hrfNNKjPFO
	2HU6+303jVXQSRckIisIr/huPbTvyPvS7WozvBy/px/inVHx0+yKoRGMulDEP7QQGJAZ
	DxxdZREt4t8KZU69AiQ25VOhsp4eRYJzAmJRROtuDl7U+MSlAe4mNfX35ftmb9SxmuKn
	F1lfme1CUd882nBjWRBDd9LaYQEIkNAEUFWSCER5rRX/1oTn7E/aADy41pcmQq+T/4NB
	YMpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/R7keokE0/hkgK6scB2M6U4V4RXEu2bbGrQB8WnYfDI=;
	b=Wrn6l9SJ7hQbhTTzkQy9xITtTah7oHvBKfZgDN3lLkD7kPtzGPG8mEcZ7oXXgQU3DL
	jLaqu01S8fnpD6A6I1RuSGoYb6sYDs4+YUl2i3onwI5949p04+ZPd1+0AF809oWoPtSh
	8MI5qyorQ6/nuvDLR8umVz/gCCmIiEPGDXonc+HOXMkDHKkKwZs/zgipu3Z8pRqv5eyv
	vj8Y4FwZ8LNPEWs+zwZCUDi1lGlzX1IkARuIyllIdrVZJdq3AFJW0OOjpSF56026bTME
	Ax8+ijKoib1eXLIJLddbI0MkfIyqd7lO74CBTQpD5XF/e//Dh4VWZvN/Gd2WYZ9i3Dpn
	pFBw==
X-Gm-Message-State: AKS2vOxeMByF3sF5smyiN4yyVwcmiwAsG2h6avoGCNsdy3r+KROAHxIc
	MJkzl/rbBPck6ExKAYWzT8geo7xbcA5F
X-Received: by 10.237.40.97 with SMTP id r88mr3027862qtd.27.1497390992875;
	Tue, 13 Jun 2017 14:56:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Tue, 13 Jun 2017 14:56:12 -0700 (PDT)
In-Reply-To: <4f2248fb-0d42-6876-9950-815af230c127@gmail.com>
References: <8d6fe5c7-dbfa-7a17-071c-1330cdf3a672@gmail.com>
	<1497382345.23013.6.camel@linux.intel.com>
	<4f2248fb-0d42-6876-9950-815af230c127@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Jun 2017 22:56:12 +0100
Message-ID: <CAJTo0Laq0gpygTTi-fAmgYHbD-_sTLQTG6UsBDjZOMg+eezpFA@mail.gmail.com>
To: Jimi Damon <jdamon@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Preventing a package from building
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
X-List-Received-Date: Tue, 13 Jun 2017 21:56:37 -0000
Content-Type: multipart/alternative; boundary="94eb2c068b343876e30551de82a7"

--94eb2c068b343876e30551de82a7
Content-Type: text/plain; charset="UTF-8"

On 13 June 2017 at 20:26, Jimi Damon <jdamon@gmail.com> wrote:

> This package is being built on the host side during a bitbake using a
> Boundary Devices Yocto build (
>
> * MACHINE=nitrogen6x DISTRO=fslc-x11 . setup-environment build *
>
> +
>
> * bitbake boundary-eval-image-xfce    *
>
>
The canonical solution here is to write your own image recipe that doesn't
include chromium.  Copy the evaluation image, and edit it as required.

Ross

--94eb2c068b343876e30551de82a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 June 2017 at 20:26, Jimi Damon <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:jdamon@gmail.com" target=3D"_blank">jdamon@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><p><font face=3D"Monaco">This package i=
s being built on the host side
        during a bitbake using a Boundary Devices Yocto build ( <br>
      </font></p>
    <p><font face=3D"Monaco"><b>=C2=A0MACHINE=3Dnitrogen6x DISTRO=3Dfslc-x1=
1 .
          setup-environment build </b><br>
      </font></p>
    <p><font face=3D"Monaco">+<br>
      </font></p>
    <p><font face=3D"Monaco"><b>=C2=A0bitbake boundary-eval-image-xfce=C2=
=A0=C2=A0=C2=A0 </b><br>
      </font></p>
    <p></p></blockquote></div><br>The canonical solution here is to write y=
our own image recipe that doesn&#39;t include chromium.=C2=A0 Copy the eval=
uation image, and edit it as required.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c068b343876e30551de82a7--
