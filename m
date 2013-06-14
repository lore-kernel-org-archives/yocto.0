Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD9E4E01506;
	Fri, 14 Jun 2013 09:38:35 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5EGi8sO002598; Fri, 14 Jun 2013 17:44:08 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id HXvK2oS4KXvx; Fri, 14 Jun 2013 17:44:08 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5EGi5rA002580
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Fri, 14 Jun 2013 17:44:06 +0100
Message-ID: <1371227894.20823.90.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Date: Fri, 14 Jun 2013 17:38:14 +0100
In-Reply-To: <17797116383D4341B029FDF34C22BF6A52C4CCB36E@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.11.1371063601.16784.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A52C4CCB36E@GUREXMB01.ASIAN.AD.ARICENT.COM>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-owner@yoctoproject.org" <yocto-owner@yoctoproject.org>
Subject: Re: Recompile the recipe everytime
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
X-List-Received-Date: Fri, 14 Jun 2013 16:38:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-06-13 at 20:54 +0530, Rohit2 Jindal wrote:
> Please help me out I am stuck in some issue, actually I want my recipe to do compilation everytime on every run of
> 
> Bitbake linux-yocto
> 
> ie can I remove stamping or sstate-cache that it allows me to run compilation everytime on every run of bitbake linux-yocto.
> 
> 
> I tried do_compile[nostamp] ="1" but it did not work but same thing worked for do_install[nostamp]="1"

If you just want to rerun the compilation:

do_compile[nostamp] = "1"

should do what you want, not sure why that wouldn't work.

bitbake linux-yocto -c compile -f

or 

bitbake linux-yocto -C compile -f

are also commands which might help.

Cheers,

Richard




