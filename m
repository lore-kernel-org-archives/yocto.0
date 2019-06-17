Return-Path: <samo_pogacnik@t-2.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA03BE00D6E; Mon, 17 Jun 2019 12:00:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [93.103.246.67 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 514 seconds by postgrey-1.32 at yocto-www;
	Mon, 17 Jun 2019 12:00:00 PDT
Received: from smtp-good-out-3.t-2.net (smtp-good-out-3.t-2.net
	[93.103.246.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A8BDE00798
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 12:00:00 -0700 (PDT)
Received: from smtp-1.t-2.net (smtp-1.t-2.net [84.255.208.30])
	by smtp-good-out-3.t-2.net (Postfix) with ESMTP id 45SL0F0HVrz9vfdJ
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 20:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-2.net;
	s=smtp-out-2; t=1560797485;
	bh=tKq/tOU6IATqKPkjWZdnCyxcWnTYkidSMV1+vpAXcxU=;
	h=Subject:From:To:Date;
	b=KEqi6IVNcuxjLBdk96LxLgVKqY7HcA4nqGiAY9lxsan3/mslKBXSyArYFvEmELq9k
	w5LExT3oOBfciKbEeHIYSyDjlXqRFs8OrdS/9o0WcfuZH3Jc4oda5XyPQ1hijyW1Vu
	8Dmb75OLi6ENBz1DT1G7A7dYPlk6TRHo+1z6wICA=
Received: from localhost (localhost [127.0.0.1])
	by smtp-1.t-2.net (Postfix) with ESMTP id 45SL0F0GCszN37rw
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 20:51:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at t-2.net
Received: from smtp-1.t-2.net ([127.0.0.1])
	by localhost (smtp-1.t-2.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1fj509oMozeR for <yocto@yoctoproject.org>;
	Mon, 17 Jun 2019 20:51:24 +0200 (CEST)
Received: from hp450g3 (89-212-91-172.static.t-2.net [89.212.91.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp-1.t-2.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 20:51:24 +0200 (CEST)
Message-ID: <cdb4c491aff4ee234638b33fd2b0d787abc204a8.camel@t-2.net>
From: Samo =?UTF-8?Q?Poga=C4=8Dnik?= <samo_pogacnik@t-2.net>
To: yocto@yoctoproject.org
Date: Mon, 17 Jun 2019 20:51:22 +0200
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Subject: Bash-based build tool/environment u2up-yocto
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
X-List-Received-Date: Mon, 17 Jun 2019 19:00:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

I am new to the yocto mailing list and i would like to share my bash-based
tool/environment to build a yocto-based linux distribution. The tool/environment
is called u2up-yocto and can be found here: https://github.com/spog/u2up-yocto

Using u2up-yocto, i tried to achieve a few goals:
1) being able to build some default poky machine/image targets out-of-the-box
without manually creating specific build configuration.

2) being able to extend default functionality by adding external/internal
layers, git repos and additional local configuration without modifying any
released u2up-yocto files.

You are welcome to check two sample projects, using u2up-yocto:
- https://github.com/spog/meta-u2up-homegw.git
- https://github.com/spog/meta-u2up-pc-installer.git

3) define a new distro name

4) provide a simple common (cross-projects) downloads and shared-sstate
configuration

best regards, samo




