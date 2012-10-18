Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABDD8E003D6
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 13:10:45 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Oct 2012 13:10:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,609,1344236400"; d="scan'208";a="157819792"
Received: from unknown (HELO [10.255.13.210]) ([10.255.13.210])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Oct 2012 13:10:44 -0700
Message-ID: <50806244.4080308@linux.intel.com>
Date: Thu, 18 Oct 2012 13:10:44 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Evade Flow <evadeflow@gmail.com>
References: <011802> <1349716696-15807-1-git-send-email-evadeflow@gmail.com>
In-Reply-To: <1349716696-15807-1-git-send-email-evadeflow@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] Move 'tag=' for a few SRC_URIs to SRCREV
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
X-List-Received-Date: Thu, 18 Oct 2012 20:10:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/08/2012 10:18 AM, Evade Flow wrote:
> Sending in response to:
>
>    - http://lists.yoctoproject.org/pipermail/yocto/2012-September/011802.html
>
> Building with BB_NO_NETWORK can fail if recipes specify 'tag=' in
> SRC_URI, since bitbake must contact the source repository to verify
> which hash the tag currently points to.  Since tags can, in principle,
> change, current best practice is to omit 'tag=' from SRC_URIs and
> instead specify the required revision hash in SRCREV.
>
> SHA hashes *cannot* change, so they should not need to be checked, in
> theory; however, bitbake currently has no mechanism for distinguishing
> between human-friendly tags like 'v2.1.2' and SHA-1 sums like
> 'fdb6c0402337d9607c7a39155088eaf033742752': both will result in a call
> to `git ls-remote` to verify the tag, which is problematic for
> BB_NO_NETWORK builds.
>
> The second part of this patch was, I think, already submitted, but not
> yet applied to master[?]:
>
>    - http://lists.yoctoproject.org/pipermail/yocto/2012-September/011949.html
>
>
> Evade Flow (2):
>    Move 'tag=' to SRCREV in btrfs-tools recipe
>    Move 'tag=' to SRCREV in mtd-utils recipe

In the future, please review the Commit & Patch Message Guidelines at
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

>
>   .../btrfs-tools/btrfs-tools_git.bb                 |    3 ++-
>   meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb       |    3 ++-
>   2 files changed, 4 insertions(+), 2 deletions(-)
>

Merged into OE-Core

Thanks
	Sau!


