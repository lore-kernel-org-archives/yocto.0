Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7584FE00AE6; Fri,  7 Apr 2017 09:08:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB94AE0098A
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 09:08:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v37G8IC5017306
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 7 Apr 2017 09:08:18 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 7 Apr 2017 09:08:17 -0700
To: Matthew Phillips <matthew1phillips@gmail.com>, <yocto@yoctoproject.org>
References: <CAHrosF_fjd8v_L8iKSR3kt3OEBnUy_h-pArG4LvQ8dPkpUWpdQ@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <2315c13c-d4d5-0895-7423-35fc38a1a686@windriver.com>
Date: Fri, 7 Apr 2017 11:08:29 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAHrosF_fjd8v_L8iKSR3kt3OEBnUy_h-pArG4LvQ8dPkpUWpdQ@mail.gmail.com>
Subject: Re: Local repo no network help request
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
X-List-Received-Date: Fri, 07 Apr 2017 16:08:21 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 4/5/17 9:57 PM, Matthew Phillips wrote:
> Hi all,
> 
> I am trying to do the following:
> 
> I have a local git repo, pulled manually from a remote repo (via a script).
> I have a .bb file set up referencing this repo. This .bb file includes
> (among other things):
> 
>>> SRC_URI = "git://${TOPDIR}/../sources/my-repo;protocol=file;branch=master"
>>> SRCREV = "${AUTOREV}"

Check what the value of TOPDIR is in this case.  We've got layers that are doing
this exact behavior and they work properly -- but we're not using TOPDIR, we're
using ${THISDIR}, or other hard coded values that are full system paths.

A simple 'bitbake -e <recipe>' looking at SRC_URI should be able to show if you
have a full path or not.

The following is working for us:

KSRC_linux_windriver_4_8 ?= "${THISDIR}/../../git/kernel-4.8.x.git"
SRC_URI =
"git://${KSRC_linux_windriver_4_8};protocol=file;branch=${KBRANCH};name=machine"

(note this is with Morty, not master.)

--Mark

> I do not want to use the network (so BB_NO_NETWORK is 1).
> 
> Although the SRC_URI is pointing to the correct path, the yocto build
> fails because it tries to access the network.
> 
> How should I be doing this instead?
> 
> I can run a script (preferably bash atm) before the build if doing
> something pre-build will help simplify anything.
> 
> Thank you,
> M
> 


