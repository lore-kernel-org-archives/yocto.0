Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCAE0E00781; Thu,  7 Aug 2014 09:18:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B91C8E0034B
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 09:18:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s77GIdaC028689
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 7 Aug 2014 09:18:39 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Thu, 7 Aug 2014 09:18:39 -0700
Message-ID: <53E3A6DE.7010500@windriver.com>
Date: Thu, 7 Aug 2014 11:18:38 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <888B7DC5D4899F46A9721989283666969C1E56EE1B@SAFEX1MAIL5.st.com>
In-Reply-To: <888B7DC5D4899F46A9721989283666969C1E56EE1B@SAFEX1MAIL5.st.com>
Subject: Re: Installing Application Development SDK hangs when using "screen"
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
X-List-Received-Date: Thu, 07 Aug 2014 16:18:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/7/14, 8:59 AM, Pierre Yves MORDRET wrote:
> Hi there,
>
> I have a tricky issue to sort out. I'm using a build server(Ubuntu 12.04 LTS) for building my Yocto project and Application Dev SDK (bitbake -c populate_sdk).
> On this build server I 'm used to using "screen" tool. Using "screen" and bitbake at the same time seems to have no issues.
>
> However when installing the App. Dev. SDK via self-installer, it hangs every time after a while. The culprit seems to be "screen".
> If I am IN a "screen" session OR I am OUT "screen" session but there is a running screen session that belongs to me, it hangs.
>
> Did someone experience such trouble ? Any ideas ?

I've seen some terminal failures in the past, but it's always been due to 
overwriting in-place terminal files.

I've not seen anything on a new SDK installation.

Which branch of the Yocto Project are you using?

--Mark

> Thanks in advance
> Pierre-Yves
>
>
>
>
>


