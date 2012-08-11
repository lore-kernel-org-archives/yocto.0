Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4EBAE0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 12:48:11 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1587310lag.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 12:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=tia9ct2aU6pULVX/GOeOHrJe0l/mUSDdd1GdyzbmO4g=;
	b=WbWcBzPlLG05IeOPUgrvX4JLltYy0p7g05nszfilCO91cGiaT1Hgt9s+K5ooNr7m2K
	PFJmZy74oNZ+V8fbwcBAcinMIEJ05e61sX80gZphVI5z2WEABof8hF8pxNwe1Yshglc8
	9dZTdYqZdMNH/9p+l+UJguSDiCXU3UY9LYbFC9L6BgJX236zUlcvB3nsRRVKafAGcOce
	tTWTHzOW7JohUAIvclxi/eLLTQoKVfWnc8GUW7sdtBrx18R8iAS6TIOpdUIi8r0S0YeL
	hXmE4/FftHDtU74p9kGaVg8TJO9Y7sYNPkVVs1Lr2bHUGC4M0oFfxof23URZILfcdF+E
	knLQ==
Received: by 10.112.85.225 with SMTP id k1mr4144208lbz.38.1344714490581; Sat,
	11 Aug 2012 12:48:10 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.5.104 with HTTP; Sat, 11 Aug 2012 12:47:50 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1208111524130.12464@oneiric>
References: <alpine.DEB.2.02.1208111301170.5438@oneiric>
	<CABcZANmw1WJKkAUeZL3L=+NqJxTm1eTHMrQsJ44dBK_fwDen0Q@mail.gmail.com>
	<alpine.DEB.2.02.1208111422560.12092@oneiric>
	<CABcZANmXySuVe03ODbLqPhao75b+e0Y8muCUL_D=wz-9ek9_Aw@mail.gmail.com>
	<alpine.DEB.2.02.1208111524130.12464@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Sat, 11 Aug 2012 12:47:50 -0700
X-Google-Sender-Auth: 9uJUDtkhGjF2b-eDXOeTpscmBPk
Message-ID: <CABcZANn3qq_H6y9MsHs++ZT+Q88XF6AX3aOYnaUR4ufFOyguMg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: under what circumstances is BBCLASSEXTEND = "native" required in a recipe?
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
X-List-Received-Date: Sat, 11 Aug 2012 19:48:12 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 11, 2012 at 12:30 PM, Robert P. J. Day
<rpjday@crashcourse.ca> wrote:
> p.s.  i'm still wondering if there's a convenient way to identify
> utilities on the dev host that are candidates for ASSUME_PROVIDED.
> surely a relatively recent version of subversion would be adequate,
> but how would one actually *know* that?

This gets brought up pretty regularly, and the answer is it's a pain
to know when it can be done. Getting a successful build doesn't
necessarily mean you can get away with whatever it was you added to
ASSUME_PROVIDED, because it just means you didn't try to build
something that required X feature that isn't in version Y of the
software. Basically you can arrange something like that, but you'd
never be supported in your efforts, because it could always break
sometime.

For what it's worth, I do something like that in most of my builds,
and it has only rarely caused any problems. I can show you what I use
if you'd like, but again it's buyer^Wbuilder beware :)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

