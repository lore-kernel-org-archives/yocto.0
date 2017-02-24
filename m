Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88E1BE00924; Fri, 24 Feb 2017 09:58:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA02DE004D8
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 09:58:49 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v1OHwlXR028710
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 09:58:49 -0800
Received: from soho-mhatle-m.local (147.11.118.110) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 24 Feb 2017 09:58:45 -0800
To: Robert Yang <liezhi.yang@windriver.com>, <yocto@yoctoproject.org>
References: <20170214085150.42779-1-liezhi.yang@windriver.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <433b39b7-1488-08fc-ed36-daaf073ece2f@windriver.com>
Date: Fri, 24 Feb 2017 09:58:45 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170214085150.42779-1-liezhi.yang@windriver.com>
Subject: Re: [meta-selinux][PATCH 1/3] audit: add swig-native to DEPENDS
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
X-List-Received-Date: Fri, 24 Feb 2017 17:58:51 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

I am in the process of merging this set into master.

--Mark

On 2/14/17 12:51 AM, Robert Yang wrote:
> Fixed:
> make[4]: swig: Command not found
> make[4]: *** [audit_wrap.c] Error 127
> 
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>  recipes-security/audit/audit_2.7.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-security/audit/audit_2.7.bb b/recipes-security/audit/audit_2.7.bb
> index 6bcbecd..89adab6 100644
> --- a/recipes-security/audit/audit_2.7.bb
> +++ b/recipes-security/audit/audit_2.7.bb
> @@ -26,7 +26,7 @@ INITSCRIPT_PARAMS = "defaults"
>  
>  SYSTEMD_SERVICE_${PN} = "auditd.service"
>  
> -DEPENDS += "python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30)"
> +DEPENDS += "python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30) swig-native"
>  
>  EXTRA_OECONF += "--without-prelude \
>  	--with-libwrap \
> 


