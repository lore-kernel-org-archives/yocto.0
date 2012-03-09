Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59840E013A3
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 08:39:17 -0800 (PST)
Received: by dadp13 with SMTP id p13so1919122dad.35
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2012 08:39:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=kucB889Z3jAxRpPpBm4cLkQ+ZwCiRrl+xP4GlDAGtz4=;
	b=NAecJK3NGGqgLbuZ6J74g0YwN959UJzkRsbXBX5RILAfZGWNE8NBuF15RtG30YC+nN
	VGsfZ4jCUQC8wpnh862hVtxCEJWj7iCRNMy9KsABF1bwlEUJwv+gqNjZmtTqNXkPJshB
	WXFZI/yq64chbfV0+pomxUBJRhKa/JOKXUimBk3opqJ2HRfTzmGB2wGys6fXbjxIH8VK
	i4ft9bC3ZjPekejJh7oDRWx3RmmGxKNyeL2HNNucHun9TUZVHoXPcwg4fj9vyVQQmG//
	ghOdA4aozghJcipswBF9pIFIMDIr4qOK5mlpi9xzfPFyYCDYrSa77C51I74xDVMmCvV3
	Vesw==
MIME-Version: 1.0
Received: by 10.68.216.138 with SMTP id oq10mr4376676pbc.85.1331311157095;
	Fri, 09 Mar 2012 08:39:17 -0800 (PST)
Received: by 10.143.12.11 with HTTP; Fri, 9 Mar 2012 08:39:17 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1203090547080.16743@oneiric>
References: <alpine.DEB.2.02.1203090547080.16743@oneiric>
Date: Fri, 9 Mar 2012 08:39:17 -0800
Message-ID: <CA+gsK-rP0ZFZuaoF5AgcmXuijAzjTjDRS4A-DZ_e2xMd-tVgWA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQlSbG7ETQIR6Wr2+zJgQbyXWO0lLszn2Dq24QztkJu5WItczYldcpAfCGJ+jDH4v1Fbnpla
X-Mailman-Approved-At: Sun, 11 Mar 2012 12:40:09 -0700
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: contradictory explanations of IMAGE_INSTALL in yocto manuals
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Mar 2012 16:39:17 -0000
Content-Type: multipart/alternative; boundary=047d7b2e090d9aab8504bad20890

--047d7b2e090d9aab8504bad20890
Content-Type: text/plain; charset=ISO-8859-1

I tried the versions _append and += as well as _prepend and =+ with the
IMAGE_INSTALL and other variables. So far I have not run into any issues
where one would behave differently from the other. The only thing you have
to remember with the _append and _prepend versions is that you have to
include a space at the beginning for _append and at the end for _prepend.
Although I have found that not always to be consistent either. However, an
additional space does not hurt.

RUdi

--047d7b2e090d9aab8504bad20890
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I tried the versions _append and +=3D as well as _prepend and =3D+ with the=
 IMAGE_INSTALL and other variables. So far I have not run into any issues w=
here one would behave differently from the other. The only thing you have t=
o remember with the _append and _prepend versions is that you have to inclu=
de a space at the beginning for _append and at the end for _prepend. Althou=
gh I have found that not always to be consistent either. However, an additi=
onal space does not hurt.
<div><br></div><div>RUdi</div>

--047d7b2e090d9aab8504bad20890--
