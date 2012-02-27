Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8E1CE0074A
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 08:19:37 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1RGJYEF030221;
	Mon, 27 Feb 2012 16:19:34 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30061-03; Mon, 27 Feb 2012 16:19:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1RGJPAq030215
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 27 Feb 2012 16:19:26 GMT
Message-ID: <1330359567.4593.29.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Date: Mon, 27 Feb 2012 16:19:27 +0000
In-Reply-To: <1330350708.4803.15.camel@dongxiao-osel>
References: <1330350708.4803.15.camel@dongxiao-osel>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: One question about taskdata and runqueue
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
X-List-Received-Date: Mon, 27 Feb 2012 16:19:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-02-27 at 21:51 +0800, Xu, Dongxiao wrote:
> Hi list,
> 
> If I have two recipes, see following. Both of them provides
> "virtual/test" and has package named "test-test", the only difference is
> the RDEPENDS of the package "test-test".
> 
> test-a_1.0.bb
> 
> PROVIDES = "virtual/test"
> PACKAGES = "test-test"
> # Assume that the abcd package are provided by recipe abcd.bb
> RDEPENDS_test-test = "abcd"
> 
> 
> test-b_1.0.bb
> 
> PROVIDES = "virtual/test"
> PACKAGES = "test-test"
> 
> In a certain configuration file, we have the PREFERRED_PROVIDER set as:
> PREFERRED_PROVIDER_virtual/test = "test-a".
> 
> Then if a real recipe, for example, the 'v86d', depends on the
> "virtual/test":
> DEPENDS = "virtual/test"
> 
> Finally if I run the following command:
> # bitbake v86d
> 
> We know that the recipe "abcd" will be included in the runqueue.
> 
> My question is, can we get the build dependency to recipe "abcd" through
> taskdata? Or it is finalized until we create the RunQueue object?

task data should have a list of providers for "virtual/test", sorted in
priority order. There should be two entries in that list, one for test-a
and test-b. Since you set the preferred provider, you should have test-a
as the first item.

Once you resolve it to a recipe file, you should be able to look at the
recipe file's dependencies in dataCache.

The trouble is you're now resolving all the dependencies in the code I
think you're referring to. This was in general the job of
prepare_runqueue() and I'm starting to worry you're duplicating its
functionality.

Cheers,

Richard


