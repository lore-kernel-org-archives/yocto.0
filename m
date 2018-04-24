Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58FFAE009F4; Tue, 24 Apr 2018 02:47:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CE86E009BC
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 02:47:36 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id m134-v6so14680385itb.3
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 02:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Cv/Nwzk2TtzHonrMDUahSubWqBoGqFtD/rauII5MHgk=;
	b=PdmM0ybMNjGv9KWVKKEi0DISxcbz4eysUxLj4aCQVTs3UCLK/Cec74r7QPDPIFBwqU
	4oDiO5RFhLG6FJtTLVckguIg2s3DhTNE5iogOWUroG0lmTjS790nRXvDq3lAjN5iaJ1u
	YgA3OLp6FcbPR6jMvK9op1aD8985FsvS3Lnm6/xd6afKWGO8fAZf0l73s+uwuMRzmnn3
	JOm5zc5mUcBYF7iBf9SUas+tmYREuwe/rE71riSdKeQhBUXG14mVrYlXwL3ZfT8dLQf+
	zFWm/FIZJsPjfDTL0cm9ywBcxJPfDboyhoi0iP5MUJji06sWeiwAsjlVcz7+nt9UgM42
	ax6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Cv/Nwzk2TtzHonrMDUahSubWqBoGqFtD/rauII5MHgk=;
	b=oYACmc2yrr8Rnzz1ieOiw5Ep+rUhfD4Y1SDdgKzImsuG3AQFRCEUBwJIJDWio24hrb
	xLizejAEoAQZDjIFEoV0GPgSDb29RE4uCGxueWu97x9U7E1lDOYE3Ae5qZbdtRve3IgH
	7i0s2ermhghPzue0V5dBITw7jY3yv8MUSvUx2Wl7III6TiDAVzjDfJXCA4PW1F7uZil4
	MWF+oAOFUG4vMYaeMFRqCsAOeOPRmg4JFCLOED9AOfxm+dhviaJ4hD5Z8RWw0n53adyd
	+0bDOIhSiAoWIi1eofzW4BU4AtxO9gdkM8e75NN22xui21GFtg1qkpAHwJIyoC07iwz3
	5ByA==
X-Gm-Message-State: ALQs6tDtaKErl+ZNI7aIasqTDkMcDL15yR0NWNeLp8YeL8/uuST+bZvS
	e2FDBA9ypJ0DCv69pjAprKbcIpl8e6zVQ6Gx4kqVLA==
X-Google-Smtp-Source: AB8JxZpRsu/E6HCAqojJU2qK0fMLbqYPfuO/Fz4XvY3N7R189YpUl8bgepUUUl8tE+P7pz/v2VqmtMpfmd+XZoDigsk=
X-Received: by 2002:a24:b803:: with SMTP id
	m3-v6mr17039409ite.131.1524563256068; 
	Tue, 24 Apr 2018 02:47:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Tue, 24 Apr 2018 02:47:15 -0700 (PDT)
In-Reply-To: <E3DACD6AA0B26143AF16244886B5278E1FE92BBF@MBCHN01.chn.nestgroup.net>
References: <E3DACD6AA0B26143AF16244886B5278E1FE92BBF@MBCHN01.chn.nestgroup.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 24 Apr 2018 10:47:15 +0100
Message-ID: <CAJTo0LZT_KjCu=FK-ymwvXjR+1qDDjrcn_ZxLAFRxbyGU3eGhw@mail.gmail.com>
To: "Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during Importing pexpect
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
X-List-Received-Date: Tue, 24 Apr 2018 09:47:38 -0000
Content-Type: text/plain; charset="UTF-8"

On 24 April 2018 at 08:09, Nishina A. Pervin
<Nishina.Pervin@nestgroup.net> wrote:
> When I am trying to import pexpect to make my program interactive in Krogoth
> branch of Yocto build for imx6qsabreauto board, i am getting the following
> error: Please help me to resolve the issue.
> root@imx6qsabreauto:/usr/bin# ./SensorTag.py B0:B4:48:BF:17:05
>
> Traceback (most recent call last):
>
>   File "./SensorTag.py", line 3, in <module>
>
>     import pexpect
>
>   File "/usr/bin/pexpect.py", line 41, in <module>
>
>     Currently pexpect is intended for UNIX operating systems."""
>
> ImportError: No module named pty

The dependencies on python-pexpect are not complete:

$ oe-pkgdata-util find-path */pty.py
python-terminal: /usr/lib/python2.7/pty.py
python3-terminal: /usr/lib/python3.5/pty.py

That's using Sumo so the names may be different for you, but repeat
that command and you'll find out what package you need to add to the
python-pexpect RDEPENDS.

Ross

