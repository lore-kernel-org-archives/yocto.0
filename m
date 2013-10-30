Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD237E0175F
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 08:50:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Oct 2013 08:50:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="427137018"
Received: from unknown (HELO [10.255.12.29]) ([10.255.12.29])
	by orsmga002.jf.intel.com with ESMTP; 30 Oct 2013 08:50:36 -0700
Message-ID: <52712ACB.4010801@linux.intel.com>
Date: Wed, 30 Oct 2013 08:50:35 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Seth Bollinger <seth.boll@gmail.com>, yocto@yoctoproject.org
References: <1383135372-17294-1-git-send-email-seth.boll@gmail.com>
In-Reply-To: <1383135372-17294-1-git-send-email-seth.boll@gmail.com>
Cc: 'Patches and discussions about the oe-core layer'
	<openembedded-core@lists.openembedded.org>
Subject: Re: [Resend: PATCH] ncurses-terminfo: Remove bashism from basic terminfo installation
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
X-List-Received-Date: Wed, 30 Oct 2013 15:50:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


I have it pending in the Master under test branch, normally patches to 
the core (meta) go to the openembedded-core@lists.openembedded.org

Thanks
	Sau!


On 10/30/2013 05:16 AM, Seth Bollinger wrote:
> The vtX terminfo files aren't being copied on systems where bash isn't
> the default shell (debian, etc.).  I removed the bash specific syntax
> so the files are properly copied on these systems.
>
> Signed-off-by: Seth Bollinger <seth.boll@gmail.com>
> ---
>   meta/recipes-core/ncurses/ncurses.inc |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta/recipes-core/ncurses/ncurses.inc b/meta/recipes-core/ncurses/ncurses.inc
> index 671daf8..01cdf13 100644
> --- a/meta/recipes-core/ncurses/ncurses.inc
> +++ b/meta/recipes-core/ncurses/ncurses.inc
> @@ -174,7 +174,7 @@ shell_do_install() {
>
>           # include some basic terminfo files
>           # stolen ;) from gentoo and modified a bit
> -        for x in ansi console dumb linux rxvt screen sun vt{52,100,102,200,220} xterm-color xterm-xfree86 xterm-256color
> +        for x in ansi console dumb linux rxvt screen sun vt52 vt100 vt102 vt200 vt220 xterm-color xterm-xfree86 xterm-256color
>           do
>                   local termfile="$(find "${D}${datadir}/terminfo/" -name "${x}" 2>/dev/null)"
>                   local basedir="$(basename $(dirname "${termfile}"))"
>

