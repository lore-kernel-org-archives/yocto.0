Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1B43E00AE4; Fri, 28 Apr 2017 09:13:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCB97E009A5
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 09:13:06 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id p80so68759756iop.3
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 09:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P1+acMYSlYlfZSmJW04bJt2u7ohXag+lLjWVg7Bn5T0=;
	b=KHnM8atLP+ICQwX9WI9TliLqNt4cKR3OEtKr8l7G+9migu1icRc9HQlMgxOGd90zQG
	IUR7AKSWHjgP5q2Atev0Ou0ctzNA+F3/RuljJ5qEyq1k+h9MQk0uB5xDEdL5Vaii2k04
	AS54tR6bNvXelEHOxMyE8pY9FO3v/BO+V2n+A0AuleP5ettm8qXSX1hV/v7I87jrKr4z
	pf3HE74R72jW3n9Q89p+Ck4wphLfLi5LbjHNAMVbBunzNcSVQsP3t5bgxlBSdz+2YKRO
	pqN0z3c7jcyR4BTGjp6JoycPjrEuj+JD1FNF/sTv1idTeQfYFPOQ+0VrhDZtecN9Ad2/
	z1Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P1+acMYSlYlfZSmJW04bJt2u7ohXag+lLjWVg7Bn5T0=;
	b=P9PDZuQNyv6i3MJPxSySf+KAWRGR0MSCA1Dvq3bXNccFMGedtShv6trcQR1wYdv2Qt
	hIoHQgmlqNZWKQjxuLO+h+DJt0DYGsR/dRY7Q/ba+pofFkqb/VSBdb9r5AMXfKOw5I8y
	DDS/gW7c2MhtxFkZgH9OFtzaFUqsGg0AwuE5GRl4c5D46dgp2cJDWrvBkslygum+/t6Y
	bi61rWECD0ygo0Cl9Q71q6heixXw3W3K8wGRVaN85zmtY9I0mLTnaIL0+W1bA0zy0ypg
	uxDKCxfDBNjyToSxwMjGNl9WckROP7Dwd8YjUSjMia8ekdIxhaNo6wsej4LIP2EtsK06
	qCRA==
X-Gm-Message-State: AN3rC/5ydGUFl7Us9/1cibR7Fq9RQAGqErx2ODYbj4g4o2VE6wpgO8yz
	xy0vnXz6YHVJzE2YBe36C8jLpiSOOQ==
X-Received: by 10.157.7.114 with SMTP id 105mr5136929ote.170.1493395985516;
	Fri, 28 Apr 2017 09:13:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.24.107 with HTTP; Fri, 28 Apr 2017 09:13:05 -0700 (PDT)
In-Reply-To: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 28 Apr 2017 18:13:05 +0200
Message-ID: <CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
To: Luca Carlon <carlon.luca@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Building rpi-test-image for Pi3 64 bit
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
X-List-Received-Date: Fri, 28 Apr 2017 16:13:16 -0000
Content-Type: multipart/alternative; boundary=001a1136f7a039ceab054e3c59ce

--001a1136f7a039ceab054e3c59ce
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 28, 2017 at 6:01 PM, Luca Carlon <carlon.luca@gmail.com> wrote:

> Hello,
> I'm trying to build rpi-test-image for Raspberry Pi 3 64 bit but I'm
> getting this error: https://pastebin.com/rYJ0PL7h. It seems it is looking
> for a file that is not there, and I don't see it in the linux repo either:
> https://github.com/raspberrypi/linux/tree/53460a0a50f3dd5e60266e945d0ac7
> 94ce0eca77/arch/arm64/boot/dts.
>
> The same build seems to succeed for machine raspberrypi2 and raspberrypi3,
> instead. Any idea what I may be doing wrong?
>

Could you please share your layer config and revisions? Up to yesterday, I
built from master (poky and meta-raspberrypi) with no error with
MACHINE=raspberrypi3-64

--001a1136f7a039ceab054e3c59ce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Apr 28, 2017 at 6:01 PM, Luca Carlon <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:carlon.luca@gmail.com" target=3D"_blank">carlon.luca@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hello,<b=
r>I&#39;m trying to build rpi-test-image for Raspberry Pi 3 64 bit but I&#3=
9;m getting this error:=C2=A0<a href=3D"https://pastebin.com/rYJ0PL7h" targ=
et=3D"_blank">https://pastebin.com/<wbr>rYJ0PL7h</a>. It seems it is lookin=
g for a file that is not there, and I don&#39;t see it in the linux repo ei=
ther:=C2=A0<a href=3D"https://github.com/raspberrypi/linux/tree/53460a0a50f=
3dd5e60266e945d0ac794ce0eca77/arch/arm64/boot/dts" target=3D"_blank">https:=
//github.com/<wbr>raspberrypi/linux/tree/<wbr>53460a0a50f3dd5e60266e945d0ac=
7<wbr>94ce0eca77/arch/arm64/boot/dts</a><wbr>.<div><br><div><div><div>The s=
ame build seems to succeed for machine raspberrypi2 and raspberrypi3, inste=
ad. Any idea what I may be doing wrong?</div></div></div></div></div></bloc=
kquote><div><br></div><div>Could you please share your layer config and rev=
isions? Up to yesterday, I built from master (poky and meta-raspberrypi) wi=
th no error with MACHINE=3Draspberrypi3-64</div></div></div></div>

--001a1136f7a039ceab054e3c59ce--
