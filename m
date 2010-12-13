Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0698E4C810AC
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 13:12:27 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Dec 2010 11:12:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,337,1288594800"; d="scan'208";a="867716678"
Received: from unknown (HELO [10.24.5.122]) ([10.24.5.122])
	by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2010 11:12:27 -0800
Message-ID: <4D06701B.807@linux.intel.com>
Date: Mon, 13 Dec 2010 11:12:27 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <cover.1292242072.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1292242072.git.lianhao.lu@intel.com>
Subject: Re: [PATCH 0/1] bug#565: adding environment files
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
X-List-Received-Date: Mon, 13 Dec 2010 19:12:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/13/2010 04:07 AM, Lianhao Lu wrote:
> I rebased the previous patch of adding package of environment files to
> be compatible with the new cross-canadian.bbclass
>
Lianhao,

This may require Richard to look at a little more closely, I do notice 
that you are missing the LIC_FILES_CHKSUM, for this on you can use one 
similar to recipes-core/tasks/task-base.bb

The first line of the commit message synopsis needs to be more 
descriptive, and the bug id needs to be in the commit message so that we 
can parse it out later.

Synopsis is normally
<recipe | file> : Synopsis

Example:
meta-environment: Added package of meta-environment-${TARGET_ARCH} for 
environment files.

In the body of the commit message you can add the bug id according to 
this format:

[BUGID# NNN], where NNN is the bugid

Please fix these issues and resubmit, also you should use the 
poky@yoctoproject.org for bug submissions.

Sau!

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: llu/bug565
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug565
>
> Thanks,
>      Lianhao Lu<lianhao.lu@intel.com>
> ---
>
>
> Lianhao Lu (1):
>    Fix bug #565.
>
>   meta/classes/toolchain-scripts.bbclass         |   32 ++++++++++
>   meta/recipes-core/meta/meta-environment.bb     |   74 ++++++++++++++++++++++++
>   meta/recipes-core/tasks/task-cross-canadian.bb |    1 +
>   3 files changed, 107 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-core/meta/meta-environment.bb
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


