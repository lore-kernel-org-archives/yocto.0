Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D79BE0090E; Fri, 23 Jan 2015 03:12:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 469 seconds by postgrey-1.32 at yocto-www;
	Fri, 23 Jan 2015 03:12:22 PST
Received: from exprod8og102.obsmtp.com (exprod8og102.obsmtp.com [64.18.3.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3F8EE00782
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 03:12:22 -0800 (PST)
Received: from mail-qg0-f48.google.com ([209.85.192.48]) (using TLSv1) by
	exprod8ob102.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVMIslj5KiJOvfJvtGepylmm+kO1FeJfH@postini.com;
	Fri, 23 Jan 2015 03:12:23 PST
Received: by mail-qg0-f48.google.com with SMTP id z60so84971qgd.7
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 03:12:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=mgagYGzFXM2JmOsDO69ybjR7ESjXgdCTw8o7/uNGRc4=;
	b=VEdQG5S32A90X7l85XlJSqY29SSZ77J3/JBLvIEprEnUS4cczJ+EDC3g9VYlW8X6ql
	gSLMHLejdsx0wMMKs/aEr4bCRDXkzx0fqqX1CSBe0nGcpyo0Pm8wmgYX779FJwSvMJAW
	jRCMCOyOetY68p7ktK1AXc4maN63a7o4XCEWz3vXFTsTOOZSYCT7KNg+Lt7WjQzAH2HJ
	Mv6ZpIIZvl+ubsYWdCG4g0fJ7d/5BsRsDs3o9cXutfHP9CCOEPF6MIMZl/2hNKq+2FM3
	13Iq4ErNy3Y1Xt2hDHsy2eFTFyVvsb+IbsE3KASNu0Wsj7F0n5kxRxIX2+aXURn4abbW
	HQQQ==
X-Received: by 10.224.136.7 with SMTP id p7mr12480289qat.65.1422011072297;
	Fri, 23 Jan 2015 03:04:32 -0800 (PST)
X-Gm-Message-State: ALoCoQmzwzo9rrjbbrsC20MKRsn4r/2mo/8YUtkMzMdN6zKt/creDSdVvwCWz9tJKTQZJDekxCMRI00kuaNI/B67J00Wl4QU+Pw+iELvazhBFFDZjNQvRh3wSaBaNNbcIz9zYkEhCUVfKO6c3IxGISfXthHQRkIgrQ==
MIME-Version: 1.0
X-Received: by 10.224.136.7 with SMTP id p7mr12480269qat.65.1422011072138;
	Fri, 23 Jan 2015 03:04:32 -0800 (PST)
Received: by 10.96.71.97 with HTTP; Fri, 23 Jan 2015 03:04:32 -0800 (PST)
Date: Fri, 23 Jan 2015 19:04:32 +0800
Message-ID: <CAJrRHk6-Ap_3d=rvJwJfAanujDNokqTWrwTA1pYEo4xMAadFRQ@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: ALTERNATIVE_* problem
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
X-List-Received-Date: Fri, 23 Jan 2015 11:12:24 -0000
Content-Type: multipart/alternative; boundary=001a11c299a4d26426050d4fc0f2

--001a11c299a4d26426050d4fc0f2
Content-Type: text/plain; charset=UTF-8

Good day Yocto Community,

I would like to ask what's wrong with my implementation with ALTERNATIVE_*:

=================

*bar_git.bb <http://bar_git.bb>:*

PACKAGES =+ "${PN}-bar1 ${PN}-bar2 ${PN}-bar3"
RPROVIDES_${PN}-bar1 = "bar"
RPROVIDES_${PN}-bar2 = "bar"
RPROVIDES_${PN}-bar3 = "bar"

ALTERNATIVE_LINK_NAME[bar] = "${datadir}/foo/bar"

ALTERNATIVE_${PN}-bar1 = "bar"
ALTERNATIVE_TARGET_${PN}-bar1 = "${datadir}/foo/bar1"
ALTERNATIVE_PRIORITY_${PN}-bar1 = "99"

ALTERNATIVE_${PN}-bar2 = "bar"
ALTERNATIVE_TARGET_${PN}-bar2 = "${datadir}/foo/bar2"
ALTERNATIVE_PRIORITY_${PN}-bar2 = "98"

ALTERNATIVE_${PN}-bar3 = "bar"
ALTERNATIVE_TARGET_${PN}-bar3 = "${datadir}/foo/bar3"
ALTERNATIVE_PRIORITY_${PN}-bar3 = "97"

*packagegroup-foobar.bb <http://packagegroup-foobar.bb>:*

RDEPENDS_foobar = "bar"

=================

The end result is always bar3 is present and bar is pointing to bar3. I
never get bar1 being present.
Please do recommend how will I properly use ALTERNATIVE.

Thanks,
Joseph

--001a11c299a4d26426050d4fc0f2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Yocto Community,<div><br></div><div>I would like =
to ask what&#39;s wrong with my implementation with ALTERNATIVE_*:</div><di=
v><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><=
div><br></div><div><b><a href=3D"http://bar_git.bb">bar_git.bb</a>:</b></di=
v><div><br></div><div>PACKAGES =3D+ &quot;<span style=3D"font-size:13px">${=
PN}-</span>bar1=C2=A0<span style=3D"font-size:13px">${PN}-</span>bar2=C2=A0=
<span style=3D"font-size:13px">${PN}-</span>bar3&quot;</div><div>RPROVIDES_=
${PN}-bar1 =3D &quot;bar&quot;</div><div>RPROVIDES_${PN}-bar2 =3D &quot;bar=
&quot;<br></div><div>RPROVIDES_${PN}-bar3 =3D &quot;bar&quot;<br></div><div=
><br></div><div><div style=3D"font-size:13px">ALTERNATIVE_LINK_NAME[bar] =
=3D &quot;${datadir}/foo/bar&quot;<br><br></div><div style=3D"font-size:13p=
x">ALTERNATIVE_${PN}-bar1 =3D &quot;bar&quot;<br>ALTERNATIVE_TARGET_${PN}-b=
ar1=C2=A0=3D &quot;${datadir}/foo/bar1&quot;</div><div style=3D"font-size:1=
3px">ALTERNATIVE_PRIORITY_${PN}-bar1=C2=A0=3D &quot;99&quot;</div><div styl=
e=3D"font-size:13px"><br>ALTERNATIVE_${PN}-bar2=C2=A0=3D &quot;bar&quot;</d=
iv><div style=3D"font-size:13px"></div><div style=3D"font-size:13px">ALTERN=
ATIVE_TARGET_${PN}-bar2=C2=A0=3D &quot;${datadir}/foo/bar2&quot;</div><div =
style=3D"font-size:13px">ALTERNATIVE_PRIORITY_${PN}-bar2=C2=A0=3D &quot;98&=
quot;</div></div><div style=3D"font-size:13px"><br></div><div style=3D"font=
-size:13px"><div>ALTERNATIVE_${PN}-bar3=C2=A0=3D &quot;bar&quot;</div><div>=
</div><div>ALTERNATIVE_TARGET_${PN}-bar3=C2=A0=3D &quot;${datadir}/foo/bar3=
&quot;</div><div>ALTERNATIVE_PRIORITY_${PN}-bar3=C2=A0=3D &quot;97&quot;</d=
iv><div><br></div><div><b><a href=3D"http://packagegroup-foobar.bb">package=
group-foobar.bb</a>:</b></div><div><br></div><div>RDEPENDS_foobar =3D &quot=
;bar&quot;</div><div><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</div><div><br></div><div>The end result is always bar3 is pres=
ent and bar is pointing to bar3. I never get bar1 being present.=C2=A0</div=
><div>Please do recommend how will I properly use ALTERNATIVE.</div><div><b=
r></div><div>Thanks,</div><div>Joseph</div></div></div>

--001a11c299a4d26426050d4fc0f2--
