Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A281E013AE
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 04:33:19 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id F083FF811EE; Mon, 22 Jul 2013 05:33:18 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1F51DF811E2;
	Mon, 22 Jul 2013 05:33:17 -0600 (MDT)
Message-ID: <51ED1883.90905@mlbassoc.com>
Date: Mon, 22 Jul 2013 05:33:23 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Problems building different versions of perl
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
X-List-Received-Date: Mon, 22 Jul 2013 11:33:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

In an effort to understand my problem (code built using Poky/Yocto doesn't
run but the same code built natively on a BeagleBoneBlack running Angstrom does),
I want to try a previous version of perl.  I picked up the recipes from the
Poky/Yocto tree rev 51cbb5ae7 (5.14.2-r12) and put them in one of my local layers.
I also set local.conf to have PREFERRED_VERSION_perl = "5.14.2"

Now I'm getting these errors:

NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 5.14.2 of perl not available (for item perl-module-strict)
NOTE: versions of perl available: 5.14.3
NOTE: preferred version 5.14.2 of perl not available (for item perl-module-vars)
NOTE: versions of perl available: 5.14.3
NOTE: preferred version 5.14.2 of perl not available (for item perl-module-config)
NOTE: versions of perl available: 5.14.3
NOTE: preferred version 5.14.2 of perl not available (for item perl-module-warnings)
NOTE: versions of perl available: 5.14.3
NOTE: Preparing runqueue
ERROR: Multiple .bb files are due to be built which each provide perl (/home/local/poky-multi/meta-amltd/recipes-devtools/perl/perl_5.14.2.bb 
/home/local/poky-multi/meta/recipes-devtools/perl/perl_5.14.3.bb).
  This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide libmodule-build-perl (/home/local/poky-multi/meta-amltd/recipes-devtools/perl/perl_5.14.2.bb 
/home/local/poky-multi/meta/recipes-devtools/perl/perl_5.14.3.bb).
  This usually means one provides something the other doesn't and should.

I don't see how I can be told on one line that 5.14.2 isn't available
but on the next that it will also be built :-(

The odd thing is that this process worked ONCE.  I was able to build using
5.14.2 with no errors.  I tried some stuff on my board and then needed to
see how 5.14.3 behaved.  Now when I want to go back to 5.14.2, I'm stuck
with these errors and bitbake insists on using 5.14.3.  I'm trying to go
back to 5.14.2-r12 because that's the version that's on the BBB,

How can I move forward?

Thanks

Note: my original problem is described in https://lists.yoctoproject.org/pipermail/yocto/2013-July/017297.html
but there hasn't been any discussion or replies...
-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

