Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08FABE009B8; Wed,  5 Aug 2015 07:45:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EADC3E009A7
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 07:45:51 -0700 (PDT)
Received: by wicne3 with SMTP id ne3so7956878wic.1
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 07:45:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=1+kfO5ZMxyKiaD2x9ui/0Pk9wYr5iTqadgAi2zmnpLA=;
	b=e3piL7Z6yKzkykvnIHOZ/R7EqQqhOq60JrNp+VDmBY1RdD0lFS1bTMXQbEw++8JRvJ
	lpORywwFcgDMU2lGzocumFV6rMiXm/awOfGNf7RGdpM5mFljabeXZks73C6OjyFl9obc
	VA+EET5JfXhz0C7aAR8i1yU08jjho0kbOh6K4B7X+ZjdxaDQLUNLvQ+PWOnKIkZmK3sB
	ISeMJgu7G5/O/todNg8RfBrWdCSycAvFFTm7QhK/YrI9npLuV8qADz2mPTkfy27cbE2O
	w5aGlEXlJQMbl77URohlcU9/BVPQLC/wudv1sOZ781HNEt2WHrwwfFMKpWwsFioeoyR8
	IFNg==
X-Gm-Message-State: ALoCoQl1V5cAyWMw2eWI6YSZMPK8FE8MvkxDBaZF8V3GL7jTguHdEJGbTs/sw6UFhXCZEU8C5yy2
MIME-Version: 1.0
X-Received: by 10.180.91.196 with SMTP id cg4mr11013697wib.16.1438785950509;
	Wed, 05 Aug 2015 07:45:50 -0700 (PDT)
Received: by 10.28.94.10 with HTTP; Wed, 5 Aug 2015 07:45:50 -0700 (PDT)
Date: Wed, 5 Aug 2015 15:45:50 +0100
Message-ID: <CAPhnLPB5-A5A3=RXjKL1WJqKp7DCZ2ku6U1eAsgFRPty8sjkWg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 1.9 now available.
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
X-List-Received-Date: Wed, 05 Aug 2015 14:45:54 -0000
Content-Type: text/plain; charset=UTF-8

The first milestone release for Yocto Project 1.9 is available for download now.

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.9_M1/

Thank you everyone for your contributions.

eclipse-poky/juno-master bbd410e2c5db9532ea373ec993c5e8d9
eclipse-poky/kepler-master 989ee9bda9c0d5c05e790a289d4ca032
eclipse-poky/luna-master fe928773cf7b952c368769fdc4be3688
meta-qt3 139394eca6575b9ab31d2f79f7830f2a
poky 59713c69884b4d459b0712133ba56034

Test report at
https://wiki.yoctoproject.org/wiki/WW28_-_2015-07-10_-_Full_Pass_1.9_M1.rc2

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

