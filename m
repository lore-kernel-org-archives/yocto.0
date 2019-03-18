Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32BD1E00CE0; Mon, 18 Mar 2019 00:14:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.161 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd14161.aruba.it (smtpcmd14161.aruba.it [62.149.156.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85B27E00CBC
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2019 00:14:06 -0700 (PDT)
Received: from [192.168.24.172] ([79.2.65.198])
	by smtpcmd14.ad.aruba.it with bizsmtp
	id pKCf1z00X4GeqKz01KE4UG; Mon, 18 Mar 2019 08:14:04 +0100
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <a742a786-22c4-2eab-0d10-71291249d4fc@faresoftware.it>
Date: Mon, 18 Mar 2019 08:12:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.3
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1552893244; bh=bbE7uv8bbvsrQf/DdqZnUG6/ogsMk01oSWPsGrN9f3Y=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=fleskB7+sXerzqPZ2Pw/HyiWEia4eyYIKHO3NoxqbDi+OzuI6S/o8aivmri/Ay+ZK
	4XACvJ//lSD638vxYsXGXE5dIYFTYx/HpJooUdYPG96HsbwCGCuNdd0h71AP6nq+Ny
	XuPScDJvumx83GovVOVmq86rO2hPlVD4SPzGYxqescKtJWCXED1Vgw1b61L4VaIY2B
	TF3Ee+6v1+rddUUMg52TRn4XJKTEAgx92E/9wDzJ83GwsYGAKmL0rUl4nh6G+9PHc1
	yr+amSwZx/EseJrR8UlUY4R5091QNGaCAgFs62aGLoqqhSOTDqsNdEgpw8G0t+LwUt
	WRbsasMoPtm1g==
Subject: How to produce Release.gpg
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
X-List-Received-Date: Mon, 18 Mar 2019 07:14:08 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I have a system based on Debian package-management.

I need to sign the Release index in Release.gpg when the debian-like 
repository is made.


If I do

bitbake system-image


in tmp/deploy/deb subfolders a Debian repository is saved, but 
Release.gpg missing. Only Release file is present.


Is it possible to sign Release automatically from bitbake?


Best regards,

   MZ


