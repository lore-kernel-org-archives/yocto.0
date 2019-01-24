Return-Path: <joao.jfgoncalves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2AE2E00D05; Thu, 24 Jan 2019 11:40:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (joao.jfgoncalves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-it1-f181.google.com (mail-it1-f181.google.com
	[209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B85ACE00C75
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 11:40:07 -0800 (PST)
Received: by mail-it1-f181.google.com with SMTP id m62so6872639ith.5
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 11:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=beWnhcPayHWcnTRCfk59gOzRirXweEiBvVBtflQu0Cc=;
	b=bcwrugZPLi9iJsHEKG53/hf/B1T1MojMKlaXrCvAFbwPgNd4Y5q+IopIvidGctabQz
	9L1JP966u5isNAnzNN6ECy2GVCHKDmwYqpeTLAtH1aA+LcXyISnjhpOLPRd8CHqXo5cD
	jzAjQI8VzhSPz+s+aEI1Z/RrfBGGn9OmMAlLV4Kgu62mpGt93+q6wAlaq3ekzLtwWO6Y
	s5OT6VE1YJbwy+tNqeRJUbykcAZZDXXvES7cBnhQNFAJKyMQL3V8azwfSARvAtFPKx5z
	0MhWz8blLLZ0Yv9C6UPZCARregCdhloQEWVR6JiB3539z3xdYcep8Kv5f2v/ZMX+Lyyk
	KojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=beWnhcPayHWcnTRCfk59gOzRirXweEiBvVBtflQu0Cc=;
	b=iycmSeDwuDppe1dfg2xOL4N1r3UQX0c15aXtMclKxiqgd2D5frMtacia4+GpkiCDYv
	TdHefN0uKQkyTWiqzY3CK7A1/WYWk6+EYdRMdRS54vDB+f5WSoHOKHbTCdm8S9kTMZvb
	lgl/zJ1mbwLT1KNx46pR701kzcFh+2Gf+WBjiENO+eij9rSLn+1ixeeoKSRYRcEcnxdD
	dMT2edeMx6RuaHBsr0O2r//zik5A2yib0Yr7IjgSUlNmRy75rTdO4IpvGLhZY6U7lfWe
	6omqCr2HHT+GTu58skqYsjMVchBYfjqzmwRFKQTBHzDobY6L9TETHq9JX8byBmdQMVDb
	HkgA==
X-Gm-Message-State: AJcUukfugWwHb6soBahcXduTnlyloCIQ0/UYUznkBa7fUAaia1BhFvnf
	RQtGeEA0fBbiPwzpvQRAKRDTLNGqk/vZf9uLn50=
X-Google-Smtp-Source: ALg8bN7hohA7H+7XLAP9zzGXSPGz49dr5opTu0YGEpeborsSGGpmh1zxLR3ItZ8xaRTMvxsw8g1rzQ8gh/GC4l7Azd0=
X-Received: by 2002:a24:874a:: with SMTP id f71mr2211497ite.120.1548358807057; 
	Thu, 24 Jan 2019 11:40:07 -0800 (PST)
MIME-Version: 1.0
References: <CAHXEV+n8iBw3ymYCm38CSKXS=ySgarQmrwf=XCT6yYp94FiOKg@mail.gmail.com>
	<20190124153513.GY7474@hiutale>
In-Reply-To: <20190124153513.GY7474@hiutale>
From: =?UTF-8?B?Sm/Do28gR29uw6dhbHZlcw==?= <joao.jfgoncalves@gmail.com>
Date: Thu, 24 Jan 2019 19:39:56 +0000
Message-ID: <CAHXEV+nnGF1t9xZJaWjS-pg4Svqh=Oq8fPSnyfE8FENECYRM9g@mail.gmail.com>
To: Mikko.Rapeli@bmw.de
Cc: yocto@yoctoproject.org
Subject: Re: libstdc++fs on toolchain
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
X-List-Received-Date: Thu, 24 Jan 2019 19:40:09 -0000
Content-Type: multipart/alternative; boundary="000000000000adfe2705803960d4"

--000000000000adfe2705803960d4
Content-Type: text/plain; charset="UTF-8"

>
> > I've tested with gcc 7.3 and with gcc 8.2 and and none have the
> libstdc++fs
> > library.
> > On my host machine the library is at
> > /usr/lib/gcc/x86_64-linux-gnu/7/libstdc++fs.a
> >
> > Does anyone know how to include this library on a yocto generated
> toolchain?
>
> At least on x86 targets, it's available from gcc-runtime recipe and
> libstdc++-staticdev binary package on sumo/yocto 2.5 and later.
>

Yes, It is available on libstdc++-staticdev, thank you
But now it wasn't installed on toolchain sysroot  (built with my image
do_populate_sdk)

I tested adding libstdc++-staticdev to IMAGE_INSTALL.

Adding it to TOOLCHAIN_TARGET_TASK and TOOLCHAIN_HOST_TASK make the
populate_sdk fail.

Isn't  the TOOLCHAIN_HOST_TASK the right way to add a package only to the
toolchain?

--000000000000adfe2705803960d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div cl=
ass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; =
I&#39;ve tested with gcc 7.3 and with gcc 8.2 and and none have the libstdc=
++fs<br>&gt; library.<br>&gt; On my host machine the library is at<br>&gt; =
/usr/lib/gcc/x86_64-linux-gnu/7/libstdc++fs.a<br>&gt; <br>&gt; Does anyone =
know how to include this library on a yocto generated toolchain?<br>
<br>At least on x86 targets, it&#39;s available from gcc-runtime recipe and=
<br>libstdc++-staticdev binary package on sumo/yocto 2.5 and later.<br></bl=
ockquote><div><br></div><div>Yes, It is available on libstdc++-staticdev, t=
hank you</div><div>But now it wasn&#39;t installed on toolchain sysroot=C2=
=A0 (built with my image=C2=A0 do_populate_sdk)</div><div><br></div><div>I =
tested adding libstdc++-staticdev=C2=A0to=C2=A0IMAGE_INSTALL.</div><div><br=
></div><div>Adding it to TOOLCHAIN_TARGET_TASK and=C2=A0TOOLCHAIN_HOST_TASK=
 make the populate_sdk fail.<br></div><div><br></div><div>Isn&#39;t=C2=A0 t=
he TOOLCHAIN_HOST_TASK the right way to add a package only to the toolchain=
?</div><div><br></div></div></div></div></div></div>

--000000000000adfe2705803960d4--
