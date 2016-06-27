Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC4A2E00956; Mon, 27 Jun 2016 07:08:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: ***
X-Spam-Status: No, score=3.3 required=5.0 tests=BAYES_20,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.249.122.181 listed in list.dnswl.org]
	*  3.3 RCVD_IN_SBL_CSS RBL: Received via a relay in Spamhaus SBL-CSS
	*      [106.39.222.33 listed in zen.spamhaus.org]
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0549]
X-Greylist: delayed 1774 seconds by postgrey-1.32 at yocto-www;
	Mon, 27 Jun 2016 07:08:03 PDT
Received: from ld138.inmotionhosting.com (ld138.inmotionhosting.com
	[192.249.122.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7654DE0091D
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 07:08:03 -0700 (PDT)
Received: from [106.39.222.33] (port=5766 helo=[10.168.2.207])
	by ld138.inmotionhosting.com with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-SHA:256) (Exim 4.86_1)
	(envelope-from <richard.zhang@pica8.com>) id 1bHWk5-0001Sx-Gm
	for yocto@yoctoproject.org; Mon, 27 Jun 2016 06:38:28 -0700
To: yocto@yoctoproject.org
From: richard zhang <richard.zhang@pica8.com>
Message-ID: <57712C4E.6060400@pica8.com>
Date: Mon, 27 Jun 2016 21:38:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-102.9
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - ld138.inmotionhosting.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - pica8.com
X-Get-Message-Sender-Via: ld138.inmotionhosting.com: authenticated_id:
	richard.zhang@pica8.com
X-Authenticated-Sender: ld138.inmotionhosting.com: richard.zhang@pica8.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: How to add recipes to images not RPMs.
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
X-List-Received-Date: Mon, 27 Jun 2016 14:08:03 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all

     I try to add some ricepes to meta layer.The do_fetch and do_compile 
things are fine.
     But when I went to image,there is no packages just added.
     I find my packages in build/tmp/deploy/rpm .
     How to add these packages to image.

     I have do this when I use 'hob',but i don't know how to select them 
without 'hob'.


best regard.
Richard Zhang


