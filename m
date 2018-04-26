Return-Path: <daniel.ceusan@kalosis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2717E00994; Thu, 26 Apr 2018 06:51:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2655 seconds by postgrey-1.32 at yocto-www;
	Thu, 26 Apr 2018 06:51:45 PDT
Received: from mail.kalosis.com (mail.kalosis.com [94.130.64.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 540ECE00823
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 06:51:45 -0700 (PDT)
Received: from [193.231.162.33] (abderus.integrasoft.ro [193.231.162.33])
	(authenticated bits=0)
	by mail.kalosis.com (8.14.7/8.14.7) with ESMTP id w3QD7Sxn018708
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 13:07:29 GMT
To: yocto@yoctoproject.org
From: Daniel Ceusan <daniel.ceusan@kalosis.com>
Message-ID: <b493eb58-5285-c6c8-bc7d-87153fdb072f@kalosis.com>
Date: Thu, 26 Apr 2018 16:07:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
Subject: loopback interface not brought up on 'ifup -a' automatically
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
X-List-Received-Date: Thu, 26 Apr 2018 13:51:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

I am building an image using rocko branch and installing ifupdown package:
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/ifupdown/ifupdown_0.8.16.bb?h=rocko 


If there is no loopback definition in /etc/network/interfaces file, then 
"ifup -a" brings lo interface up automatically.

If I define the lo interface:
"auto lo
iface lo inet loopback"
then lo interface is not brought up automatically by "ifup -a", even 
though from ifupdown's changelog/documentation it says both approaches 
should work.

Anyone else seen this behavior?

Thanks and regards,
Daniel

