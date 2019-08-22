Return-Path: <bradleyb@fuzziesquirrel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47394E00D6A; Thu, 22 Aug 2019 11:17:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bajor.fuzziesquirrel.com (mail.fuzziesquirrel.com
	[173.167.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30C28E00D38
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 11:17:46 -0700 (PDT)
X-Virus-Scanned: amavisd-new at fuzziesquirrel.com
Received: from brads-mbp.dyn.fuzziesquirrel.com
	(Brads-MBP.dyn.fuzziesquirrel.com [192.168.253.30])
	by bajor.fuzziesquirrel.com (Postfix) with ESMTPSA id 7C47514E0C8;
	Thu, 22 Aug 2019 14:17:44 -0400 (EDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Brad Bishop <bradleyb@fuzziesquirrel.com>
In-Reply-To: <MN2PR14MB265597F84291C8F0D51C00FDE6A50@MN2PR14MB2655.namprd14.prod.outlook.com>
Date: Thu, 22 Aug 2019 14:17:44 -0400
Message-Id: <5964717D-2ED9-41A1-9115-74D2BECDD353@fuzziesquirrel.com>
References: <38CEEC26-E746-42DE-B4AD-24BCB29ED326@fuzziesquirrel.com>
	<MN2PR14MB265597F84291C8F0D51C00FDE6A50@MN2PR14MB2655.namprd14.prod.outlook.com>
To: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
X-Mailer: Apple Mail (2.3445.104.11)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OpenBMC Maillist <openbmc@lists.ozlabs.org>,
	Adriana Kobylak <anoo@us.ibm.com>
Subject: Re: assembling lvm disk images
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
X-List-Received-Date: Thu, 22 Aug 2019 18:17:47 -0000
Content-Type: text/plain;
	charset=utf-8;
	delsp=yes;
	format=flowed
Content-Transfer-Encoding: quoted-printable

at 10:28 AM, Schmitt, Richard <Richard.Schmitt@commscope.com> wrote:

> Not sure the type of lvm you're trying to use, but we successfully buil=
d =20
> a dm-verity rootfs offline.
>
> It probably is specific to what type of lvm you are using.
>
> Rich

Thanks for the reply Rich!

I=E2=80=99m not exactly sure what is meant by LVM type.  If I look at the=
 wikipedia =20
page on devicemapper (https://en.wikipedia.org/wiki/Device_mapper) it lis=
ts =20
a number of =E2=80=9Cmapping targets=E2=80=9D - are these the LVM types? =
 If it is, we=E2=80=99d be =20
looking at linear mapping.

The broader objective is to have a system with multiple root filesystems =
on =20
a 16 GB EMMC device, and be able to add/remove/resize additional =20
filesystems using the LVM2 userspace tools, much like a typical binary =20
desktop distro would configure your hard drive.

thx - brad

