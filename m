Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D07CCE00B28; Thu, 18 May 2017 05:42:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66E51E00AE4
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 05:42:51 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga104.jf.intel.com with ESMTP; 18 May 2017 05:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,359,1491289200"; d="scan'208";a="103946853"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 18 May 2017 05:42:50 -0700
To: yocto@yoctoproject.org, Alan Levy <alan.levy@plextek.com>
References: <c8acbe0804cf48b589fc0672c23fcf93@PLEXTEK-EXCH1.plextek.lan>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b1947a14-10dd-ab29-9d60-fe9c000e7f11@linux.intel.com>
Date: Thu, 18 May 2017 15:40:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <c8acbe0804cf48b589fc0672c23fcf93@PLEXTEK-EXCH1.plextek.lan>
Subject: Re: Problem using Subversion in Pyro
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
X-List-Received-Date: Thu, 18 May 2017 12:42:52 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/18/2017 02:40 PM, Alan Levy wrote:
> I have a recipe that fetches code from an SVN repository and uses
> ${SRCPV} to obtain its version number. This works fine under Morty but
> the recipe crashes out with an error under Pyro because it can’t find
> the SVN executable.
>
>
>
> Eventually I traced this down to the fact that SVN is missing from the
> list of host apps defined in HOSTTOOLS in bitbake.conf. If I add an
> assignment in local.conf to append svn to HOSTTOOLS all is well again.
>
>
>
> I think that this is almost certainly a bug but I thought I’d raise the
> question here just in case it’s really me doing something wrong.

There is a subversion recipe in oe-core, and it should be built (in the 
native variant) specifically for this purpose (base.bbclass):

         # Svn packages should DEPEND on subversion-native
         if scheme == "svn":
             needsrcrev = True
             d.appendVarFlag('do_fetch', 'depends', ' 
subversion-native:do_populate_sysroot')

BUT... we no longer have recipes in oe-core that fetch from svn:// so it 
does not get tested, and may well have regressed.

Can you check if it does get build, and whether the subversion binary 
gets installed into your recipe's sysroot?

Alex


