Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CF66E0082D; Wed, 28 Jan 2015 18:34:19 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23B70E0080C
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 18:34:18 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t0T2YEIF015479
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 28 Jan 2015 18:34:14 -0800 (PST)
Received: from [128.224.163.137] (128.224.163.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Wed, 28 Jan 2015 18:34:14 -0800
Message-ID: <54C99C23.5060706@windriver.com>
Date: Thu, 29 Jan 2015 10:34:11 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Lei, Maohui" <leimaohui@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1B56A49860EB2D45ADE3731B15C959FDAE7982@G08CNEXMBPEKD01.g08.fujitsu.local>
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FDAE7982@G08CNEXMBPEKD01.g08.fujitsu.local>
X-Originating-IP: [128.224.163.137]
Subject: Re: Help -- Where can I get the LSB test log
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
X-List-Received-Date: Thu, 29 Jan 2015 02:34:19 -0000
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit

The log should be in /var/opt/lsb/test/manager/results/

Yi

在 2015年01月29日 10:04, Lei, Maohui 写道:
> Hi all
>
> Was LSB test executed  in yocto 1.7.1 release？ Where can I get the LSB test log and result?
>
> Best Regards,
> Lei Maohui


