Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5306E007F2; Mon, 19 Mar 2018 08:45:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48994E00474
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 08:45:01 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id r18so2530992ioa.1
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 08:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nMPPklYqu/jTNFjk1vmPadWLEu6b8xYzIn95Y8Ulusw=;
	b=IR+yoFbYuXDfEIXlV2mSvfcvu60W6vesBJF+SPFH5yDElHiVOtKQvCRmJSCXxoZUqn
	yWjunB6V0UnMuYJtmBd9nQmiW+dU9peGBm8wYcXOtsZDs3hFDba33gnSBzGnFCdhtmCK
	R6RlZ/wLKxYUkwUrO8ogQwKKutMp2wUIqz+09YBUJwy9QbRNMp6psOTOc6/hlMc6Wxb9
	npQas6tH6LY/RhNbAA/b3fvzjy0210cW6IivoBabtFnh6eBuHWVaFaB3MH1LrbIny2Vz
	xkQbBtRmJypEz3vk85EZVwZImak/O3wg+DRxL0cYPG4cF1PbhUjlnGVZ2dy06ELhaXNL
	LNuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nMPPklYqu/jTNFjk1vmPadWLEu6b8xYzIn95Y8Ulusw=;
	b=S370lHpI1aSqf2TTcjeNVyAOB9KdOaSNVgFsXPXWWPfPoHE69Vne6DL+f/bTD3bpgo
	J93Ap8gom5SPS0sRIssuX14/jAp3fa+vn0KNOl80iymyt/2iM4a/akiDYV8FOUH+7Eyw
	hWOJNPbHaO6ufTveCNSjldct3FjaUFEo1YIAsNCgFlXGQBOXpvUFKO3QNpIn+RKaauqL
	hW6r5mzWCeOfJ2BZ0rKWtXdHra329ZH3Xs4aNhuJUfojz0bZbZbgvQmkLYTPUZvxu0qd
	vmA/GQ2xOWbpxUW1RdSKMICSKKIf5e0r1E37DBwbzw3xdpogkWjrfsySr+YivcG4QhfH
	t4jw==
X-Gm-Message-State: AElRT7EU3ZI6k0Tki/mt1QGY1DV6x9G0TRyW4pxpzRwNQLyHvaI/B9DQ
	rK4BqbR/06YWQ1b1AD0mlPAAHX/OxIHOulgVfMyYBw==
X-Google-Smtp-Source: AG47ELuKnVV61410zs8EMdSaCly13XXyJ6L+n0LqrqfPUsBptgGASGMUE3Xd9q/qGEXjatZH0SjGy9RS93iz36hMkq0=
X-Received: by 10.107.37.212 with SMTP id l203mr12073108iol.20.1521474301458; 
	Mon, 19 Mar 2018 08:45:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 19 Mar 2018 08:44:40 -0700 (PDT)
In-Reply-To: <CAC_2qz=FNge1X6dq=K4Snc1cqPy0FYEKeE5+F0siLGyufcM3Ew@mail.gmail.com>
References: <CAC_2qz=FNge1X6dq=K4Snc1cqPy0FYEKeE5+F0siLGyufcM3Ew@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 19 Mar 2018 15:44:40 +0000
Message-ID: <CAJTo0LZSvHhMFa4f0Wnto=7S6DyVCt7P_DHa50g6mC+fxDMtPw@mail.gmail.com>
To: =?UTF-8?B?UGF0cnlrIMWBYcWb?= <patryk.las@slabs.pl>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Installing setup.py after cmake build in one recipe
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
X-List-Received-Date: Mon, 19 Mar 2018 15:45:02 -0000
Content-Type: multipart/alternative; boundary="001a11405f1646205c0567c5d7a2"

--001a11405f1646205c0567c5d7a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 14 March 2018 at 22:31, Patryk =C5=81a=C5=9B <patryk.las@slabs.pl> wrote=
:

> Recipe compiles fine (bitbake my_recipe) but it does not included in fina=
l
> system image (added entry to add recipe into main image). What is more
> there is not site-packages for build in tmp but setup.py seemd to be
> invoked.
>

Simply building a recipe won't add it to an image.  Read the section on
customising images in the documentation.

Ross

--001a11405f1646205c0567c5d7a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 14 March 2018 at 22:31, Patryk =C5=81a=C5=9B <span dir=
=3D"ltr">&lt;<a href=3D"mailto:patryk.las@slabs.pl" target=3D"_blank">patry=
k.las@slabs.pl</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Rec=
ipe compiles fine (bitbake my_recipe) but it does not included in final sys=
tem image (added entry to add recipe into main image). What is more there i=
s not site-packages for build in tmp but setup.py seemd to be invoked.</div=
></div></blockquote><div><br></div><div>Simply building a recipe won&#39;t =
add it to an image.=C2=A0 Read the section on customising images in the doc=
umentation.</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a11405f1646205c0567c5d7a2--
