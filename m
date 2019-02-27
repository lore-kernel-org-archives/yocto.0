Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AAA2E00D04; Tue, 26 Feb 2019 22:43:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5CB6E00D00
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 22:43:42 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x1R6hLUN009709
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 22:43:32 -0800
Received: from [128.224.162.228] (128.224.162.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.435.0;
	Tue, 26 Feb 2019 22:43:11 -0800
To: <yocto@yoctoproject.org>
References: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <734bace2-db0f-2d67-dbfa-0500c5c541a6@windriver.com>
Date: Wed, 27 Feb 2019 14:43:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
X-Originating-IP: [128.224.162.228]
Subject: Re: [PATCH V2 0/2] update-rc.d: support enable/disable function
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
X-List-Received-Date: Wed, 27 Feb 2019 06:43:43 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Ping

On 1/21/19 5:09 PM, changqing.li@windriver.com wrote:
> These three patches are for support disable/enable function for update-rc.d
>
> change in V2:
> add some comments and fix commit message
>
> change in V1:
> * change of script update-rc.d is for support disable/enable of init script link
> * update-rc.d.bbclass remove preinst to make disable/enable can work after upgrade
> * fix the doc manual
>
> Changqing Li (2):
>    update-rc.d.bbclass: remove preinst and remove -f for postinst
>    ref-variables.xml: update manual page for update-rc.d
>
>   documentation/ref-manual/ref-variables.xml |  2 +-
>   meta/classes/update-rc.d.bbclass           | 28 ++++------------------------
>   2 files changed, 5 insertions(+), 25 deletions(-)
>
-- 
BRs

Sandy(Li Changqing)


