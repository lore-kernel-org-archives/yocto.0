Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9799.1587343021459305534
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Apr 2020 17:37:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=seVl6gzJ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAF8AE01A26; Sun, 19 Apr 2020 17:37:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 891F1E01A24
	for <yocto@yoctoproject.org>; Sun, 19 Apr 2020 17:36:58 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id d16so6041720edq.7
        for <yocto@yoctoproject.org>; Sun, 19 Apr 2020 17:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=SL+RkChLjezjs/wmN7PcX54LOQ7LjnFIscx9xyA1Uow=;
        b=seVl6gzJBVxPX5jgoyhYFCArWYcUjORi/eLyz0eE23C4Xf4it8qvJBu8bUc7wHDPy7
         kzfzd0FBwQEf3xVFynQd3qlOAewi/VQRFGqS2GRH9+0GHU5yIHlQ3k0mdiFE+7bO7H2s
         /Xs1Cyq8nCfhUkMyoESdUlmFfZ3ZmVeDRcEVofZe3pTkouiGJUuwzO9FGJdIQXp04N9a
         hGjkogR5eT+TFuIgphEAMce8DexLO7b408lLRnbSHE+YkV+vT4/rFzsaQIDgNIJfmHmC
         lTIT7w6n0Y3Z4EgZ0kM5ChXhYk8SQ1Kc0A3Ca5BEN2crvlccvBEfz6RLOo5WVV2J0muw
         N0qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=SL+RkChLjezjs/wmN7PcX54LOQ7LjnFIscx9xyA1Uow=;
        b=sF1N2KeDxiKH0t833mYwadvTmgnbbe5TQsvQQ41aUWcIPMX2FLV6gGSq7fvJ4DsDyL
         yw8AuCcTT96Jknal9e4t7B4rh0lCIZyQrZ2xN+jDjAwXPpVdjdblHjD2zHvjMUCvot25
         lrlSjUAXQoBCtEY4DHXxClvx38yL8rR6iG4IAPlEhCfead8xevC/4TtdfxlSAFUqK6/6
         dJyqOlwk72tGyEXUxn5n3ftlVyhTQrzRkoI85WXl1KZql1DkIvtXU8UKAr2ZHbfj9aOd
         rpRGggpoqjhOPY3bNimUZnljKz57jfyYgsx3U2yxy3WnW3+B/vjSj9WMwmns7eZiFZHG
         3UNg==
X-Gm-Message-State: AGi0PuY9UzB5Mj92O9hZ+Cams6MVmnQ+mBqab8r9T/76CQRZDDOpqSVr
	fQWyJy7DUIYU8fpMb3dOg1AHaffrB1MlhOB9EQGb079G
X-Google-Smtp-Source: APiQypLD/5GpgRfYYMS4QjPubhIipslBruxmcuo0eMCmDiCsrlVk55YiU1STqLU1TLzupbyX0wwqRQayiX3bvqoOHcE=
X-Received: by 2002:a05:6402:144c:: with SMTP id d12mr11769641edx.225.1587343017941;
 Sun, 19 Apr 2020 17:36:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:9c01:0:0:0:0:0 with HTTP; Sun, 19 Apr 2020 17:36:57
 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Mon, 20 Apr 2020 10:36:57 +1000
Message-ID: <CAA=hcWQtOo9pgikUWR+AtA66EMFEPSQiorqeT-SH4urS==cqdA@mail.gmail.com>
Subject: Proper configuration for Systemd service to be restarted on failure
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I built Yocto systemd Linux running on a device 7 / 24, it is hard to
access the device, so my application services are running by bash
script in loop sleep 1 minute, the service and scripts worked fine, I
don't want the application service stopped for any reasons, I searched
on Internet, there are many different examples for configuring service
file to restart it on failure, but most statements are conflicted,
what is the best way to let systemd restart my application services
when the scripts stops for Yocto systemd OS?

[Unit]
After=multi-user.target

[Service]
Type=simple
RemainAfterExit=no
Restart=always
RestartSec=120s
ExecStart=/data/bin/apploop60seconds.sh

[Install]
WantedBy=multi-user.target

Thank you.

Kind regards,

- jh

------------------------------
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs
