Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 797D5E00C8E; Fri, 12 Feb 2016 09:14:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from FLEMING.seektech.com (mail.seektech.com [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08615E00C06
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 09:14:45 -0800 (PST)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 12 Feb 2016 09:14:43 -0800
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Fri, 12 Feb 2016 09:14:43 -0800
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Fri, 12 Feb 2016 09:14:43 -0800
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Nick Leverton <nick@leverton.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Dropping Debian 7 as supported?
Thread-Index: AQHRZNZNewWnN6vov0q7hUWBh91SKZ8na1MAgAADRwCAAYR5AP//s6WU
Date: Fri, 12 Feb 2016 17:14:43 +0000
Message-ID: <1455297167401.67853@seescan.com>
References: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
	<3534892.4K3lPByQ7B@nickl>
	<CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>,
	<14702697.fdvhjAhpCO@nickl>
In-Reply-To: <14702697.fdvhjAhpCO@nickl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: WRIGHT.seescan.com
X-GFI-SMTP-RemoteIP: 192.168.11.30
Subject: Re: Dropping Debian 7 as supported?
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
X-List-Received-Date: Fri, 12 Feb 2016 17:14:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I run debian right now and it works great.=0A=
=0A=
$ lsb_release -a=0A=
No LSB modules are available.=0A=
Distributor ID: Debian=0A=
Description:    Debian GNU/Linux 8.3 (jessie)=0A=
Release:        8.3=0A=
Codename:       jessie=0A=
=0A=
I prefer debian over ubuntu:=0A=
=0A=
1. Simpler footprint so it feels more customizable out of the box. (I know =
that any linux distro is infinitely customizable, but I like a simple insta=
ll out of the box. I feel like ubuntu was ramming more and more things down=
 my throat).=0A=
=0A=
2. I strongly believe different platforms, although are more work, also exp=
ose more bugs.=0A=
=0A=
3. I started on debian and it's what I'm used to.=0A=
=0A=
4. It makes me feel better.=0A=
=0A=
5. In the past, working on a different distro forced me to be more aware of=
 the details of the build process which ultimately makes me a more valuable=
 member of the team. Having the attitude that things will just work for us,=
 in my opinion, is a bad one for a developer. I'd rather understand things.=
=0A=
=0A=
(#4 is my primary reason).=0A=
=0A=
I'll be happy to help out with debian support if you need it.=0A=
=0A=
So far, I have zero problems, and it would be nice to not see a scary messa=
ge telling me to change distros if my distro actually works great.=0A=
=0A=
Frederick=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Nick Leverton <nick@leverton.org>=0A=
Sent: Friday, February 12, 2016 5:43 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Dropping Debian 7 as supported?=0A=
=0A=
On Thursday 11 Feb 2016 14:32:50 Burton, Ross wrote:=0A=
> On 11 February 2016 at 14:21, Nick Leverton <nick@leverton.org> wrote:=0A=
> > Possibly a little early - Debian 7 will be going onto LTS security supp=
ort=0A=
> > for=0A=
> > two years, starting some time this month.  Quoting from=0A=
> > https://wiki.debian.org/LTS=0A=
>=0A=
> Ah yes, I'd forgotten about the LTS project and was looking at the securi=
ty=0A=
> team.=0A=
>=0A=
> This does make it less clear, but it's still an old release and we can't=
=0A=
> support/test on everything.=0A=
=0A=
I appreciate that, and I suspect the LTS efforts are of most interest to th=
ose=0A=
running production servers.  I would think anyone developing on Debian is=
=0A=
likely to be running stable at least.  Although I've worked at many=0A=
development companies running elderly LTS versions of Ubuntu, Fedora/Centos=
,=0A=
etc, I admit I've yet to meet one that ran Debian at all.=0A=
=0A=
Nevertheless if I can be of any help in supporting and testing on versions =
of=0A=
Debian, I'm happy to do so.=0A=
=0A=
Nick=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

