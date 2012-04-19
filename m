Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CE8EE0044A
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 05:52:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3JCqYtA014031;
	Thu, 19 Apr 2012 13:52:34 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12639-09; Thu, 19 Apr 2012 13:52:29 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3JCqRCT014024
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 19 Apr 2012 13:52:28 +0100
Message-ID: <1334839951.13017.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Immanuel <josh@hipro.co.in>
Date: Thu, 19 Apr 2012 13:52:31 +0100
In-Reply-To: <1334839692.2799.61.camel@babel.joshhome>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com> <1334306723.7309.54.camel@ted>
	<1334839692.2799.61.camel@babel.joshhome>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Build time data
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Apr 2012 12:52:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-04-19 at 18:18 +0530, Joshua Immanuel wrote:
> Hello,
> 
> On Fri, 2012-04-13 at 09:45 +0100, Richard Purdie wrote:
> > There are undoubtedly ways we can improve performance but I think
> > we've done the low hanging fruit and we need some fresh ideas.
> 
> Is there a way to integrate distcc in yocto so that we could distribute
> the build across machines.

See icecream.bbclass but compiling is not the bottleneck, its configure,
install and packaging...

Cheers,

Richard


