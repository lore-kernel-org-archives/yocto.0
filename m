Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EB7EE0092E; Thu, 15 Jan 2015 05:04:44 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E798E00906
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 05:04:40 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t0FD4cef002936
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 15 Jan 2015 05:04:38 -0800 (PST)
Received: from server.local (128.224.21.220) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.174.1;
	Thu, 15 Jan 2015 05:04:38 -0800
Message-ID: <54B7BAE5.7020700@windriver.com>
Date: Thu, 15 Jan 2015 08:04:37 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: <Neil.Wu@Emerson.com>, <yocto@yoctoproject.org>
References: <20141211004713.GC4102@mentor.com>	<1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
	<3204FE6663E1F14CAF4CA6928E60C8522763CB6C@USSTLZ-PMSG012.emrsn.org>
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8522763CB6C@USSTLZ-PMSG012.emrsn.org>
Subject: Re: can't find the source code of kernel
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
X-List-Received-Date: Thu, 15 Jan 2015 13:04:44 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-01-15 5:03 AM, Neil.Wu@Emerson.com wrote:
> Hi ,all
>
> The version of poky is 1.7. I build the linux-yocto is  successful .
>
> bitbake linux-yocto
>
> But, why I can’t find the source code of linux  in ${WORKDIR}.

It should be there (note: it is about to move in master, but not in 1.7.1).

In WORKDIR, you have "linux" (the source) and linux-$MACHINE-build (the 
build).

Bruce

>
> Best wishes
>
> Neil
>
>
>


