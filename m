Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79E3BE00597
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 09:50:10 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3FGo2it025457; Mon, 15 Apr 2013 17:50:02 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 7p_vv57rOi5n; Mon, 15 Apr 2013 17:50:02 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3FGnxtg025446
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Mon, 15 Apr 2013 17:50:01 +0100
Message-ID: <1366044576.8670.68.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Mon, 15 Apr 2013 17:49:36 +0100
In-Reply-To: <6129459.jTm7n3POKe@helios>
References: <CAPhnLPBKA7RmB5_KZ-m12O_ehR4BobYgB2qJYL1DPj071ouVYA@mail.gmail.com>
	<CAHUNapQBeYp_2-zDcOEU81VFoTtYmWaKEiiB8-9Z=_tXWV6rcg@mail.gmail.com>
	<6129459.jTm7n3POKe@helios>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto 1.4_M5 released
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
X-List-Received-Date: Mon, 15 Apr 2013 16:50:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-04-15 at 13:40 +0100, Paul Eggleton wrote:
> On Monday 15 April 2013 07:46:42 Trevor Woerner wrote:
> > If I want to get an idea of what's going to be in the next release,
> > dylan, which branch do I use: dylan or 1.4_M5?
> 
> So, dylan is already quite a few bugfixes ahead of 1.4_M5 at this point. dylan 
> will become 1.4 when the final release occurs.

We released M5 since if we didn't, there is certain stigma attached to
"missing" a milestone in management circles. The release is therefore a
book keeping exercise (and tests the release infrastructure on the
autobuilder too). We've had the QA results from M5 for a while and they
did play a significant part of focusing effort for M6.

At this point M6 is the interesting one and the dylan branch.

Cheers,

Richard




