Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE361E003FA; Wed, 25 Feb 2015 15:45:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BCD9E003A8
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 15:45:41 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 25 Feb 2015 15:41:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,648,1418112000"; d="scan'208";a="459608370"
Received: from unknown (HELO [10.219.4.171]) ([10.219.4.171])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Feb 2015 15:30:08 -0800
Message-ID: <54EE5EAC.6050901@linux.intel.com>
Date: Wed, 25 Feb 2015 17:45:48 -0600
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Recipe reporting system Announcement
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
X-List-Received-Date: Wed, 25 Feb 2015 23:45:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

I'm glad to announce the available of the Recipe reporting system 
(a.k.a, RRS) [1].

The RRS publish the status of Recipes for Openembedded-core (meta) 
layer, the status means:
who maintains the Recipe?, what other Linux distribution contains the 
Package, list of upgrades
of a Recipe, upstream version of the Recipe and Milestone statics about 
package upgrades, details [2].


The RRS design specification can be found at Bugzilla [3] and the source 
code is available [4].

Special mention to,
     Belen Barros Pena for did the design of the RRS [3].
     Saul Wold for supporting the development direction.
     Michael Halstead for help in production setup.
     Paul Eggleton for make the Layerindex app that servers as base of RRS.

Contact me for any issue.

Best regards,
     alimon

[1] http://packages.yoctoproject.org/
[2] http://packages.yoctoproject.org/rrs/about/
[3] https://bugzilla.yoctoproject.org/show_bug.cgi?id=6273
[4] 
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=alimon/RRS

