Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4860E008C1; Mon, 22 Dec 2014 12:08:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD215E007BA
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 12:07:54 -0800 (PST)
Received: by mail-qg0-f45.google.com with SMTP id f51so3776174qge.32
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 12:07:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=XjFgttyvpdb1hfUarzRStazH6d4ROsAP26C+snQPqw8=;
	b=muS379TDrv0Zcp3I1vCfdwmDLPXuVHjzZCtduwuVQjC7iZLucBQyrpbRr8X3Xw1KhL
	9ZRPz7AdTPXD+pkQEE5x6ioWhRsRHxjhKxGERFiObLCzn/q9MojlSDlB2AFIRcKBOSfg
	XmYsySzIlZmjphWMid3h7d57vatd3bp7wgdtV4uxUPK48TkBXtri29C4wdLTjzm657yT
	R7I4o2yM5n7FH3TR/y+1CZNpz2qa9sDgqKAGC45CZ6kQi9/ggkS5xlgGYgRmifM1He0y
	/r+gLcxS4JycPn1N3vQro4o7rTSQV5s5VnNsQkeTVw6RICmenLICR6B/cTf5KHMl9suW
	dfBw==
X-Gm-Message-State: ALoCoQlLAY8f6gM28aWZbixVHng6gl3qDIrCh/Tk9bYFo0R9xrK5i/FCN/toYzmB8fpYnCqugU0z
X-Received: by 10.224.3.137 with SMTP id 9mr40474127qan.64.1419278873654; Mon,
	22 Dec 2014 12:07:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Mon, 22 Dec 2014 12:07:33 -0800 (PST)
In-Reply-To: <549865D2.2090803@gmail.com>
References: <549865D2.2090803@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Dec 2014 20:07:33 +0000
Message-ID: <CAJTo0LZPmwUbgxJurjnROr0jk4WGs7BwZHvSgoL6_AyxHMvscA@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Server Questions?
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
X-List-Received-Date: Mon, 22 Dec 2014 20:08:05 -0000
Content-Type: multipart/alternative; boundary=001a11c2480a1a0e3a050ad39dfa

--001a11c2480a1a0e3a050ad39dfa
Content-Type: text/plain; charset=UTF-8

On 22 December 2014 at 18:41, nick <xerofoify@gmail.com> wrote:
>
> I am wondering if a build server is a good idea for Yocto Builds. In
> addition what specs are good for
> a build server if I am to purchase one. Further more I am assuming as many
> cores as possible for making
> the build be parallel and faster. I was also  thinking as much ram as
> possible too, 64 GB as a minimum.
>

This has been discussed repeatedly on this list, but the rule of thumb is a
well-rounded server: as much of everything as possible, and don't bother
with SSDs.

Ross

--001a11c2480a1a0e3a050ad39dfa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 December 2014 at 18:41, nick <span dir=3D"ltr">&lt;<a href=3D"mailto:=
xerofoify@gmail.com" target=3D"_blank">xerofoify@gmail.com</a>&gt;</span> w=
rote:<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div id=3D":812" class=3D"a3s" style=3D=
"overflow:hidden">I am wondering if a build server is a good idea for Yocto=
 Builds. In addition what specs are good for<br>
a build server if I am to purchase one. Further more I am assuming as many =
cores as possible for making<br>
the build be parallel and faster. I was also=C2=A0 thinking as much ram as =
possible too, 64 GB as a minimum.</div></blockquote></div><br>This has been=
 discussed repeatedly on this list, but the rule of thumb is a well-rounded=
 server: as much of everything as possible, and don&#39;t bother with SSDs.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross<=
/div></div>

--001a11c2480a1a0e3a050ad39dfa--
