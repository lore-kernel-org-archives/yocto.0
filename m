Return-Path: <Bjoern.Stenberg@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id DB9A8E0157B
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2013 02:11:51 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.318.1;
	Mon, 12 Aug 2013 11:11:45 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4331)	id ECB6228B66D;
	Mon, 12 Aug 2013 11:11:45 +0200 (CEST)
Date: Mon, 12 Aug 2013 11:11:45 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20130812091145.GE12589@sestofb10.enea.se>
References: <CAPhnLPBbv232S0htae3WvEJ2A8UWRWH4Aj7og-bRGySkOqu+tA@mail.gmail.com>
	<5205E9D6.6020408@reliableembeddedsystems.com>
	<3217805.kYDiUIXKQu@helios>
MIME-Version: 1.0
In-Reply-To: <3217805.kYDiUIXKQu@helios>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: bjst@enea.com does not designate
	permitted sender hosts)
Cc: yocto@yoctoproject.org
Subject: Re: [Announcement] Yocto Project 1.5 Milestone 3 now available.
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
X-List-Received-Date: Mon, 12 Aug 2013 09:11:53 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Paul Eggleton wrote:
> We do definitely want automated testing on real hardware; it's just that
> that it presents a number of problems that need solving:
>=20
>  * How do you deploy the image/kernel/bootloader onto the board in an=20
> automated manner? To different kinds of boards?
>  * How do you manage access to the boards when you have multiple
> autobuilders potentially wanting to make use of them at around the same
> time?

These are all solved problems. We build and auto-test Yocto nightly on a bu=
nch of different hardware using tftp and nfs. I'm sure other teams do somet=
hing similar. However, since there is no Yocto standard for this yet we all=
 do it slightly differently.

Also, even when/if Intel sets up an automated hardware lab for Yocto, it wi=
ll necessarily only have a limited selection of boards. Perhaps we could ha=
ve a system where we pool community test results into one place rather than=
 depend on a single test lab.

I have said it before, and I'll remind/nag about it again: Please don't run=
 off and do this on your own. This is something that touches the daily work=
 of many community members and it should be done with open discussion.

--=20
Bj=F6rn

