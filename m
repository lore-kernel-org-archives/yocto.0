Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 566B7E00C92; Wed, 26 Oct 2016 23:24:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.181.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out11.electric.net (smtp-out11.electric.net
	[185.38.181.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAB3CE00C46
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 23:24:13 -0700 (PDT)
Received: from 1bze6l-0002Jv-TY by out11c.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1bze6l-0002Ke-UN; Wed, 26 Oct 2016 23:24:11 -0700
Received: by emcmailer; Wed, 26 Oct 2016 23:24:11 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out11c.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1bze6l-0002Jv-TY; Wed, 26 Oct 2016 23:24:11 -0700
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0294.000; Thu, 27 Oct 2016 08:23:49 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: akuster <akuster@mvista.com>, Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] General policies for CVE fixes
Thread-Index: AdIops8PMQLs+sONS66i/C5NaWzGDwAEsoOAAE7zoIAABkIvgAEgRoQw
Date: Thu, 27 Oct 2016 06:23:49 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48ABEA7B0D@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
	<CAMKF1sp_qLfdeFvHzi+VD-6tFbX-f372uiRmKjeXRG3w1WVwkQ@mail.gmail.com>
	<3230301C09DEF9499B442BBE162C5E48ABE9A5A1@SESTOEX04.enea.se>
	<6b866b61-731b-a7b0-4da1-6f1b25d66528@mvista.com>
In-Reply-To: <6b866b61-731b-a7b0-4da1-6f1b25d66528@mvista.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.142.231]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: General policies for CVE fixes
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
X-List-Received-Date: Thu, 27 Oct 2016 06:24:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> > Yes regressions (forgetting to fix bugs in master) are bad.  I believe
> > there are other ways to avoid this, Yocto project has a bug reporting
> > system to have track of such things, right?
> The issue there is if Jethro gets a fix and Krogoth, morty and mater need=
 it
> as well, the bug system implies someone else is going to have to do the
> work.
> That is the problem. Not too many people are stepping up to do the work
> in the other branches.
>=20
> >
> > Maintenance branches are likely deployed in production systems, I
> > think Fixing security problems here should have higher priority.
> You are more than welcome to submit patches for the stable branch you
> are concerned about knowing the patches wont be applied until the
> parent branches are addressed first.
>=20
> >   Don't you agree?
> >
> > Perhaps we should discuss this at next OEDEM :)
> We have and until more people step up to help, this will be a constant
> issue.
>=20
> -armin

I see your point, they are absolutely valid.  Thanks.

//Sona

