Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8210DE00B71; Mon,  2 Jun 2014 03:51:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AECEE00B4C
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:51:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 304E227E026;
	Mon,  2 Jun 2014 10:51:17 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id sgajsDRiBlxc; Mon,  2 Jun 2014 10:51:16 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 8CFB127E019;
	Mon,  2 Jun 2014 10:51:16 +0000 (UTC)
Message-ID: <538C5722.2030803@dynamicdevices.co.uk>
Date: Mon, 02 Jun 2014 11:51:14 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
References: <cover.1401703109.git.ajlennon@dynamicdevices.co.uk>	<25eecdf05ee2d0268d06082d2b904f43c503898e.1401703109.git.ajlennon@dynamicdevices.co.uk>	<CABwVrCpw7pNvkK71noXVvF8ySiLT4zeOiiMLw12=0VFfYOt=-g@mail.gmail.com>	<538C54F7.9080401@dynamicdevices.co.uk>
	<CABwVrCoSbHviDzSnr2FXa6BD8hiPKwcHgEoFga439Q13Zn4Dsg@mail.gmail.com>
In-Reply-To: <CABwVrCoSbHviDzSnr2FXa6BD8hiPKwcHgEoFga439Q13Zn4Dsg@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Mon, 02 Jun 2014 10:51:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 02/06/2014 11:50, Alexandru Vaduva wrote:
> I am not sure, let`s wait and see what the maintainers(Andrei and
> John) have to say, if you pushed the
> commit as recommended into the README file
> (https://github.com/djwillis/meta-raspberrypi/blob/master/README).
> I will try to contact them on Trello tonight if nothings happens until
> them.

I did (I believe). Given your comment is echoed by Paul I will break the
commit into two separate ones, add the cut-off word and generate another
patch-set.

Alex


