Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4C3BE008C9; Mon, 17 Nov 2014 19:07:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20EADE00860
	for <yocto@yoctoproject.org>; Mon, 17 Nov 2014 19:07:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sAI37LNU002998
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 17 Nov 2014 19:07:22 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Mon, 17 Nov 2014 19:07:21 -0800
Message-ID: <546AB7E7.5010304@windriver.com>
Date: Tue, 18 Nov 2014 11:07:19 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: Stefan Eichenberger <Stefan.Eichenberger@netmodule.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <d08a8413c6434f89929894aca02a399c@ebro.netmodule.intranet>
In-Reply-To: <d08a8413c6434f89929894aca02a399c@ebro.netmodule.intranet>
X-Originating-IP: [128.224.162.226]
Subject: Re: Busybox sh link
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
X-List-Received-Date: Tue, 18 Nov 2014 03:07:37 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2014 10:07 PM, Stefan Eichenberger wrote:
> Hello all
>
> I have a question regarding busybox and sh. If I want to install bash together with busybox ash, yocto does not consider the ALTERNATIVE_PRIORITY in each case (e.g. if bash is installed before busybox). The problem is that do_install of busybox creates a link to busybox.nosuid. Is there a reason for that? Shouldn't update-alternatives create that link for us? There is already a patch available that targets this problem (467b19efbaa9c0cb04d2665e8cd9a0919849a5ed ) but it only works if ash is completely disabled in the busybox config.
>
> So the main question is, wouldn't it be possible to remove this lines completely?
>
> Regards,
> Stefan
>
>

I can confirm that this is indeed a problem. And we need to fix this.
I think the reason for this line is mainly to make 'busybox' provide 
'/bin/sh' so that do_rootfs would succeed.

Regards,
Chen Qi

