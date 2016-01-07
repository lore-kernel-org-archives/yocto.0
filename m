Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA811E00901; Thu,  7 Jan 2016 07:59:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 496DAE0082E
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2016 07:59:54 -0800 (PST)
Received: by mail-ig0-f173.google.com with SMTP id z14so54862047igp.0
	for <yocto@yoctoproject.org>; Thu, 07 Jan 2016 07:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=fZTEaNnEzJVU91HDkUx0M8GDsXqrq9gJjsd9IrCRWkA=;
	b=jHINVIJ5rmimoSUh0BYwxx0KYevWihWbOX8vlqh8Z8ASQcYXZ5NYcIHxTlrcIOVLY/
	n04vFzQNY6dl65R0LTy5ySljjln/4aOZ9czHBDIOuUcBaP4bMQWy1MbsUTBpt9vHlIW7
	YKzrvBaIUA/QQMccR/w6QSOmn+T1yCWnpjTaW+C+11got+E3/LmI1haYQoGN7Y/VxHQk
	lUGG8nUfZtdxGI2pQAWMr3SBX9Q+pckj1mBJrhbILThfmrpKcPVNrH9SeIKUk3c/3XnH
	HvK+3L+9KL/LPU8CR2MTLOhxYWIvMxhsu2H3KoJCHQ3M1GyubbJkZxtDiRAwivpjG6tf
	RVGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=fZTEaNnEzJVU91HDkUx0M8GDsXqrq9gJjsd9IrCRWkA=;
	b=CzFESJEKzLkKFBSHklwsMTu40NGXFiyWT10H9WM4sBdWp5w7zJGp/PYWpwGWBX4QHY
	CmatBrAZmSMo1GcsXRWaHktNOVIqBO2UchcTqyEzhFZvkrvYccKRjpmQ3yv085JHe827
	oBdSMgRf9RLd7DQt6UmcR4VtswubHPUNpUOam1uYaGPYwaiEjXouSM+dFTvW03yTR3wj
	FStrT16ZZZiISjZsc0iyFzTa4NJCoNpYtAD1Rt1AtWLN+j06sLuM0XPlD1YdcbhLMJIb
	Do8VXfAbjABalnNlNKHaR4w/KMgUUP/W4+MeaDueTXS67iqXEILBT54c5IXot96R07Wx
	TVSw==
X-Gm-Message-State: ALoCoQnUX/IHksPS9lKN+7GajxucVNit6zx8LCU74JgJIsmC7DUOG/08ols5+lm1gkrxIMrEDfsxb8WonmjrJi80RZ2ApPXeswlXz3t4m4QHFuP8jcCMFTk=
X-Received: by 10.50.36.105 with SMTP id p9mr17544164igj.54.1452182394482;
	Thu, 07 Jan 2016 07:59:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.140.10 with HTTP; Thu, 7 Jan 2016 07:59:15 -0800 (PST)
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Thu, 7 Jan 2016 15:59:15 +0000
Message-ID: <CAPhnLPAcoQ-xRPUMrY3pKgxHTg+GV=TnYLYAgD=7CH9A7dR2_Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] First milestone for Yocto Project 2.1 release now available.
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
X-List-Received-Date: Thu, 07 Jan 2016 15:59:56 -0000
Content-Type: text/plain; charset=UTF-8

The first milestone release for Yocto Project 2.1 is available for download now.

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.1_M1/

Thank you everyone for your contributions.

eclipse-poky/kepler-master cf60ac293629fc8ecd6c4eb3709a6f334b499d0c
eclipse-poky/luna-master 45aa5c77523bdf051d548fff4305382942db2ebb
eclipse-poky/mars-master 1d179ddcbd1983bf7bcfe98efdcbb186bdccca4f
meta-qt3 5233565c80db869f6f539f37f26ea6662d9dc5f6
meta-qt4 fa88230121379075d752876007fb84dfcb6e9de4
poky 5e3e2e0cbb0a49986f4653e64c4c8d2b5461645e

Test report at:

https://wiki.yoctoproject.org/wiki/WW50_-_2015-12-10_-_Full_Pass_2.1_M1.rc1

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

