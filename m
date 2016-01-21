Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 112BEE00AE4; Thu, 21 Jan 2016 06:26:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7FAEE00AB5
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 06:26:40 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 21 Jan 2016 06:26:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,325,1449561600"; d="scan'208";a="33610140"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga004.fm.intel.com with ESMTP; 21 Jan 2016 06:26:39 -0800
To: yocto@yoctoproject.org
References: <1453224275-7493-1-git-send-email-philip@balister.org>
	<1453224275-7493-3-git-send-email-philip@balister.org>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <56A0EA07.8050400@linux.intel.com>
Date: Thu, 21 Jan 2016 16:24:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.5.0
MIME-Version: 1.0
In-Reply-To: <1453224275-7493-3-git-send-email-philip@balister.org>
Subject: Re: [meta-qt4][PATCH 3/3] python-pyqt: Add recipe.
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
X-List-Received-Date: Thu, 21 Jan 2016 14:26:45 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2016 07:24 PM, Philip Balister wrote:
>   * Recipe copied from meta-openembedded/jethro.
>   * Used by GNU Radio.
>
> Signed-off-by: Philip Balister <philip@balister.org>

Thanks, all three pushed to meta-qt4.

Alex


