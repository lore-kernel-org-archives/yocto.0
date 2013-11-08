Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86FFAE01830
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2013 02:26:53 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Nov 2013 02:23:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="405524349"
Received: from unknown (HELO helios.localnet) ([10.252.121.71])
	by orsmga001.jf.intel.com with ESMTP; 08 Nov 2013 02:26:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Dilip Kumar <008dilip@gmail.com>
Date: Fri, 08 Nov 2013 10:26:50 +0000
Message-ID: <3266718.IQu0dQtgCC@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CABmxB3ME=E5FzYqs-fW5k8Bx3VT_Jk8wLi_kzoGzSCUe3dhnng@mail.gmail.com>
References: <CABmxB3ME=E5FzYqs-fW5k8Bx3VT_Jk8wLi_kzoGzSCUe3dhnng@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto test tools for performance and stability
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
X-List-Received-Date: Fri, 08 Nov 2013 10:26:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Dilip,

On Thursday 07 November 2013 11:22:22 Dilip Kumar wrote:
> May I know the list of Yocto provided test tools for performance and
> stability and how enable and use the test tools

For the 1.5 (dora) release we have added automated runtime testing (on
top of QEMU only for now):

 http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#performing-automated-runtime-testing

We have a number of planned enhancements in this area. There are enhancement
bugs open for each one:

 https://bugzilla.yoctoproject.org/buglist.cgi?product=Automated%20Runtime%20Testing&component=automated-runtime-testing&resolution=---&list_id=125679

We are also planning to extend testing of the build system itself:

 https://bugzilla.yoctoproject.org/buglist.cgi?product=Automated%20Build%20Testing&component=automated-build-testing&resolution=---&list_id=125677

We currently track build performance by running a script on a regular basis,
see here for details:

 https://wiki.yoctoproject.org/wiki/Performance_Test

We don't currently track runtime performance, but there are enhancement bugs
open for that:

 https://bugzilla.yoctoproject.org/show_bug.cgi?id=4144
 https://bugzilla.yoctoproject.org/show_bug.cgi?id=4528

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

