Return-Path: <behanw@converseincode.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 493C4E00D73; Thu,  9 May 2019 11:28:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DC1AE00D6B
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 11:28:49 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id 10so1750262pfo.5
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 11:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=converseincode.com; s=google;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=wLvUXIZP+THNLSMy5xl9PWpW+Fsf3OQpD4g1N85JeFo=;
	b=kQKyFhm3FPjeDnRq8l3wgt79ExkoM3rd57F13YgcuQMp4S3ZWbPYwXIf+JPi3PKiE6
	s4jmRN5aHivec9+IuNj90Fow2Cx20vGiU/hiU+XqmUYq9NUqoAgNqyqMM73N0bs8u2sb
	3YubrZBe6hhygEMndYilzoRR+CaMYI2/qVgnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=wLvUXIZP+THNLSMy5xl9PWpW+Fsf3OQpD4g1N85JeFo=;
	b=oYxKPkwWE6qxGkVUorFZVJE3BHokXgxvyV6qpS3y8sMyY8M6wAYfCgHi5e/hqAggld
	5XbocZj+IhfZa7uwG2q0YC8E0p/83zqm5pkUy8zmnxCJVCPUWeAoT94hPVXVuJfBg85+
	LX+iMmryclQveCl5kbVco/3mvfSUrWoVxwpHBDtatvVXWHGvIQPIUvRpcxIv0tovIb3J
	GSUoI7dvwtFqeAuWNWyFxqncGcsyuCWEJxDZHk87g/+BgBqIS+EOGiq6ajyOymrGGN/C
	ywdMaSXkZuxrJ3SqM3XPtwe+O9y80AzDMwv+IQzN0jL7C4m3Z+9QD8b1D1wIHXi2bwUW
	G9xA==
X-Gm-Message-State: APjAAAVGjPL3FRTd7V7OxKQ7CylZy3F4/oP9BLBgZ1rB7s8CXPAaYH+i
	A8NSZ/wSzuTLFTOOT6gPZFQ90Q==
X-Google-Smtp-Source: APXvYqw3qlTEpSFeJMsksY8xCK/Kma2w95W7+3UkYGl+pXrg1EvWndHqgUFZZc/lwVm+FrDd6MpppQ==
X-Received: by 2002:aa7:810e:: with SMTP id b14mr7606175pfi.112.1557426529328; 
	Thu, 09 May 2019 11:28:49 -0700 (PDT)
Received: from turin-eth.websterwood.com (d207-6-148-64.bchsia.telus.net.
	[207.6.148.64]) by smtp.gmail.com with ESMTPSA id
	s21sm4538826pgo.13.2019.05.09.11.28.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 May 2019 11:28:48 -0700 (PDT)
From: Behan Webster <behanw@converseincode.com>
Message-Id: <EF4EAD0A-0ABD-4EC2-AFA2-79DB3BD2346F@converseincode.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Date: Thu, 9 May 2019 11:28:46 -0700
In-Reply-To: <e0bc55f6-eb24-9391-e47d-f2072638ffd9@ibeeto.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
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
	<AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com>
	<e0bc55f6-eb24-9391-e47d-f2072638ffd9@ibeeto.com>
X-Mailer: Apple Mail (2.3445.104.8)
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
X-List-Received-Date: Thu, 09 May 2019 18:28:51 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_BD5D8D66-110B-46F1-95D6-1775025B46C5"

--Apple-Mail=_BD5D8D66-110B-46F1-95D6-1775025B46C5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On May 9, 2019, at 8:38 AM, Rudolf J Streif <rudolf.streif@ibeeto.com> =
wrote:
>=20
> Chiming in here
>=20
> On 5/7/19 11:18 AM, Behan Webster wrote:
>>> On May 7, 2019, at 2:47 AM, Bas Mevissen <abuse@basmevissen.nl =
<mailto:abuse@basmevissen.nl>> wrote:
>>>=20
>>> On 2019-05-07 07:20, Behan Webster wrote:
>>>=20
>>>> > On May 6, 2019, at 8:36 AM, Bas Mevissen <bas@emcodev.nl =
<mailto:bas@emcodev.nl>> wrote:
>>>> > On 5/6/19 12:45 PM, Josef Holzmayr wrote:
>>>> > I'd actually word it a little bit differently:
>>>> > If there is only *ONE* attendee who did not properly do the =
homework, it
>>>> > will have a massive impact an the rest of the group. And that =
somebody
>>>> > will show up unpreparedly is absolutely certain in my opinion.
>>>> > With sufficient trainers, one can continue for most and provide =
some assistance to the one falling behind.
>>>=20
>>>> Usually more than one. And this is generally very disruptive to the =
class as a whole.
>>>=20
> There are always people who are prepared to the T and others who just =
casually stroll into the class. We all know that as we all went through =
various stages of schooling. :) No matter what you do, there always will =
be a glitch. I tried it all from course preparation instructions, shell =
scripts setting up systems, USB sticks and network drives with downloads =
and shared state cache, virtual machine images, build systems set up in =
the cloud, you name it. If it is not somebody who is unprepared it is a =
technical issue: lack of disk space, network connectivity, corporate =
computers that do not allow USB sticks,... Instructors just have to deal =
with it.

And if you have a multiple day class, you can absorb such disruption.

But for single day events you basically have to make sure there is =
little to no wiggle room for failure. And for individual talks, there is =
almost no room for disruption at all during labs.

Assuming pre-class work essentially means there will be massive =
disruption on the day because many/most/all the attendees won=E2=80=99t =
have done it.

This is why we=E2=80=99ve largely done lecture only beginner talks at =
YPDD to make sure we cover as much material as we can and limit the =
possibility of in class issues.

>>>> >> As someone who actually got started through the YPDD beginner =
track (and
>>>> >> also often recommends it to new beginners), my opinion is =
clearly that
>>>> >> we either should have it, be it only for a handful of attendees, =
or
>>>> >> offer a *real* replacement, with face to face training. My =
experience is
>>>> >> that this personal thing in the very beginning is an absolutely
>>>> >> essential part of many YP/OE careers.
>>>> >
>>>> > I agree. That is how I started, next to a compressed Linux =
Foundation Yocto training that was offered just before the event then.
>>>=20
>>>> Yes. By me and my colleagues who train for the Linux Foundation.
>>>=20
>>>> > So it might be wise to ask LF or get something organised. It =
would mostly require a room and a sponsor for some small devkit.
>>>=20
>>>> We've run the beginner track for the last few years. The discussion =
is precisely that the YP event is proposing to not run the beginner =
track this year at all.
>>>=20
>>> But why? There appears to be a constant demand.
>>=20
>> An excellent question. I agree with you. I don=E2=80=99t have an =
answer however. Not my decision.
>>=20
> I certainly would advocate to have the beginner track. It's a good way =
of getting people interested, and eventually excited, for the Yocto =
Project. Conferences and dev days are an opportunity to do advertising =
and to grow the community. We cannot do that just by catering to people =
who are already using YP. We need new folks as we are already running =
into issues where things have to be dropped because there is nobody who =
is maintaining it.
>=20
All agreed.

>>>> We're happy to do it again if given the space.
>>>=20
>>> Yes, both for LF and YP it are off-the-shelf trainings that do not =
require much preperation.
>>=20
>> Speaking as a course maintainer for LF, keeping the YP course updated =
is actually a tremendous amount of work (I=E2=80=99m the co-maintainer =
for the LF YP course).
>>=20
>> However, the beginner slides tend not to need more than a few hours =
of updates every 6 months (which again is something I do).
>>=20
>> Either may appear off-the-shelf, but they aren=E2=80=99t from my =
perspective. ;)
> I can wholeheartedly second that. I developed the original YP class of =
the LF and taught it many times and have since developed my own class =
material teaching classes.
>=20
And you did a great job!
> While the basic concept of course remains the same it is the little =
details that change. With every new version of the YP a course =
maintainer has to go through every single exercise and example in the =
course material and try it out again to see if it still works. And quite =
frankly, sometimes it is rather silly things that have changed and break =
something.
>=20
So very true.
> In particular for a beginner class lasting one day only, every single =
disruption sets the class back and there is no opportunity to recover =
from it. The day is already packed just to cover the core concepts.
>=20
Precisely.

Behan


--Apple-Mail=_BD5D8D66-110B-46F1-95D6-1775025B46C5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
May 9, 2019, at 8:38 AM, Rudolf J Streif &lt;<a =
href=3D"mailto:rudolf.streif@ibeeto.com" =
class=3D"">rudolf.streif@ibeeto.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3DUTF-8" class=3D"">
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF" class=3D""><p =
class=3D"">Chiming in here<br class=3D"">
    </p>
    <div class=3D"moz-cite-prefix">On 5/7/19 11:18 AM, Behan Webster
      wrote:<br class=3D"">
    </div>
    <blockquote type=3D"cite" =
cite=3D"mid:AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com" =
class=3D"">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3DUTF-8" class=3D"">
      <div class=3D"">
        <blockquote type=3D"cite" class=3D"">
          <div class=3D"">On May 7, 2019, at 2:47 AM, Bas Mevissen =
&lt;<a href=3D"mailto:abuse@basmevissen.nl" class=3D"" =
moz-do-not-send=3D"true">abuse@basmevissen.nl</a>&gt; wrote:</div>
          <br class=3D"Apple-interchange-newline">
          <div class=3D""><span style=3D"caret-color: rgb(0, 0, 0);
              font-family: Helvetica; font-size: 12px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none; float: none; display: inline
              !important;" class=3D"">On 2019-05-07 07:20, Behan Webster
              wrote:</span><br style=3D"caret-color: rgb(0, 0, 0);
              font-family: Helvetica; font-size: 12px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
            <br style=3D"caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
            <blockquote type=3D"cite" style=3D"font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D"">&gt; On May 6, 2019, at 8:36 AM, Bas Mevissen
              &lt;<a href=3D"mailto:bas@emcodev.nl" class=3D"" =
moz-do-not-send=3D"true">bas@emcodev.nl</a>&gt; wrote:<br class=3D"">
              &gt; On 5/6/19 12:45 PM, Josef Holzmayr wrote:<br =
class=3D"">
              &gt; I'd actually word it a little bit differently:<br =
class=3D"">
              &gt; If there is only *ONE* attendee who did not properly
              do the homework, it<br class=3D"">
              &gt; will have a massive impact an the rest of the group.
              And that somebody<br class=3D"">
              &gt; will show up unpreparedly is absolutely certain in my
              opinion.<br class=3D"">
              &gt; With sufficient trainers, one can continue for most
              and provide some assistance to the one falling behind.<br =
class=3D"">
            </blockquote>
            <br style=3D"caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
            <blockquote type=3D"cite" style=3D"font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D"">Usually more than one. And this is generally very
              disruptive to the class as a whole.<br class=3D"">
            </blockquote>
            <br style=3D"caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
          </div>
        </blockquote>
      </div>
    </blockquote>
    There are always people who are prepared to the T and others who
    just casually stroll into the class. We all know that as we all went
    through various stages of schooling. :) No matter what you do, there
    always will be a glitch. I tried it all from course preparation
    instructions, shell scripts setting up systems, USB sticks and
    network drives with downloads and shared state cache, virtual
    machine images, build systems set up in the cloud, you name it. If
    it is not somebody who is unprepared it is a technical issue: lack
    of disk space, network connectivity, corporate computers that do not
    allow USB sticks,... Instructors just have to deal with it.<br =
class=3D""></div></div></blockquote><div><br class=3D""></div><div>And =
if you have a multiple day class, you can absorb such =
disruption.</div><div><br class=3D""></div><div>But for single day =
events you basically have to make sure there is little to no wiggle room =
for failure. And for individual talks, there is almost no room for =
disruption at all during labs.</div><div><br =
class=3D""></div><div>Assuming pre-class work essentially means there =
will be massive disruption on the day because many/most/all the =
attendees won=E2=80=99t have done it.</div><div><br =
class=3D""></div><div>This is why we=E2=80=99ve largely done lecture =
only beginner talks at YPDD to make sure we cover as much material as we =
can and limit the possibility of in class issues.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
text=3D"#000000" bgcolor=3D"#FFFFFF" class=3D"">
    <blockquote type=3D"cite" =
cite=3D"mid:AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com" =
class=3D"">
      <div class=3D"">
        <blockquote type=3D"cite" class=3D"">
          <div class=3D"">
            <blockquote type=3D"cite" style=3D"font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D"">&gt;&gt; As someone who actually got started
              through the YPDD beginner track (and<br class=3D"">
              &gt;&gt; also often recommends it to new beginners), my
              opinion is clearly that<br class=3D"">
              &gt;&gt; we either should have it, be it only for a
              handful of attendees, or<br class=3D"">
              &gt;&gt; offer a *real* replacement, with face to face
              training. My experience is<br class=3D"">
              &gt;&gt; that this personal thing in the very beginning is
              an absolutely<br class=3D"">
              &gt;&gt; essential part of many YP/OE careers.<br =
class=3D"">
              &gt;<br class=3D"">
              &gt; I agree. That is how I started, next to a compressed
              Linux Foundation Yocto training that was offered just
              before the event then.<br class=3D"">
            </blockquote>
            <br style=3D"caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
            <blockquote type=3D"cite" style=3D"font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D"">Yes. By me and my colleagues who train for the
              Linux Foundation.<br class=3D"">
            </blockquote>
            <br style=3D"caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
            <blockquote type=3D"cite" style=3D"font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D"">&gt; So it might be wise to ask LF or get
              something organised. It would mostly require a room and a
              sponsor for some small devkit.<br class=3D"">
            </blockquote>
            <br style=3D"caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
            <blockquote type=3D"cite" style=3D"font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D"">We've run the beginner track for the last few
              years. The discussion is precisely that the YP event is
              proposing to not run the beginner track this year at =
all.<br class=3D"">
            </blockquote>
            <br style=3D"caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
            <span style=3D"caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none; float: none; display: inline
              !important;" class=3D"">But why? There appears to be a
              constant demand.</span><br style=3D"caret-color: rgb(0, 0,
              0); font-family: Helvetica; font-size: 12px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
          </div>
        </blockquote>
        <div class=3D""><br class=3D"">
        </div>
        <div class=3D"">An excellent question. I agree with you. I =
don=E2=80=99t have an
          answer however. Not my decision.</div>
        <br class=3D"">
      </div>
    </blockquote><p class=3D"">I certainly would advocate to have the =
beginner track. It's a
      good way of getting people interested, and eventually excited, for
      the Yocto Project. Conferences and dev days are an opportunity to
      do advertising and to grow the community. We cannot do that just
      by catering to people who are already using YP. We need new folks
      as we are already running into issues where things have to be
      dropped because there is nobody who is maintaining it.<br =
class=3D""></p></div></div></blockquote><div>All agreed.</div><div><br =
class=3D""></div><blockquote type=3D"cite" class=3D""><div class=3D""><div=
 text=3D"#000000" bgcolor=3D"#FFFFFF" class=3D""><p class=3D"">
    </p>
    <blockquote type=3D"cite" =
cite=3D"mid:AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com" =
class=3D"">
      <div class=3D"">
        <blockquote type=3D"cite" class=3D"">
          <div class=3D"">
            <blockquote type=3D"cite" style=3D"font-family: Helvetica;
              font-size: 12px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D"">We're happy to do it again if given the space.<br class=3D"">
            </blockquote>
            <br style=3D"caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
            <span style=3D"caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 12px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none; float: none; display: inline
              !important;" class=3D"">Yes, both for LF and YP it are
              off-the-shelf trainings that do not require much
              preperation.</span><br style=3D"caret-color: rgb(0, 0, 0);
              font-family: Helvetica; font-size: 12px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class=3D"">
          </div>
        </blockquote>
      </div>
      <br class=3D"">
      <div class=3D"">Speaking as a course maintainer for LF, keeping =
the
        YP course updated is actually a tremendous amount of work (I=E2=80=
=99m
        the co-maintainer for the LF YP course).</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">However, the beginner slides tend not to need more
        than a few hours of updates every 6 months (which again is
        something I do).</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Either may appear off-the-shelf, but they aren=E2=80=
=99t
        from my perspective. ;)</div>
    </blockquote><p class=3D"">I can wholeheartedly second that. I =
developed the original YP
      class of the LF and taught it many times and have since developed
      my own class material teaching =
classes.</p></div></div></blockquote><div>And you did a great =
job!</div><blockquote type=3D"cite" class=3D""><div class=3D""><div =
text=3D"#000000" bgcolor=3D"#FFFFFF" class=3D""><p class=3D""> While the =
basic concept of
      course remains the same it is the little details that change. With
      every new version of the YP a course maintainer has to go through
      every single exercise and example in the course material and try
      it out again to see if it still works. And quite frankly,
      sometimes it is rather silly things that have changed and break
      something.</p></div></div></blockquote><div>So very =
true.</div><blockquote type=3D"cite" class=3D""><div class=3D""><div =
text=3D"#000000" bgcolor=3D"#FFFFFF" class=3D""><p class=3D"">In =
particular for a beginner class lasting one day only, every
      single disruption sets the class back and there is no opportunity
      to recover from it. The day is already packed just to cover the
      core =
concepts.</p></div></div></blockquote>Precisely.</div><div><br =
class=3D""></div><div>Behan</div><br class=3D""></body></html>=

--Apple-Mail=_BD5D8D66-110B-46F1-95D6-1775025B46C5--
