Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4172DE00C46; Wed,  6 Nov 2019 15:45:31 -0800 (PST)
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
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E699CE0078F
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 15:45:29 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id q83so250520iod.1
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2019 15:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4ubXMVNdbUpitaIhCKZ9ZlVOPCN1jpJYQXTYMvlPtZM=;
	b=SWO6lrJzynoz+Y7+tyC7mtlK9iadX85zECREQJwf9tzOjs7SRM2QtGQyxTzK0ZMYwI
	PxCf7oHDn5ReK1AcvMN4EUHtyk8ZqdWR/a5o6u3I5abcpC8b3vsqetXgExUKV6eswFvE
	MTjdPdbvGTkxcaikurfLHzDfw3LK0Wrh11y/GRYhQLLpEDcMaxoBlfXGUiTz9cLWig9L
	/DwTEhKrv6F6H96RnNREBxanLAUU+6lWzYiFmQdi8IOfgsOw+zW9algZDY5eTHIR19N8
	R6hcaVzYrBLTs8rKFoMhwvd54bNgIvJOz0/X7+XVvFRl2rAZRGoGHpiEi7quqXYLVomY
	9n/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4ubXMVNdbUpitaIhCKZ9ZlVOPCN1jpJYQXTYMvlPtZM=;
	b=qkQ+wYELfq0gOn33DoKeT7mfeVBalQNl/dgWVcZovNHIcOWXgIuYn+CQ8yVSooqFMg
	mzLIDQyi8V3wcchyzvbFqRJCJpR6dvYYnril/Yh1ILadykL9LSLELxcox3NhFRKdlnte
	1tJ67/DxGm0ipzII17NQx473NIV/LAz956ZLNeYjN8jiaHaspc6HcK/Fo487JPIJw9ET
	5FsLEPLAI8o4zjd0HJmlXJAggX1Y+A2mzGi65joErvVsOZ0O8l5NzwP0KE4ecLGQE8JF
	j56uJ2jjHbzn6TbEmsZoq8jp4usFwrMZ5sww16jXa95jKHRXF745Wrxn+WPBA9EQ8nlA
	IH7A==
X-Gm-Message-State: APjAAAU76vCOBBD2t7YQUoJm4QG+1WHoReUFZEuQeQGi4A1jpiziNeSO
	DsfX/01PZZ6AJgQqy47Zgenyc2mEqJjhejiTwrz86LcQ
X-Google-Smtp-Source: APXvYqyZIFQ04jseaicDmJeBgI3uZBDm1v7j0rpaoH0tiUqNEyLhtc+xAcFs71cOg1jjmHzbmmdECvhXlZSv00OHiYQ=
X-Received: by 2002:a5d:93cd:: with SMTP id j13mr299450ioo.301.1573083929284; 
	Wed, 06 Nov 2019 15:45:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:aa09:0:0:0:0:0 with HTTP;
	Wed, 6 Nov 2019 15:45:28 -0800 (PST)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 7 Nov 2019 10:45:28 +1100
Message-ID: <CAA=hcWSJ17oyJorCwfe-jWAnQB3=6quFHKqo_MP0=BPsP-j2-A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Busybox shell script misbehavior when it is launched by systemd service
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
X-List-Received-Date: Wed, 06 Nov 2019 23:45:31 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a shell script myscript_launch.sh launched by systemd service,
in the shell script, it call another shell script in background:

if [ -f ${CHECK_ACTIVE} ]; then
    echo "script is already running" >> /tmp/debug.log
else
    /usr/bin/myscript_check_resource.sh &
    echo "launch script result: $?" >> /tmp/debug.log
fi

The script myscript_launch.sh had no problem to be launched by systemd
service, but it could not run another script in the background (no
problem if it launched another script not using "&". I could see
launch script result: 0 in the debug.log, there was no error, but I
could never see that that script myscript_check_resource.sh running.

If I run the script myscript_launch.sh from the debug terminal, I can
see the  "/usr/bin/myscript_check_resource.sh &" was running fine.

That is weird busybox behavior, anyone knows how to fix it?

Thank you.

Kind regards,

- jh

