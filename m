Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64509E00823; Tue, 27 Jan 2015 07:38:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.18.3.34 listed in list.dnswl.org]
Received: from exprod8og117.obsmtp.com (exprod8og117.obsmtp.com [64.18.3.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCC4CE007BA
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 07:37:53 -0800 (PST)
Received: from mail-qg0-f45.google.com ([209.85.192.45]) (using TLSv1) by
	exprod8ob117.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVMew0QUOrkEr6IUwvTFe8o4CBB72e80x@postini.com;
	Tue, 27 Jan 2015 07:37:58 PST
Received: by mail-qg0-f45.google.com with SMTP id q107so12190208qgd.4
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 07:37:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=3kTeppYp+yYFg514esk6yxCw1W95PdXGWYyPlCMwjYk=;
	b=GIk+8MzRTUZFALLkkE/Xf1tago/655Bog+vRxdbOhkA9hKJszwq8ZjvR3eA3nbD2u2
	Z5afsZJPTgNQZ9QAG8qCLtn5qvga2PkcV5tmiq7sj4iwT1ZtkTmwmqyVcLqW6PZALqKD
	7/CTFJkD00Jky8MiBZVkxveUejdPI94FI5bHzOfsH9GnT2aCB3CBH7O5/6hYIkocSaqb
	/UJO0mkk0+UgYNYRHrbzF0un8Gp0ylqM40+eYCEPWPW1mFpU+eZ69dZYjb2C+eiAlfxq
	HFbgUKGgeMH7WJDUAvGD6CpsQSlX+uEQvakcxrMKY6TKB0tXQ+YNfAj6hxqNmAUFwlez
	Xx5g==
X-Gm-Message-State: ALoCoQmVvKxBErTReCrn+CyBxDF1tL36uDoE7cNOSPeS7LHKdRnm919C3Sb06tx6EC8vUroX+LG87Hnm7WbCNp7/sjc4EW40ky26Gzb6NVhYqlmbgY/VjeWFi3cSTfq1OAspA1Hnn7sN6hcAglbSEkkw1o8GerD8qA==
X-Received: by 10.224.80.202 with SMTP id u10mr2994592qak.60.1422373073011;
	Tue, 27 Jan 2015 07:37:53 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.224.80.202 with SMTP id u10mr2994580qak.60.1422373072883;
	Tue, 27 Jan 2015 07:37:52 -0800 (PST)
Received: by 10.96.71.97 with HTTP; Tue, 27 Jan 2015 07:37:52 -0800 (PST)
Date: Tue, 27 Jan 2015 23:37:52 +0800
Message-ID: <CAJrRHk5GoTZAB9hxOtEkjBP3fQoBB2u+H7Z5eD9Jy4hqwvmfTg@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: ALTERNATIVE_TARGET, ALTERNATIVE_PRIORITY problem
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
X-List-Received-Date: Tue, 27 Jan 2015 15:38:01 -0000
Content-Type: multipart/alternative; boundary=001a11c3cf1abf6758050da4096a

--001a11c3cf1abf6758050da4096a
Content-Type: text/plain; charset=UTF-8

Good day Yocto Community,

I would like to ask what's wrong with my implementation with
update-alternatives:

=================

*bar_git.bb <http://bar_git.bb/>:*

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

inherit update-alternatives

*packagegroup-foobar.bb <http://packagegroup-foobar.bb/>:*

RDEPENDS_foobar = "bar"

=================

The end result is always bar3 is present and bar is pointing to bar3. I
never get bar1 being present which is the result I want.

Please do recommend how will I properly use ALTERNATIVE_TARGET and
ALTERNATIVE_PRIORITY.

Thanks,
Joseph

--001a11c3cf1abf6758050da4096a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8000001907349px">Good day Yoct=
o Community,</span><div style=3D"font-size:12.8000001907349px"><br></div><d=
iv style=3D"font-size:12.8000001907349px">I would like to ask what&#39;s wr=
ong with my implementation with update-alternatives:</div><div style=3D"fon=
t-size:12.8000001907349px"><br></div><div style=3D"font-size:12.80000019073=
49px">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div style=
=3D"font-size:12.8000001907349px"><br></div><div style=3D"font-size:12.8000=
001907349px"><b><a href=3D"http://bar_git.bb/" target=3D"_blank">bar_git.bb=
</a>:</b></div><div style=3D"font-size:12.8000001907349px"><br></div><div s=
tyle=3D"font-size:12.8000001907349px">PACKAGES =3D+ &quot;<span style=3D"fo=
nt-size:13px">${PN}-</span>bar1=C2=A0<span style=3D"font-size:13px">${PN}-<=
/span>bar2=C2=A0<span style=3D"font-size:13px">${PN}-</span>bar3&quot;</div=
><div style=3D"font-size:12.8000001907349px">RPROVIDES_${PN}-bar1 =3D &quot=
;bar&quot;</div><div style=3D"font-size:12.8000001907349px">RPROVIDES_${PN}=
-bar2 =3D &quot;bar&quot;<br></div><div style=3D"font-size:12.8000001907349=
px">RPROVIDES_${PN}-bar3 =3D &quot;bar&quot;<br></div><div style=3D"font-si=
ze:12.8000001907349px"><br></div><div style=3D"font-size:12.8000001907349px=
"><div style=3D"font-size:13px">ALTERNATIVE_LINK_NAME[bar] =3D &quot;${data=
dir}/foo/bar&quot;<br><br></div><div style=3D"font-size:13px">ALTERNATIVE_$=
{PN}-bar1 =3D &quot;bar&quot;<br>ALTERNATIVE_TARGET_${PN}-bar1=C2=A0=3D &qu=
ot;${datadir}/foo/bar1&quot;</div><div style=3D"font-size:13px">ALTERNATIVE=
_PRIORITY_${PN}-bar1=C2=A0=3D &quot;99&quot;</div><div style=3D"font-size:1=
3px"><br>ALTERNATIVE_${PN}-bar2=C2=A0=3D &quot;bar&quot;</div><div style=3D=
"font-size:13px"></div><div style=3D"font-size:13px">ALTERNATIVE_TARGET_${P=
N}-bar2=C2=A0=3D &quot;${datadir}/foo/bar2&quot;</div><div style=3D"font-si=
ze:13px">ALTERNATIVE_PRIORITY_${PN}-bar2=C2=A0=3D &quot;98&quot;</div></div=
><div style=3D"font-size:13px"><br></div><div style=3D"font-size:13px"><div=
>ALTERNATIVE_${PN}-bar3=C2=A0=3D &quot;bar&quot;</div><div></div><div>ALTER=
NATIVE_TARGET_${PN}-bar3=C2=A0=3D &quot;${datadir}/foo/bar3&quot;</div><div=
>ALTERNATIVE_PRIORITY_${PN}-bar3=C2=A0=3D &quot;97&quot;</div><div><br></di=
v><div>inherit update-alternatives</div><div><br></div><div><b><a href=3D"h=
ttp://packagegroup-foobar.bb/" target=3D"_blank">packagegroup-foobar.bb</a>=
:</b></div><div><br></div><div>RDEPENDS_foobar =3D &quot;bar&quot;</div><di=
v><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><=
div><br></div><div>The end result is always bar3 is present and bar is poin=
ting to bar3. I never get bar1 being present which is the result I want.</d=
iv><div><br></div><div>Please do recommend how will I properly use ALTERNAT=
IVE_TARGET and ALTERNATIVE_PRIORITY.</div><div><br></div><div>Thanks,</div>=
<div>Joseph</div></div></div>

--001a11c3cf1abf6758050da4096a--
