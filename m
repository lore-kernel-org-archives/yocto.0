Return-Path: <saul.wold@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F322E00348
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 21:01:46 -0700 (PDT)
Received: from mail-ob0-f200.google.com ([209.85.214.200])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 10 Sep 2012 21:01:31 -0700
Received: by obbun3 with SMTP id un3so203492obb.11
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 21:01:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding:x-gm-message-state;
	bh=84I4euYBkBPzjq6V/F1AoDwohpgGuxBIvAbDHxJFo8c=;
	b=EUPaV8x04wzrsZZk2wvHV8bL7SwZXLdlyZXae+VXMbbj9fAOJuePoLzztsNLhrOy6p
	vS62pdfzZH7GwdEz4rwgVCeLlTgbesfHmoaQEvau3lE9IU8fmc1X9wThcdHvsI2THQYM
	FiBvtsAQARXYJlrVHaF05ZzFcdGiC/1QTzK2qpbBacT+t9EqRBvtdDJ1lyMDgZCJIDjT
	uZl6GgAqh2ztxnED3dZtajnaZx4nfNp+0d4iDUXF33J8cZJB7elaX5BNAikQBSVdgmmv
	SjH7H+/Z76yNRelevhBXnfwE36+r1kYhEEhnud0Hngu/vvK3sa10wBxgnfORpB9ZVzCk
	Pr/g==
Received: by 10.50.160.228 with SMTP id xn4mr19455486igb.1.1347336091028;
	Mon, 10 Sep 2012 21:01:31 -0700 (PDT)
Received: by 10.50.160.228 with SMTP id xn4mr19455482igb.1.1347336090935;
	Mon, 10 Sep 2012 21:01:30 -0700 (PDT)
Received: from [10.6.18.71] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id wg9sm795070igb.0.2012.09.10.21.01.29
	(version=SSLv3 cipher=OTHER); Mon, 10 Sep 2012 21:01:30 -0700 (PDT)
Message-ID: <504EB798.60904@intel.com>
Date: Mon, 10 Sep 2012 21:01:28 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: "Serban, Laurentiu" <laurentiu.serban@intel.com>, 
	Zhao Yi <yi.zhao@windriver.com>, "Liu, Song" <song.liu@intel.com>, 
	"Stewart, David C" <david.c.stewart@intel.com>,
	"Purdie, Richard" <richard.purdie@intel.com>, 
	"Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>, 
	"Stewart, David C" <david.c.stewart@intel.com>,
	Matthew McClintock <msm@freescale.com>
X-Gm-Message-State: ALoCoQl9jidCOUvDgPAhtE0aiQPg/mHhuVYrjU05KOv5iNAQoYbzTx5GoYH4Rup528DYd8rWpWbHHDlyhoT2bQrxPPnQqtPdBP+xPdftK3Fq23RjYcOy6aPar1yHCz3oIwT2DshpejhEfGAm98gAdXL3D93V1qx/VA==
Subject: Milestone 4, RC2 Build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Sep 2012 04:01:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

Given the issues we had with the Eclipse and ADT installer during the 
RC1 build and we decided to forgo the existing RC1 build and restart 
with an RC2.  There have been no changes to the Poky RC1 branch, but we 
moved Eclipse forward to pick up some changes.

The current Autobuilder build artifacts are located at 
http://autobuilder.yoctoproject.org/pub/nightly/20120910-5/

This includes the Eclipse plugin and adt-installer, there should be 2 
versions of the installer if I understood Beth correct, please use the 
one marked adt-installer-QA when it's populated.

I have seen 3 build failures, all related to libowl-av and sato rootfs, 
they are in Atom-pc, qemuppc and mpc8315 targets.  I am going attempt a 
rebuild of the nightly-ppc standalone.  There was also a failure in the 
p1022, which I think Matthew is aware of.

All major repos have been have been Branched and we are using the 1.3_M4 
branch, git hash dd3edc9fbb674682947e8218202fdbeef8635dd5

Thanks for your support in checking out these milestone.

Sau!


