Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8473BE0070B
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 07:50:55 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q5IEonsa005734
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 18 Jun 2012 16:50:49 +0200
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q5IEolVL005720;
	Mon, 18 Jun 2012 16:50:47 +0200
Date: Mon, 18 Jun 2012 16:50:47 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: Fredrik Hugosson <fredrik.hugosson@axis.com>
Message-ID: <20120618145047.GB1646@giant>
References: <20120614132601.GB29124@giant> <1340019794.8481.10.camel@ted>
	<4FDF2766.7000309@axis.com>
MIME-Version: 1.0
In-Reply-To: <4FDF2766.7000309@axis.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Discussion: Package testing
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
X-List-Received-Date: Mon, 18 Jun 2012 14:50:56 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Fredrik Hugosson wrote:
> I think you both might be missing some cases here. The problem is
> that 'make check' does not have a standardized meaning.

Even if there was a standardized meaning to "make check", there are lots of packages that use completely differents systems for their building and testing. Hence there is no generic solution, we have to adapt each individual package manually.

> 1) Function test level with testing run on target, package cross-compiled
> 2) Function test level with testing run on host, package cross-compiled
> 3) Function test level with testing run on host, package compiled for host
> 4) Unit test level with testing run on target, package cross-compiled
> 5) Unit test level with testing run on host, package compiled for host

Our proposal is focused on testing the target binaries on the target, in an attempt to limit complexity. Testing -native and -nativesdk packages is therefore outside this scope.

> Would be very nice for functional tests, but it will not be so
> simple for unit testing. For unit tests I belive you need some build
> target too, which leads back to the comment above.

Yes, this proposal only works for tests that run on a single machine. But from what I have seen so far, that covers the vast majority of included package tests. Do you have examples to the contrary?

There will certainly be room and need for other catergories of tests, which is one reason I've used the specific "ptest" moniker for this. This is not intended to be a covers-all-bases test solution. It's just one part.

-- 
Björn

