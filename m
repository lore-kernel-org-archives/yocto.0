Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 643A3E009B1; Mon,  5 Dec 2016 12:03:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6536E0097C
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 12:03:34 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Dec 2016 12:03:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,749,1477983600"; d="scan'208";a="13958013"
Received: from achong2-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.156.113])
	by orsmga002.jf.intel.com with ESMTP; 05 Dec 2016 12:03:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Paulo Neves <ptsneves@gmail.com>
Date: Tue, 06 Dec 2016 09:03:29 +1300
Message-ID: <6923274.fGg5IdQy07@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAP71Wjw+L1C+5XrOYSMgHoCKnVu84uqf-s=ueUTEpZ=y0B9+Hg@mail.gmail.com>
References: <CAJO0J4i-G+PxwaSqZzx0ovj2g-ZMR=Uy9RSnk2b=oji1sTX5gw@mail.gmail.com>
	<CAP71Wjw+L1C+5XrOYSMgHoCKnVu84uqf-s=ueUTEpZ=y0B9+Hg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Using files from package dependencies
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
X-List-Received-Date: Mon, 05 Dec 2016 20:03:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 05 Dec 2016 09:42:42 Nicolas Dechesne wrote:
> On Mon, Dec 5, 2016 at 7:59 AM, Paulo Neves <ptsneves@gmail.com> wrote:
> > I have a recipe which depends on another package's file to do it's
> > job. How can I arbitrarily access a file from another package which my
> > recipe depends on?
> > 
> > I searched for this kind of problem but did not find it
> 
> you can't access (reliably) temporary files from another package. Each
> package is built independently in their own 'sandbox'. If files from
> one package are needed for other packages they need to be exported in
> the sysroot (through the -dev package typically).

Just to clear up a bit of confusion, packaging (e.g. the -dev package) has 
nothing to do with populating files into the sysroot, other than that files 
for each are originally pulled from the same location (i.e. files that get 
installed into ${D} during do_install). So the determining factors for a file 
going into the sysroot are (a) it has been installed into ${D} during 
do_install and (b) it has been installed under one of a list of specific paths 
as controlled by SYSROOT_DIRS.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

