Return-Path: <alext.mkrs@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AD36E002A6
	for <yocto@yoctoproject.org>; Sat, 15 Mar 2014 10:50:08 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id b57so1874994eek.7
	for <yocto@yoctoproject.org>; Sat, 15 Mar 2014 10:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	bh=tJcEiEvedwMTnVHSfonf2v+cooKWD/hJXM3w6tgGPIw=;
	b=NWb7lnwquHaN2SQQ2vRNZBswrw+wiGI4oK9Idvh0IawZugs9UXdJvkuAfLZ2WZoCwK
	77dRat0PZpULSH3L01EOCA0ehRTE8PxdlX9hbCAmjbKhMFqctsuvVHqEmp2fUOTxgcmk
	ksLk1ucX0pijSJ2QpDhqfWCa/i0/86OUWal8MdDKo/ygcZxsQJRiZYj1ztviNCM8o2x8
	tFtUo+FJeQfGZRzT1AKP/DYEC1lUTvFe9msZiKqanSHkj6GBCioDkoNK6xRxlb0/BDNE
	JjVbGzjkQgBooj7UmLMldohgM6aaQ/HCY0ptTPliJE2maWaGt5IyYbu8EdLFL29mgcqu
	gUGQ==
X-Received: by 10.14.8.201 with SMTP id 49mr39236eer.110.1394905807139;
	Sat, 15 Mar 2014 10:50:07 -0700 (PDT)
Received: from [192.168.1.174] (89-69-181-95.dynamic.chello.pl. [89.69.181.95])
	by mx.google.com with ESMTPSA id t4sm13891905eeb.29.2014.03.15.10.50.05
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 15 Mar 2014 10:50:06 -0700 (PDT)
Message-ID: <532492D3.8060100@gmail.com>
Date: Sat, 15 Mar 2014 18:50:11 +0100
From: Alex T <alext.mkrs@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.6
X-Mailman-Approved-At: Sun, 16 Mar 2014 20:03:47 -0700
Cc: alext.mkrs@gmail.com
Subject: Problem with git.yoctoproject.org - looks like a server-side issue, confirmed on #yocto IRC channel
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
X-List-Received-Date: Sat, 15 Mar 2014 17:50:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,

Looks like there's some problem with Yocto's git server, surfaced just
recently.

In short - "git fetch --depth=3 <refspec>", which was working just fine
about a week ago, now fails with:

===
Running: git remote add origin git://git.yoctoproject.org/poky

Running: git fetch origin --depth=3 tags/dylan-9.0.2:tags/dylan-9.0.2

fatal: The remote end hung up unexpectedly

fatal: protocol error: bad pack header

===

And we've ruled out the git client version or client's location problem
(tried three different git client versions and at least three different
people face the problem).
This is demonstrated in detail in this Intel Galileo community thread:
https://communities.intel.com/message/227798#227798

I've also got a confirmation on the #yocto IRC channel from Khem Raj,
that it must be a server-side issue. Googling the error seems to suggest
that may be a sort of OOM or other resource-related problem on the
server too.

Could you please look into that and fix, if that's indeed a server problem?

regards,
Alex

