Return-Path: <surya.n@easyarm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1E29E00D3B; Thu, 24 Nov 2016 06:38:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0682]
X-Greylist: delayed 3224 seconds by postgrey-1.32 at yocto-www;
	Thu, 24 Nov 2016 06:38:22 PST
Received: from linux8.hostguy.com (linux8.hostguy.com [144.76.114.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A42F8E00BAD
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 06:38:22 -0800 (PST)
Received: from [106.51.36.173] (port=44699 helo=[192.168.1.17])
	by linux8.hostguy.com with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <surya.n@easyarm.com>) id 1c9uKJ-0017U5-6B
	for yocto@yoctoproject.org; Thu, 24 Nov 2016 19:14:35 +0530
Message-ID: <5836EEC2.7070508@easyarm.com>
Date: Thu, 24 Nov 2016 19:14:34 +0530
From: Surya <surya.n@easyarm.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - linux8.hostguy.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - easyarm.com
X-Get-Message-Sender-Via: linux8.hostguy.com: authenticated_id:
	surya.n@easyarm.com
X-Authenticated-Sender: linux8.hostguy.com: surya.n@easyarm.com
Subject: Qt Library Version issues
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
X-List-Received-Date: Thu, 24 Nov 2016 14:38:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello ,

I am trying to upgrade the qt5 version from 5.4.2 to 5.5.1 
.So,accordingly i changed the recipe file & compiled.
Now after everything is executed properly,i found that the library which 
are generated still of qt5.4.3.

I have no idea on the above issue.
Can anyone plz light me on this.


Regards
Surya

