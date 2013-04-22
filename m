Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C9F7E006F9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 12:49:12 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id h11so5046130wiv.13
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 12:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=7Yjf5avi4Z6IkwO4mfVaqjwoMhwMN75zg5dFTwVRUOQ=;
	b=cB3hPnumYeHXl/oVQmfxco+izvgBJpreIP6imDnOE60lSkt+5cS+46kBvBNxLhY4CC
	TWxFCinZDYjO+jlNbJbiG85bQ8dgKQdotYp5Qk6BS91XHNUSZCrgEPgbaaRmY56x7GGd
	8D3inFFuxhcT3BdmW+qnvUCEbf+da1NrBiWLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=7Yjf5avi4Z6IkwO4mfVaqjwoMhwMN75zg5dFTwVRUOQ=;
	b=oTEwsMAXOZskC0s1l/JF+i8o84+jHRnvU9gs3V1UNjGibd1vYPlKDJ9C3/RBTnqXu8
	hQK5oS5PPpwuIN7gCEeqUAAhIN1VC+aKKIFq+2gyJ5m6NVEQnY9e9dZLGqcqH2VhtIMZ
	dwwuG6OPcgJpDOqa3r6LQlapZ6g7l5Cj6y/apEXRiIHO9AFATellEI6H+qToLElI41hj
	HzOi8H4GduUMcROrTo5AC2qTw0RZhXoeZQ/0pT8VXHr4o/QUjPzZfe+P0wH2X3f5cFfL
	yM6/DZ+rVro6FZEIPlTkMCI1Y4231ttOSQqgk5e9d0bCdlqV793IdUSPiyRrZNGJ6GMO
	GhjA==
MIME-Version: 1.0
X-Received: by 10.180.206.205 with SMTP id lq13mr55393360wic.21.1366660150695; 
	Mon, 22 Apr 2013 12:49:10 -0700 (PDT)
Received: by 10.223.87.73 with HTTP; Mon, 22 Apr 2013 12:49:10 -0700 (PDT)
In-Reply-To: <20130422175755.7FDD0E01498@yocto-www.yoctoproject.org>
References: <20130422175755.7FDD0E01498@yocto-www.yoctoproject.org>
Date: Mon, 22 Apr 2013 12:49:10 -0700
Message-ID: <CA+gsK-rNZxF=EQfytz9sB95826J2g0fCpZaG4n0z2872BcCAoQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Saridakis, Dean (US SSA)" <dean.saridakis@baesystems.com>
X-Gm-Message-State: ALoCoQkACJoYafSHYdiqWw0z3kZ5LDXLO3WVbfr1RStwTalNsvWeqEon5s+fF+KcPaApxSf5cwzD
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Patching from .bbappend
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
X-List-Received-Date: Mon, 22 Apr 2013 19:49:12 -0000
Content-Type: multipart/alternative; boundary=001a11c382d4cfd42104daf85ced

--001a11c382d4cfd42104daf85ced
Content-Type: text/plain; charset=ISO-8859-1

You got it figured out?

Simply add

FILESEXTRAPATHS_prepend := "${THISDIR}/${P}:"
SRC_URI += "mypatch.patch"
PRINC := "${@int(PRINC) + 1}"

to your bbappend and put your patch in a subdirectory
<packagename>-<packageversion> relative to the recipe.

:rjs

--001a11c382d4cfd42104daf85ced
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You got it figured out?<div><br></div><div style>Simply ad=
d</div><div style><br></div><span style=3D"font-family:arial,sans-serif;fon=
t-size:13px">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${P}:&quot;</spa=
n><br style=3D"font-family:arial,sans-serif;font-size:13px">
<div style>SRC_URI +=3D &quot;mypatch.patch&quot;<br></div><div style><div>=
<span style=3D"font-family:arial,sans-serif;font-size:13px">PRINC :=3D &quo=
t;${@int(PRINC) + 1}&quot;</span><br></div><div><span style=3D"font-family:=
arial,sans-serif;font-size:13px"><br>
</span></div></div><div style>to your bbappend and put your patch in a subd=
irectory &lt;packagename&gt;-&lt;packageversion&gt; relative to the recipe.=
</div><div style><br></div><div style>:rjs</div><div class=3D"gmail_extra">
<br><br>
</div></div>

--001a11c382d4cfd42104daf85ced--
