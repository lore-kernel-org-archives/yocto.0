Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA1CCE0086F; Tue,  2 Dec 2014 20:17:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3959FE00521
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 20:17:10 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sB34H9ug002473
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 2 Dec 2014 20:17:09 -0800 (PST)
Received: from server.local (128.224.20.172) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 2 Dec 2014 20:17:08 -0800
Message-ID: <547E8EC4.4010702@windriver.com>
Date: Tue, 2 Dec 2014 23:17:08 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <jackie.huang@windriver.com>, <yocto@yoctoproject.org>
References: <1417573094-19052-1-git-send-email-jackie.huang@windriver.com>
In-Reply-To: <1417573094-19052-1-git-send-email-jackie.huang@windriver.com>
Subject: Re: [meta-realtime][PATCH] meta-realtime: Add LAYERVERSION and LAYERDEPENDS
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
X-List-Received-Date: Wed, 03 Dec 2014 04:17:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-12-02, 9:18 PM, jackie.huang@windriver.com wrote:
> From: Jackie Huang <jackie.huang@windriver.com>

I happened to notice this and have grabbed the change. But make sure
your workflow adds maintainers to the cc on patches, otherwise you
can't blame anyone if they are missed/dropped.

Bruce

>
> According to README, it depends on oe-core layer
>
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>   conf/layer.conf |    6 ++++++
>   1 files changed, 6 insertions(+), 0 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 5a5c460..473158e 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -11,3 +11,9 @@ BBFILE_PRIORITY_realtime = "5"
>
>   # Additional license directories.
>   # LICENSE_PATH += "${LAYERDIR}/custom-licenses"
> +
> +# This should only be incremented on significant changes that will
> +# cause compatibility issues with other layers
> +LAYERVERSION_realtime = "1"
> +
> +LAYERDEPENDS_realtime = "core"
>


