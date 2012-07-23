Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99BADE00342
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 15:05:15 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Jul 2012 15:05:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="184359775"
Received: from unknown (HELO helios.localnet) ([10.252.121.58])
	by fmsmga001.fm.intel.com with ESMTP; 23 Jul 2012 15:05:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Jul 2012 23:05:11 +0100
Message-ID: <1834364.U4PpHaFIdH@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <1343066397-22369-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1343066397-22369-1-git-send-email-kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [meta-baryon][PATCH] webmin: remove use of the rename command
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
X-List-Received-Date: Mon, 23 Jul 2012 22:05:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 23 July 2012 10:59:57 Kevin Strasser wrote:
> Several webmin modules are left out of the build due to
> misuse of the rename command. Acceptable use of the rename
> command depends on the version being supplied. Without knowledge
> of the version being used it is possible that any particular
> use will result in syntax errors.
> 
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  recipes-extended/webmin/webmin_1.570.bb |    6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/recipes-extended/webmin/webmin_1.570.bb
> b/recipes-extended/webmin/webmin_1.570.bb index 63a1ed2..d7e14de 100644
> --- a/recipes-extended/webmin/webmin_1.570.bb
> +++ b/recipes-extended/webmin/webmin_1.570.bb
> @@ -53,7 +53,11 @@ do_configure() {
>      sed -i "s/netstd_nfs/nfsserver/" exports/config-generic-linux
> 
>      # Fix insane naming that causes problems at packaging time (must be
> done before deleting below) -    find . -name "*\**" -exec rename \* ALL {}
> \;
> +    find . -name "*\**" | while read from
> +    do
> +        to=`echo "$from" | sed "s/*/ALL/"`
> +        mv "$from" "$to"
> +    done
> 
>      # Remove some other files we don't need
>      find . -name "config-*" -a \! -name "config-generic-linux" -a \! -name
> "config-ALL-linux" -a \! -name "*.pl" -delete

Merged to meta-baryon master with a PR bump, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

