Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1B8D7E0146F
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 09:40:05 -0800 (PST)
Received: by mail-qa0-f44.google.com with SMTP id bv4so5191038qab.17
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 09:40:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=HNhfAgEUnMbdb0nQn++NEwWDBMsiKVQhtJ1MmqvVPn4=;
	b=IzaXesgRXUPS3FOEYlU8mXzoVjJ3x4pZEyxSNREA9Txqc4S6+IBYo4yrfIETQn3+sh
	ymGAUbbbxFGOE29ckJYd3x5s4wgkX/7HvYwgZIwaRi9hHaSwg07fxGFzZ9c9v0xoZAYp
	y9XBKPUi+c8SMo3cnFnMKK1BFKrW1o8Gk6eOrJbnDlmvxPDWdc53nJZ3SlGjfDhHVZee
	DKxCeKTmxwqOqwWGjvILAyE5ETiCfN/qm56KyVIoVtEwO6/gPwbRKiFo6LVZWJt67NsW
	gGp7aroMo9UCK5qbhNPykmJDLV08KrOhCmjQH8PhtkbEj06x56Xa86sxHjUpsvvFKJpE
	MRbw==
MIME-Version: 1.0
X-Received: by 10.229.201.200 with SMTP id fb8mr4019871qcb.122.1362159597176; 
	Fri, 01 Mar 2013 09:39:57 -0800 (PST)
Received: by 10.49.35.16 with HTTP; Fri, 1 Mar 2013 09:39:57 -0800 (PST)
Date: Fri, 1 Mar 2013 09:39:57 -0800
Message-ID: <CAPhnLPArfbE_-8p=+F4D=Sjkj970B7yuEJmm0Pj8Ca3zohmQfA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmp0JplHgZKxz4NEoOrChgTRZfNKht5TDAmMSLikYZtj//USKd/Wp2gbD39a7GUCtutK7Lc
Subject: Autobuilder downtime.
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
X-List-Received-Date: Fri, 01 Mar 2013 17:40:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

I'm going to be switching, temporarily, the autobuilder off so I can
test the new software stack, starting later today, after we get a
build of master. This switch will continue through til Saturday 10pm
Pacific. This is needed in order to reduce load on the cluster so I
can get some decent test results. The current plan is to do a compare
of the results of the new autobuilder with the old autobuilder, fix
any bugs found, and then switch the new software over on March 8th.

As people have referenced autobuilder logs in bugzilla, we've a minor
issue of maintaining those logs. That log move will occur on March
8th. Please plan for an all day autobuilder outage on that day.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

