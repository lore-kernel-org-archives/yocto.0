Return-Path: <anders@chargestorm.se>
Received: from STOEXHUB02.domain01.net (STOEXHUB02.domain01.net
	[83.145.59.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C502E00734
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 23:58:43 -0700 (PDT)
Received: from ad.chargestorm.se (83.252.253.85) by stoexhub02.domain01.net
	(10.12.10.2) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Tue, 25 Jun 2013 08:57:21 +0200
Date: Tue, 25 Jun 2013 08:58:12 +0200
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20130625065811.GA10042@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <CAFMfyzLGoJ0iys=Cd3vzJRPCXOO11y=hMnyayB7u-jNwkzE+Mw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFMfyzLGoJ0iys=Cd3vzJRPCXOO11y=hMnyayB7u-jNwkzE+Mw@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
X-GFI-SMTP-Submission: 1
Subject: Re: Adding users and their rights
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
X-List-Received-Date: Tue, 25 Jun 2013 06:58:46 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

,

* DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com> [130625 08:39]:
> I would like to know if its possible to add users and theri rights at
> the build
> itself... I know tinylogin provides the adduser to the target but how
> can I do
> it at the build is the issue here..

Sure, it's quite easy to do using the useradd class. See
http://cgit.openembedded.org/openembedded-core/tree/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb
for more info

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB


