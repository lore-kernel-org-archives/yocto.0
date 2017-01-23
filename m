Return-Path: <prvs=0196117200=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8E5EE00828; Mon, 23 Jan 2017 01:04:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [148.251.71.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 6550 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Jan 2017 01:04:40 PST
Received: from mx26-01.smtp.antispamcloud.com (mx26-01.smtp.antispamcloud.com
	[148.251.71.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53BB8E007EB
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 01:04:40 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx26.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1cVYqb-0006zF-Ab; Mon, 23 Jan 2017 08:15:26 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 23 Jan 2017 08:15:24 +0100
To: Leon Woestenberg <leon@sidebranch.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<40274d5f-c074-8ee5-bb41-5cb66f5da9bd@topic.nl>
	<CALXw4G6VmPJqb6tc+148SADpX-SauFR9GneZ51eBoMdfmcK=AA@mail.gmail.com>
	<cb2342be-f33b-e59d-b5e8-66f752110178@topic.nl>
	<CAMjhiJibYBbzEF39WPi7QqSmLvvZ=b52YhqmDo0JyO08LbKRJQ@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <c820a2c7-aee8-d5d0-977d-2b7f923a8c28@topic.nl>
Date: Mon, 23 Jan 2017 08:15:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAMjhiJibYBbzEF39WPi7QqSmLvvZ=b52YhqmDo0JyO08LbKRJQ@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.11)
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNLHF
	AfHmimHdkM6YRd0Qc+vvJJbzOb6rur4Sm9aF14wzKWJMkVij1QPltQgJyeqLmGbjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAAdpU0oUDqng6Dyy2mQeofiSL9U1zNlOsbtflGMsKNMCF1el35jO+WJBgrWGjAavfuifnL+9wg
	oTj4ygNPw1XfN1IUJ2+rCMPpQhII5VkEVC//8GRISD+lYCwA5l6/Q4nfg8y63jKKBrO1BroJmvb9
	eT8kHW9H2hRLhdyUliQjVDSRVYKU9W9tbmVXJBqdHHDml2fQHaY9hVoT9jGvxqBU4l5OTHLiyLVU
	tMfloK+xuF/fUy6xfZdyLRnwP1q5wC1eCGJ9M3CjWVSyiqlZshFwuQx3aqYSt6yxat40j4o7rFZO
	W4MzMsIrWXQLJgN5ypvv2YI5PogHEGUWoL6eStEYApwKXoD4iJBsNfB/QPOzo3NC59y3EFXUwBcT
	DQ0nlghOTckC4oN5XN7BzTWQhrf/s1H7MX6tA/LB3QqqQRrkS7+j0LSY7c3j7VVkhxlqhhBxLQXY
	L+64eBC3wEe7PB7ESwiAb/QplRsXu2V2A4fVCJMPRNfJPo9XcGakgPA3Oit8
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
X-Recommended-Action: accept
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Mon, 23 Jan 2017 09:04:44 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 21-01-17 13:41, Leon Woestenberg wrote:
> Hello Mike,
>
> On Fri, Jan 20, 2017 at 3:27 PM, Mike Looijmans <mike.looijmans@topic.nl
> <mailto:mike.looijmans@topic.nl>> wrote:
>
>     An no one (except one of the systemd folks) has come up with a progra=
m
>     that just waits for the the processes to finish (with a timeout) and =
only
>     uses the "-9" double barrel shotgun to finish only the ones that didn=
't
>     respond?
>     (though doing that is rather pointless if the system power is about t=
o be
>     cut anyway...)
>
> What lesser-brain-dead "one of the systemd folks" solution is that?

Sorry if I wasn't clear. The systemd folk seems to have gotten it right.

The problem with the "sleep" is that 5 seconds is way too long, since most=
=20
processes will finish in mere milliseconds. But 5 seconds is also way too=20
short, because if a program needs to spin up a harddisk to write out its fi=
nal=20
state, it'll need about 7 seconds to do so on the average 3.5" disk...



Kind regards,

Mike Looijmans
System Expert

TOPIC Products
Materiaalweg 4, NL-5681 RJ Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






