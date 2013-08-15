Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C080E0073F;
	Thu, 15 Aug 2013 14:07:55 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id tp5so2171436ieb.27
	for <multiple recipients>; Thu, 15 Aug 2013 14:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=05NhaoVJhmhBxzQUmrLTpX8XyYYUu6vcByLcaqTK9eM=;
	b=YAbiClu2GR4fkWDB3YSzV8NTnbkKK6pXB3cepYURm2HnVankg0syorrovaXTCgpq1o
	8c+uOtewHmZxrsWH+vsFhKOhqSyIlmB7yJCXNS4gWEpCbSZuQ4NaNLjKNrxRvRUUQqNE
	6dQOcsO/5gC6Gp6cCHGJTDmePjoGyegpzA4rkBFEYvTTT8Ec37Jdcb5fvhCR3a8s2b+9
	nFHZsqGzl1AI97uT2JS3LN0u9SY0A3Mweaph+6kwYXFJk9Rps1xiOhM8U0iMf6KZiV5/
	gfAq9yH3Czq0MNLEbBHr0fE+I5Y5aixeFkR2GAaHd3CppFWAia4ijYCb19eyHeYY4TBQ
	kfBw==
X-Received: by 10.50.92.74 with SMTP id ck10mr3159410igb.3.1376600875359; Thu,
	15 Aug 2013 14:07:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.216.195 with HTTP; Thu, 15 Aug 2013 14:07:25 -0700 (PDT)
In-Reply-To: <e135a4c21162ddac7452bbb22986a3c0ef5cdeee.1376598685.git.mulhern@yoctoproject.org>
References: <cover.1376598685.git.mulhern@yoctoproject.org>
	<e135a4c21162ddac7452bbb22986a3c0ef5cdeee.1376598685.git.mulhern@yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Aug 2013 14:07:25 -0700
Message-ID: <CAMKF1srAEiY5EzzTqQhX==MnKBDkuer8yPGK9idzET4GnOQSqg@mail.gmail.com>
To: mulhern <mulhern@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, mulhern@yoctoproject.org
Subject: Re: [PATCH 1/2] curses-perl: Change description to match package.
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
X-List-Received-Date: Thu, 15 Aug 2013 21:07:56 -0000
Content-Type: multipart/alternative; boundary=047d7b10cac92c677404e402de93

--047d7b10cac92c677404e402de93
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 15, 2013 at 1:36 PM, mulhern <mulhern@gmail.com> wrote:

> -DESCRIPTION =3D "This package contains the URI.pm module with friends. \
> -The module implements the URI class. URI objects can be used to access \
> -and manipulate the various components that make up these strings."
> +DESCRIPTION =3D "lib-curses provides an interface between Perl programs =
and
> \
> +your system's curses library."
>

'=E2=80=8Byour' is not appropriate here=E2=80=8B

--047d7b10cac92c677404e402de93
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Aug 15, 2013 at 1:36 PM, mulhern <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:mulhern@gmail.com" target=3D"_blank">mulhern@gmail.com</a>&gt;</span>=
 wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":2j8" style=3D"overflow:hidden">-=
DESCRIPTION =3D &quot;This package contains the URI.pm module with friends.=
 \<br>


-The module implements the URI class. URI objects can be used to access \<b=
r>
-and manipulate the various components that make up these strings.&quot;<br=
>
+DESCRIPTION =3D &quot;lib-curses provides an interface between Perl progra=
ms and \<br>
+your system&#39;s curses library.&quot;<br></div></blockquote></div><br><d=
iv style=3D"font-family:&#39;courier new&#39;,monospace;font-size:small" cl=
ass=3D"gmail_default">&#39;=E2=80=8Byour&#39; is not appropriate here=E2=80=
=8B</div><br></div>

</div>

--047d7b10cac92c677404e402de93--
