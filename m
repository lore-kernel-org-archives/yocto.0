Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68608E0052B; Fri,  6 Jan 2017 18:56:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 212E7E00510
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2017 18:56:35 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v072uY9S001195
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 6 Jan 2017 18:56:34 -0800
Received: from server.local (128.224.20.249) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 6 Jan 2017 18:56:33 -0800
To: Jussi Laako <jussi.laako@linux.intel.com>, <yocto@yoctoproject.org>
References: <20170104151937.14632-1-jussi.laako@linux.intel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <b380dccb-7d4c-38a3-2328-c41364f1183a@windriver.com>
Date: Fri, 6 Jan 2017 21:56:32 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170104151937.14632-1-jussi.laako@linux.intel.com>
Subject: Re: [PATCH 0/2] yocto-kernel-cache: Update audio support and add Firewire support
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
X-List-Received-Date: Sat, 07 Jan 2017 02:56:38 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-04 10:19 AM, Jussi Laako wrote:
> Here are two patches for yocto-kernel-cache:
> 1) Updates audio support configuration and removes some legacy stuff
> 2) Adds kernel feature for Firewire support

I merged the firewire support from here, and the audio from the v2
patch.

The changes are pushed, and I'll send SRCREV updates on Monday once
I'm back in the office.

Bruce

>


