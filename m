Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A85BE0074B; Tue, 15 Jul 2014 23:20:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7E78E00547
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 23:20:39 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id ey11so719239pad.10
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 23:20:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=USnQxxNXwPcICYmVK0kPkh4LkNj6SHvGl/5aZixrM3c=;
	b=I/4Iv68TgricRQ1Sv6jZG3nWHYPez0md6lJxvvHCvouD53WE7prCVBW+6sQL4Yklue
	p4HvKgPdSUkK3dLdssNl0xFAplNNgnzjf1onyFEq+7O+IEOxFKxw4yJg7ObydT2uImsf
	c0He0U6cffdbHvHSYOrzPCcPVk09r5TMPruRAAztl+P53bfZmczmX6C2W/iaG+Xs4ncU
	YWwa98vtJb5dE136I/HUcoVw5V6Y3UOstT+I6vzUcfWD5I+reRtmJvw9u63W7urkWJRP
	QiPW8TKbiOgum8c07HsVyBg89X8R9dG/gy2wLw7gDheXbZ00UTHw4lQp4Lph3P1H5L8a
	BLTw==
X-Gm-Message-State: ALoCoQkX6y/XBH0/qFcXyvkWyxf7vCZ7z0emVBCc9EdjT56qsxgad6pyJR8aOUaxI6yyUgt0GjIG
X-Received: by 10.66.119.136 with SMTP id ku8mr8349149pab.121.1405491638790;
	Tue, 15 Jul 2014 23:20:38 -0700 (PDT)
Received: from [172.16.1.20] (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	xk1sm66706918pac.21.2014.07.15.23.20.37 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 15 Jul 2014 23:20:38 -0700 (PDT)
Message-ID: <53C619B3.7050203@mvista.com>
Date: Tue, 15 Jul 2014 23:20:35 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: openembedded-devel@lists.openembedded.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: WIreshark 1.12.x
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
X-List-Received-Date: Wed, 16 Jul 2014 06:20:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I have the latest wireshark 1.12.0-rc2 building and working with gtk2. 
Is anyone else working on this? if not I can submit patches.

I am not sure which layer wireshark should swim in,  meta-networking or 
meta-security ?

- Armin

