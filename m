Return-Path: <surya.n@easyarm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89388E00C1C; Mon, 14 Dec 2015 03:53:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0371]
X-Greylist: delayed 6374 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Dec 2015 03:53:31 PST
Received: from linux8.hostguy.com (ns16.hostguy.com [144.76.114.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B918E0078A
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 03:53:31 -0800 (PST)
Received: from [106.51.36.173] (port=47323 helo=[192.168.1.27])
	by linux8.hostguy.com with esmtpsa (TLSv1:DHE-RSA-CAMELLIA256-SHA:256)
	(Exim 4.85) (envelope-from <surya.n@easyarm.com>) id 1a8Q26-002iMr-4z
	for yocto@yoctoproject.org; Mon, 14 Dec 2015 15:37:15 +0530
Message-ID: <566E94C3.5040206@easyarm.com>
Date: Mon, 14 Dec 2015 10:06:59 +0000
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
Subject: Qtmultimedia issue
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
X-List-Received-Date: Mon, 14 Dec 2015 11:53:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I need some help regarding qtmultimedia .Currently i am trying to build 
qt5.3.2 with qtwebengine .It builded properly without any error but when 
i am trying to using the "qmake" of this and build any graphic related 
applications ,it is showing some error as below:

Project ERROR: Unknown module(s) in QT: script multimedia

I have enabled both qtmultimedia  & qtscript by hob ,,but still no idea 
why its not taking that.


Thanks & Regards
Surya

