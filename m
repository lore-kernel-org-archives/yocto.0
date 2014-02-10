Return-Path: <Rongqing.Li@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60A0EE00524
	for <yocto@yoctoproject.org>; Sun,  9 Feb 2014 18:56:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s1A2umwt016571
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 9 Feb 2014 18:56:48 -0800 (PST)
Received: from [128.224.162.168] (128.224.162.168) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Sun, 9 Feb 2014 18:56:48 -0800
Message-ID: <52F84020.7030703@windriver.com>
Date: Mon, 10 Feb 2014 10:57:36 +0800
From: Rongqing Li <rongqing.li@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: <rongqing.li@windriver.com>
References: <cover.1391995046.git.rongqing.li@windriver.com>
In-Reply-To: <cover.1391995046.git.rongqing.li@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/1] refpolicy: allow dhclient to bind unreserved_port_t socket
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
X-List-Received-Date: Mon, 10 Feb 2014 02:56:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Please drop this one, I find the fix has been in upstream, and will backport
it.

On 02/10/2014 10:28 AM, rongqing.li@windriver.com wrote:
> From: Roy Li <rongqing.li@windriver.com>
>
> The following changes since commit 13266999932edaa334b24c18c79815eb19559b86:
>
>    refpolicy: Allow ping to get/set capabilities (2014-01-28 16:41:59 +0800)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/poky-contrib roy/refpolicy-dhclient
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=roy/refpolicy-dhclient
>
> Roy Li (1):
>    refpolicy: allow dhclient to bind unreserved_port_t socket.
>
>   .../poky-policy-allows-dhclient-to-bind.patch      |   43 ++++++++++++++++++++
>   .../refpolicy/refpolicy_2.20130424.inc             |    1 +
>   2 files changed, 44 insertions(+)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-allows-dhclient-to-bind.patch
>

-- 
Best Reagrds,
Roy | RongQing Li

