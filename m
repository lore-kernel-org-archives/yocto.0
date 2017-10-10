Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 050E1E00D18; Tue, 10 Oct 2017 06:45:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAE4DE00D00
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 06:45:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v9ADjfSg018975
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 06:45:41 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 10 Oct 2017 06:45:40 -0700
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>
References: <20171010074643.114607-1-wenzong.fan@windriver.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <7050676f-1eb4-4d7b-a999-8add244cb291@windriver.com>
Date: Tue, 10 Oct 2017 08:45:40 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171010074643.114607-1-wenzong.fan@windriver.com>
Subject: Re: [meta-selinux][PATCH] policycoreutils: update AUDITH, PAMH
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
X-List-Received-Date: Tue, 10 Oct 2017 13:45:44 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

This is incorrect.  You are not allowed to dynamically determine capabilities
like this.  Because if another component changes, the system has no way to
determine if this package should also be recompiled.

policycoreutils should be using 'PACKAGECONFIG', with an audit and pam option.
Then set a default with them enabled, allowing a user to override the settings.

--Mark

On 10/10/17 2:46 AM, wenzong.fan@windriver.com wrote:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> Update definition of AUDITH, PAMH according to the upstream changes
> for Makefiles:
> 
>   commit 89ce96cac6ce5eeed78cb39c58514cd68494d7aa
>   ...
>   -ifeq ($(PAMH), /usr/include/security/pam_appl.h)
>   +ifeq ($(PAMH), y)
>   ...
>   -ifeq ($(AUDITH), /usr/include/libaudit.h)
>   +ifeq ($(AUDITH), y)
> 
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>  recipes-security/selinux/policycoreutils.inc | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
> index 442b086..63ca402 100644
> --- a/recipes-security/selinux/policycoreutils.inc
> +++ b/recipes-security/selinux/policycoreutils.inc
> @@ -118,8 +118,8 @@ export STAGING_LIBDIR
>  export BUILD_SYS
>  export HOST_SYS
>  
> -AUDITH="`ls ${STAGING_INCDIR}/libaudit.h >/dev/null 2>&1 && echo /usr/include/libaudit.h `"
> -PAMH="`ls ${STAGING_INCDIR}/security/pam_appl.h >/dev/null 2>&1 && echo /usr/include/security/pam_appl.h `"
> +AUDITH="`ls ${STAGING_INCDIR}/libaudit.h >/dev/null 2>&1 && echo y`"
> +PAMH="`ls ${STAGING_INCDIR}/security/pam_appl.h >/dev/null 2>&1 && echo y`"
>  EXTRA_OEMAKE += "${@target_selinux(d, 'PAMH=${PAMH} AUDITH=${AUDITH}', 'PAMH= AUDITH= ')} INOTIFYH=n"
>  EXTRA_OEMAKE += "PREFIX=${D}"
>  EXTRA_OEMAKE += "INITDIR=${D}/etc/init.d"
> 


