Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B64F3E00827; Sun, 25 Jan 2015 17:59:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.82 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og101.obsmtp.com (exprod8og101.obsmtp.com [64.18.3.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5310E003AB
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 17:59:18 -0800 (PST)
Received: from mail-qc0-f181.google.com ([209.85.216.181]) (using TLSv1) by
	exprod8ob101.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVMWfdmwx3SLcUJjAGriww6MvDbHuycpT@postini.com;
	Sun, 25 Jan 2015 17:59:23 PST
Received: by mail-qc0-f181.google.com with SMTP id l6so5154113qcy.12
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 17:59:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=uoAVvXMbPQXpABwBRvRGBjNqoxlnrziXSmI26hPSUu0=;
	b=dZ/6fWHGU4e3XaA2PZly+mZNydafuYFwUCqA9kltK4/1IJS6mRoaGZNj6a1qdtAGtu
	gJajzhz+5+x7usWFI0f20kfVrRoM7X1bb6/jLLNCpzLUvEoAlwPukuBq9N8TyV3+W2w+
	4E9NxoJqW5T1nz7cS27kjg52+a52aDezBQQbRDq0wnFJMGxUOt9NH5vlre76143u6ftw
	7ek5NaMUHBzcYeGlURiAGVrYwhIErMRqXDHUYNRNQInTbEPYdHJWrCVOgrcbRF3okcBq
	Y//K2FW4xkeBt+NdVh6pFBLe2GsRLeFqxcsJMGEOh6NQORqJDafK7cCMxeLX4XCEdPCg
	jgGA==
X-Gm-Message-State: ALoCoQkfiyQKn099Oo2GUhidkln2qRnf3Lh+NVQKOjQ+TUAOcQ5d1ozHcqgZp02z3QrKhM3Z/P05GwKEolUoXqSjdNlIpmQZKHZuPr7DciDc0A1lZEt75jlVPWeq2GbPRV8eJfZAXf+kCPl/us6jl5kgkjYY7qmpPg==
X-Received: by 10.229.80.3 with SMTP id r3mr6992742qck.23.1422237558024;
	Sun, 25 Jan 2015 17:59:18 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.229.80.3 with SMTP id r3mr6992735qck.23.1422237557902; Sun,
	25 Jan 2015 17:59:17 -0800 (PST)
Received: by 10.96.71.97 with HTTP; Sun, 25 Jan 2015 17:59:17 -0800 (PST)
In-Reply-To: <CAJrRHk6-Ap_3d=rvJwJfAanujDNokqTWrwTA1pYEo4xMAadFRQ@mail.gmail.com>
References: <CAJrRHk6-Ap_3d=rvJwJfAanujDNokqTWrwTA1pYEo4xMAadFRQ@mail.gmail.com>
Date: Mon, 26 Jan 2015 09:59:17 +0800
Message-ID: <CAJrRHk46aHQHnsBFGsFA4PeMkbcpN6JXnhr+BDdXzQT-yJQYtw@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: ALTERNATIVE_* problem
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
X-List-Received-Date: Mon, 26 Jan 2015 01:59:25 -0000
Content-Type: multipart/alternative; boundary=001a1133cb786cf9a4050d847c21

--001a1133cb786cf9a4050d847c21
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Ross, Paul,

Maybe you have an idea how to implement better my recipe with
ALTERNATIVES_*?

Looking forward to your response.

Thanks,
Joseph

On Fri, Jan 23, 2015 at 7:04 PM, Joseph Andrew de la Pe=C3=B1a <
jdelapena@lexmark.com> wrote:

> Good day Yocto Community,
>
> I would like to ask what's wrong with my implementation with ALTERNATIVE_=
*:
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> *bar_git.bb <http://bar_git.bb>:*
>
> PACKAGES =3D+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
> RPROVIDES_${PN}-bar1 =3D "bar"
> RPROVIDES_${PN}-bar2 =3D "bar"
> RPROVIDES_${PN}-bar3 =3D "bar"
>
> ALTERNATIVE_LINK_NAME[bar] =3D "${datadir}/foo/bar"
>
> ALTERNATIVE_${PN}-bar1 =3D "bar"
> ALTERNATIVE_TARGET_${PN}-bar1 =3D "${datadir}/foo/bar1"
> ALTERNATIVE_PRIORITY_${PN}-bar1 =3D "99"
>
> ALTERNATIVE_${PN}-bar2 =3D "bar"
> ALTERNATIVE_TARGET_${PN}-bar2 =3D "${datadir}/foo/bar2"
> ALTERNATIVE_PRIORITY_${PN}-bar2 =3D "98"
>
> ALTERNATIVE_${PN}-bar3 =3D "bar"
> ALTERNATIVE_TARGET_${PN}-bar3 =3D "${datadir}/foo/bar3"
> ALTERNATIVE_PRIORITY_${PN}-bar3 =3D "97"
>
> *packagegroup-foobar.bb <http://packagegroup-foobar.bb>:*
>
> RDEPENDS_foobar =3D "bar"
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The end result is always bar3 is present and bar is pointing to bar3. I
> never get bar1 being present.
> Please do recommend how will I properly use ALTERNATIVE.
>
> Thanks,
> Joseph
>

--001a1133cb786cf9a4050d847c21
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Ross, Paul,<div><br></div><div>Maybe you have an =
idea how to implement better my recipe with ALTERNATIVES_*?</div><div><br><=
/div><div>Looking forward to your response.</div><div><br></div><div>Thanks=
,</div><div>Joseph</div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Fri, Jan 23, 2015 at 7:04 PM, Joseph Andrew de la Pe=C3=B1a=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:jdelapena@lexmark.com" target=3D"_=
blank">jdelapena@lexmark.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">Good day Yocto Community,<div><br></div><div>I w=
ould like to ask what&#39;s wrong with my implementation with ALTERNATIVE_*=
:</div><div><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div><div><br></div><div><b><a href=3D"http://bar_git.bb" target=3D"_bl=
ank">bar_git.bb</a>:</b></div><div><br></div><div>PACKAGES =3D+ &quot;<span=
 style=3D"font-size:13px">${PN}-</span>bar1=C2=A0<span style=3D"font-size:1=
3px">${PN}-</span>bar2=C2=A0<span style=3D"font-size:13px">${PN}-</span>bar=
3&quot;</div><div>RPROVIDES_${PN}-bar1 =3D &quot;bar&quot;</div><div>RPROVI=
DES_${PN}-bar2 =3D &quot;bar&quot;<br></div><div>RPROVIDES_${PN}-bar3 =3D &=
quot;bar&quot;<br></div><div><br></div><div><div style=3D"font-size:13px">A=
LTERNATIVE_LINK_NAME[bar] =3D &quot;${datadir}/foo/bar&quot;<br><br></div><=
div style=3D"font-size:13px">ALTERNATIVE_${PN}-bar1 =3D &quot;bar&quot;<br>=
ALTERNATIVE_TARGET_${PN}-bar1=C2=A0=3D &quot;${datadir}/foo/bar1&quot;</div=
><div style=3D"font-size:13px">ALTERNATIVE_PRIORITY_${PN}-bar1=C2=A0=3D &qu=
ot;99&quot;</div><div style=3D"font-size:13px"><br>ALTERNATIVE_${PN}-bar2=
=C2=A0=3D &quot;bar&quot;</div><div style=3D"font-size:13px"></div><div sty=
le=3D"font-size:13px">ALTERNATIVE_TARGET_${PN}-bar2=C2=A0=3D &quot;${datadi=
r}/foo/bar2&quot;</div><div style=3D"font-size:13px">ALTERNATIVE_PRIORITY_$=
{PN}-bar2=C2=A0=3D &quot;98&quot;</div></div><div style=3D"font-size:13px">=
<br></div><div style=3D"font-size:13px"><div>ALTERNATIVE_${PN}-bar3=C2=A0=
=3D &quot;bar&quot;</div><div></div><div>ALTERNATIVE_TARGET_${PN}-bar3=C2=
=A0=3D &quot;${datadir}/foo/bar3&quot;</div><div>ALTERNATIVE_PRIORITY_${PN}=
-bar3=C2=A0=3D &quot;97&quot;</div><div><br></div><div><b><a href=3D"http:/=
/packagegroup-foobar.bb" target=3D"_blank">packagegroup-foobar.bb</a>:</b><=
/div><div><br></div><div>RDEPENDS_foobar =3D &quot;bar&quot;</div><div><br>=
</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><b=
r></div><div>The end result is always bar3 is present and bar is pointing t=
o bar3. I never get bar1 being present.=C2=A0</div><div>Please do recommend=
 how will I properly use ALTERNATIVE.</div><div><br></div><div>Thanks,</div=
><div>Joseph</div></div></div>
</blockquote></div><br></div>

--001a1133cb786cf9a4050d847c21--
