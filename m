Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC98AE00B45; Thu,  1 Jun 2017 08:08:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 585 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Jun 2017 08:08:36 PDT
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7ADEE00992
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 08:08:36 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id ABB3227F1C5
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 14:58:47 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id l9BXI7RRe7_x for <yocto@yoctoproject.org>;
	Thu,  1 Jun 2017 14:57:38 +0000 (UTC)
Received: from [192.168.0.12]
	(cpc111193-live30-2-0-cust656.17-2.cable.virginm.net [92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id DF20327F1B8
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 14:57:37 +0000 (UTC)
To: yocto@yoctoproject.org
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <56726a48-bb3f-75d1-6a72-64b45eb4d553@dynamicdevices.co.uk>
Date: Thu, 1 Jun 2017 15:57:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: Transaction check error building core-image-mono with pyro
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
X-List-Received-Date: Thu, 01 Jun 2017 15:08:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

I'm updating the meta-mono layer with support to build the test 
core-image-mono image under pyro (fine with morty).

It's getting to the point where it starts to create the root file-system 
image then fails with a transaction check error:

...

Running transaction check
Transaction check succeeded.
Running transaction test
Error: Transaction check error:
   file /usr/lib/mono conflicts between attempted installs of 
gtk-sharp-2.12.21-r0.i586 and mono-libs-4.5-5.0.1.1-r0.i586
   file /usr/lib/mono/gac conflicts between attempted installs of 
gtk-sharp-2.12.21-r0.i586 and mono-gac-5.0.1.1-r0.i586

Error Summary
-------------
...


This seems to be suggesting that /usr/lib/mono and /usr/lib/mono/gac are 
files, although they are directories.

I had a look in the logs and the RPMs for gtk-sharp-... 
mono-libs-4.5-... and mono-gac-... but I can't see any obvious file 
conflicts.

Can anybody enlighten me as to what I'm missing?

Thanks,

Alex



