Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BBE5E00D4F; Wed,  6 Nov 2019 12:14:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F80AE00D00
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 12:14:42 -0800 (PST)
Received: by mail-io1-f45.google.com with SMTP id c6so28333097ioo.13
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2019 12:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=R0x+lJzI6xJ0L3ToC34DSDBOheyKbjjxVwzpUYQ5QV8=;
	b=hwgRCzHc4c731uekJCZB6cxTtiiT6KYDJJpM7GmggYOLlzNkcp8YW8L3IacrgBLfnK
	HfU0+bjt3PbAJT77nH0p/4VjyVNYbDI3r/uoihV4T3I0IOSl6nn5EEqymtBFg3iDcJH8
	XwYNGuJIoc20OsRMcnanQiOWeWfB3+QkecTIH4HAgNBq4d+iGmxMo4+7+mTmphP3wvDf
	fWLT6+/Fz+hxm6sbNKFJJHcbCnrYnIqnxOMvbkOilWrfuB3oNtg0xktwlktBIdGNwZDe
	IgelSk+gtOYHK5Llqyal5qwDe5zsiPxbX3XiQ79alKGpcmjhZ6Qw0ZkGY6kt/CqrDC1m
	tA7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=R0x+lJzI6xJ0L3ToC34DSDBOheyKbjjxVwzpUYQ5QV8=;
	b=tcVcVo/iitc+xDqLPgSOMLbMvQ2mqaGqLgOO8QMCwqkqfh/SZG6lVQ5E8kllVDneSA
	ofnDS3+jV5gLpRDzvHMHT1MlcDKy8tONCNQzCIvyeVeyjEnkqMO8w9S7HTGK7JaDhyoV
	xrjqduywzIPhe+IH65mLPay9OU07txMNLJx+NcnYymEgNLRMa6BDA2o/qxw28+y/+h3a
	gl7glSWmMR6tT6zOrxSSg3mojpV7Pg6oaiX8I47jcBmZ9QN+TiPJdHkWjYZ0WT1eITTW
	Gn04QDZZU0UAEZXZqnqtog/wmOM9LToT8WX7wSU+JDB7f+fjOpJJMAKyDwta4yN5ZQWp
	CaTA==
X-Gm-Message-State: APjAAAWjmojRg4z4rakuuU/23eDpsNio0ugvnHA90KWwiEVn1rXTte13
	iUY7qAUi3YWPHL6Ie2ZBeweX7tEDLAWdEg/NxrKTKnzb
X-Google-Smtp-Source: APXvYqyTPXAKK24ZCIhZySRx/OcDecvWhcLPn0tWsldAwDzKkiJ7CnaqHyj89/b8/Izf9yqlA/YiL+7S6mGBCyjYIC4=
X-Received: by 2002:a6b:7e44:: with SMTP id k4mr7379550ioq.306.1573071281628; 
	Wed, 06 Nov 2019 12:14:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:aa09:0:0:0:0:0 with HTTP;
	Wed, 6 Nov 2019 12:14:41 -0800 (PST)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 7 Nov 2019 07:14:41 +1100
Message-ID: <CAA=hcWQ1j0J2sH7YZAV6y+J0ivHstribJKinSkBYnNYDO4Rw4Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Running systemd service including boot time
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
X-List-Received-Date: Wed, 06 Nov 2019 20:14:43 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I built Yocto image to include a systemd service and it's timer, the
timer calls the service repeated every 30 minutes, it runs well, but I
need it also run it first time in the boot, not wait 30 minutes. I
tried to add OnBootSec=2, it does not run in boot, any tips how can I
force it run immediately in boot?

OnBootSec=2
OnActiveSec=30min

Thank you.

Kind regards,

- jh

