Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEDB3E0034D
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 16:07:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Jul 2012 16:07:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="167143685"
Received: from unknown (HELO helios.localnet) ([10.252.121.26])
	by orsmga001.jf.intel.com with ESMTP; 16 Jul 2012 16:07:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Jul 2012 00:07:19 +0100
Message-ID: <9073554.ehxzp97ASl@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <1342462128-16851-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1342462128-16851-1-git-send-email-kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [meta-baryon][PATCH] webmin: fix dash incompatibility in do_configure
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
X-List-Received-Date: Mon, 16 Jul 2012 23:07:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 16 July 2012 11:08:48 Kevin Strasser wrote:
> The use of brackets was causing dash to skip over the removal of
> several unwanted files. The presence of these files was causing an
> exception during packaging.
> 
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  recipes-extended/webmin/webmin_1.570.bb |    7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/recipes-extended/webmin/webmin_1.570.bb
> b/recipes-extended/webmin/webmin_1.570.bb index 150d920..63a1ed2 100644
> --- a/recipes-extended/webmin/webmin_1.570.bb
> +++ b/recipes-extended/webmin/webmin_1.570.bb
> @@ -33,9 +33,10 @@ inherit allarch perlnative update-rc.d
>  do_configure() {
>      # Remove binaries and plugins for other platforms
>      rm -rf acl/Authen-SolarisRBAC-0.1*
> -    rm -rf
> {format,{bsd,hpux,sgi}exports,zones,rbac,smf,ipfw,ipfilter,dfsadmin} -   
> rm -f mount/{free,net,open}bsd-mounts*
> -    rm -f mount/macos-mounts*
> +    rm -rf format bsdexports hpuxexports sgiexports
> +    rm -rf zones rbac smf ipfw ipfilter dfsadmin
> +    rm -f mount/freebsd-mounts* mount/netbsd-mounts*
> +    rm -f mount/openbsd-mounts* mount/macos-mounts*
> 
>      # Remove some plugins for the moment
>      rm -rf lilo frox wuftpd telnet pserver cpan shorewall webalizer
> cfengine fsdump pap

Merged to meta-baryon master, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

