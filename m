Return-Path: <marek.andrus@wp.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BCEDE00B74; Thu,  5 Jun 2014 04:02:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.andrus[at]wp.pl)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.77.101.9 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C41A3E00B74
	for <yocto@yoctoproject.org>; Thu,  5 Jun 2014 04:02:17 -0700 (PDT)
Received: (wp-smtpd smtp.wp.pl 22442 invoked from network);
	5 Jun 2014 13:02:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
	t=1401966135; bh=c1h1a+xEscJtGmXEgYouuGiaAB03kLcTh2N1eH4PEiM=;
	h=From:To:Subject;
	b=ewUmBxINfYLd7PK7XxcGqNfsC4i+UkY9EmPfMDQuCrjmT621n0cLFqQxNY+KN7gXQ
	rYhRoiKf0oNisRJgN0LhhWRKqiS4nAIw8sWaGizxdQhUV/2WjNcOWKxo2gxbEEAHlU
	ELvyxEgPoXfM//jqUPmP5+LmfnFjL7kiVzQi4rqk=
Received: from unknown (HELO [62.159.77.167]) (marek.andrus@[62.159.77.167])
	(envelope-sender <marek.andrus@wp.pl>)
	by smtp.wp.pl (WP-SMTPD) with AES128-SHA encrypted SMTP
	for <yocto@yoctoproject.org>; 5 Jun 2014 13:02:15 +0200
Message-ID: <53904E36.7020609@wp.pl>
Date: Thu, 05 Jun 2014 13:02:14 +0200
From: Marek Andrus <marek.andrus@wp.pl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Icedove/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-WP-AV: skaner antywirusowy poczty Wirtualnej Polski S. A.
X-WP-SPAM: NO 0000000 [seME]                               
Subject: TARGET_ARCH in external toolchain
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
X-List-Received-Date: Thu, 05 Jun 2014 11:02:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'd like to provide one meta for a 4 external toolchains (for 4 
different architectures). I wanted it to select appropriate toolchain 
accroding to a TARGET_ARCH variable. Unfortunately TARGET_ARCH looks 
like not being set at the time of parsing my tcmode-external-mytc.inc 
file (where preffered providers are set). Of course OVERRIDES variable 
is not set either.

What do you recommend?

Of course I can change the toolchain layer manually but I wanted to 
change machine/architecture in just one place. Is there any method?

BR,
Marek Andrus

