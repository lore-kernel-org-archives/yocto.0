Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17CA0E008A6; Tue,  3 Feb 2015 02:30:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55424E0086F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 02:29:56 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 03 Feb 2015 02:29:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,512,1418112000"; d="scan'208";a="680140745"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.17.39])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2015 02:29:54 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Stath, Paul" <PStath@axxcelera.com>
Date: Tue, 03 Feb 2015 10:29:53 +0000
Message-ID: <4213811.ruhvpkvx6k@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <5B5D636C5F0AA747B37D0EFC72B563C42D606583@RIC-MS02.MWSG.int>
References: <5B5D636C5F0AA747B37D0EFC72B563C42D606583@RIC-MS02.MWSG.int>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Unset task_name[noexec] in bbappend
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
X-List-Received-Date: Tue, 03 Feb 2015 10:30:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Paul,

On Monday 02 February 2015 19:51:15 Stath, Paul wrote:
> If there any way in the bbappend file to override <task_name>[noexec] = "1"
> specified in the parent .bb file?
> 
> I want to extend the package-index task, and need to fetch a couple of
> configuration files. The package-index.bb task contains do_fetch[noexec] =
> "1", so the fetch is not performed.

This is a little tricky - you need to actually delete the varflag not just 
unset it. (You'll almost certainly need to do the same for do_unpack so that 
the files end up in the workdir as well.) You can do this from an anonymous 
python section within the recipe e.g.:

python __anonymous() {
    d.delVarFlag('do_fetch', 'noexec')
    d.delVarFlag('do_unpack', 'noexec')
}

(I'm not sure what you're doing this for, but in case it's not obvious, bear 
mind this will only affect explicit calls to bitbake package-index and won't be 
automatically incorporated into the indexes created when building images.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

