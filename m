Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CED5E00B3E; Thu, 18 May 2017 06:16:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 723E5E00B28
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 06:16:22 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 May 2017 06:16:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,359,1491289200"; d="scan'208";a="858561011"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 18 May 2017 06:16:21 -0700
To: Alan Levy <alan.levy@plextek.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <c8acbe0804cf48b589fc0672c23fcf93@PLEXTEK-EXCH1.plextek.lan>
	<b1947a14-10dd-ab29-9d60-fe9c000e7f11@linux.intel.com>
	<d0183f1a9e3742bc9dfca1a0b7a300b6@PLEXTEK-EXCH1.plextek.lan>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <026d9904-42bf-3314-24c9-dff2acc317cb@linux.intel.com>
Date: Thu, 18 May 2017 16:14:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <d0183f1a9e3742bc9dfca1a0b7a300b6@PLEXTEK-EXCH1.plextek.lan>
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
X-List-Received-Date: Thu, 18 May 2017 13:16:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/18/2017 04:04 PM, Alan Levy wrote:
> It does get built, and it apparently does get used to do the actual
> fetching, just not for miscellaneous functions such as populating
> SRCREV which rely on the svn executable being on the PATH. This
> appears to be deliberate since there is a FETCHCMD_svn variable in
> bitbake.conf. The simplest way for me to force an svn executable onto
> PATH was to add it to HOSTTOOLS but that may not be what is really
> intended.

SRCREV is supposed to be hardcoded in the recipe. What is the reason you 
need to use svn to set it? Can you show how it's specifically done in 
your recipe?


Alex

