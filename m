Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCD53E00450
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 00:12:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0R8CZ2Q000453
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 00:12:35 -0800 (PST)
Received: from Pascal-MacBookPro.local (128.224.159.178) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Mon, 27 Jan 2014 00:12:36 -0800
Message-ID: <52E614F2.5060900@windriver.com>
Date: Mon, 27 Jan 2014 16:12:34 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <cover.1390805261.git.wenzong.fan@windriver.com>
	<e157f92680f756218368a8d0147b0bed6a8ae8a7.1390805261.git.wenzong.fan@windriver.com>
In-Reply-To: <e157f92680f756218368a8d0147b0bed6a8ae8a7.1390805261.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140127161234405
Subject: Re: [meta-selinux][PATCH 1/1] selinux: set policy-version to 28
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
X-List-Received-Date: Mon, 27 Jan 2014 08:12:40 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-1-27 ÏÂÎç2:52, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> The default policy version of new selinux toolchains is 29, to
> fit kernel 3.10.x, set it to 28.
> ---
>   recipes-security/refpolicy/refpolicy_common.inc |    2 ++
>   recipes-security/selinux/libsemanage.inc        |    3 +++
>   2 files changed, 5 insertions(+)
> 
> diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
> index 6bf7830..fbf9441 100644
> --- a/recipes-security/refpolicy/refpolicy_common.inc
> +++ b/recipes-security/refpolicy/refpolicy_common.inc
> @@ -76,6 +76,8 @@ args = -q -c \$@ \$<
>   path = ${STAGING_DIR_NATIVE}${sbindir_native}/sefcontext_compile
>   args = \$@
>   [end]
> +
> +policy-version = 28
>   EOF
>   	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/policy
>   	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
> diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
> index 5e90c26..799d864 100644
> --- a/recipes-security/selinux/libsemanage.inc
> +++ b/recipes-security/selinux/libsemanage.inc
> @@ -41,6 +41,9 @@ do_install() {
>               DESTDIR=${D} \
>               PYLIBVER='python${PYTHON_BASEVERSION}' \
>               PYLIBDIR='${D}/${libdir}/$(PYLIBVER)'
> +
> +    # Update "policy-version" for semanage.conf
> +    echo "policy-version = 28" >> "${D}/etc/selinux/semanage.conf"

please use this instead. Thanks.

sed -i 's/^#\s*\(policy-version\s*=\).*$/\1 28/' \
	${D}/etc/selinux/semanage.conf

>   }
>   
>   BBCLASSEXTEND = "native"
> 


-- 
- Pascal

