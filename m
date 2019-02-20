Return-Path: <piotr.piwko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DD28E00C1B; Wed, 20 Feb 2019 03:24:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (piotr.piwko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBD6CE00754
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 03:24:29 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id z25so12631434ljk.8
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 03:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=69YdFwa4u7oRN1sWBCu53bWgysye4Y/cofyt7yBeorU=;
	b=OxpFgK/raugOG9i9EkHP3eQWT00O0nrwKWHBB/000ZBPsU5eLcm499Zda943xOBKx3
	loopd9ipmCwOgAi0D1rG7dR+E9u6w9UxvUskOMHeXZNTprvrgFIWvEFmxBhVLj+mnh7B
	Thw0bnXjPwRh36sHC5dygLUYZgy6IegWL7ZGKwtQdGznVncIjVemwbCSp7diNSsJ4kQs
	5qCGKDVBWKuvdrhX2UIGoYza6HSeJphlrfLm0cBjgdclBa2VygILKO+iRjd6ZUz2VMkN
	LLIxyQO2Bz7qOTZQzZ2N8UjcCSy9mARasOM81sYwED0x0ErEm3NJdUhf5MMZfSQhkPPx
	mWsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=69YdFwa4u7oRN1sWBCu53bWgysye4Y/cofyt7yBeorU=;
	b=ggL/KVv5JFw1e3eqP7FnmxFH2nrzNzG9DM5W8rJn/mTUKi3YLR1ZnPj00PUFeBnbyV
	UJ0trQ+3kKZamBLzy99Kd2VccyZHuMzgFS9UnxftUdzzxTCcrG+gaClkvbMJKA1ss8Tf
	AmUdrUXl0cOqKTnXF8VLdwUD8vwk2RE3qGIY6fUqpluIIrcgjEpz6YRRP++butnYRFPS
	Aks/UmrPnQJMBWDRXlTxnnGZR6QQzSRRG9MLN6dijklU6LJs6SQx4TdwsRkJMyejcKAo
	KITT4C5djYGsjZK6XBrp69Sn/swe4tjW81sBGTO7Q4Gs1gkVX535CgpQmjT30hi867OF
	dEAw==
X-Gm-Message-State: AHQUAubduu73c06HCRS8W8ASSR2BSNtrT0bwvKfDuOg0r2ZIoE9QNH0e
	JVOYPK/4HDqJOyYIYap8vpJbnYZEV/W+44Gkbeix3y3/
X-Google-Smtp-Source: AHgI3Ib7hJBFyr7iDvCteNt0DxfFyWoZtZfKUys7SMtNdMsfkS2FKlYcTulR6p2WcIH3WUNBqD4plQolGJ1VFqZ7LoM=
X-Received: by 2002:a2e:7a03:: with SMTP id v3mr2021688ljc.22.1550661868335;
	Wed, 20 Feb 2019 03:24:28 -0800 (PST)
MIME-Version: 1.0
From: Piotr Piwko <piotr.piwko@gmail.com>
Date: Wed, 20 Feb 2019 12:24:17 +0100
Message-ID: <CAMTWR-PmwAqwoAzNAr10Ubk_pAKoq1+6wcfBJUMLLXvqeUDYxA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Add cmd.py library for python-core package
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
X-List-Received-Date: Wed, 20 Feb 2019 11:24:31 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I would like to add cmd.py library to my final image. In order to do
so I modified python2-manifest.json file from poky delivery.

This solution works fine. However, is there any possibility to do not
change the global poky/python2-manifest,json file and get the same
result? I would like to provide this library only for particular image
not for all my supported ones. I tried to put new manifest file in
upper layers of my meta, but it seems to not be taken into
consideration by python recipe.

Thanks in advance for help.

-- 
Piotr Piwko
http://www.embedded-engineering.pl/

