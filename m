Return-Path: <behanw@converseincode.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97048E00D3D; Tue,  7 May 2019 11:18:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 301B9E00D40
	for <yocto@yoctoproject.org>; Tue,  7 May 2019 11:18:54 -0700 (PDT)
Received: by mail-pg1-f179.google.com with SMTP id p6so8699537pgh.9
	for <yocto@yoctoproject.org>; Tue, 07 May 2019 11:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=converseincode.com; s=google;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=Mu1b+xwtynWqapOSuUQuemIXtyjU3CR1fveJY7k6M9U=;
	b=shIq6tZxuG31OEAWuC+Vc1aKNM36FjG2rwzJAcTsqD79fjU+n+a2+Nxj7aImyNzDJR
	9bpou9KwiJs4Nginw27YjSi3LphScFQnnx95a0gURN0ZsZhVa8kEdL6wc3rs04pckqC2
	0ATHFIx0Usd2U/DUQpv8aAEjb2ZOZ4MFWsoRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=Mu1b+xwtynWqapOSuUQuemIXtyjU3CR1fveJY7k6M9U=;
	b=BIVLHJzFxtvOHQ1fy2c/FiVG6eVAkePV56eJv41HvCgbc+QEKBWw6X17JbRlxVIj5Z
	pE7eGUbO6x8fNSKY9IXcxyVlBo15AGNnZ062mFILN3vA2AZV3mYy28Fac0asLY0bVjuP
	jBb81yj5lY8JDYlxakgkVadzJbYqMapYE/uFH9f5t42Xzqo1/RbFKbHZyIP/C5DRYZ5c
	JTmPuOhKNFHxWuNZj0JCI9PWStIyDROyNbLhXb0D7IJJTG7WxlBS9fvOIAyzSe+SYdLp
	iCkacEcSXL08yPirT/YS+Ai4FuWJZZa4TmNPfg5r5Fmgp3Gdm2TEBHqjJ6qafbBrScuY
	8HMQ==
X-Gm-Message-State: APjAAAVBhBeD1nfwmGhQfUlAvWEzlIrwjzD8C7ltKse85vzgwHDlHYRI
	gawCvWEgniMO18BC4yU+UPuc7w==
X-Google-Smtp-Source: APXvYqyuTecbMISXJE8xQKczMww10rCvzjnbepAJ9BRgEF5ryhX1+p7orhjJ9uAL9raFN6zksdKPMg==
X-Received: by 2002:aa7:8186:: with SMTP id g6mr43526506pfi.126.1557253132759; 
	Tue, 07 May 2019 11:18:52 -0700 (PDT)
Received: from turin-eth.websterwood.com (d207-6-148-64.bchsia.telus.net.
	[207.6.148.64])
	by smtp.gmail.com with ESMTPSA id y3sm17516265pfe.9.2019.05.07.11.18.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 07 May 2019 11:18:51 -0700 (PDT)
From: Behan Webster <behanw@converseincode.com>
Message-Id: <AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Date: Tue, 7 May 2019 11:18:50 -0700
In-Reply-To: <713dbad763c226b6c44d691e764f7ef8@basmevissen.nl>
To: Bas Mevissen <abuse@basmevissen.nl>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
	<96fa4aec-9557-9d7f-bff3-82f8db56e9cd@mvista.com>
	<A084970538D2234B96D99D06FA9D974FC378C879@ALA-MBD.corp.ad.wrs.com>
	<0980DABF-86C8-4A9D-8687-B9C27EE2FF61@converseincode.com>
	<A084970538D2234B96D99D06FA9D974FC378DD57@ALA-MBD.corp.ad.wrs.com>
	<2D39B7E1-DC52-42A6-8332-50ED49F77722@converseincode.com>
	<20190506104502.e4tvj5w4i4og4ski@jholzmayr.localdomain>
	<c3cbc64b-f7ea-f2d3-32ae-7a94b8693713@emcodev.nl>
	<E403FC4D-C557-4637-B3A1-D2C895621DB6@converseincode.com>
	<713dbad763c226b6c44d691e764f7ef8@basmevissen.nl>
X-Mailer: Apple Mail (2.3445.104.8)
X-Mailman-Approved-At: Wed, 08 May 2019 09:06:23 -0700
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	yocto-advocacy@yoctoproject.org
Subject: Re: [Yocto-Advocacy] Yocto Project Upcoming Conferences and Developer Days
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
X-List-Received-Date: Tue, 07 May 2019 18:18:55 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_502D0CB5-56E1-4FF8-A179-5B077CCEBDC6"

--Apple-Mail=_502D0CB5-56E1-4FF8-A179-5B077CCEBDC6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On May 7, 2019, at 2:47 AM, Bas Mevissen <abuse@basmevissen.nl> wrote:
>=20
> On 2019-05-07 07:20, Behan Webster wrote:
>=20
>> > On May 6, 2019, at 8:36 AM, Bas Mevissen <bas@emcodev.nl> wrote:
>> > On 5/6/19 12:45 PM, Josef Holzmayr wrote:
>> > I'd actually word it a little bit differently:
>> > If there is only *ONE* attendee who did not properly do the =
homework, it
>> > will have a massive impact an the rest of the group. And that =
somebody
>> > will show up unpreparedly is absolutely certain in my opinion.
>> > With sufficient trainers, one can continue for most and provide =
some assistance to the one falling behind.
>=20
>> Usually more than one. And this is generally very disruptive to the =
class as a whole.
>=20
>> >> As someone who actually got started through the YPDD beginner =
track (and
>> >> also often recommends it to new beginners), my opinion is clearly =
that
>> >> we either should have it, be it only for a handful of attendees, =
or
>> >> offer a *real* replacement, with face to face training. My =
experience is
>> >> that this personal thing in the very beginning is an absolutely
>> >> essential part of many YP/OE careers.
>> >
>> > I agree. That is how I started, next to a compressed Linux =
Foundation Yocto training that was offered just before the event then.
>=20
>> Yes. By me and my colleagues who train for the Linux Foundation.
>=20
>> > So it might be wise to ask LF or get something organised. It would =
mostly require a room and a sponsor for some small devkit.
>=20
>> We've run the beginner track for the last few years. The discussion =
is precisely that the YP event is proposing to not run the beginner =
track this year at all.
>=20
> But why? There appears to be a constant demand.

An excellent question. I agree with you. I don=E2=80=99t have an answer =
however. Not my decision.

>> We're happy to do it again if given the space.
>=20
> Yes, both for LF and YP it are off-the-shelf trainings that do not =
require much preperation.

Speaking as a course maintainer for LF, keeping the YP course updated is =
actually a tremendous amount of work (I=E2=80=99m the co-maintainer for =
the LF YP course).

However, the beginner slides tend not to need more than a few hours of =
updates every 6 months (which again is something I do).

Either may appear off-the-shelf, but they aren=E2=80=99t from my =
perspective. ;)

Thanks,

Behan=

--Apple-Mail=_502D0CB5-56E1-4FF8-A179-5B077CCEBDC6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
May 7, 2019, at 2:47 AM, Bas Mevissen &lt;<a =
href=3D"mailto:abuse@basmevissen.nl" =
class=3D"">abuse@basmevissen.nl</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">On 2019-05-07 07:20, Behan =
Webster wrote:</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">&gt; On May 6, 2019, at 8:36 AM, Bas =
Mevissen &lt;<a href=3D"mailto:bas@emcodev.nl" =
class=3D"">bas@emcodev.nl</a>&gt; wrote:<br class=3D"">&gt; On 5/6/19 =
12:45 PM, Josef Holzmayr wrote:<br class=3D"">&gt; I'd actually word it =
a little bit differently:<br class=3D"">&gt; If there is only *ONE* =
attendee who did not properly do the homework, it<br class=3D"">&gt; =
will have a massive impact an the rest of the group. And that =
somebody<br class=3D"">&gt; will show up unpreparedly is absolutely =
certain in my opinion.<br class=3D"">&gt; With sufficient trainers, one =
can continue for most and provide some assistance to the one falling =
behind.<br class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">Usually more than one. And this is =
generally very disruptive to the class as a whole.<br =
class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">&gt;&gt; As someone who actually got =
started through the YPDD beginner track (and<br class=3D"">&gt;&gt; also =
often recommends it to new beginners), my opinion is clearly that<br =
class=3D"">&gt;&gt; we either should have it, be it only for a handful =
of attendees, or<br class=3D"">&gt;&gt; offer a *real* replacement, with =
face to face training. My experience is<br class=3D"">&gt;&gt; that this =
personal thing in the very beginning is an absolutely<br =
class=3D"">&gt;&gt; essential part of many YP/OE careers.<br =
class=3D"">&gt;<br class=3D"">&gt; I agree. That is how I started, next =
to a compressed Linux Foundation Yocto training that was offered just =
before the event then.<br class=3D""></blockquote><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">Yes. =
By me and my colleagues who train for the Linux Foundation.<br =
class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">&gt; So it might be wise to ask LF or =
get something organised. It would mostly require a room and a sponsor =
for some small devkit.<br class=3D""></blockquote><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">We've =
run the beginner track for the last few years. The discussion is =
precisely that the YP event is proposing to not run the beginner track =
this year at all.<br class=3D""></blockquote><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">But why? There appears to be a constant demand.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""></div></blockquote><div><br class=3D""></div><div>An =
excellent question. I agree with you. I don=E2=80=99t have an answer =
however. Not my decision.</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><blockquote type=3D"cite" style=3D"font-family:=
 Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">We're =
happy to do it again if given the space.<br class=3D""></blockquote><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Yes, both for LF and YP it are =
off-the-shelf trainings that do not require much preperation.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""></div></blockquote></div><br class=3D""><div =
class=3D"">Speaking as a course maintainer for LF, keeping the YP course =
updated is actually a tremendous amount of work (I=E2=80=99m the =
co-maintainer for the LF YP course).</div><div class=3D""><br =
class=3D""></div><div class=3D"">However, the beginner slides tend not =
to need more than a few hours of updates every 6 months (which again is =
something I do).</div><div class=3D""><br class=3D""></div><div =
class=3D"">Either may appear off-the-shelf, but they aren=E2=80=99t from =
my perspective. ;)</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks,</div><div class=3D""><br class=3D""></div><div =
class=3D"">Behan</div></body></html>=

--Apple-Mail=_502D0CB5-56E1-4FF8-A179-5B077CCEBDC6--
