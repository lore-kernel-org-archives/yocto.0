Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E688E008A6; Tue,  3 Feb 2015 02:40:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDDC7E0086F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 02:40:39 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Feb 2015 02:40:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,512,1418112000"; d="scan'208";a="660775737"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.17.39])
	by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2015 02:40:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ash Charles <ashcharles@gmail.com>
Date: Tue, 03 Feb 2015 10:40:33 +0000
Message-ID: <16744578.PpAB9mIkF5@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CAK8F28nZxY06hxRokjJVNOvWPLwwdgp86qu11QJa8_bOFGKw-g@mail.gmail.com>
References: <CAK8F28nZxY06hxRokjJVNOvWPLwwdgp86qu11QJa8_bOFGKw-g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Adding 'sbin' to default path
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
X-List-Received-Date: Tue, 03 Feb 2015 10:40:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ash,

On Friday 30 January 2015 10:28:21 Ash Charles wrote:
> Why does the PATH variable in the dot.bashrc shipped by the base-files
> not include 'sbin' paths?  It seems like any interactive user should
> be able to call e.g. 'ifconfig' informationally---they should, and
> would still be, blocked from calling 'ifconfig eth0 up'
> 
> After looking at the PATH for a generic user on my local Ubuntu
> system, I just added a patch to my meta layer to add the following
> line to the dot.bashrc:
> 
> export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
> 
> It seems to work well---users created with the extrauser class pull
> this default from the skel.
> 
> As this is security related though, I wanted to ask the question to
> make sure I'm not doing something silly, dangerous or otherwise
> idiotic.

I think this is largely a distro decision - some distros include the sbin 
directories to PATH for all users (e.g. Fedora), others reserve that for root 
only (e.g. Debian) on the assumption that everything in /sbin and /usr/sbin is 
intended for administration rather than normal users. I guess we are just 
picking up the default from base-files which comes from Debian.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

