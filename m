Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95E6AE007DA
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 01:33:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1D9XuLF002992
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 01:33:57 -0800 (PST)
Received: from pascal-macbookpro.corp.ad.wrs.com (128.224.158.235) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Thu, 13 Feb 2014 01:31:18 -0800
Message-ID: <52FC90E3.40804@windriver.com>
Date: Thu, 13 Feb 2014 17:31:15 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: <rongqing.li@windriver.com>, <yocto@yoctoproject.org>
References: <cover.1392019016.git.rongqing.li@windriver.com>
	<8089f0d19f757ecf65f957d6a196e66c90bd7911.1392019016.git.rongqing.li@windriver.com>
In-Reply-To: <8089f0d19f757ecf65f957d6a196e66c90bd7911.1392019016.git.rongqing.li@windriver.com>
X-TagToolbar-Keys: D20140213173115052
Subject: Re: [PATCH 1/1] refpolicy: allow portmap to create portmap_t type socket
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
X-List-Received-Date: Thu, 13 Feb 2014 09:33:59 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 14-2-10 下午3:58, rongqing.li@windriver.com 写道:
> From: Roy Li <rongqing.li@windriver.com>
>
> Signed-off-by: Roy Li <rongqing.li@windriver.com>
> ---
>   .../portmap-allow-portmap-to-create-socket.patch   |   28 ++++++++++++++++++++
>   .../refpolicy/refpolicy_2.20130424.inc             |    1 +
>   2 files changed, 29 insertions(+)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/portmap-allow-portmap-to-create-socket.patch
>
> diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/portmap-allow-portmap-to-create-socket.patch b/recipes-security/refpolicy/refpolicy-2.20130424/portmap-allow-portmap-to-create-socket.patch
> new file mode 100644
> index 0000000..aa89a98
> --- /dev/null
> +++ b/recipes-security/refpolicy/refpolicy-2.20130424/portmap-allow-portmap-to-create-socket.patch
> @@ -0,0 +1,28 @@
> +portmap: allow portmap to manage portmap_t type socket
> +
> +Upstream-Status: Pending
> +
> +portmap needs to create socket to receive message
> +
> +Signed-off-by: Roy Li <rongqing.li@windriver.com>
> +---
> + policy/modules/contrib/portmap.te |    3 +++
> + 1 file changed, 3 insertions(+)
> +
> +diff --git a/policy/modules/contrib/portmap.te b/policy/modules/contrib/portmap.te
> +index 18b255e..bacf66b 100644
> +--- a/policy/modules/contrib/portmap.te
> ++++ b/policy/modules/contrib/portmap.te
> +@@ -16,6 +16,9 @@ type portmap_helper_exec_t;
> + init_system_domain(portmap_helper_t, portmap_helper_exec_t)
> + role portmap_helper_roles types portmap_helper_t;
> +
> ++allow portmap_t self:tcp_socket create_socket_perms;
> ++allow portmap_t self:udp_socket create_socket_perms;
> ++
> + type portmap_initrc_exec_t;
> + init_script_file(portmap_initrc_exec_t)
> +
> +--
> +1.7.10.4
> +
> diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
> index a052a2c..5d55030 100644
> --- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
> +++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
> @@ -52,6 +52,7 @@ SRC_URI += "file://poky-policy-fix-xconsole_device_t-as-a-dev_node.patch \
>               file://poky-policy-fix-dmesg-to-use-dev-kmsg.patch \
>               file://hostname-do-not-audit-attempts-by-hostname-to-read-a.patch \
>               file://sysnetwork-dhcpc-binds-socket-to-random-high-udp-por.patch \
> +            file://portmap-allow-portmap-to-create-socket.patch \
>              "
>
>   # Backport from upstream
>

Ack.

These rules are in old versions, and droped in 12d4d8.
https://github.com/xinpascal/selinux-refpolicy-contrib/commit/12d4d86602452c9b6fd6f74fc47ce29d5ae55ba9
It is better if you have time to dig.

Any way, I agree to merge this.

Thanks, Roy. :)

-- 
- Pascal

