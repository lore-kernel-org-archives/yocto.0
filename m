Return-Path: <anders.darander@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88545E00DAA; Fri, 26 Feb 2016 11:15:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anders.darander[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 238AEE00D9A
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 11:15:55 -0800 (PST)
Received: by mail-lb0-f177.google.com with SMTP id bc4so51864788lbc.2
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 11:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/IdN7uG7a0g2c4757sScIHPhWbhEr/S9Q3M5nnHJkZ0=;
	b=doVh2r62Cyg080BERht7/H3P7Yeap2zDk43/p80xB4TRBjoVta9z5nad1ml1rbOeM2
	2H5attpllz9pvW4NT+ENcSSM0RMXm7d0axMnhrLICvSMho9WaEWDRaBYhB4pxX7gsOKm
	fOyHY79UMAo2gIlt9p+4isplgGVUs+3XePss5H4g2ykGxj2XiTX5bi/MUN5CawEgy692
	m9hkV8ayrgwAIJyKLBnB+CPqGWfY9PaUY4DKexCOUIB0sNwDbt/S05QSpxAddI/I5D2Y
	Jrb+8B7PXMtpvs1t22+DhGdZtJwkQn8AxTuIU7mJU+yNyyOdsY5qrzveJksXgTc6rvIW
	6Biw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/IdN7uG7a0g2c4757sScIHPhWbhEr/S9Q3M5nnHJkZ0=;
	b=dw38RGmjXwc8tKu6icxZ13ug1W0jSNyjDYPePf81gGIxHdAqygHbFeKqfab68gGH2C
	0vh0VjfBCqIf7nHpp30rmu8sZ0huS643e3XtkNT/sVc8eaIWoSR0gVM/EneEJFE7/46/
	DEPpRPVJQhUpQ68+4vsEbmwm7609HwCuT9tnfTtwOidg29qTIthaHKiNRv1r2v1ynfbl
	BVdDYPbbGYyRFZnKh3c0HPso7pvmZ7iOyrAeG0zFdJnAMNtrK/JYa+mT1fWBq+V0A39I
	3s4GwFkRElz2Bg8HVHXxZXVsehkt7K589QuLHRIiLsweY+Btr2FmP1+hn58P/6PT12sr
	OWsA==
X-Gm-Message-State: AD7BkJIHc1U99lo3J/ZnLwj0tjQa1Eqi36Av+g7PVLk2Q+ZQDfwoMW/43aiGZ2jh9HhJWczi5v7F9Y2Sk8WAbA==
X-Received: by 10.112.168.5 with SMTP id zs5mr1287374lbb.56.1456514153592;
	Fri, 26 Feb 2016 11:15:53 -0800 (PST)
MIME-Version: 1.0
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1spgKSosWNxwUM1suPRZD2VRbNVDsFjr55sv6GMYWCVGtw@mail.gmail.com>
In-Reply-To: <CAMKF1spgKSosWNxwUM1suPRZD2VRbNVDsFjr55sv6GMYWCVGtw@mail.gmail.com>
From: Anders Darander <anders.darander@gmail.com>
Date: Fri, 26 Feb 2016 19:15:43 +0000
Message-ID: <CAE4k23_0=nw4caHLXPDCygvFd47dJ2s9muxDFGPEibb2yQKh2Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2016 08:00:41 -0800
Cc: yocto@yoctoproject.org, Brian Avery <brian.avery@intel.com>,
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Removing Hob for 2.1
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
X-List-Received-Date: Fri, 26 Feb 2016 19:15:58 -0000
Content-Type: multipart/alternative; boundary=001a11c2409abc3f36052cb12006

--001a11c2409abc3f36052cb12006
Content-Type: text/plain; charset=UTF-8

On Fri, 26 Feb 2016, 03:54 Khem Raj <raj.khem@gmail.com> wrote:

> Go ahead
>
Yes, go ahead.

>

--001a11c2409abc3f36052cb12006
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, 26 Feb 2016, 03=
:54=C2=A0Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p dir=3D"ltr">G=
o ahead</p></blockquote></div><div>Yes, go ahead.=C2=A0</div><div class=3D"=
gmail_quote"></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
</blockquote></div>

--001a11c2409abc3f36052cb12006--
