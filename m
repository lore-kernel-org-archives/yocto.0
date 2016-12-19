Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9128E00D81; Mon, 19 Dec 2016 05:41:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78941E00D44
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 05:41:45 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga104.fm.intel.com with ESMTP; 19 Dec 2016 05:41:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,373,1477983600"; d="scan'208";a="41494649"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 19 Dec 2016 05:41:44 -0800
To: yocto@yoctoproject.org
References: <CA+pXca0z1fZbtrcwiNgcrTyhaNvA=8dGeXxifBoRR4cjQPN=9Q@mail.gmail.com>
	<CA+pXca0yBs9h93QTPtrszpRonj9hwvfNruMn1uk6EvXcwqZ5OA@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <25d33f10-e79c-1a60-5dac-a40bb647c1a7@linux.intel.com>
Date: Mon, 19 Dec 2016 15:41:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <CA+pXca0yBs9h93QTPtrszpRonj9hwvfNruMn1uk6EvXcwqZ5OA@mail.gmail.com>
Subject: Re: error while compiling hello_2.7.bb
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
X-List-Received-Date: Mon, 19 Dec 2016 13:41:53 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/19/2016 02:42 PM, praveen vattipalli wrote:
> I have hello_2.7.bb <http://hello_2.7.bb> file which contains as below
> vim hello_2.7.bb <http://hello_2.7.bb>
> DESCRIPTION = "GNU Helloworld application"
> SECTION = "test"
> LICENSE = "BSD"
>
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb234cb"
> SRC_DIR ?=
> "/home/rajesh/poky-krogoth-15.0.2/meta/recipes-support/hello/hello_2.7"
> SRC_URI = "file://${SRC_DIR}"
>
> S = "${SRC_DIR}"
>
> do_compile (){
>         make prog
> }

You probably need to use externalsrc facility:
http://www.yoctoproject.org/docs/2.2/dev-manual/dev-manual.html#building-software-from-an-external-source

Alex

