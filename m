Return-Path: <urs.fassler@bytesatwork.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C53D7E008FB; Wed, 19 Nov 2014 07:26:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 354 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Nov 2014 07:26:46 PST
Received: from bytesatwork.ch (bytesatwork.ch [91.135.72.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF364E008F2
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 07:26:46 -0800 (PST)
Received: from [192.168.2.20] (201-97.77-83.cust.bluewin.ch [83.77.97.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested) (Authenticated sender: urs)
	by bytesatwork.ch (Postfix) with ESMTPSA id 0C9791800003
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 16:19:58 +0100 (CET)
Message-ID: <546CB553.4050108@bytesatwork.ch>
Date: Wed, 19 Nov 2014 16:20:51 +0100
From: =?UTF-8?B?VXJzIEbDpHNzbGVy?= <urs.fassler@bytesatwork.ch>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: sharing directories between users on same machine
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
X-List-Received-Date: Wed, 19 Nov 2014 15:26:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
we try to share the sstate-cache and download directory between multiple 
users on the same machine.

It seems that this don't work as yocto want to overwrite some files in 
those directories, but does not have the rights (since another user 
created them).

Is this not an use case?
- If it should work, can somebody give pointers what might went wrong
   (some missing configuration or so)
- If it can not work, can we do that differently?


Thanks
Urs

