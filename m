Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D338BE00444; Fri,  9 Sep 2016 08:52:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.44 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03A73E00404
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 08:52:20 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id 199so6495779wma.1
	for <yocto@yoctoproject.org>; Fri, 09 Sep 2016 08:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=EpOXGEIw4YjKuV5gBAeA9jLRbzf3dGSsyXvOxJTR3Yk=;
	b=hPW8WOku+Hirvj/U8acLMtPBWx8KDxml13kYnz9YnHBez9PD4Ybw/wA0eXzbDjQBvI
	uaXOij4aG6PHcumEOUkzyx/TY4dXygi8cpTDH6IbTVJGe7dKekv+13TWYn6+/a0Ug63t
	hNbOy7JBXYAbhIFAW8sMdAZwuq+g34LmM5M1SpJiFf0rGYA69laROBfN78f+DQIVJXcs
	zN9ub32g9NQkavwn68Mcowh5WpraZdn9XZ5hH3mjgAg3dAJd4Tcx8kG5W+SGRQTdpiU5
	/3kGGobXdS5tK0tMMEkaD2lWFdZdUtKOFd3XVmChtkDVaMawg3YuJwsuNgmwhSe1FiLK
	Ps8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=EpOXGEIw4YjKuV5gBAeA9jLRbzf3dGSsyXvOxJTR3Yk=;
	b=j3aEghxiVQaZysRcUN2mbYFsxEi6serrv+MXzUN9oTTQknOEpcagtthvdjOawlOUp0
	YNwK1AciKLWCYgBReS13rh2cGpcVWTqDeRT1PW/YHefBmboUQooG9w1nQbmQqOarsq5T
	HZXjsJP0z/OGxIqDz6YX/fEdh1fUjAtxKqig8KQyS8EIJCQ6eqejnyB8jE1iOthsP504
	qJBi9BzVkzag8xa1Cbxj04DwaX8uDxSvMfskRQfzhxivNFisf7ZtSC8F4Neq/nQsNPBy
	PyE24hU7rfDJqHL16KvU8HJQhZdOiev8wxftGUszRGRTYiJEodcDy9gcdZX8odNl60Ev
	U/AQ==
X-Gm-Message-State: AE9vXwORbLT8eJHiJzsK5qipfazkbc6av7j1zub4gGuBX4KhPjEr1KSAaAzilrghB1qAdu0lLjpGSlAwJjdnAQ==
X-Received: by 10.28.210.82 with SMTP id j79mr3595847wmg.10.1473436339743;
	Fri, 09 Sep 2016 08:52:19 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.80.151.3 with HTTP; Fri, 9 Sep 2016 08:51:59 -0700 (PDT)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Fri, 9 Sep 2016 08:51:59 -0700
X-Google-Sender-Auth: _iJVvli7RuiSow6apjrsf80cWRo
Message-ID: <CA+YB3raLEFHAECfBVAspQni9fG0_X0oTPM-Z_F64FzV6PuNdUw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Subjects for YP Developer Day at ELCE
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
X-List-Received-Date: Fri, 09 Sep 2016 15:52:22 -0000
Content-Type: text/plain; charset=UTF-8

Hi all - we are in the planning stages for DevDay at ELCE right now,
particularly the advanced track. This track changes every session,
usually to cover the things we are working on hardest - for example,
in San Diego we covered CROPS, devtool, the latest Toaster features,
and much more.

Whether you are able to attend DevDay or not, we would be grateful to
hear your suggestions for subjects to cover in the advanced track. We
are currently planning talks about CROPS, devtool and the ESDK,
Toaster, wic, smack, security, and a few other things. If you have a
burning desire to hear about something specific, please let us know.

Also, we'd love to see you at DevDay, here's the link:

-- 
Jeff Osier-Mixon - Open Source Community Engineer, Intel Corporation

