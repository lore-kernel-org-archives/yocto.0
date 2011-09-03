Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2F14E00731
	for <yocto@yoctoproject.org>; Sat,  3 Sep 2011 07:42:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p83EgVH0012249
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 3 Sep 2011 07:42:31 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.8) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 3 Sep 2011 07:42:31 -0700
Message-ID: <4E623CD5.20109@windriver.com>
Date: Sat, 3 Sep 2011 10:42:29 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.21) Gecko/20110830 Thunderbird/3.1.13
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <1315025106.31478.138.camel@elmorro>
In-Reply-To: <1315025106.31478.138.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [PATCH 0/1][KERNEL] Re-enable systemtap after the 1.6 upgrade
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 03 Sep 2011 14:42:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-03 12:45 AM, Tom Zanussi wrote:
> To match the accompanying 1.6 systemtap upgrade.
>
> Please pull into linux-yocto-3.0/meta.
>
> The following changes are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git
> tzanussi/reenable-systemtap
>
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/reenable-systemtap
>
> Tom Zanussi (1):
>    meta: re-enable systemtap feature for linux-yocto

ack'd. Merging right away.

Bruce

>
>   meta/cfg/kernel-cache/ktypes/standard/standard.scc |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


