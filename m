Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14749E00D84; Mon, 11 Dec 2017 21:01:49 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB7CAE00CFF
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 21:01:47 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vBC51jJx003310
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Dec 2017 21:01:45 -0800 (PST)
Received: from server.local (128.224.21.204) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 11 Dec 2017 21:01:45 -0800
To: Paulo Neves <ptsneves@gmail.com>, Yocto list discussion
	<yocto@yoctoproject.org>
References: <CAJO0J4hrHhV=uSTYP7RDh9o9F7Q2OVjVjw0EnbFesmFdF2GAqg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <164368ff-4a7f-6981-1d5a-ba8d235abfd6@windriver.com>
Date: Tue, 12 Dec 2017 00:01:44 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAJO0J4hrHhV=uSTYP7RDh9o9F7Q2OVjVjw0EnbFesmFdF2GAqg@mail.gmail.com>
Subject: Re: user space package recommends kernel fragment with builting CONFIG
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
X-List-Received-Date: Tue, 12 Dec 2017 05:01:49 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-12-11 10:19 AM, Paulo Neves wrote:
> Hello all,
> 
> I have the idea I am doing someting in a strange way but correct me if
> I am wrong.
> I want to make hostapd RRECOMEND .config fragments which have wireless
> drivers. How do I achieve this?

You can't really do it via the hostapd recipe, since if you could, you'd
break the separation between recipes (and if the build system allowed
it, you'd be able to influence any other recipe from another .. and a
lot would break).

You'll need to have a kernel bbappend in your layer, and from there,
you can use the KERNEL_FEATURES variable (if the fragment is in the
common kernel-cache) or put a .cfg fragment on the SRC_URI.

If you want to conditionally trigger the SRC_URI addition or the
KERNEL_FEATURE, you could use a distro feature that both hostapd
and the kernel recipe use to enable a set of common features.

Cheers,

Bruce



> 
> Paulo Neves
> 


