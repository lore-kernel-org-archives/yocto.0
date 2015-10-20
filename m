Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA4CBE00B94; Tue, 20 Oct 2015 07:39:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A08DBE00A26
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 07:39:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t9KEdTIP026452
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Oct 2015 07:39:29 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 20 Oct 2015 07:39:29 -0700
To: Luo Zhenhua <zhenhua.luo@freescale.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <BN3PR03MB1367AA0561777CD38E796C40E4390@BN3PR03MB1367.namprd03.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <5626520F.1070303@windriver.com>
Date: Tue, 20 Oct 2015 10:39:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <BN3PR03MB1367AA0561777CD38E796C40E4390@BN3PR03MB1367.namprd03.prod.outlook.com>
Subject: Re: multiple yocto-kernel-cache mirrors support in linux-yocto style recipe
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
X-List-Received-Date: Tue, 20 Oct 2015 14:39:51 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 15-10-20 09:01 AM, Luo Zhenhua wrote:
> Hi,
>
> I created a bbappend for linux-yocto_4.1.bb to use our own kernel source
> git url, a yocto-kernel-cache git tree is created to manage the distro
> specific kernel fragments, I want to use both Yocto yocto-kernel-cache
> and our own yocto-kernel-cache git, can this multiple yocto-kernel-cache
> mirrors be supported by linux-yocto style bb file? If no, what’s the
> best method to handle such multiple kernel fragments mirrors case?

Just add them into the SRC_URI, with their own name, destination and
type of kmeta (just like the yocto one).

The system will pick them up as meta data sources and allow them to
be used.

Cheers,

Bruce

>
> Best Regards,
>
> Zhenhua
>
>
>


