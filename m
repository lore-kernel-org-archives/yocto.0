Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D896E0071C; Tue, 20 Oct 2015 02:20:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00, DATE_IN_PAST_03_06, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	*  1.6 DATE_IN_PAST_03_06 Date: is 3 to 6 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D479E006F1
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 02:20:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 20 Oct 2015 02:20:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,706,1437462000"; d="scan'208";a="830714041"
Received: from mbabyjoh-mobl.fi.intel.com ([10.237.72.71])
	by orsmga002.jf.intel.com with ESMTP; 20 Oct 2015 02:20:37 -0700
Date: Tue, 20 Oct 2015 07:34:27 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Vivek Per <pervivek@gmail.com>
Message-ID: <20151020043427.GB22526@mbabyjoh-mobl.fi.intel.com>
References: <CALLyC8QStDgKandfU3yPpkVfxtG5MVd0jTBt0Ceq1gYEOkkwBw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALLyC8QStDgKandfU3yPpkVfxtG5MVd0jTBt0Ceq1gYEOkkwBw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: How can i install shutil.py in rootfs
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
X-List-Received-Date: Tue, 20 Oct 2015 09:20:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Vivek,

On Tue, Oct 20, 2015 at 02:38:36PM +0530, Vivek Per wrote:
> hi,
> How can i install shutil.py in roofs.  I need this file for audit2allow. 
> In rootfs remaining .py files are including  /usr/share/python-support/ 
> but not shutil.py. i want to include this file in rootfs how can i install this?

You need to install "python-shell" in your image for shutil.py

ie: 
IMAGE_INSTALL_append = " python-shell" in local.conf and build again.

Best Regards,
Maxin

