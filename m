Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7551AE006EF; Wed, 14 May 2014 15:34:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 094E9E0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:34:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s4EMYhTY026460
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 May 2014 15:34:43 -0700 (PDT)
Received: from msp-dhcp29.wrs.com (172.25.34.29) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 14 May 2014 15:34:43 -0700
Message-ID: <5373EF82.20906@windriver.com>
Date: Wed, 14 May 2014 17:34:42 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Armin Kuster <akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
In-Reply-To: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/9] meta-selinux on master branch
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
X-List-Received-Date: Wed, 14 May 2014 22:34:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 5/14/14, 5:24 PM, Armin Kuster wrote:
>    These patches fix 'ERROR: No recipes available for:'
>    build issues by syncing the with version in Poky master.
>    In most cases, the bbappends include coniguration
>    parameters and using a wildcard in the version works for now.
>    I removed patches if the changes are the newer versions.
>
>    I am working on a build failure in refpolicy-* and manybe more
>    but wanted to get these changes out for review and feedback.

Thanks, I'll try to get these included in the next day or so.

(All of the changes look reasonable on first glance.)

--Mark

>
> Armin Kuster (9):
>    Use wildcard for augeas and  fix build issue
>    Use wildcard in mesa bbappend name
>    Use wildcard in bind bbappend name
>    Use wildcard in kernel bbappend name
>    Use wildcard in openssh bbappedn name
>    update util-linux package version and remove patch
>    Update to latest swig from meta-openembedded
>    update psmics 22.21 and remove un needed patch
>    setools fix do_configure
>
>   recipes-connectivity/bind/bind_9.%.bbappend        |  13 +
>   recipes-connectivity/bind/bind_9.8.1.bbappend      |  13 -
>   recipes-connectivity/openssh/openssh_6.%.bbappend  |  13 +
>   .../openssh/openssh_6.4p1.bbappend                 |  13 -
>   recipes-core/util-linux/util-linux_2.23.2.bbappend |   8 -
>   recipes-core/util-linux/util-linux_2.24.2.bbappend |   5 +
>   recipes-devtools/swig/swig.inc                     |   8 +-
>   recipes-devtools/swig/swig_2.0.10.bb               |   9 -
>   recipes-devtools/swig/swig_2.0.12.bb               |   7 +
>   recipes-extended/augeas/augeas_1.%.bbappend      |   1 +
>   recipes-extended/augeas/augeas_1.1.0.bbappend      |   1 -
>   .../psmisc/pstree-compiles-with-SE-Linux.patch     | 265 ---------------------
>   recipes-extended/psmisc/psmisc_22.20.bbappend      |   7 -
>   recipes-extended/psmisc/psmisc_22.21.bbappend      |   5 +
>   recipes-graphics/mesa/mesa_9.2.%.bbappend          |   6 +
>   recipes-graphics/mesa/mesa_9.2.2.bbappend          |   6 -
>   recipes-kernel/linux/linux-yocto_3.%.bbappend      |   7 +
>   recipes-kernel/linux/linux-yocto_3.8.bbappend      |   7 -
>   recipes-security/setools/setools_3.3.8.bb          |   4 +-
>   19 files changed, 66 insertions(+), 332 deletions(-)
>   create mode 100644 recipes-connectivity/bind/bind_9.%.bbappend
>   delete mode 100644 recipes-connectivity/bind/bind_9.8.1.bbappend
>   create mode 100644 recipes-connectivity/openssh/openssh_6.%.bbappend
>   delete mode 100644 recipes-connectivity/openssh/openssh_6.4p1.bbappend
>   delete mode 100644 recipes-core/util-linux/util-linux_2.23.2.bbappend
>   create mode 100644 recipes-core/util-linux/util-linux_2.24.2.bbappend
>   delete mode 100644 recipes-devtools/swig/swig_2.0.10.bb
>   create mode 100644 recipes-devtools/swig/swig_2.0.12.bb
>   create mode 100644 recipes-extended/augeas/augeas_1.%.bbappend
>   delete mode 100644 recipes-extended/augeas/augeas_1.1.0.bbappend
>   delete mode 100644 recipes-extended/psmisc/psmisc/pstree-compiles-with-SE-Linux.patch
>   delete mode 100644 recipes-extended/psmisc/psmisc_22.20.bbappend
>   create mode 100644 recipes-extended/psmisc/psmisc_22.21.bbappend
>   create mode 100644 recipes-graphics/mesa/mesa_9.2.%.bbappend
>   delete mode 100644 recipes-graphics/mesa/mesa_9.2.2.bbappend
>   create mode 100644 recipes-kernel/linux/linux-yocto_3.%.bbappend
>   delete mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend
>


