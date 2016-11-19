Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40E46E00C37; Sat, 19 Nov 2016 02:54:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAB22E00AB0
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 02:54:17 -0800 (PST)
Received: from [10.66.116.243] (42-72-253-93.EMOME-IP.hinet.net [42.72.253.93])
	by msfrf2626.sfr.fr (SMTP Server) with ESMTP id 143761C00040C;
	Sat, 19 Nov 2016 11:54:17 +0100 (CET)
Received: from [10.66.116.243] (42-72-253-93.EMOME-IP.hinet.net
	[42.72.253.93])	(using TLSv1
	with cipher ECDHE-RSA-AES256-SHA (256/256 bits))	(No client certificate
	requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2626.sfr.fr (SMTP Server) with ESMTPSA;
	Sat, 19 Nov 2016 11:54:16 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
Mime-Version: 1.0 (1.0)
From: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: iPhone Mail (13D15)
In-Reply-To: <20161118212042.GA26177@openSUSE-i7.site>
Date: Sat, 19 Nov 2016 18:54:08 +0800
Message-Id: <07541D77-C846-4448-BAB8-51604206B9AA@neuf.fr>
References: <20161118212042.GA26177@openSUSE-i7.site>
To: Trevor Woerner <twoerner@gmail.com>
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: ***SPAM*** [raspberrypi] raspi3 vs raspi2
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
X-List-Received-Date: Sat, 19 Nov 2016 10:54:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

I'm in the process of pushing something that should hopefully do that - and m=
ore.
I hope I can finish pushing it in the next few days.

Cheers,

Herve

> On 19 nov. 2016, at 05:20, Trevor Woerner <twoerner@gmail.com> wrote:
>=20
> Hi,
>=20
> I was wondering if there were any plans to create a MACHINE=3Draspberrypi3=
 that
> treats the raspi3 like the CortexA53 that it is instead of generating imag=
es
> that are backwards compatible with the CortexA7 that is the raspi2?
>=20
> Best regards,
>    Trevor
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

