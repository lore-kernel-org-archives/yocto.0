Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 311A0E00D89; Fri, 18 Aug 2017 02:33:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 180C6E00CCB
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 02:33:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v7I9XANR020300
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 18 Aug 2017 02:33:10 -0700 (PDT)
Received: from [128.224.162.183] (128.224.162.183) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 18 Aug 2017 02:33:09 -0700
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>, Mark Hatle
	<mark.hatle@windriver.com>
References: <cover.1503048463.git.hongxu.jia@windriver.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <0235e10c-1aad-0860-9b74-d9b755f21c53@windriver.com>
Date: Fri, 18 Aug 2017 17:33:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <cover.1503048463.git.hongxu.jia@windriver.com>
Subject: Re: [meta-gplv2][PATCH V2 0/3] fix mc compile failure while ncurses upgraded
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
X-List-Received-Date: Fri, 18 Aug 2017 09:33:12 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Add Mark to the loop

//Hongxu

On 2017年08月18日 17:29, Hongxu Jia wrote:
> Changed in V2:
>
> We could not backport fix from the latest master which introduce
> gplv3 contamination, but we could revert to disable Ctrl-g key
> and Ctrl-\ key
>
> //Hongxu
>
> The following changes since commit 73a8f9df9f4b5e0d87605962c3bd8dcbaef28aea:
>
>    layer.conf: Remove mc from packagegroup-core-full-cmdline-utils (2017-08-17 17:37:57 +0100)
>
> are available in the git repository at:
>
>    git://git.openembedded.org/openembedded-core-contrib hongxu/fix-gplv2-mc
>    http://cgit.openembedded.org/openembedded-core-contrib/log/?h=hongxu/fix-gplv2-mc
>
> Hongxu Jia (3):
>    Revert "layer.conf: Remove mc from
>      packagegroup-core-full-cmdline-utils"
>    Revert "mc: Drop from meta-gplv2 as incompatible with newer ncurses
>      versions"
>    mc: disable Ctrl-g key and Ctrl-\ key
>
>   conf/layer.conf                                    |  2 -
>   .../mc/0001-disable-Ctrl-g-key-and-Ctrl-key.patch  | 86 ++++++++++++++++++++++
>   recipes-extended/mc/mc/mc-CTRL.patch               | 31 ++++++++
>   recipes-extended/mc/mc_4.7.5.2.bb                  | 48 ++++++++++++
>   4 files changed, 165 insertions(+), 2 deletions(-)
>   create mode 100644 recipes-extended/mc/mc/0001-disable-Ctrl-g-key-and-Ctrl-key.patch
>   create mode 100644 recipes-extended/mc/mc/mc-CTRL.patch
>   create mode 100644 recipes-extended/mc/mc_4.7.5.2.bb
>


