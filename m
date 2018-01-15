Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ADD7E00CF1; Mon, 15 Jan 2018 02:19:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 722B5E0085E;
	Mon, 15 Jan 2018 02:19:39 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jan 2018 02:19:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,363,1511856000"; d="scan'208";a="195563414"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 15 Jan 2018 02:19:37 -0800
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
References: <BY2PR02MB347697DA9F50BFD39015C3BB9EB0@BY2PR02MB347.namprd02.prod.outlook.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <1c31f6ef-4f62-1614-45a0-62b1a6c1d34b@linux.intel.com>
Date: Mon, 15 Jan 2018 12:19:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <BY2PR02MB347697DA9F50BFD39015C3BB9EB0@BY2PR02MB347.namprd02.prod.outlook.com>
Subject: Re: [OE-core] liblzma: Memory allocation failed on do_package_rpm
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
X-List-Received-Date: Mon, 15 Jan 2018 10:19:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/15/2018 08:20 AM, Manjukumar Harthikote Matha wrote:
> All,
> 
> Has anybody seen this error?
> 
> Finished binary package job, result 0, filename (null)
> error: create archive failed: cpio: write failed - Cannot allocate memory
> error: liblzma: Memory allocation failederror: liblzma: Memory allocation failedFinished binary package job, result 2,


Never seen it. You need to find the spot in the source code where the 
error message is being printed, and see what is the failing function, 
and how much memory it's being asked to allocate etc. Essentially, study 
and play with rpm source code. The starting command to do that is:

devtool modify rpm-native


Alex

