Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62748E00867; Tue, 18 Apr 2017 04:39:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 378 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Apr 2017 04:38:55 PDT
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EA4DE00826
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 04:38:55 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 1EDF412BF0B
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 13:32:36 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id vGK6flW1DTfP for <yocto@yoctoproject.org>;
	Tue, 18 Apr 2017 13:32:13 +0200 (CEST)
Received: from [192.168.10.80] (unknown [84.246.5.113])
	(Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 8443D12ADB8
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 13:32:13 +0200 (CEST)
To: yocto@yoctoproject.org
References: <AM4PR1001MB13476AAC4A2CE5DA1A056C1FD7070@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
	<7e3d29c7-b0af-3f5f-09e2-900c140360ab@mlbassoc.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <e36ab80d-2c7f-0fab-bef3-ef33b720488e@basmevissen.nl>
Date: Tue, 18 Apr 2017 13:32:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <7e3d29c7-b0af-3f5f-09e2-900c140360ab@mlbassoc.com>
Subject: Re: Noobie questions
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
X-List-Received-Date: Tue, 18 Apr 2017 11:39:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 17/04/2017 13:59, Gary Thomas wrote:

> (...)  Probably best to use
> morty which is the upcoming 2.3 release
>
>>

Morty is the current 2.2 release. I would say it is the best starting 
point to get experience with Yocto.

New developments might use master or start with Morty and migrate to 2.3 
when it comes out.

Bas.



