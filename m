Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17FAAE00CCB; Fri,  1 Dec 2017 00:12:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0A7AE00CBF
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 00:12:04 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Dec 2017 00:12:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,344,1508828400"; d="scan'208";a="11778912"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 01 Dec 2017 00:12:02 -0800
To: Rail Shafigulin <rail@esenciatech.com>
References: <CAOLNbFYR+Y9WsUu0Cw3KLtHdDyZ_giUQO00bj==58LKZ87DAeQ@mail.gmail.com>
	<eed2b610-b2af-7ef1-de4d-c92109f1a144@linux.intel.com>
	<CAOLNbFZMaR7-zY-u0QE45PppBUQQKKv0CuarKNrru1KOn+mRqg@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <7e45414a-664c-1b6f-dcd5-1e4faea34c12@linux.intel.com>
Date: Fri, 1 Dec 2017 10:12:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAOLNbFZMaR7-zY-u0QE45PppBUQQKKv0CuarKNrru1KOn+mRqg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: dev package non-sym link
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
X-List-Received-Date: Fri, 01 Dec 2017 08:12:06 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/30/2017 11:46 PM, Rail Shafigulin wrote:
> do_install () {
>    install -d ${D}${libdir}/
>    install -m 0755 ${S}/libAnokiWave.so.1.0.1 ${D}${libdir}
>    ln -s ${D}${libdir}/libAnokiWave.so.1.0.1 ${D}${libdir}/libAnokiwave.so.1
>    ln -s ${D}${libdir}/libAnokiWave.so.1 ${D}${libdir}/libAnokiwave.so
> }

You need to call 'ln -sr', then you'll get relative symlinks. Better 
yet, add some build system support to the project (meson, cmake), then 
it'll take care of these things for you.

Alex

