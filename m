Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F180E00C78; Fri,  1 Sep 2017 14:44:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EC93E007EF
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 14:44:42 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v81LiZdg021441
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Fri, 1 Sep 2017 22:44:37 +0100
Message-ID: <1504302275.2175.68.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: akuster <akuster@mvista.com>, Raphael Kubo da Costa
	<raphael.kubo.da.costa@intel.com>, yocto@yoctoproject.org
Date: Fri, 01 Sep 2017 22:44:35 +0100
In-Reply-To: <80c1ed48-344a-41e6-f8e8-274b88a08711@mvista.com>
References: <871snzdd5s.fsf@rkubodac-desk.ger.corp.intel.com>
	<1503993808.32591.312.camel@linuxfoundation.org>
	<80c1ed48-344a-41e6-f8e8-274b88a08711@mvista.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Fri, 01 Sep 2017 22:44:37 +0100 (BST)
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
X-List-Received-Date: Fri, 01 Sep 2017 21:44:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-09-01 at 12:14 -0700, akuster wrote:
> 
> On 08/29/2017 01:03 AM, Richard Purdie wrote:
> > 
> > On Fri, 2017-08-25 at 14:50 +0200, Raphael Kubo da Costa wrote:
> > > 
> > > I've recently updated my host system to Fedora 26, which has GCC
> > > 7.
> > > 
> > > This seems to be causing some issues on Pyro, where I have a
> > > -native
> > > recipe that is built with my system's g++ and ends up generating
> > > a
> > > binary with the following symbol:
> > > 
> > >      0000000000000000      DF
> > > *UND*  0000000000000000  GLIBCXX_3.4.23
> > > std::basic_string<char, std::char_traits<char>,
> > > std::allocator<char>
> > > > 
> > > > ::basic_string(std::string const&, unsigned long,
> > > std::allocator<char> const&)
> > > 
> > > GLIBCXX_3.4.23 is not part of Pyro's uninative's libstdc++, so
> > > when
> > > that
> > > binary is invoked in another (non-native) recipe as part of
> > > do_configure
> > > it fails to run:
> > > 
> > >      gn: /data/src/yocto/poky/build/tmp/sysroots-
> > > uninative/x86_64-
> > > linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.23' not found
> > > (required by gn)
> > > 
> > > Is there anything I should be doing differently here?
> > We need to update the uninative version in pyro to the more recent
> is this action just a straight forward backport from Master?

Yes, should be...

Cheers,

Richard


