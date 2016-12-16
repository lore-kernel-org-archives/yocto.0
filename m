Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37809E00E32; Fri, 16 Dec 2016 07:06:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08191E00E2F
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 07:06:30 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id j191so21826375ita.1
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 07:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=GXHyPZjoT67LzhPQlHbRcViQBTJCgVbf7GkZln99/aQ=;
	b=saA4jq2p6aVwy8TDWRvXCbUcR6dSQ3G+t5rRGVhGxXfkQXMYIYLJzEagwCeafHoBxn
	z9g1y3B1D5+HOk8eMwScvnk17ZHannc+lPSrxuNeQdqtbKEpIiv3myrL/oBoGVOnZHqE
	owDacdRe/CongrQaKTN6G96qUvAsCrlvw824+vFqsadXosTicWc9b+kQHcxumKH26UO9
	KH3vE3TvPSyVketkNdhibuF4CPkPBV+bIBL0JNyn4qqDy6UQxbw2gM5WkAH5u3Na0rHy
	bwSGrHgwWqqUDxhFdosKhaxwThtGmKZNmpd/WS4mwj97cv7lAI7gP4V+hsjx1TJ6kWby
	giDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=GXHyPZjoT67LzhPQlHbRcViQBTJCgVbf7GkZln99/aQ=;
	b=nuKFSIWz9gZzn0xe1cgFnGSMNpzlCFT8u1eOa9GHQjmkJ+UP6JHQ4AjXlwMQK+tPkJ
	fIpMS0a6pumYoQL1glB6h89r4LZloOeaIyj7Nqji/Jp5A1TPsdDWWYqvyqvhCHSs2w3g
	PKLWcnIzIlg9ARfRXssl1zejXrrNPZnz9Uh9vYWSydOCvuS+SdKalPUzJ22ikE3XB9h8
	I2qgrSe5wLHZDfdc8O1Qb4C8cxaDsA8h8y/vaJpseopqi5LdWjeraXl5wMSYllMawyQb
	p/zma2azGdgPtgd75b3/Jh0JvDlXCR3QUqQdMqxdDdP9WBFg5ilFgre9rr6jm1Nf6RxE
	ltcg==
X-Gm-Message-State: AKaTC02uD2+SAsDpg6ox5g0lMJhBMFpnrrrUcoSRZW978yXbREVx5O0Rb3bvmsFbpD8xsQ==
X-Received: by 10.36.115.6 with SMTP id y6mr3930578itb.83.1481900788976;
	Fri, 16 Dec 2016 07:06:28 -0800 (PST)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	n189sm1460316itc.4.2016.12.16.07.06.26 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Dec 2016 07:06:28 -0800 (PST)
Date: Fri, 16 Dec 2016 10:06:17 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20161216150617.GA21846@openSUSE-i7.site>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: PSA for anyone using openSUSE 42.2 (or similar)
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
X-List-Received-Date: Fri, 16 Dec 2016 15:06:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Lately I've been seeing very intermittent, sporadic cases where a build will
fail with something similar to:

	fork: Resource temporarily unavailable

and nothing else wrong. Simply restarting the build causes it to succeed
without incident. I had been seeing this, maybe, twice a week (on a build
machine that builds most of the day as well as overnight with Jenkins jobs).

I decided to investigate and found:

	http://unix.stackexchange.com/questions/253903/creating-threads-fails-with-resource-temporarily-unavailable-with-4-3-kernel

which suggests the issue is a combination of
	- linux >= 4.3
	- systemd >= 228

both of which are true when upgrading openSUSE from 42.1 (linux-4.1.36-41/210)
to 42.2 (linux-4.4.36-8/228).

The fix appears to be to modify the "DefaultTasksMax" systemd parameter
(uncommenting it and setting it to "infinity"). On openSUSE 42.2 this is
found in /etc/systemd/system.conf, then
	
	# systemctl daemon-reexec

or reboot.

I just made this adjustment but given it only happened once or twice a week on
a reasonably busy build machine it might be hard to confirm. I'm also not sure
if setting it to "infinity" is sensible ;-)

I'm guessing other host distros probably also fall into this category.

