Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E78ABE00EAB; Sat, 24 Feb 2018 10:49:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [83.102.40.152 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 393 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Feb 2018 10:49:42 PST
Received: from sinikuusama2.dnainternet.net (sinikuusama2.dnainternet.net
	[83.102.40.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12D67E00E54
	for <yocto@yoctoproject.org>; Sat, 24 Feb 2018 10:49:42 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by sinikuusama2.dnainternet.net (Postfix) with ESMTP id 6BA7AF626;
	Sat, 24 Feb 2018 20:43:07 +0200 (EET)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from sinikuusama2.dnainternet.net ([83.102.40.152])
	by localhost (sinikuusama2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041)
	with ESMTP id jrnLSj7-APU5; Sat, 24 Feb 2018 20:43:06 +0200 (EET)
Received: from kirsikkapuu2.dnainternet.net (kirsikkapuu2.dnainternet.net
	[83.102.40.52])
	by sinikuusama2.dnainternet.net (Postfix) with ESMTP id C74E2F4B2;
	Sat, 24 Feb 2018 20:43:06 +0200 (EET)
Received: from [192.168.1.22] (89-27-78-236.bb.dnainternet.fi [89.27.78.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by kirsikkapuu2.dnainternet.net (Postfix) with ESMTPS id A3FDC3BAF;
	Sat, 24 Feb 2018 20:43:04 +0200 (EET)
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
From: Anders Montonen <Anders.Montonen@iki.fi>
In-Reply-To: <fdd3c867-fe60-c536-24d5-bdca7bde7f09@windriver.com>
Date: Sat, 24 Feb 2018 20:43:04 +0200
Message-Id: <43C018F7-7634-4EF2-9C7D-BE63AB1696A3@iki.fi>
References: <alpine.DEB.2.11.1802231833140.22513@lakka.kapsi.fi>
	<fdd3c867-fe60-c536-24d5-bdca7bde7f09@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.3445.5.20)
Cc: yocto@yoctoproject.org
Subject: Re: useradd-staticids
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
X-List-Received-Date: Sat, 24 Feb 2018 18:49:44 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 23 Feb 2018, at 19:30, Mark Hatle <mark.hatle@windriver.com> wrote:
> On 2/23/18 10:37 AM, Anders Montonen wrote:
>> I'm looking into using the useradd-staticids class for reproducible=20=

>> builds. Is there any way to delay the warning/error about missing ids=20=

>> until a recipe is actually built rather than getting them during =
parsing?=20
>> Having to generate tons of ids for packages you're not even using =
seems a=20
>> bit nuts.
> The system used to do that, but then people started complaining that =
whenever
> they added items to their image they'd get more warnings -- and why =
don't we
> just tell them up-front.  :/

Thanks for the explanation. It=E2=80=99s not a huge deal, just a bit =
unexpected.

Regards,
Anders=

