Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qe0-f44.google.com (mail-qe0-f44.google.com
	[209.85.128.44]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 8850CE0027C
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2013 12:14:23 -0800 (PST)
Received: by mail-qe0-f44.google.com with SMTP id x7so824378qeu.17
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2013 12:14:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=bKjzqIqLHR8E6A1fNet6hXvKNiUIQN/TSqIFKN0IlzU=;
	b=AiT6rXNuzjiERkvoyCznaE2bN6PhaoLaidcBoj5rPFPchVJ540qntjeP75ub5Xh/wh
	q3H7kKArpspVpG2VKHZnHHlw80Q9+mJxpNn+3c22UBbJMWGgktFhpxRzmoCG6/8XTwI8
	645Pblf/k285SXKH+lPUDvqrj1W4+MjQSXgPjU8JT+53IGoSPIY6BHcpY0NId4obGRcx
	RhcVREjwbaIYYByewflwyJW6TTop/1CIJbgpwLEWlWn2vnoObnK4hEUhA7HDv38lmYrE
	Pzxp6xCwxbMF9s0ly+A7DZiWHg419G7/OP1t27vuNNEHrruyBqeoGcAHOzVAl0A6u1Db
	GaiQ==
MIME-Version: 1.0
X-Received: by 10.224.213.134 with SMTP id gw6mr8132431qab.72.1361823262106;
	Mon, 25 Feb 2013 12:14:22 -0800 (PST)
Received: by 10.49.71.163 with HTTP; Mon, 25 Feb 2013 12:14:21 -0800 (PST)
Date: Mon, 25 Feb 2013 12:14:21 -0800
Message-ID: <CAPhnLPANuDOpJh_=ENQ6_9K_ZrfJZEccpZEcqA7HjWJdLt4gmg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmjVxBGMeFiTmRTTPS6j8aov5xNXQWWe2qxkGN2JVk52a8Mo72xB9Av3w8kSB8ZjgszdXkW
Subject: Moving the yocto autobuilder irc bot to the main yocto channel.
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
X-List-Received-Date: Mon, 25 Feb 2013 20:14:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

In an effort to get more eyes looking at things when an autobuilder
build fails, I've moved the yocto autobuilder irc bot from a test
channel to the main yocto channel. It should be fairly low in spam,
only announcing when a build either exceptions out, or changes
failed/success state. There is documentation on how to play with it at
http://buildbot.net/buildbot/docs/0.8.7/manual/cfg-statustargets.html#status-IRC.
If things get too spammy, I can modify it a bit to turn the noise
down. Please let me have any feedback on noise level (too much, too
little, just right).

Thanks,
-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

