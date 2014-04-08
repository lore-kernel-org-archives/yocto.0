Return-Path: <kergoth@gmail.com>
Received: from mail-bk0-f41.google.com (mail-bk0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 252DBE00BEA
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 08:47:16 -0700 (PDT)
Received: by mail-bk0-f41.google.com with SMTP id d7so644294bkh.0
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 08:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=UDF37Gsr8SGtu+q9FFLjWrotyI7HOkkyQsy2qQxB/hA=;
	b=LfptphqxPbmNZmD2qKCHwfhvi6heorJuil3Ar5g7uhjuviR4MuTfUePTwYQVkven2P
	UyespC8F6eWw+6RnGp3FMPK9Tbe6uJWo8KJEzNYcKAyC4x287JnuZ/yQ3bR9QFHOd2dh
	FVWvjJC9TUELNKk1WxK/+07F+f/2ouQHbBOwFzMwFhT2/z13cA2X0z9BVTddNSchZQ5x
	sa/+ED/bEueFbGdyKT7g7R5os84wrku1GVXt5eCg7YtT+hq7yIjoPpkxEcoPJwsXXD6f
	JAjD88GiqBWZuoA8uROTnZt0RfiX51lheYGMxREdtWgwxsRrCFZPTQ+blhKaYQLJ5Mwp
	z2gQ==
X-Received: by 10.112.91.129 with SMTP id ce1mr2448314lbb.40.1396972035661;
	Tue, 08 Apr 2014 08:47:15 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Tue, 8 Apr 2014 08:46:55 -0700 (PDT)
In-Reply-To: <5344188D.60707@enea.com>
References: <534416F0.10109@enea.com>
	<CABcZAN=oz+-oMJozmjrrTkUDb76t_OdkgAJoQdMM5THEHs3Jtw@mail.gmail.com>
	<5344188D.60707@enea.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 8 Apr 2014 08:46:55 -0700
X-Google-Sender-Auth: kkwy7GY2uSp0-mPul3f6thbpjug
Message-ID: <CABcZANkr9LiEU5Q28OaPkZxDRg-L2tzQiiHGqct7q1p3VSkvhQ@mail.gmail.com>
To: Vali Cobelea <valentin.cobelea@enea.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Subject: Re: CGL compliance layer initiative
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
X-List-Received-Date: Tue, 08 Apr 2014 15:47:19 -0000
Content-Type: multipart/alternative; boundary=001a1133a602f2644204f689e5ee

--001a1133a602f2644204f689e5ee
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 8, 2014 at 8:41 AM, Vali Cobelea <valentin.cobelea@enea.com>wrote:

> It should work as I tried it outside the company network; otherwise I'll
> ping back the IT guys to allow anonymous access.
>

You tried it, yes, but you have the ssh keys necessary to authenticate as
the git user on that server, which no one outside your company does :) If
you want folks to be able to clone your repository without having to add
their public keys to your ssh server config, then you will indeed want to
contact IT to get anonymous access going.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1133a602f2644204f689e5ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Apr 8, 2014 at 8:41 AM, Vali Cobelea <span dir=3D"ltr">&lt;<a href=
=3D"mailto:valentin.cobelea@enea.com" target=3D"_blank">valentin.cobelea@en=
ea.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>It should work as I tried it outside th=
e company network;
      otherwise I&#39;ll ping back the IT guys to allow anonymous access.<b=
r></div></blockquote></div><br>You tried it, yes, but you have the ssh keys=
 necessary to authenticate as the git user on that server, which no one out=
side your company does :) If you want folks to be able to clone your reposi=
tory without having to add their public keys to your ssh server config, the=
n you will indeed want to contact IT to get anonymous access going.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a1133a602f2644204f689e5ee--
