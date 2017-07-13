Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2255DE00AE6; Thu, 13 Jul 2017 02:31:05 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABE45E00944
	for <yocto@yoctoproject.org>; Thu, 13 Jul 2017 02:31:01 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jul 2017 02:30:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,353,1496127600"; d="scan'208";a="107687139"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.13.32])
	by orsmga004.jf.intel.com with ESMTP; 13 Jul 2017 02:30:42 -0700
Message-ID: <1499938241.3633.8.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Andreas Fenkart <afenkart@gmail.com>, yocto@yoctoproject.org
Date: Thu, 13 Jul 2017 10:30:41 +0100
In-Reply-To: <CALtMJEAHnhZJBRsAwm6KHdahp59Wy8PD+O8F3JKDNN3gJCbfgA@mail.gmail.com>
References: <CALtMJEAHnhZJBRsAwm6KHdahp59Wy8PD+O8F3JKDNN3gJCbfgA@mail.gmail.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: sstate cache not used when adding custom task
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
X-List-Received-Date: Thu, 13 Jul 2017 09:31:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-07-13 at 10:52 +0200, Andreas Fenkart wrote:
> Hi,
> 
> A custom task in a bbclass causes all recipes including it to be
> rebuilt every time. Link to full bbclass attached below.
> 
> I already stripped that task down to this
> 
> 
>     addtask check after do_compile before do_build
>     addons_do_check() {
>         :
>     }
> 
> If I remove the addtask line, the recipe is not rerun:

The shared state machinery doesn't know how to capture your task. There
are some guidelines on adding shared state wrapping to a task in the
Yocto Project reference manual Shared State Cache section:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#shar
ed-state-cache
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#shar
ed-state

Joshua

> $ bitbake recipe_name
> NOTE: Tasks Summary: Attempted 2746 tasks of which 2746 didn't need
> to
> be rerun and all succeeded.
> 
> With the 'addtask check' all task of the recipe from fetch till
> rm_work_all is executed every time.
> 
> From the cooker log, do_populate_sysroot is the last task running
> before do_build was, hence I changed the addtask line to this:
> addtask check after do_populate_sysroot before do_build
> 
> Then the recipe will not start from do_fetch on rerun, but will
> reuse the previous do_populate_sysroot run. Hence only the last 4
> tasks are run (do_check, do_build, do_rm_work, do_rm_work_all)
> 
> I experimented with bitbake-diffsig/bitbake-dumpsig, but the hash
> of the stamp files (do_check) are identical on each run, of
> course its content too. Only the timestamp of the stamp file
> changes each run.
> I'm confused what triggers the rebuild. I looked into bitbake
> trying to understand how the task dependency is calculated, how
> the sstate files are used. But it's quite a biest and will take
> me quite some time to understand.
> 
> Any hints or regarding the issue or simply where to put a print
> in bitbake to get me started was welcome.
> 
> This is still yocto 2.0.2 as we missed a couple of upgrades.
> 
> The full bbclass with the do_check task
> https://git.digitalstrom.org/dss-oe/dss-oe/blob/master/yocto/dS/meta-
> digitalstrom-devel/classes/addons.bbclass#L46
> 
> /Andreas

