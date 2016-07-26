Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3ED1E00C4B; Tue, 26 Jul 2016 06:16:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A92DEE00C40
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 06:16:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u6QDGW9S026188
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 26 Jul 2016 06:16:32 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 26 Jul 2016 06:16:32 -0700
To: Jacob Kroon <jacob.kroon@gmail.com>, <yocto@yoctoproject.org>
References: <3ed8be9d-fd17-527a-129b-96f05204528b@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <579762AF.7070103@windriver.com>
Date: Tue, 26 Jul 2016 09:16:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <3ed8be9d-fd17-527a-129b-96f05204528b@gmail.com>
Subject: Re: kernel-devsrc and .kernel-meta
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
X-List-Received-Date: Tue, 26 Jul 2016 13:16:37 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-07-26 05:15 AM, Jacob Kroon wrote:
> Hi,
>
> I've added kernel-devsrc to TOOLCHAIN_TARGET_TASK for the SDK.
> After installing the SDK, <target-path>/usr/src/kernel/ contains a
> .kernel-meta/ directory of size ~18MB. After some rebuilds, and new SDK
> generation/installation, that directory has grown to 512MB.
> Should this directory be dropped from the kernel-devsrc package ?

That's tracking the meta-data that was used to create the
tree .. but since the SDK doesn't actually use that data, it could
in fact be dropped.

Feel free to open a bugzilla (with all the reproducer details) and
it can be dealt with.

Bruce

>
> /Jacob


