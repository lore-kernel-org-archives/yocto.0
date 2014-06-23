Return-Path: <Xin.Ouyang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62E56E0059B; Sun, 22 Jun 2014 23:31:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61358E0056A
	for <yocto@yoctoproject.org>; Sun, 22 Jun 2014 23:31:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s5N6VHei029293
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 22 Jun 2014 23:31:17 -0700 (PDT)
Received: from Pascal-MacBookPro.local (128.224.159.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Sun, 22 Jun 2014 23:31:16 -0700
Message-ID: <53A7C9B2.2090205@windriver.com>
Date: Mon, 23 Jun 2014 14:31:14 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <1402882718-31154-1-git-send-email-wenzong.fan@windriver.com>
In-Reply-To: <1402882718-31154-1-git-send-email-wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140623143114734
Subject: Re: [meta-selinux][PATCH 1/2] dhcp: make a copy of init-server
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
X-List-Received-Date: Mon, 23 Jun 2014 06:31:34 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-6-16 ÉÏÎç9:38, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>   recipes-connectivity/dhcp/dhcp_4.3.0.bbappend |    3 ++
>   recipes-connectivity/dhcp/files/init-server   |   44 +++++++++++++++++++++++++
>   2 files changed, 47 insertions(+)
>   create mode 100644 recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
>   create mode 100644 recipes-connectivity/dhcp/files/init-server
> 
> diff --git a/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend b/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
> new file mode 100644
> index 0000000..900c2aa
> --- /dev/null
> +++ b/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
> @@ -0,0 +1,3 @@
> +inherit with-selinux
> +
> +FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
> diff --git a/recipes-connectivity/dhcp/files/init-server b/recipes-connectivity/dhcp/files/init-server
> new file mode 100644
> index 0000000..34c2085
> --- /dev/null
> +++ b/recipes-connectivity/dhcp/files/init-server
> @@ -0,0 +1,44 @@
> +#!/bin/sh
> +#
> +# $Id: dhcp3-server.init.d,v 1.4 2003/07/13 19:12:41 mdz Exp $
> +#
> +
> +test -f /usr/sbin/dhcpd || exit 0
> +
> +# It is not safe to start if we don't have a default configuration...
> +if [ ! -f /etc/default/dhcp-server ]; then
> +	echo "/etc/default/dhcp-server does not exist! - Aborting..."
> +	exit 0
> +fi
> +
> +# Read init script configuration (so far only interfaces the daemon
> +# should listen on.)
> +. /etc/default/dhcp-server
> +
> +case "$1" in
> +	start)
> +		echo -n "Starting DHCP server: "
> +		test -d /var/lib/dhcp/ || mkdir -p /var/lib/dhcp/
> +		test -f /var/lib/dhcp/dhcpd.leases || touch /var/lib/dhcp/dhcpd.leases	
> +		start-stop-daemon -S -x /usr/sbin/dhcpd -- -q $INTERFACES
> +		echo "."
> +		;;
> +	stop)
> +		echo -n "Stopping DHCP server: dhcpd3"
> +		start-stop-daemon -K -x /usr/sbin/dhcpd
> +		echo "."
> +		;;
> +	restart | force-reload)
> +		$0 stop
> +		sleep 2
> +		$0 start
> +		if [ "$?" != "0" ]; then
> +			exit 1
> +		fi
> +		;;
> +	*)
> +		echo "Usage: /etc/init.d/dhcp-server {start|stop|restart|force-reload}"
> +		exit 1
> +esac
> +
> +exit 0
> 


Merged, thanks. :)

-- 
- Pascal

