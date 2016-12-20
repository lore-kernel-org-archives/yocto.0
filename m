Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DA7CE00BC1; Tue, 20 Dec 2016 13:10:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4BD2E00848
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2016 13:10:45 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id uBKLAgmm005285
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Dec 2016 13:10:42 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.231) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Dec 2016 13:10:41 -0800
To: Saul Wold <sgw@linux.intel.com>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>, OpenEmbedded List
	<openembedded-core@lists.openembedded.org>
References: <1482265407.12532.55.camel@linux.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <39dc3b99-ad89-2916-c467-5fae81ff9d62@windriver.com>
Date: Tue, 20 Dec 2016 15:10:40 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1482265407.12532.55.camel@linux.intel.com>
Cc: Yocto Discussion <yocto@yoctoproject.org>
Subject: Re: [Openembedded-architecture] Deprecating hddimg/isoimg
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
X-List-Received-Date: Tue, 20 Dec 2016 21:10:48 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 12/20/16 2:23 PM, Saul Wold wrote:
> 
> Folks,
> 
> For years we have wanted to get rid of the hddimg/iso type, we now have
> the WIC tool integrated into OE-Core such that we can build properly
> partitioned disk images.

No objection to getting rid of them, but I would love to see them replace with
one or more sample WIC configurations that resulted in -exactly- the same behavior.

--Mark

> Historically the hddimg was a single FAT filesystem that contained
> boot-loader, the kernel and a rootfs.img file for booting Intel Arch
> machines. This has a 4G limit due to the FAT limitations and we are
> starting to see this limit hit more frequently.
> 
> Are there any other usages out there that we are not aware of?
> 
> Any reasons that this should not get deprecated at this time?
> 
> Sau!
> 
> _______________________________________________
> Openembedded-architecture mailing list
> Openembedded-architecture@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture
> 


