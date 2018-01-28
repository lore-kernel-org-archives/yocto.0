Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 125DDE00DBA; Sun, 28 Jan 2018 07:05:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 493 seconds by postgrey-1.32 at yocto-www;
	Sun, 28 Jan 2018 07:05:23 PST
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F1D9E00942
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 07:05:23 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 414BA35CE51
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 14:57:09 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 31wn9o-O37S5 for <yocto@yoctoproject.org>;
	Sun, 28 Jan 2018 14:57:00 +0000 (UTC)
Received: from [192.168.0.133]
	(cpc111193-live30-2-0-cust656.17-2.cable.virginm.net [92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 9C02635C14A
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 14:56:59 +0000 (UTC)
To: Yocto discussion list <yocto@yoctoproject.org>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <ef07addc-3840-eceb-85d9-97d79ff3d240@dynamicdevices.co.uk>
Date: Sun, 28 Jan 2018 14:57:01 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
Subject: Error running testimage under the autobuilder with pyro branch
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
X-List-Received-Date: Sun, 28 Jan 2018 15:05:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB

Hi all,

I've got some simple automated testing going to test meta-mono 
core-image-mono builds.

It just bitbakes the image then runs the testimage command

This works fine for master and rocko branches, but I get a failure for pyro

     Exception: TypeError: Test oeRuntimeTest is not derived from 
OERuntimeTestCase

The rest of the log is here: https://pastebin.com/NRVLLtsF

Can anybody point me towards what might have changed between branches / 
where I'm going wrong?

Thanks,

Alex


