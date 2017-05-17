Return-Path: <contact@jgueytat.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AECEDE00970; Wed, 17 May 2017 03:05:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_50,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
X-Greylist: delayed 1222 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 May 2017 03:04:58 PDT
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2251BE00710
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 03:04:58 -0700 (PDT)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id B3FBF487E05
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 11:36:44 +0200 (CEST)
Received: from mfilter27-d.gandi.net (mfilter27-d.gandi.net [217.70.178.155])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id 4FE6DC5A50
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 11:36:42 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter27-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter27-d.gandi.net (mfilter27-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id PTVIsIquHyDd for <yocto@yoctoproject.org>;
	Wed, 17 May 2017 11:36:41 +0200 (CEST)
X-Originating-IP: 10.58.1.142
Received: from webmail.gandi.net (webmail2-d.mgt.gandi.net [10.58.1.142])
	(Authenticated sender: contact@jgueytat.fr)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPA id 105DEC5A83
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 11:36:40 +0200 (CEST)
MIME-Version: 1.0
Date: Wed, 17 May 2017 11:36:40 +0200
From: Julien Gueytat <contact@jgueytat.fr>
To: yocto@yoctoproject.org
Message-ID: <a301bd6c5c6857696e7e39836de3966c@jgueytat.fr>
X-Sender: contact@jgueytat.fr
User-Agent: Roundcube Webmail/1.1.2
Subject: [meta-raspberrypi] Pi 0 minimal consumption reached with Yocto?
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
X-List-Received-Date: Wed, 17 May 2017 10:05:00 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi everyone,

I'd like to try out the Pi 0 for a Time-lapse photography project.
I want to power it up with a solar rechargeable battery. Those kind of 
battery that can be found on Amazon does bring at most 1.5W.
So... Let's say 100mA during the daylight.

The question is :
Do you know what is the minimal consumption of a Pi0?
And if we can setup some idle mode during night?

Best!!

-- 
"Yesterday is history, Tomorrow is a mystery, But today is a gift. That 
is why it is called the "present"."

Adress: 29 Boulevard Joseph Garnier 06100 Nice FRANCE
Mobile: +33 6 17 98 03 83

