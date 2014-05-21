Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8B25E00B88; Wed, 21 May 2014 13:30:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from dan.rpsys.net (unknown [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39D2CE0077C
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 13:30:37 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s4LKUNCk004939; Wed, 21 May 2014 21:30:24 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Kx9IMyk6bI3o; Wed, 21 May 2014 21:30:23 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s4LKUHW1004936
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Wed, 21 May 2014 21:30:19 +0100
Message-ID: <1400704210.17834.9.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 May 2014 21:30:10 +0100
In-Reply-To: <CAJTo0La6PT=gUpvp+Fsh1QpOx1H147HgiVT4nmCrKvLFRroiEA@mail.gmail.com>
References: <CAPhnLPAoA+z4OfO_HXVNOmbVk9cXcbOEtMZOhzYZbfMqw_9g=Q@mail.gmail.com>
	<CAJTo0La6PT=gUpvp+Fsh1QpOx1H147HgiVT4nmCrKvLFRroiEA@mail.gmail.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing size of the weekly build
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
X-List-Received-Date: Wed, 21 May 2014 20:30:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2014-05-21 at 19:58 +0100, Burton, Ross wrote:
> On 21 May 2014 17:22, Flanagan, Elizabeth <elizabeth.flanagan@intel.com> wrote:
> > One thing I'm thinking of and I want some feedback here is setting the
> > package type on the main builds to just ipk and running a special
> > deb/rpm test being to ensure those package types are functional. This
> > should give us a bit of a speed increase for build times, without
> > introducing too much risk. Thoughts?
> 
> The reduced coverage is something to consider, but if the other builds
> were world and also built images then the reduction shouldn't be too
> bad.  I wonder what the speed difference between ipk and ipkg+rpm is:
> this is probably worth measuring.

We do need to be careful about coverage here. We have seen bugs where
things failed in deb or rpm but not ipk and maybe only on some
architectures.

I'm fine with being more selective about what we publish however in the
builds it may be worth leaving this enabled.

Cheers,

Richard


