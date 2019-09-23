Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 272B1E00EC5; Mon, 23 Sep 2019 07:48:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20E7FE00EE3
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 07:47:49 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Sep 2019 07:47:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,540,1559545200"; d="scan'208";a="188162432"
Received: from creinhar-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.39.119])
	by fmsmga008.fm.intel.com with ESMTP; 23 Sep 2019 07:47:45 -0700
To: yocto@yoctoproject.org
References: <CAPYaOESu8_cWhgc7wbao4DP8otZ2B9qn7Wk1qpceQc8XGZzSfg@mail.gmail.com>
	<CAD5=o+pK46i8L4+zVtHiC2j8cjJ_Kv1RgXQ5d_Uro+M6-0NDKw@mail.gmail.com>
	<CAPYaOEQ0+EbiGNd4W3iKrZCRU7z2PtiAW1M2Hz36wFCpAoimfg@mail.gmail.com>
	<CAD5=o+p_ZKTKMWfnXOQG61KJoFq1EtNkCS1U1T7=64O1N+2X-A@mail.gmail.com>
	<CAPYaOETvWTnOuywerQeQG8G2siAhzDzegz5CrwdS7CfkwpfUsw@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <e5aadb9d-6616-ecf2-dd61-6547da2580e2@intel.com>
Date: Mon, 23 Sep 2019 15:47:44 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAPYaOETvWTnOuywerQeQG8G2siAhzDzegz5CrwdS7CfkwpfUsw@mail.gmail.com>
Subject: Re: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Mon, 23 Sep 2019 14:49:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 23/09/2019 15:26, Jean-Baptiste MARIE wrote:
> Indeed wayland is enabled in my distro features, so my question is more: 
> is there any reason to remove x11 from package config when "wayland" is 
> enabled as a distro feature (but maybe it is no longer a question to be 
> addressed ot yocto community)? As Ross mentioned, there can both be built.

That's a question for the maintainers of your BSP, they did that for a 
reason.  Plain oe-core will enable both if the DISTRO has both x11 and 
wayland enabled.

Ross

