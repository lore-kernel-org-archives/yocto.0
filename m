Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B5CCE0079A; Wed, 27 Jan 2016 10:16:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08C55E006E7;
	Wed, 27 Jan 2016 10:15:59 -0800 (PST)
Received: by mail-lb0-f182.google.com with SMTP id dx2so10114841lbd.3;
	Wed, 27 Jan 2016 10:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=orsqvqjJG7GcUs9Zwj/2BpP6NI8ZRX7pvf34AU6WQtI=;
	b=0wxX4pgGLCWQiW7IU1Yym5RtwyIeeUl8hXn+2i//wxGdKyu2jDKOkKAEFQOsoj9zDq
	KUp4Jgz0T9KCRXxy7l6pVBx9i+Gf8Op/mCBHww6HfnZkI3PPF+Snu5ORV7vEVeCb2b6z
	llmm5aFy5O0qpe5szvl0/zGVTuFZS0BmfZUU2htbr3FSNrwFR6W/n/0rhl9ozwCTEMgG
	SQFQi5mxB4rCy+CaDwVY9BIDI0J1WLjAffjdBvh0LBmWQNVKNCM/0TfXrUf++Po3y/yx
	t/yxbXrgY/G9CZFlZ5FlJY3dlfm02uoTLaO2KkAOpK7AzpDTSIfStnS4ZAFQe706K0km
	vPZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to:content-type;
	bh=orsqvqjJG7GcUs9Zwj/2BpP6NI8ZRX7pvf34AU6WQtI=;
	b=IxtTe/schkrt/VrGt5SPoRv3P3QH33paI++bnNY1QsYXZdllno+GQNzCG9LjtwxsNI
	p3jXQclMc/KWbMKxEmMKaCI3V5JECtVtfNN80KD/vkv7tqUrw5DsXCYVjZjl9Vg0oqPq
	zATsWc3mtuGb9QAqPGKEPzkVQ1sNILvI/FNl1afMirksIdfkLqd2leSG3dhakCecU6dO
	y0XkSgvhva02h4mYxGdDO4X2v1BWU+LVRBsOR/wkR0yTp+YpMgEVWhXKgd05fJ1zsvwI
	US+TjmXVK74jjpdbOWNQwjr3lakAXfaNjnN68aoJcYV4a5S5ONn7N7kVKX3BgpOR/9PA
	8LNQ==
X-Gm-Message-State: AG10YOQFegEHkV/d+WTt0p86NSOb9hhGhQjV1wV2pHhmtnYnRuva6j5XU2wsexE2xUYpF78s5UAdGIcj7A/Qdw==
X-Received: by 10.112.61.226 with SMTP id t2mr2599684lbr.33.1453918557872;
	Wed, 27 Jan 2016 10:15:57 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.55.101 with HTTP; Wed, 27 Jan 2016 10:15:38 -0800 (PST)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Wed, 27 Jan 2016 10:15:38 -0800
X-Google-Sender-Auth: d9_5szbXqLVntYma8-gePBkxQ-U
Message-ID: <CA+YB3rYvuwFo1WDCQzO4vzhXGT05Nd7dThwdFRv3xhZ3yxAUOQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>, yocto-announce@yoctoproject.org
Subject: Embedded Linux Conference, YP DevDay, and OEDAM
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
X-List-Received-Date: Wed, 27 Jan 2016 18:16:01 -0000
Content-Type: text/plain; charset=UTF-8

If you are planning to attend the Embedded Linux Conference in San
Diego this April, I wanted to let you know about the Yocto Project
Developer Day that the team is planning. This will be similar to
previous DevDays, with hands-on training in both introductory and
advanced tracks. The day will happen just after ELC, on April 7 at the
Marriott in downtown San Diego, just across from the ELC venue. We'll
have more details posted later this week.

The project is also a sponsor for the event and we will have a booth.
If you have something cool that you have been working on and would
like to show it off in the booth during the conference, let me know
and we'll see what we can do to make some space for your project.

For those also in the OpenEmbedded community, there will be an OE
developer's meeting and working session on Friday, April 8. This is a
working session for OE members (not an educational session, sorry!)
and space is limited, so if you plan to attend, please let me know so
I can plan space accordingly.

thanks!

-- 
Jeff Osier-Mixon
Open Source Community Architect, Intel Corporation

