Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E7E2E014A5
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 20:26:06 -0800 (PST)
Received: by mail-oa0-f45.google.com with SMTP id i18so7814410oag.32
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 20:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=cPa8gfDQXsZA+RZdGx7cEm1Ka1WIG//kuo9fHxkm8Uk=;
	b=Ynsk6kxEzl3Jud9fhc4Ch2kbhZxYYpyMh3cbLT7VlVeFOaAv9i2cdljVNfYxRX50Jg
	3S10xwhT84Oac/dUhcH3i7ONW5JyEa8rYB1AHdEY93D2b7QTZmZFf2fOmorxOqOoUOKa
	QhfD2oXRYBMPNJ6O4QVjHt1Fd6DN1w1Nl3cOra+tKXZiJHWQE5fWRkRDoP/R4s33e9aA
	hKm3ZG3nmO7z+XGjOTHXXIFOAXxQSt3XdocrbUYtAxXvNJ2PmTPht7RczNxgjd4+3jOk
	i87psw2+uIju23KPENwTTEEvJ5bh5rynT9ZJgXTetazGPcbAxhWsHPRu0jpS+be+Y+z2
	zUaw==
MIME-Version: 1.0
Received: by 10.182.207.70 with SMTP id lu6mr20814755obc.78.1356495965739;
	Tue, 25 Dec 2012 20:26:05 -0800 (PST)
Received: by 10.182.107.196 with HTTP; Tue, 25 Dec 2012 20:26:05 -0800 (PST)
Received: by 10.182.107.196 with HTTP; Tue, 25 Dec 2012 20:26:05 -0800 (PST)
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE099ABD88@POCITMSEXMB03.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE099ABD88@POCITMSEXMB03.LntUniverse.com>
Date: Wed, 26 Dec 2012 09:56:05 +0530
Message-ID: <CA+Z6RkV-6udeBNJsnoqen7=3GSqyZT9DDsykQ1duNoNv9_NqGQ@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Remove unwanted package from Qt
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
X-List-Received-Date: Wed, 26 Dec 2012 04:26:06 -0000
Content-Type: multipart/alternative; boundary=e89a8f5039aa2d5b1804d1b9d4c7

--e89a8f5039aa2d5b1804d1b9d4c7
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am compiling Qt-4.8.0 with poky-denzil-7.0 for arm1136 architecture.



At the time of integrating qt-embedded with rootfs, I am getting qtopia
directory in usr/share path of rootfs.

I tried removing qtopia directory through qt recipe but ended in
compilation error. Please suggest any idea to remove qtopia from share
directory.



Thanks and Regards

Navani Kamal Srivastava

--e89a8f5039aa2d5b1804d1b9d4c7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>I am compiling Qt-4.8.0 with poky-denzil-7.0 for arm1136 architecture.</=
p>
<p>=A0</p>
<p>At the time of integrating qt-embedded with rootfs, I am getting qtopia =
directory in usr/share path of rootfs.</p>
<p>I tried removing qtopia directory through qt recipe but ended in compila=
tion error. Please suggest any idea to remove qtopia from share directory.<=
/p>
<p>=A0</p>
<p>Thanks and Regards</p>
<p>Navani Kamal Srivastava</p>

--e89a8f5039aa2d5b1804d1b9d4c7--
