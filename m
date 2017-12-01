Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94964E00CF7; Fri,  1 Dec 2017 09:29:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C805E00CE8
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 09:29:45 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id f190so3237175ita.5
	for <yocto@yoctoproject.org>; Fri, 01 Dec 2017 09:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=VjiOKCGH5wmOhk6j4FvgDm3QxpVLXhnWZy8r/9ug14w=;
	b=I8kY+uhZTMIdBfU3OPQYdf9DsiqRBBfY3g/gizVgH2fLVfWF3KNtW5i42SLwBaDW5E
	IJqO9lH2U1/csyLAlFfiLUZ+Jk5lw/nzugIFweDtf8CQ9ZYwp3REV36hbZkhA6dkxPM7
	7p4LBEqXmPBdAu3NUyWrSk/gNnGsKVF7sKor/JRYj0qYCvmAV55TdaelLmY3tvVUXchz
	Yw0ngxX7IWK2EByi1XcloTggVpbPp90PFdlstRBbutJ9O/PFgkb+Pa/w4J5209y8yQjd
	PWJhLzWlzZ1IiN8o+hBqJVx98uDZGP3tAl0YkulgKs8+S1kVTvcgytVKXtcScnosWoU7
	k0hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=VjiOKCGH5wmOhk6j4FvgDm3QxpVLXhnWZy8r/9ug14w=;
	b=rsr52tF9szQUqiwnxP/K98QnmMM1RAqYJZWpLnKMfhXp3cikou2COJkKLR5SqhFOTe
	YtQsuSQZ8cr8t8UQh2vaHLQPuJBpZ4ReM00EC3pSTYDNIgdHUY+4KQMiuhf4iftYnQ27
	wvTNnOWR+D1mTSB9RriYiQNyQDq0lVFEgVNFUbXQDrX9gOtM22wY7HfWCtKWPQHrrU6d
	MmT+9dVMyNVwM8W7ms0Ck72UN7sKUOXT0se9tYvCubmoUW9ulWqfhtjSdsGu2IfnCTar
	utRPlStxGz+h67jaMzF4a4thYlSYJCyDQZjVyvPhntuWg/ytAcCmBqb8LVpfO0e94SVx
	aUwQ==
X-Gm-Message-State: AKGB3mKf0kHbmrFTWCjfkk5KodXv6K46LOQ3qWkIva7p2WOs7v5nA0FK
	/wiBO/hJfgXfl+qypXiSFlWQEhj9o3V3WNQKGkoHxQ==
X-Google-Smtp-Source: AGs4zMbJwfgfaS2w7/XdGLwtJdz7jUWtF34+VzNH9njxTQIpiXSq+6IvG6WediV+penayBXMXLQYZBBNDQetAeEeW6o=
X-Received: by 10.36.60.212 with SMTP id m203mr948099ita.96.1512149385254;
	Fri, 01 Dec 2017 09:29:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.90.200 with HTTP; Fri, 1 Dec 2017 09:29:24 -0800 (PST)
In-Reply-To: <223AEB75-1CFA-4A47-BA4B-C5AFAA32407A@korgrd.com>
References: <223AEB75-1CFA-4A47-BA4B-C5AFAA32407A@korgrd.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Fri, 1 Dec 2017 18:29:24 +0100
Message-ID: <CAB2nKc--WLYGxkPVAz5CO5q7W3b4jPpQKmNBzojdyrUd-O+ydw@mail.gmail.com>
To: Steve Pavao <stevep@korgrd.com>, yocto@yoctoproject.org
Subject: Re: how to know Poky kernel version before running it
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
X-List-Received-Date: Fri, 01 Dec 2017 17:29:46 -0000
Content-Type: multipart/alternative; boundary="001a11484940f4a247055f4ab61b"

--001a11484940f4a247055f4ab61b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Something like following command will give you every variables for kernel
recipe:

bitbake -e virtual/kernel | egrep '^[A-Z][A-Z_]*'

You will find prefered version and source url variables.

2017-12-01 18:11 GMT+01:00 Steve Pavao <stevep@korgrd.com>:

> Is there a definitive way to know at/after build time what kernel version
> is being built via a particular bitbake of Poky?
>
> I don=E2=80=99t have the board on hand to boot the result of my work righ=
t now; it
> is a scout build for a board I=E2=80=99m getting soon.
>
> I=E2=80=99m trying to figure it out by browsing the console-latest.log an=
d looking
> for the highest kernel version I can observe from the recipes used.  Is
> there a better way to find this out at build time?
>
> Knowing the kernel version would help me decide what version of a patch t=
o
> apply to go along with it.
>
> Steve Pavao
> Korg R&D
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11484940f4a247055f4ab61b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Something like following =
command will give you every variables for kernel recipe:<br><br>bitbake -e =
virtual/kernel | egrep &#39;^[A-Z][A-Z_]*&#39;=C2=A0<br></span><br>You will=
 find prefered version and source url variables.</div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">2017-12-01 18:11 GMT+01:00 Steve Pavao=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:stevep@korgrd.com" target=3D"_blan=
k">stevep@korgrd.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Is t=
here a definitive way to know at/after build time what kernel version is be=
ing built via a particular bitbake of Poky?<br>
<br>
I don=E2=80=99t have the board on hand to boot the result of my work right =
now; it is a scout build for a board I=E2=80=99m getting soon.<br>
<br>
I=E2=80=99m trying to figure it out by browsing the console-latest.log and =
looking for the highest kernel version I can observe from the recipes used.=
=C2=A0 Is there a better way to find this out at build time?<br>
<br>
Knowing the kernel version would help me decide what version of a patch to =
apply to go along with it.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Steve Pavao<br>
Korg R&amp;D<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a11484940f4a247055f4ab61b--
