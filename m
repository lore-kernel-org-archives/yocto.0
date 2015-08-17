Return-Path: <rob@solution-space.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A15AE00AB0; Sun, 16 Aug 2015 22:15:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TO_NO_BRKTS_PCNT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [72.18.131.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.5 TO_NO_BRKTS_PCNT To: misformatted + percentage
X-Greylist: delayed 1203 seconds by postgrey-1.32 at yocto-www;
	Sun, 16 Aug 2015 22:15:02 PDT
Received: from spfilter-2.secure-dns.net (spfilter-2.secure-dns.net
	[72.18.131.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25784E00A99
	for <yocto@yoctoproject.org>; Sun, 16 Aug 2015 22:15:02 -0700 (PDT)
Received: from plesk11.ns01.net ([116.12.48.139])
	by spfilter-2.secure-dns.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.85) (envelope-from <rob@solution-space.com>)
	id 1ZRCRh-0006Cl-LP
	for yocto@yoctoproject.org; Sun, 16 Aug 2015 22:54:58 -0600
Received: from plesk11.ns01.net (unknown [127.0.0.1])
	by plesk11.ns01.net (Postfix) with ESMTP id 30338440815E
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 04:54:51 +0000 (UTC)
Received: from laprob.localdomain (unknown [202.83.104.49])
	by plesk11.ns01.net (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 04:54:51 +0000 (UTC)
To: yocto@yoctoproject.org
From: Rob Kramer <rob@solution-space.com>
Organization: Solution Space Pte Ltd
Message-ID: <55D1691A.7040304@solution-space.com>
Date: Mon, 17 Aug 2015 12:54:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
X-Filter-ID: s0sct1PQhAABKnZB5plbIWVpKweH4uZv9/3jpRN7yp3YQX6Uo3yKSWioXrgl3qiOwS9kmloc0QPc
	6NojePGshLAWTfXey/KpBdqg9eF5Nq59uJoqQzScc5KQAtFf8Tu5O623jgkQljSQLdDTLsFSalQH
	WESzgMufUnn5ayodKotR/qJG7HYPFQv9q91hrMgQQde0QXRWRAIPssH9RjtmVqfcmgJJk+x0mfj6
	lu0NTpaLARyCGdzvZPnMVvwR9kjG5YE5enyccp7RH4WQio3uGfpSpIJ6cgDyZcxdNKc4ZLoVWvrE
	r8ZBP38PhAZ028/39R/2gMGq0KWAzmMf+ibVDt5u3TYnwZeRC1+pSN5fL2dEDG8Bab/rHJ/WEmn7
	RNW/mTSSrehwZe0zWeBi/qLW0OT7zy8Ord/8lVbIFhia29q20RdCfgC+oEUcBXLctP0RQP9eH4zI
	eioqrOzWKzgWNHrpKdhH3NEBfGAvDaw+Ey5uEAK3DDbWo0DRvEQSktiIMVVboSBT/snA43Hw3+9l
	kghL4A4U0DK1fq8l0phKayGDqE+X/czcI5QK7VzPhB1Sz8v221QfS8emr7R3CBQQT6PEP/2YZw7l
	B7YUV1NJikatI4g+l6rCWbY0MZcgnbHseLqyq0u71iuLx2S7129HKVgXnmqo/93H7CbR06cGljG7
	fI4TQj8cJIkiQBfqaxppk9SDDrLy//r4J0UB56OnPQ==
X-Report-Abuse-To: spam@spfilter-1.secure-dns.net
X-Filter-Fingerprint: IFrWXGses7OKB5S5G8/dJUb3OPwsHaH0Fvg5oXltHd9A3cTUQ1R++keuE7RDJ8Kg3RbMLUalw1oC
	mj99/u+PoqoVy8a3lsStJtAvpObFX0Wok1JBYnOLzfRIhlEHQynLUpndEJ0YoaLytXXo8BMTaX2p
	Mk7LBarWD9Fj4R3eIu6C5spubTEXAEkuBKN3yOZvUxf7JO+oAUByCkP7cAJnEooJtGZFyF6tI/I5
	CWVQH2sjWUvnt4XQmbZjx+Gtm4/p
X-Originating-IP: 116.12.48.139
X-SpamExperts-Domain: spamexpertfilter.secure-dns.net
X-SpamExperts-Username: 116.12.48.139
Authentication-Results: secure-dns.net; auth=pass
	smtp.auth=116.12.48.139@spamexpertfilter.secure-dns.net
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.60)
X-Recommended-Action: accept
Subject: Multiple libgl poviders..
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
X-List-Received-Date: Mon, 17 Aug 2015 05:15:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Is it possible to have PREFERRED_PROVIDER_virtual/libgl set to Mesa, 
build an image against that, but also include a libgl-nvidia in the 
package repository? The idea is to allow a device to be set up using a 
generic installer, and then a new libgl can be installed if the hardware 
uses Nvidia graphics.. Similar to how a dektop OS repoisitory would do it.

Alternatively, can I make just an image recipe that targets nvidia 
graphics instead of Intel graphics? So I could do 'bitbake image-intel' 
or 'bitbake image-nvidia' in the same build environment? I can't imagine 
that would work though. Would I need two 20G build environments, even 
though they are 99% the same?

Cheers,

      Rob

