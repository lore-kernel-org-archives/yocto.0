Return-Path: <vishalashapur@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 916AFE00AAF; Mon, 23 Oct 2017 21:16:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vishalashapur[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAAD0E00928
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 21:16:04 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id r68so13458653wmr.3
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 21:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=bBkF45Zkee4A2wdzHxzHHF9Kahi6PYJTcYtB+APoxjU=;
	b=ruuJJ2w5IUicK10k3L6v9u5ka4DUT5b2UnO+nhCgV6LQVc8MBiRq4n6e7MOIWKJxUa
	imdhjCUJYIhHZ4o7KMIbQ+Q2fWP1rsPNnXTDfeJHy4AM6FSY0lKLBpgS0SsB2B9V0r34
	JV5QjgigmFUA/fWg7OO5Lbtn3obDuo3RBOvOkccyKCIgI6sPWrClrw5jDIkq148u+bvv
	FAnPbrm23gRR8DV2bquJX0SqoHYr3KewC4QdCmLZryCjoIkwMdlSUbbcJeUdoHCXQNh6
	M9jZTC6sCDmo35BvNSZFlJZrOhAaOb+tWoHKonSnNQbKHRTV10so2PRovIjdnyfB/Wep
	C/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=bBkF45Zkee4A2wdzHxzHHF9Kahi6PYJTcYtB+APoxjU=;
	b=pe3R1esNZ1GvArdJCNUf8fP7QpIPV7uM4prueGbJ/9vnDrR0LinSS69SrKIb3tY2dU
	RRhzdkUIEtd44eSuI5Y6gkN0PhUlq4xtRhwb55q+WxA2br6VTOFVETB3NfW523NjwFGk
	eh2vLHDCuaPwtLPs5SfNjaGnhUzIEstBLHZB48wIi58QnJN+SF6k3D3xn6C1Rdv50MM5
	sshcyxrhipY6oPc3dkvKJ30kF/rVDSEzioUhsJ4OrDGI36zBAedadVWmnvnYLttYS7SR
	EsM8pFJZdvot0/rGr5pn8pjPb1xizj6h61wqBUNZ0K++nPiVsRP85eiItIUNKPxbsnL3
	W20Q==
X-Gm-Message-State: AMCzsaVRe5REcOcP7/ZKzbrmwLfnG+i8kOUejsAR6+f2HolTynR28w+9
	kAVbwcy+rawZOA1h5GHZQ7UlzBGZzzjrDbDcITOFVg==
X-Google-Smtp-Source: ABhQp+TVMMPy141lERPH7FwvefsKbeT9Kjqu2wAGejdW0tmh9PB+xWK/GcTnTmQMaerEbxHXnE2dgpke3iyiCEb7NAM=
X-Received: by 10.80.187.44 with SMTP id y41mr18536904ede.154.1508818563387;
	Mon, 23 Oct 2017 21:16:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.162.7 with HTTP; Mon, 23 Oct 2017 21:16:02 -0700 (PDT)
Received: by 10.80.162.7 with HTTP; Mon, 23 Oct 2017 21:16:02 -0700 (PDT)
In-Reply-To: <CAAWyHB+7hEg=MJY7VJWMdmzA1a8Ritts88yEdi+ciqum=PS+Qw@mail.gmail.com>
References: <CAAWyHB+xtKGGLCmGOJvWiVbjCWvhPQMttNjLq=J2SampX8QhBg@mail.gmail.com>
	<CAAWyHB+vS7nv0GHCUWiXsWQxwTc9A5qprssmU7rSV20qgjRT-A@mail.gmail.com>
	<CAAWyHBKbq=xm6DbLy9j7fx9=paFWMns=QiU5gxFB-V_NMoZ75Q@mail.gmail.com>
	<CAAWyHB+7hEg=MJY7VJWMdmzA1a8Ritts88yEdi+ciqum=PS+Qw@mail.gmail.com>
From: vishal ashapur <vishalashapur@gmail.com>
Date: Tue, 24 Oct 2017 09:46:02 +0530
Message-ID: <CAAWyHBKXgLZq7jfEAv00o32=uCUek85YnQmFev4U1U9DOVHXEQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Adding usb-modeswitch and minicom packages on yocto
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
X-List-Received-Date: Tue, 24 Oct 2017 04:16:05 -0000
Content-Type: multipart/alternative; boundary="94eb2c1a09e0805655055c433272"

--94eb2c1a09e0805655055c433272
Content-Type: text/plain; charset="UTF-8"

Hi
I want to add USB modeswitch and minicom packages on the target image. I am
using raspberry pi 3 for the same. How to add those two packages so that
they are enabled on target machine.
Regards
vishal

--94eb2c1a09e0805655055c433272
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi<div dir=3D"auto">I want to add USB modeswitch and mini=
com packages on the target image. I am using raspberry pi 3 for the same. H=
ow to add those two packages so that they are enabled on target machine.</d=
iv><div dir=3D"auto">Regards=C2=A0</div><div dir=3D"auto">vishal</div></div=
>

--94eb2c1a09e0805655055c433272--
