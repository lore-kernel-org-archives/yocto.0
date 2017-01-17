Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72DF6E008D3; Tue, 17 Jan 2017 00:14:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.70.183.197 listed in list.dnswl.org]
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 361DFE0083D
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 00:14:43 -0800 (PST)
Received: from mfilter2-d.gandi.net (mfilter2-d.gandi.net [217.70.178.140])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id 69A2741C074;
	Tue, 17 Jan 2017 09:14:42 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter2-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter2-d.gandi.net (mfilter2-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id Sy5rYBjPvKwY; Tue, 17 Jan 2017 09:14:40 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from nuc.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id B6E2741C092;
	Tue, 17 Jan 2017 09:14:39 +0100 (CET)
Date: Tue, 17 Jan 2017 08:14:38 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Andreas =?UTF-8?B?TcO8bGxlcg==?= <schnitzeltony@googlemail.com>
Message-ID: <20170117081438.654688cd@nuc.betafive.co.uk>
In-Reply-To: <CALbNGRS5jaARDTK=+GHZJj9SFgXKCJq6m1w=VyjMfhxCo3VnbA@mail.gmail.com>
References: <20170105174229.1648-1-twoerner@gmail.com>
	<20170105193338.5b1360ec@nuc.betafive.co.uk>
	<20170105201619.GA7568@openSUSE-i7.site>
	<20170105215916.072b9215@nuc.betafive.co.uk>
	<20170117001215.GA12017@linux-uys3>
	<CALbNGRS5jaARDTK=+GHZJj9SFgXKCJq6m1w=VyjMfhxCo3VnbA@mail.gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi-rt: add
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
X-List-Received-Date: Tue, 17 Jan 2017 08:14:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 17 Jan 2017 08:51:10 +0100
Andreas M=C3=BCller <schnitzeltony@googlemail.com> wrote:

> On Tue, Jan 17, 2017 at 1:12 AM, Trevor Woerner <twoerner@gmail.com> wrot=
e:
> > Hi Paul,
> >
> > On Thu 2017-01-05 @ 09:59:16 PM, Paul Barker wrote:
> >> Also, are you thinking of moving the -rt recipe to the 4.9 series when
> >> upstream linux-raspberrypi declares that stable?
> >
> > I just want to confirm that 4.9 is going to be the next stable series? =
How do
> > we know 4.8 isn't going to be the next stable after 4.4?
> > --
> Upstream 4.8 is already marked as EOL
>=20
> Andreas

https://plus.google.com/+gregkroahhartman/posts/DjCWwSo7kqY is official eno=
ugh
for me.

