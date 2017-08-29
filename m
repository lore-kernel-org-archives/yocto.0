Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D9D8E00C9F; Tue, 29 Aug 2017 01:03:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7E63E00C99
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 01:03:36 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v7T83SrB017314
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Tue, 29 Aug 2017 09:03:29 +0100
Message-ID: <1503993808.32591.312.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Raphael Kubo da Costa <raphael.kubo.da.costa@intel.com>,
	yocto@yoctoproject.org
Date: Tue, 29 Aug 2017 09:03:28 +0100
In-Reply-To: <871snzdd5s.fsf@rkubodac-desk.ger.corp.intel.com>
References: <871snzdd5s.fsf@rkubodac-desk.ger.corp.intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Tue, 29 Aug 2017 09:03:29 +0100 (BST)
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: Pyro's uninative and libstdc++ symbols
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
X-List-Received-Date: Tue, 29 Aug 2017 08:03:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-08-25 at 14:50 +0200, Raphael Kubo da Costa wrote:
> I've recently updated my host system to Fedora 26, which has GCC 7.
> 
> This seems to be causing some issues on Pyro, where I have a -native
> recipe that is built with my system's g++ and ends up generating a
> binary with the following symbol:
> 
>     0000000000000000      DF *UND*  0000000000000000  GLIBCXX_3.4.23
> std::basic_string<char, std::char_traits<char>, std::allocator<char>
> >::basic_string(std::string const&, unsigned long,
> std::allocator<char> const&)
> 
> GLIBCXX_3.4.23 is not part of Pyro's uninative's libstdc++, so when
> that
> binary is invoked in another (non-native) recipe as part of
> do_configure
> it fails to run:
> 
>     gn: /data/src/yocto/poky/build/tmp/sysroots-uninative/x86_64-
> linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.23' not found
> (required by gn)
> 
> Is there anything I should be doing differently here?

We need to update the uninative version in pyro to the more recent
version in master. uninative works on the principle that it the same
version or newer than the host system and for older releases this
ceases to be the case unless we upgrade it.

Cheers,

Richard


