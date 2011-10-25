Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C0A7E006AC
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 11:05:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Oct 2011 11:05:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="67309454"
Received: from unknown (HELO [10.255.15.132]) ([10.255.15.132])
	by orsmga001.jf.intel.com with ESMTP; 25 Oct 2011 11:05:23 -0700
Message-ID: <4EA6FA63.8070609@linux.intel.com>
Date: Tue, 25 Oct 2011 11:05:23 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4EA529F5.4010706@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
	<4EA52E9F.9070001@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
	<4EA587D6.1090406@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com>
	<4EA6CB6F.9060304@communistcode.co.uk>
In-Reply-To: <4EA6CB6F.9060304@communistcode.co.uk>
Subject: Re: Eclipse Plugin: ADT Version too old
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Oct 2011 18:05:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 25/10/11 07:45, Jack Mitchell wrote:
> Hi Jessica,
> 
> I just did a full fresh re-build from scratch and now my environment
> variables are as follows:
> 
> http://ix.io/1Wf
> 
> My current git status is:
> 
> # On branch edision
> # Untracked files:
> #   (use "git add <file>..." to include in what will be committed)
> #
> #    ../bitbake/lib/bb/pysh/pyshtables.py
> #    ../conf/
> #    ./
> #    ../qemuarm-toolchain/
> nothing added to commit but untracked files present (use "git add" to
> track)
> 
> The environment variables are still wrong, can I manually change them, I
> understand this is bad practice but I can't develop until I fix this.

Jack,

I think Jessica is travelling to Prague for ELC-E so I say change the
environment variables manually and get on with your development. :-)

If you could file a bug against the ADT on bugzilla.yoctoproject.org I'm
sure someone will look into this.

Looks like there may be some out of sync metadata somewhere that we need
to track down.

Regards,

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

