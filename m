Return-Path: <martin@spotwise.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C001BE00F2E; Fri, 22 Jul 2016 06:16:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.201.84.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sender163-mail.zoho.com (sender163-mail.zoho.com
	[74.201.84.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14FC7E00F29
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 06:16:41 -0700 (PDT)
Received: from [10.1.1.92] (c-4ab0e055.17-2-64736c10.cust.bredbandsbolaget.se
	[85.224.176.74]) by mx.zohomail.com
	with SMTPS id 1469193395130814.0737574024868;
	Fri, 22 Jul 2016 06:16:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Martin Bergek <martin@spotwise.com>
In-Reply-To: <20160721080236.0ed7287e@nuc.betafive.co.uk>
Date: Fri, 22 Jul 2016 15:16:08 +0200
Message-Id: <F20EA7BC-B517-47D9-9117-7CF34B4E75DA@spotwise.com>
References: <20160721080236.0ed7287e@nuc.betafive.co.uk>
To: Paul Barker <paul@paulbarker.me.uk>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] linux-raspberrypi versions
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
X-List-Received-Date: Fri, 22 Jul 2016 13:16:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Paul,

I am having stability issues with the USB subsystem on Raspberry Pi 3 =
under 4.4 that I can=E2=80=99t reproduce under 4.1. I assume 4.1 will =
still remain in the recipe when 4.4 is made the default option. How long =
would the 4.1 version stay so that those that want to can keep the old =
kernel version?

For more information about my issue please see: =
https://www.mail-archive.com/yocto@yoctoproject.org/msg30362.html

Thanks,
Martin Bergek



> On 21 Jul 2016, at 09:02, Paul Barker <paul@paulbarker.me.uk> wrote:
>=20
> Hi all,
>=20
> I'm planning to look at the linux-raspberypi recipes once I've had =
time
> to send V2 of my u-boot patches. I'd like to know people's thoughts on
> the available kernel versions in the meta-raspberrypi layer:
>=20
> Is anyone still using the linux-raspberrypi 3.18 recipe? The commit
> referenced in SRCREV is from June 2015. I think it's probably time to
> retire this unless anyone has a reason to keep it around.
>=20
> Is there any reason to keep linux-raspberrypi 4.1 as the default
> recipe? The last commit to the 4.1 branch was in April and the
> default branch on the linux-raspberrypi GitHub repository has been
> 4.4 since then. I think we should change the default version to 4.4
> unless there's a good reason not to.
>=20
> If there's no objections I'll send a couple of patches to drop 3.18 =
and
> change the default to 4.4.
>=20
> Thanks,
> Paul Barker
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



