Return-Path: <thaytan@noraisin.net>
Received: from noraisin.net (unknown [220.233.23.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E70C8E0136C
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 03:44:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by noraisin.net (Postfix) with ESMTP id E7DB333801D3;
	Thu,  4 Apr 2013 21:44:17 +1100 (EST)
X-Virus-Scanned: Debian amavisd-new at decorama.com.au
Received: from noraisin.net ([127.0.0.1])
	by localhost (mail.decorama.com.au [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id GEsKpyt-g4+s; Thu,  4 Apr 2013 21:44:07 +1100 (EST)
Received: from [192.168.11.41] (113.94.233.220.static.exetel.com.au
	[220.233.94.113])
	by noraisin.net (Postfix) with ESMTPSA id 7852D3380385;
	Thu,  4 Apr 2013 21:44:01 +1100 (EST)
Message-ID: <1365072238.22093.50.camel@shorty.home.>
From: Jan Schmidt <thaytan@noraisin.net>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 04 Apr 2013 21:43:58 +1100
In-Reply-To: <10424141.AW7YeVNGIV@helios>
References: <1363208280-32663-1-git-send-email-thaytan@noraisin.net>
	<10424141.AW7YeVNGIV@helios>
X-Mailer: Evolution 3.4.4-2 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] sdcard-image: Use the size of the generated rootfs
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
X-List-Received-Date: Thu, 04 Apr 2013 10:44:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-04-04 at 11:37 +0100, Paul Eggleton wrote:
> On Thursday 14 March 2013 07:57:59 Jan Schmidt wrote:
> >

*snip*


> Looks like this is a patch for meta-raspberrypi although it isn't marked as 
> such. Andrei, have you seen this?

Rats - I knew I forgot something when re-sending the patch. Sorry - yes,
it should have a [meta-raspberrypi] tag.

J.

> 
> Cheers,
> Paul
> 

-- 
Jan Schmidt <thaytan@noraisin.net>


