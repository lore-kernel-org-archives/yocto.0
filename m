Return-Path: <surya.n@easyarm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A7D7E00D2E; Tue, 10 May 2016 04:58:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0014]
X-Greylist: delayed 4047 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 May 2016 04:58:15 PDT
Received: from linux8.hostguy.com (linux8.hostguy.com [144.76.114.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 355ABE00D25
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 04:58:15 -0700 (PDT)
Received: from [106.51.36.173] (port=46691 helo=[192.168.1.17])
	by linux8.hostguy.com with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <surya.n@easyarm.com>) id 1b05FG-001JjW-W4
	for yocto@yoctoproject.org; Tue, 10 May 2016 16:20:46 +0530
Message-ID: <5731BCF5.6080403@easyarm.com>
Date: Tue, 10 May 2016 10:50:29 +0000
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
Subject: Initscript issues-Yocto
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
X-List-Received-Date: Tue, 10 May 2016 11:58:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I am trying to call a script  at booting time . So , as per my knowledge 
i have created a script & kept it inside poky/meta/initscript folder & 
changed the recipe file for it accordingly ,so that run level links will 
be created .Everything works fine ,but the daemons which i called from 
that script are not running automatically at the boot time.

Basically i need bluetooth & wpa_supplicant daemons to be called at boot 
time.


When i run manually  "./update-rc.d myscript.sh defaults" ,its working 
fine.But i need it to be done automatically at booting.

Any suggestion regarding this.


Thanks & regards
Surya

