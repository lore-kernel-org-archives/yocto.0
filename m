Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ABE2E008EA; Wed,  1 Apr 2015 08:20:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB6B1E0056E
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 08:20:18 -0700 (PDT)
Received: by qgep97 with SMTP id p97so45303044qge.1
	for <yocto@yoctoproject.org>; Wed, 01 Apr 2015 08:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=3JrzWEQ/IB76dJGFndKcztXdDfiE/aP1OjXzbN/4Tb0=;
	b=NUhM1jtyg2TWB4JePg6Uyobr9PjC3vH7e2kVrEkyqrz7OYMLi7y2dCHksUEwyLzWOh
	990x8QfQJ2mqzy1cxj+vBqtOrhoXmua3Nu6PzWA5OW5LomY10LHJO81S/5YI0BmMoGhM
	xxwsc9gf9sE6aK9XOjHqf+3Mq3wMyDwThGq4dKJv1uBOXrdIHERyfRB6nQL9+Y4tHYAc
	Srr+BUk0Im/fRvYwPOoauDGsJTHExD56s/qAQ7gW41h1LZMFBqKrJPfG+a7lBZpwDaDU
	NGEiIVhqDGPgX0w3Zyh+tL1dLkU1W6hcYD7tKvk+u/xTh6wAg4VrWVv5EUVh0af+oERg
	GOHw==
X-Gm-Message-State: ALoCoQns/bzZR0O5e7LNanSPkWqYcn6Am9Ipe54vAGbBdylrqSpv/6EQiGxeNrT4rrT8wKcHUNBf
X-Received: by 10.55.53.137 with SMTP id c131mr26546384qka.102.1427901618116; 
	Wed, 01 Apr 2015 08:20:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Wed, 1 Apr 2015 08:19:57 -0700 (PDT)
In-Reply-To: <CADu_VSbksoy+hm1Vd=jqzxTpNuFTDLoVX49dp7u9cqWnNVLx9A@mail.gmail.com>
References: <CADu_VSbksoy+hm1Vd=jqzxTpNuFTDLoVX49dp7u9cqWnNVLx9A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 1 Apr 2015 16:19:57 +0100
Message-ID: <CAJTo0LYV88=an8dcFsB=5-C_goHCMR7=X4Q=hF0hh1A6FZQivw@mail.gmail.com>
To: Matthew Karas <mkarascybi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: python3-native problems
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
X-List-Received-Date: Wed, 01 Apr 2015 15:20:21 -0000
Content-Type: multipart/alternative; boundary=001a11476f56b8f4a80512ab4027

--001a11476f56b8f4a80512ab4027
Content-Type: text/plain; charset=UTF-8

On 1 April 2015 at 15:29, Matthew Karas <mkarascybi@gmail.com> wrote:

> DEPENDS = "python3 python3-native python3-distribute"
> RDEPENDS_${PN} = "python3 python3-native python3-distribute"
> RDEPENDS_${PN}-dev = "bash python3 python3-native python3-distribute"
>

python3-native is a form of Python 3 that is built and executed on your
build machine, so it makes no sense to have this as a runtime dependency.
The RDEPENDS should just be python3 python3-distribute.

Ross

--001a11476f56b8f4a80512ab4027
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 April 2015 at 15:29, Matthew Karas <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:mkarascybi@gmail.com" target=3D"_blank">mkarascybi@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div>DEPENDS =3D &quot;pytho=
n3 python3-native python3-distribute&quot;<br>RDEPENDS_${PN} =3D &quot;pyth=
on3 python3-native python3-distribute&quot;<br>RDEPENDS_${PN}-dev =3D &quot=
;bash python3 python3-native python3-distribute&quot;</div></blockquote></d=
iv><br>python3-native is a form of Python 3 that is built and executed on y=
our build machine, so it makes no sense to have this as a runtime dependenc=
y.=C2=A0 The RDEPENDS should just be python3 python3-distribute.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11476f56b8f4a80512ab4027--
