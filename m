Return-Path: <Rongqing.Li@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23A4AE009FC
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 19:32:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s273Wenk029478
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 6 Mar 2014 19:32:40 -0800 (PST)
Received: from [128.224.162.168] (128.224.162.168) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 6 Mar 2014 19:32:39 -0800
Message-ID: <53193E20.2000703@windriver.com>
Date: Fri, 7 Mar 2014 11:33:52 +0800
From: Rongqing Li <rongqing.li@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: <rongqing.li@windriver.com>
References: <cover.1393912246.git.rongqing.li@windriver.com>
In-Reply-To: <cover.1393912246.git.rongqing.li@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] fix audit configuration file permission and enable systemd support
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
X-List-Received-Date: Fri, 07 Mar 2014 03:32:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

ping, it should be [meta-selinux]


-Roy
On 03/04/2014 01:52 PM, rongqing.li@windriver.com wrote:
> From: Roy Li <rongqing.li@windriver.com>
>
> The following changes since commit a6079a43719e79e12a57e609923a0cccdba06916:
>
>    refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/poky-contrib roy/audit-two-fix
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=roy/audit-two-fix
>
> Roy Li (2):
>    audit: Add systemd support
>    audit: fix the permission of configuration file
>
>   recipes-security/audit/audit/audit-volatile.conf |    1 +
>   recipes-security/audit/audit/auditd.service      |   21 +++++++++++++++++++++
>   recipes-security/audit/audit_2.3.2.bb            |   21 +++++++++++++++++++--
>   3 files changed, 41 insertions(+), 2 deletions(-)
>   create mode 100644 recipes-security/audit/audit/audit-volatile.conf
>   create mode 100644 recipes-security/audit/audit/auditd.service
>

-- 
Best Reagrds,
Roy | RongQing Li

