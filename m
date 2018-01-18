Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E4A9E00E10; Thu, 18 Jan 2018 03:03:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B435BE0085E
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 03:03:37 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jan 2018 03:03:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,377,1511856000"; d="scan'208";a="20739943"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 18 Jan 2018 03:03:36 -0800
To: Martin Jansa <martin.jansa@gmail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
	<CA+chaQdV65g_JiV9kzbaF7e-O7cx6LxkJ7eY9J_tOP3PuHN06w@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <87a476bd-ac29-f941-5943-3db45ec5d53b@linux.intel.com>
Date: Thu, 18 Jan 2018 12:57:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CA+chaQdV65g_JiV9kzbaF7e-O7cx6LxkJ7eY9J_tOP3PuHN06w@mail.gmail.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Thu, 18 Jan 2018 11:03:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/18/2018 12:00 PM, Martin Jansa wrote:
> FWIW: here nativesdk-libepoxy fails in do_configure already since meson 
> conversion
> 
> FileNotFoundError: [Errno 2] No such file or directory: 
> 'TOPDIR/tmp-glibc/work/x86_64-nativesdk-oesdk-linux/nativesdk-libepoxy/1.4.3-r0/build/meson-private/sanitycheckc.exe'
> 
> http://errors.yoctoproject.org/Errors/Details/164799/
> 
> libepoxy in master doesn't support nativesdk yet (it's part of my 
> changes to support virtglrenderer and spice in qemu). Is there some 
> magic combination of settings meson needs to work for nativesdk?

I don't know. There's an ongoing discussion in oe-core around this problem.

Alex

