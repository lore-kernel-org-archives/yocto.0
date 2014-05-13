Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A239E00B76; Tue, 13 May 2014 00:10:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from dan.rpsys.net (unknown [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A382E00B5D
	for <yocto@yoctoproject.org>; Tue, 13 May 2014 00:10:30 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s4D7AGbw022331; Tue, 13 May 2014 08:10:17 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id qhZg1p3UUprq; Tue, 13 May 2014 08:10:16 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s4D7A9p9022322
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Tue, 13 May 2014 08:10:10 +0100
Message-ID: <1399965002.31891.148.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul McGougan <PMcGougan@topcon.com>
Date: Tue, 13 May 2014 08:10:02 +0100
In-Reply-To: <C7589FE7B0DE58488F2B9BF79840E9D90D66FB2D@ADL-EXCHMBX1.TOPCON.com>
References: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>
	<536CE9B4.6050303@windriver.com>
	<C7589FE7B0DE58488F2B9BF79840E9D90D66F94E@ADL-EXCHMBX1.TOPCON.com>
	<53711637.7070105@gmail.com>
	<C7589FE7B0DE58488F2B9BF79840E9D90D66FB2D@ADL-EXCHMBX1.TOPCON.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question / issue
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
X-List-Received-Date: Tue, 13 May 2014 07:10:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2014-05-12 at 23:31 +0000, Paul McGougan wrote:
> > -----Original Message-----
> > From: David Nyström [mailto:david.c.nystrom@gmail.com]
>  
> > To me, Thats sound like a bug in the dependency parser.
> > It should not parse for changes in comments, i.e. in this case do_install_append
> > comments.
> > 
> > Or perhaps in variable expansion, which could be avoided in commented
> > sections.
>
> Yes, I agree that the dependency parser should be altered.
> 
> I would suggest your 2nd suggestion would be the most appropriate, i.e. do not perform variable expansion in commented lines.

Its easy to think that at a first glance.

What if the variable being expanded expands to something multiline and
some of those lines are not comments though?

Bitbake's behaviour has always been to expand variables first, then
follow with other things like execution. The dependency parsing follows
the behaviour and includes them as dependencies because of the above
multiline issue.

So rightly or wrongly, the code does at least behave consistently at the
moment and its not as easy to change as you'd first think.

I make no claims about whether multiline expansion is a good thing, just
that these issues are there and that they're hard to change as the
impact isn't always as you'd expect. The behaviour has been like this
for a long time too.

Cheers,

Richard


