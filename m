Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AB82E00805; Tue, 24 Sep 2019 03:28:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A227CE00805
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 03:28:22 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Sep 2019 03:28:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="195655313"
Received: from creinhar-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.39.119])
	by FMSMGA003.fm.intel.com with ESMTP; 24 Sep 2019 03:28:21 -0700
To: yocto@yoctoproject.org
References: <CA+FhBv_p+063N=qs0Wzo32z1L_evbfP2FEntO=iNMGCwxZ0HSQ@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <3df198f7-193d-961c-621c-9e1aabc62e72@intel.com>
Date: Tue, 24 Sep 2019 11:28:19 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+FhBv_p+063N=qs0Wzo32z1L_evbfP2FEntO=iNMGCwxZ0HSQ@mail.gmail.com>
Subject: Re: Nothing PROVIDES 'python3-dev'
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
X-List-Received-Date: Tue, 24 Sep 2019 10:28:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 24/09/2019 10:36, Damien LEFEVRE wrote:
> Hi,
> 
> Migrating from poky:pyro to poky:warrior.
> 
> It looks like the python3-dev package is generated from 
> python3-manifest.json:
> 
>      "dev": {
>          "cached": [],
>          "files": [
>              "${base_libdir}/*.a",
>              "${base_libdir}/*.o",
>              "${bindir}/python*-config",
>              "${datadir}/aclocal",
>              "${datadir}/pkgconfig",
>              "${includedir}",
>              "${libdir}/*.a",
>              "${libdir}/*.la",
>              "${libdir}/*.o",
>              "${libdir}/lib*${SOLIBSDEV}",
>              "${libdir}/pkgconfig"
>          ],
>          "rdepends": [
>              "core"
>          ],
>          "summary": "Python development package"
>      },
> 
> and this is used in python3_3.7.2.bb <http://python3_3.7.2.bb>.
> 
> Still I get this error: Nothing PROVIDES 'python3-dev'

Are you trying to 'bitbake python3-dev'?  You bitbake a recipe, not a 
package, so 'bitbake python3'.

Ross

