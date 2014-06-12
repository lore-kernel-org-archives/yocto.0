Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76406E00BF8; Wed, 11 Jun 2014 23:34:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DA13E00C00
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 23:34:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5C6YnRb029394
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 23:34:49 -0700 (PDT)
Received: from [128.224.162.180] (128.224.162.180) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 11 Jun 2014 23:34:49 -0700
Message-ID: <53994A07.50506@windriver.com>
Date: Thu, 12 Jun 2014 14:34:47 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <cover.1402048081.git.wenzong.fan@windriver.com>
In-Reply-To: <cover.1402048081.git.wenzong.fan@windriver.com>
Subject: Re: [meta-selinux][PATCH 0/2] dhcp: restorecon for dhcpd*.leases from initscript
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
X-List-Received-Date: Thu, 12 Jun 2014 06:34:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Recall this patch since the dhcp in oe-core has been updated to 4.3.0.

I'll send v2 after fixed the version number for bbappend.

Sorry for the inconvenience.

// Wenzong

On 06/06/2014 06:00 PM, wenzong.fan@windriver.com wrote:
> From: Wenzong Fan <wenzong.fan@windriver.com>
>
> dhcp-server fails to start since /var/lib/dhcpd.leases has incorrect
> contexts: dhcp_state_t, it should be: dhcpd_state_t.
>
> * make a local copy of init-server
> * update init-server to restorecon for dhcpd*.lesses before starting dhcp server.
>
> The following changes since commit 7984856ca2c6ef7a1c8d5bee3f8ec3e8031ee971:
>
>    setools: Add bison-native and flex-native to DEPENDS (2014-06-02 09:16:33 -0500)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/poky-contrib wenzong/dhcp
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/dhcp
>
> Wenzong Fan (2):
>    dhcp: make a copy of init-server
>    dhcp/init-server: restorecon for dhcpd*.leases
>
>   recipes-connectivity/dhcp/dhcp_4.2.5-P1.bbappend |    3 ++
>   recipes-connectivity/dhcp/files/init-server      |   52 ++++++++++++++++++++++
>   2 files changed, 55 insertions(+)
>   create mode 100644 recipes-connectivity/dhcp/dhcp_4.2.5-P1.bbappend
>   create mode 100644 recipes-connectivity/dhcp/files/init-server
>

