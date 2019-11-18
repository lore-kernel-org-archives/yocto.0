Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1378E0085D; Mon, 18 Nov 2019 01:47:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ED9AE00852
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 01:47:22 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Nov 2019 01:47:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,319,1569308400"; d="scan'208";a="199909860"
Received: from unknown (HELO blackadder.local) ([10.252.49.82])
	by orsmga008.jf.intel.com with ESMTP; 18 Nov 2019 01:47:20 -0800
To: yocto@yoctoproject.org
References: <CADQzoRtS-ksG19HM-i1t+dS7Z+pKP7VW+Xru7uoSCKWX9KGnHg@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <eb5fcd69-27f4-ce3f-2c89-6bf5b8b2c22f@intel.com>
Date: Mon, 18 Nov 2019 09:47:19 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CADQzoRtS-ksG19HM-i1t+dS7Z+pKP7VW+Xru7uoSCKWX9KGnHg@mail.gmail.com>
Subject: Re: Enable systemd service with parameter
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
X-List-Received-Date: Mon, 18 Nov 2019 09:47:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 17/11/2019 19:44, Mateusz Majchrzycki wrote:
> What am I doing wrong? I suppose the symlink is not a problem as 
> normally systemctl enables service with non-existent file as a parameter 
> (it fails on start, but not enabling).

The problem is that the systemd class doesn't know what to do here.  I 
thought there were patches to handle this already, what release of yocto 
are you using?

Ross

