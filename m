Return-Path: <nick@leverton.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E991AE00C00; Thu, 11 Feb 2016 06:28:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Feb 2016 06:28:09 PST
Received: from tauism.org (leverton.org [80.229.14.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E5ABE00BF4
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 06:28:09 -0800 (PST)
Received: (qmail 17545 invoked from network); 11 Feb 2016 14:21:27 +0000
Received: from unknown (HELO localhost) (127.0.0.1)
	by localhost with SMTP; 11 Feb 2016 14:21:27 +0000
X-Virus-Scanned: Debian amavisd-new at hub.home
Received: from hub.home ([127.0.0.1])
	by localhost (hub.home [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id n9gFjmzcS_UM for <yocto@yoctoproject.org>;
	Thu, 11 Feb 2016 14:21:21 +0000 (GMT)
Received: (nullmailer pid 17538 invoked by uid 130);
	Thu, 11 Feb 2016 14:21:21 -0000
X-OS-Fingerprint: (up 60) (distance -1, link IPIP tunnel)
Received: from inspiredesigns.force9.co.uk (HELO nickl.localnet)
	(80.229.47.107) (smtp-auth username nj@leverton.org, mechanism login)
	by tauism.org (qpsmtpd/0.84) with (AES256-SHA encrypted) ESMTPSA;
	Thu, 11 Feb 2016 14:21:21 +0000
From: Nick Leverton <nick@leverton.org>
To: yocto@yoctoproject.org
Date: Thu, 11 Feb 2016 14:21:06 +0000
Message-ID: <3534892.4K3lPByQ7B@nickl>
User-Agent: KMail/4.14.1 (Linux/4.3.0-0.bpo.1-amd64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
References: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 11 Feb 2016 14:28:14 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Thursday 11 Feb 2016 14:11:36 Burton, Ross wrote:
> Hi,
>=20
> I'm proposing that we drop Debian 7 from the supported distributions =
list
> in master, so that the 2.1 release supports Debian 8.  Debian 7 was
> released in 2013, Debian 8 superceded it in April 2015 so will have b=
een
> out for a year when 2.1 is released, which also means that is when De=
bian 7
> stops receiving security fixes. Nobody should be running Debian 7 aft=
er
> April 2016!
>=20
> Any objections?

Possibly a little early - Debian 7 will be going onto LTS security supp=
ort for=20
two years, starting some time this month.  Quoting from=20
https://wiki.debian.org/LTS

"Debian 6 =E2=80=9CSqueeze=E2=80=9D until February 2016
Debian 7 =E2=80=9CWheezy=E2=80=9D from February 2016 to May 2018
Debian 8 =E2=80=9CJessie=E2=80=9C from May 2018 to April/May 2020"

Nick

