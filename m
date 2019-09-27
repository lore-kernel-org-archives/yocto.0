Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6908E0084E; Fri, 27 Sep 2019 02:27:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C36BE00790
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 02:27:54 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Sep 2019 02:27:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,554,1559545200"; d="scan'208";a="189391752"
Received: from arokiasx-mobl1.gar.corp.intel.com (HELO blackadder.local)
	([10.252.54.158])
	by fmsmga008.fm.intel.com with ESMTP; 27 Sep 2019 02:27:52 -0700
To: Chuck Wolber <chuckwolber@gmail.com>,
	Rudolf J Streif <rudolf.streif@ibeeto.com>
References: <CAB=6tBRdpccrvRR9fWZW2BwTsgUgggr2KSadK4wB2kmqsaQC+g@mail.gmail.com>
	<d9a2ad4d-71a5-345e-3212-07415b6ad1c4@ibeeto.com>
	<CAB=6tBSyrroOj3pQN-ftR=O3eP6n6JRNANnYqgyg0cFve6hZiw@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <a90aeb5e-b283-a90f-03d1-0b87ab2201bc@intel.com>
Date: Fri, 27 Sep 2019 10:27:51 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAB=6tBSyrroOj3pQN-ftR=O3eP6n6JRNANnYqgyg0cFve6hZiw@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Downloading Git Archives
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
X-List-Received-Date: Fri, 27 Sep 2019 09:27:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 27/09/2019 05:33, Chuck Wolber wrote:
> I was hoping that there was an equally simple way of grabbing git 
> repository packages from an Internet connected host without having a 
> bitbake build cache them for me.

The easy way is to get bitbake to do it for you.  A git mirror tarball 
is just a clone with a specific name and path, but the easy solution is 
definitely to run bitbake --c fetchall on a machine with connectivity 
and expose the DL_DIR to the builders.

This is what the yocto autobuilder does, by the way.  The workers don't 
have connectivity to the outside internet, so the master does a fetchall 
with the proxies configured to populate DL_DIR before the workers do the 
actual build.

Ross

