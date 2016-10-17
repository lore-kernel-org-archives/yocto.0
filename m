Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7794E00A21; Mon, 17 Oct 2016 14:34:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7439DE009DA
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 14:34:54 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Oct 2016 14:34:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,358,1473145200"; d="scan'208";a="1055199366"
Received: from ssethurx-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.157.103])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2016 14:34:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Date: Tue, 18 Oct 2016 10:34:48 +1300
Message-ID: <2707323.ORKxCqrsOD@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.7-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <8a3cfb71-037b-08d2-78ba-223e85ab6ba6@windriver.com>
References: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
	<8a3cfb71-037b-08d2-78ba-223e85ab6ba6@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: General policies for CVE fixes
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
X-List-Received-Date: Mon, 17 Oct 2016 21:34:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 17 Oct 2016 15:23:55 Bruce Ashfield wrote:
> On 2016-10-17 03:11 PM, Sona Sarmadi wrote:
> > From https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance:
> > 
> > /General policies: /
> > 
> >   * /Fixes must go into master first unless they are applicable only to
> >   
> >     the stable branch; if back-porting to an older stable branch, the
> >     fix should first be applied to the newer stable branches before
> >     being back-ported to the older branch/
> > 
> > Does anyone know the reason for the policy above i.e. why fixes have to
> > go to master first?
> 
> The kernel has the same policy for -stable kernels. Speaking at a very
> high level, it simply ensures that the development of maintenance/stable
> branches does not move ahead of master in terms of fixes.
> 
> That keeps development focused on the tip, where it belongs (versus
> companies/people working in silos for an extended period of time), since
> once in master many branches can benefit from it.

Another way to think about this is what would happen if we didn't fix it in 
master first, then forgot to go back and do that? master (and the stable 
release that eventually follows from it) would potentially be left without the 
fix, so when you upgraded the vulnerability would come back.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

