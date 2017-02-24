Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EC18E00510; Fri, 24 Feb 2017 09:58:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A87CE00405
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 09:58:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v1OHwMJJ018014
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 24 Feb 2017 09:58:22 -0800 (PST)
Received: from soho-mhatle-m.local (147.11.118.110) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 24 Feb 2017 09:58:21 -0800
To: Tim Orling <timothy.t.orling@linux.intel.com>, <yocto@yoctoproject.org>
References: <20170211002229.55071-1-timothy.t.orling@linux.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <30d55513-0c03-a2ad-f54a-cf1c5f3954a4@windriver.com>
Date: Fri, 24 Feb 2017 09:58:21 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170211002229.55071-1-timothy.t.orling@linux.intel.com>
Subject: Re: [meta-selinux][PATCH] audit: update to v2.7.1
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
X-List-Received-Date: Fri, 24 Feb 2017 17:58:26 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

I am in the process of merging this to master.

On 2/10/17 4:22 PM, Tim Orling wrote:
> Added swig-native to DEPENDS
> 
> Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
> ---
>  recipes-security/audit/{audit_2.7.bb => audit_2.7.1.bb} | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>  rename recipes-security/audit/{audit_2.7.bb => audit_2.7.1.bb} (95%)
> 
> diff --git a/recipes-security/audit/audit_2.7.bb b/recipes-security/audit/audit_2.7.1.bb
> similarity index 95%
> rename from recipes-security/audit/audit_2.7.bb
> rename to recipes-security/audit/audit_2.7.1.bb
> index 6bcbecd..975e6e9 100644
> --- a/recipes-security/audit/audit_2.7.bb
> +++ b/recipes-security/audit/audit_2.7.1.bb
> @@ -15,8 +15,8 @@ SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
>             file://auditd.service \
>             file://audit-volatile.conf \
>  "
> -SRC_URI[md5sum] = "d3b1017e259509b9b3054656d0d2b4e9"
> -SRC_URI[sha256sum] = "05533f5d88d9520ceebfd8bfb3fd998ca4a2b246757fec7bbd8e33c287544537"
> +SRC_URI[md5sum] = "b224ea6f000c8281e5deee86903ac5ba"
> +SRC_URI[sha256sum] = "0441790794fd9375dbca598fa0ffb46c57ff37b3a24b94ffec0bbee3215cca09"
>  
>  inherit autotools pythonnative update-rc.d systemd
>  
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


