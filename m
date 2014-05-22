Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16691E00B85; Thu, 22 May 2014 00:59:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F197E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 00:59:41 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 6DB70860E7;
	Thu, 22 May 2014 07:59:40 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id T6VOSuChDpt3; Thu, 22 May 2014 07:59:29 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B1FA2860E6;
	Thu, 22 May 2014 07:59:29 +0000 (UTC)
Message-ID: <537DAE60.4020001@dynamicdevices.co.uk>
Date: Thu, 22 May 2014 08:59:28 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Chris Morgan <chmorgan@gmail.com>
References: <CAAPegz1dWJAG0R_wVZs8_BtD4CO5YBk7=oT1V-ud40xzkTx+yw@mail.gmail.com>
	<537CF707.4060506@mlbassoc.com>
	<CAAPegz23RjycTjy0_81=PM2m47c-vJ+1vL75fO6LbfvJAoBX2w@mail.gmail.com>
	<537D0964.9090208@dynamicdevices.co.uk>
	<CAAPegz3zMndcWPi_cmsStAaLH3yTTjA+11yq+P8zm2MdU-q6=Q@mail.gmail.com>
In-Reply-To: <CAAPegz3zMndcWPi_cmsStAaLH3yTTjA+11yq+P8zm2MdU-q6=Q@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: meta-mono core-image-mono failing
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
X-List-Received-Date: Thu, 22 May 2014 07:59:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


> After this email if you still want to go down the path of getting my
> configuration we can do that. I'm just using git.pokylinux.org and
> meta-beaglebone from Koei with some minor changes in my local.conf to
> enable systemd and force my own packages into any image that is built.
>
> The attached patch fixes things for me here which matches what Gary
> mentioned. I did not test 3.2 build, only the 3.4 one, I presume the
> issue in autogen.sh is present for the older branch/version as well.
>
> I also emailed the mono guys and Zoltan replied saying that autogen.sh
> has to be run from within tree. I suspect this could be corrected by
> use of $srcdir in autogen.sh but I'm not sure if I'm super
> enthusiastic about going down that route if the mono guys aren't.
>
> http://lists.ximian.com/pipermail/mono-devel-list/2014-May/041537.html
>
> Chris

Given Miguel's latest response
(http://lists.ximian.com/pipermail/mono-devel-list/2014-May/041542.html)
I've applied your patch to master until such time as somebody is in a
positon to look at out of tree support for the mono build.

Cheers, Alex



