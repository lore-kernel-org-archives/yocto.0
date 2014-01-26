Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93875E002F9
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 01:52:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0Q9qrs9018323
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 01:52:53 -0800 (PST)
Received: from Pascal-MacBookPro.local (128.224.159.178) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Sun, 26 Jan 2014 01:52:53 -0800
Message-ID: <52E4DAF3.8050205@windriver.com>
Date: Sun, 26 Jan 2014 17:52:51 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <cover.1390725931.git.wenzong.fan@windriver.com>
	<0e828c6ffb65a89e397f8bdb370f8d6f6da69458.1390725931.git.wenzong.fan@windriver.com>
In-Reply-To: <0e828c6ffb65a89e397f8bdb370f8d6f6da69458.1390725931.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140126175251780
Subject: Re: [meta-selinux][PATCH 3/3] refpolicy: fix symlink policy.kern
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
X-List-Received-Date: Sun, 26 Jan 2014 09:52:59 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-1-26 ÏÂÎç4:54, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> It includes build host path, this does not work on target.
> 
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>   recipes-security/refpolicy/refpolicy_common.inc |    4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
> index a71c5dd..6bf7830 100644
> --- a/recipes-security/refpolicy/refpolicy_common.inc
> +++ b/recipes-security/refpolicy/refpolicy_common.inc
> @@ -109,4 +109,8 @@ EOF
>   
>   	# install policy headers
>   	oe_runmake install-headers DESTDIR=${D}
> +
> +	# Fix symbol link policy.kern
> +	link_path=`readlink -f ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/policy.kern`
> +	ln -sf ../../policy/`basename $link_path` ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/policy.kern
>   }
> 

Change you commit message to:

    refpolicy: fix new symlink for policy.kern

    New 2.2 release of libsemanage removes policy.kern and replace with
    symlink from Dan Walsh. It is a host path while cross-compiling, so
    fix this path.

And merge. Thanks:)

-- 
- Pascal

