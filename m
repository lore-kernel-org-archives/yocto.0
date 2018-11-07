Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 190B8E009B2; Wed,  7 Nov 2018 03:02:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC2A6E00950
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 03:02:19 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id x63-v6so9743898oix.9
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 03:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=zmmJ0q6ARt9OQCX/IjrIQ/lKGx9whk/jiA2ZrrmoKzU=;
	b=tcLrThPD7redVQj9UzTSBNgbbYYO5lehuOiZLL/AKcRkWnZ7vvQOlTrUMGCTfsN22/
	MMwwbojH6WDHNV83Bi/7VgWqk9IN8hfs5XP3t9ns8mh4J3Rl4gmBwEdcsTapu7Y9AIce
	aEqhiOiQjelMqZPgbDyyKHjqdLk6eqBWpEZJpD5tUpDb50ZVHyB2/dIfG5v2UU6+lXOC
	+K7EiFYPKK+Ys+QQQPWZ3tAT56l+8OXCMsLJjOhOUTTMdhZvnfpEflCZNGUII/6sJjFX
	QWvn9fmgLVNOl7j9W6PQRXxCSBaKVmR3P681rInr7VY4rg+fc0VvX8UnEbuwk91iBM0U
	Jl2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zmmJ0q6ARt9OQCX/IjrIQ/lKGx9whk/jiA2ZrrmoKzU=;
	b=JibWUYxHjmc8gvpYlZLt4A90Ktm1G2Ksp7tWCXBV5N8ug7igBboHcVCAW3D0upbTCK
	HuTDC0ytOLH60Lw9dZekGPbDvQvAS8DaR5/f459m71sd2jS6rtfbOZ2W9/gt/f5RUyRA
	upiisK0AUIr9xWLGdi3ROqBRRhrD8dvlnG5dXINWBYwYiEEwHTvGi4Xg3wevooCJlC9+
	/wl7dSm+ldYitk60IBbOsrx09nIi3I56A/gzVKJHwDVuMCGx+AM/o7ESvqY9FSd6vqeS
	8xETVKscK///CrUXh8l2jx9k8YleyqLA4geVheEqHS1FUNvByxltrZmSDiJPaduRH3Z/
	TX/Q==
X-Gm-Message-State: AGRZ1gJvgQAVI+UvXbhgoFO1GOniAEh0aFySbP5IiZbP34EY0U/piZYh
	rWbzxcSugbcco02fiRmQNnmuPHxD200+fiySbcvPM46aHXU=
X-Google-Smtp-Source: AJdET5c/tSpQLpDbQYsOeQrH3R8GCTJZT+nq33gx+QaMdTUqpWSJne1be1FusGZkeyGRQnsjFoOl/48aKSD3i9aZBnk=
X-Received: by 2002:aca:cc41:: with SMTP id
	c62-v6mr685580oig.150.1541588539041; 
	Wed, 07 Nov 2018 03:02:19 -0800 (PST)
MIME-Version: 1.0
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 7 Nov 2018 12:02:08 +0100
Message-ID: <CAOT_U5Y954ToaeuAXDtTiR=a_uO4G3aSt01+1rnzYYG7hu6g6w@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Check final recipe state
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
X-List-Received-Date: Wed, 07 Nov 2018 11:02:21 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
looking for a way to inspect the appearance of the final recipe
after all the .bbappend files have been applied.

Example:
    meta-openembedded/meta-oe/recipes-extended/rsyslog/rsyslog_8.29.0.bb

gets appended with:
    meta-mylayer/recipes-extended/rsyslog/rsyslog_8.29.0.bbappend

I'm conceptually perceiving that as being merged together into a
single "final recipe" during the build.
Is there a way to get how that "final recipe" might look like?

(know about the -e flag, exploring it there is something less verbose)

Be Well,
Alan

