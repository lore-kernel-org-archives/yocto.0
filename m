Return-Path: <bob.feretich@rafresearch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67244E00B62; Tue,  6 May 2014 15:32:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.39.63.170 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm22-vm6.access.bullet.mail.gq1.yahoo.com
	(nm22-vm6.access.bullet.mail.gq1.yahoo.com [216.39.63.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53391E00975
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 15:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1399415522; bh=8Mib2jSKOBZEELp8ZBPzKEYUMXJGxKISBsSivkxQgUY=;
	h=Received:Received:Received:X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:X-Rocket-Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=bXTFJGSDBNUc7BYccfgtZBwPFiHi6gR9dRP638GoWyAdfv/tOid0i5zdQORMbKB9B6SiTdy9b3pXwsy8A59GXJYZK1QjlmSAxOHr9F9V46uJjttNOuhqVHlwDnm/OeOvT69zrxVU3V+vnjJ2qikH5mq9SQ1L2HQJCJ0g0W+xASK8iNKFGqOJXWeEbNhZG8RFOvyebd4bGzpyrjlyU8VDYcECgKbrqrdTXAKUJlkqhu/lf7FHxK1pLJTZBNcBecEbNtZ6vlrLWu6IA8VXkRd5Z7e78uULg+B1I9KXRsY7ctnuk+e56mvaBqda+WoqLZ1xnvEXhv8NboX17i/y73CgzA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=t5D1sPrsUYbUsNcu7A52l1XcHY8FJniUlN2HIOz9KG0yIStw0lvaWZWanhkhxLYOSk8iy2NcGWnhg8G3k6cUsVQhvEchN24YMSENLeQprAuehRI70gz4sHRkjjIj452XdMYXi9x6mu18Sx72wWN1NFQPCSZ23fdKugCLkv3FAAFGYJ1Ifyx4mSOsNbXEGc98Is2h3/dR2ipHfAJdyY6Tn/p3aH2ng7gnqflr6k8ojY4ZUD4HG8idG0lI1x7/A//XXIeHS2+VtK/k22fpmzvogeLbTrIQ5T3zX1au1+/nTKOw68kzBVqRtsGQnsDsjmzd9zcjy3xqJC8usL3IF2yvMQ==;
Received: from [216.39.60.168] by nm22.access.bullet.mail.gq1.yahoo.com with
	NNFMP; 06 May 2014 22:32:02 -0000
Received: from [67.195.22.116] by tm4.access.bullet.mail.gq1.yahoo.com with
	NNFMP; 06 May 2014 22:32:02 -0000
Received: from [127.0.0.1] by smtp111.sbc.mail.gq1.yahoo.com with NNFMP;
	06 May 2014 22:32:02 -0000
X-Yahoo-Newman-Id: 918173.66474.bm@smtp111.sbc.mail.gq1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: kWVCiP4VM1ldN1pvKtQOcbqWcGIAsczCcem13oy1z.CSX7a
	LzvuAu10_B91yNMnhRLBh1R1bxQhE1MRi20NFfWeqI0r9jviqUjocaR5hWfY
	IsMmrzpKKxtdhgZzXPhqdXT56c2FMJgyOvhNJfKBFmzauwaYjm.jhTw6TPpo
	c_BbYIajlGFN0NjxHPMztvalD1VOJzGCCgHeuktDhnoAP1co.DnyA2yBQD1y
	Z_nYkg_xBqp2Sd4z5RHnnTbtIX7sV3D7wkejxiEnK7DK9KrjkxoIWi0l_ynG
	COnLhbOA7sVlmcYeZxgZcmuvIG6sxaYKzaN0In5DgMdrN7l3QLN41GN.ft9l
	Fe83lFknjUobtSKC9yXfwUIywO8Z4WxDftUelc.Y.HlatWsmE2BoWpcrDyas
	SXJfSwG4p4JWw19Q3vVSvOVsGKgDSXwSnX9rt1Nqt.o_VT9KxBQRAVJAxFRL
	8HIQUZ37Tj1VgykNA_YyWkmuL9iPmzuxVAHkFRO6859qVnH0cOtXp4oSo1zA
	0wfEEMSQyhRA4v1PwHyLMZEZdEMuJOYeF1Dw1kpxR228agHga3xrXnxKd1iq
	WPl6iDb6bp._zFShQGWXpYl0_.F7DNdEJ_DAjXcNRY05vrKb5x0vwK5pFWRI
	ic5QtN3ZMmKu7pau1.dYZCZQMGLXl5ISbOQ.wnRvq7o_4euWXsLf062tGmR7
	qp53xlPBPrUAKvfkL1dASJ_iqtPOSX0KTXXI-
X-Yahoo-SMTP: jHZ71LyswBA8vPppSFebFmPnYvk1gIPKrFjcBqA_GiVlfXPeew--
X-Rocket-Received: from [192.168.1.101] (bob.feretich@71.131.8.66 with plain
	[67.195.15.5]) by smtp111.sbc.mail.gq1.yahoo.com with SMTP;
	06 May 2014 22:32:02 +0000 UTC
Message-ID: <536962D8.1040007@rafresearch.com>
Date: Tue, 06 May 2014 15:31:52 -0700
From: Bob Feretich <bob.feretich@rafresearch.com>
User-Agent: Mozilla/5.0 (Windows NT 6.0;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: A simpler way of creating an using a local kernel repository - BeagleBone example
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
X-List-Received-Date: Tue, 06 May 2014 22:32:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have had problems getting good download performance when accessing the 
kernels at kernel.org. Since I expect to build the kernel several times, 
I decided to create a copy of the kernel repository locally and use that 
for my builds.

There are instructions on how to create a local repository in the Yocto 
manuals, but those are more complex than I needed. (I don't plan on 
checking anything into the repository.)

The below is a simpler way of creating and using the repository.
I'm publishing this because my search though the Yocto/OE/Angstrom 
yielded only the more complicated or incomplete methods.

// First set up local kernel repository
mkdir ~/ksrc3-8
cd ~/ksrc3-8
git clone --bare 
git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git 
stable-work-bare.git

// Then modify the kernel recipe to use the local repository instead of 
the the one at kernel.org.
// The beaglebone recipe for the 3.8 kernel is at...
setup-scripts/sources/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb

// Replace the file's SRC_URI with one that points to your local repository.
#SRC_URI = 
"git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;branch=linux-3.8.y"
SRC_URI = "git:///home/Bob/ksrc3-8/stable-work-bare.git;branch=linux-3.8.y"

Regards,
Bob

