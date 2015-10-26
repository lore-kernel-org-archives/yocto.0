Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43FC2E00B8F; Mon, 26 Oct 2015 01:06:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6266E00978
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 01:06:09 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 26 Oct 2015 01:06:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,200,1444719600"; d="scan'208";a="819415750"
Received: from randjicd-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.27.7])
	by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2015 01:06:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: jim Schimpf <jim.schimpf@gmail.com>
Date: Mon, 26 Oct 2015 08:05:57 +0000
Message-ID: <2929306.IiEL28x1yD@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <BFDFF9FD-8304-404F-829C-FB553C8BCF36@gmail.com>
References: <BFDFF9FD-8304-404F-829C-FB553C8BCF36@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Newby building recipes
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
X-List-Received-Date: Mon, 26 Oct 2015 08:06:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jim,

On Sunday 25 October 2015 14:47:49 jim Schimpf wrote:
> 	i am a new Yocto user and am attempting to create recipes for some
> 	projects
> I would like to add.  Right now the recipes get though the fetch,and
> configure stages but fail respectively at compile and install stages. Both
> are git and autoconfig type projects. Which list should I send my detailed
> questions ?

It's fine to send them to this list. If you could paste in the recipes and the 
errors you are receiving that will help.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

