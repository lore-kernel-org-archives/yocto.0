Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D370CE0075D
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2011 12:36:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p85JaBGv027293
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 5 Sep 2011 12:36:11 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 5 Sep 2011 12:36:10 -0700
Message-ID: <4E6524A5.7030300@windriver.com>
Date: Mon, 5 Sep 2011 15:36:05 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <1315238690.31478.198.camel@elmorro>
In-Reply-To: <1315238690.31478.198.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [PATCH 0/1][KERNEL] linux-yocto-3.0/meta: re-enable utrace
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
X-List-Received-Date: Mon, 05 Sep 2011 19:36:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-05 12:04 PM, Tom Zanussi wrote:
> This patchset re-enables utrace.  Tested on qemuppc, qemux86, qemux86-64,
> qemuarm (where it doesn't work, as expected - utrace doesn't currently
> support arm), and sugarbay.
>
> Please pull into linux-yocto-3.0/meta.

merged to both 3.0 and yocto-dev (so it won't go missing again).

Bruce

>
> The following changes are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git utrace-meta
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=utrace-meta
>
> Tom Zanussi (1):
>    meta: re-enable utrace feature for linux-yocto
>
>   meta/cfg/kernel-cache/ktypes/standard/standard.scc |    3 +++
>   1 files changed, 3 insertions(+), 0 deletions(-)
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


