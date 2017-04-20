Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29C8EE00AF0; Wed, 19 Apr 2017 21:20:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 638AEE00AE0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 21:20:18 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP; 19 Apr 2017 21:20:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,223,1488873600"; d="scan'208";a="959003360"
Received: from sitinura-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.137.15])
	by orsmga003.jf.intel.com with ESMTP; 19 Apr 2017 21:20:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Apr 2017 16:20:14 +1200
Message-ID: <2716874.smAeZZESSB@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <20170419225019.GA20421@natasha2.familycom.org>
References: <20170419225019.GA20421@natasha2.familycom.org>
MIME-Version: 1.0
Subject: Re: devtool and adding specific tag from repo
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
X-List-Received-Date: Thu, 20 Apr 2017 04:20:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 20 April 2017 10:50:19 AM NZST Brian Kurle wrote:
> I'm trying to get up to speed on devtool.
> 
> I've created a generic eSDK (poky and meta-openembedded) and installed it.
> 
> From there, I'm trying to create a new recipe, but I apparently am not
> executing it correctly to pull the desired tag.
> 
> If I execute:
> 
> devtool add --version 2.4.2 mbedtls git@github.com:ARMmbed/mbedtls.git
> 
> or
> 
> devtool add --version 2.4.2 mbedtls
> git@github.com:ARMmbed/mbedtls.git;tag=mbedtls-2.4.2
> 
> or
> 
> devtool add --version mbedtls-2.4.2 mbedtls
> git@github.com:ARMmbed/mbedtls.git
> 
> It still manages to get the wrong hash (not even the right branch).
> 
> Is this a limitation of devtool, or is a better way to do this?
> (E.g., just go to the sources directory, check it out and manually update
> the recipe?)
> 
> My goal is to set up a stock recipe off of the mbedtls-2.4.2 tag,
> where I'll then create a bbappend to add additional patches and
> configuration specific for our platform.  I could do it manually, but it
> would be nice to know how to do it "the right way" for the documentation
> I'll pass to others on my team.
> 
> Guidance and correction would be most appreciated.

For everyone's benefit, FYI Brian and I have talked offline, but there
are several bugs and opportunities for improvement here as it turns out.
I have filed the following bugs:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=11389
https://bugzilla.yoctoproject.org/show_bug.cgi?id=11390
https://bugzilla.yoctoproject.org/show_bug.cgi?id=11391
https://bugzilla.yoctoproject.org/show_bug.cgi?id=11393
https://bugzilla.yoctoproject.org/show_bug.cgi?id=11392

The current workaround for this particular example is to use this:

devtool add --version 2.4.2 mbedtls "git://github.com/ARMmbed/mbedtls;branch=mbedtls-2.4;rev=mbedtls-2.4.2"

By using the default git protocol rather than ssh, we avoid having to use
git@ which avoids triggering 11390 or 11391. Also worth noting is that
you must use quotes around the URL if you're specifying a revision
and/or branch because of the ; character, otherwise your shell will eat
that part and because something=value is a valid shell command you
won't get an error. It could be that we need to provide additional explicit
command-line options for specifying the branch/tag/revision to avoid that,
I'm not sure if there's another practical way - suggestions welcome.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

