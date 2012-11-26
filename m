Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9593E011AC
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 05:20:14 -0800 (PST)
Received: from mail-oa0-f72.google.com ([209.85.219.72])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 26 Nov 2012 05:20:14 -0800
Received: by mail-oa0-f72.google.com with SMTP id h2so50440884oag.11
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 05:20:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=dfNdcxx5BbHAB/fz2Cqw5BPzyYLKMIquG7fpb2BJlh4=;
	b=kl7s6Fq6KVNqb3lj3dEAqQJZOF9SSYUbiO/JB2fWdaCs2dye4LyG3sQy9EVlgfQWBq
	h5M+wabobbdfBHlMVN2FV2e5R++0t+05LmwWep6aGWpBZhxgNr699RK43Q9UXK1J8Zwr
	DiZDMJEGcmdiVytESd36OqiqPUqY4t4wlhgcNTfo3o4ORakpZJr1fFhX5uytIKZY87yc
	D8JYmhs6zc5c3qFIw0DLPpTXlNj4YjbSxmWi1RpwXp46Xk70bKRt8uND9xztZQY3mJNa
	bY19bMMuZfqNvGIFSPVjM+BCVHngoaLLPC8fbDa5xl5D0D9w00/q07mtlUuMrFtQGGx7
	Tiyg==
Received: by 10.60.25.132 with SMTP id c4mr9145743oeg.63.1353936013308;
	Mon, 26 Nov 2012 05:20:13 -0800 (PST)
Received: by 10.60.25.132 with SMTP id c4mr9145737oeg.63.1353936013174; Mon,
	26 Nov 2012 05:20:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Mon, 26 Nov 2012 05:19:53 -0800 (PST)
In-Reply-To: <509E1F87.4000100@r-finger.com>
References: <20121023184056.GR3269@jama.jama.net>
	<1351076036-25453-1-git-send-email-sledz@dresearch-fe.de>
	<1351076036-25453-2-git-send-email-sledz@dresearch-fe.de>
	<1351077244.22340.90.camel@ted> <509E1F87.4000100@r-finger.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Nov 2012 13:19:53 +0000
Message-ID: <CAJTo0LaGos44sTHqpqHVHfZz6SWUZHXspL36Ycq2FU72-y57ow@mail.gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQkO2XZryPH6trOTO2enQ2BekS621L85DDLjKJoJika48Qd46RuZ/dz42GuZ0zalRzvc5fTGeiAC1rPD6JV01THwIFqGh/N22QHFam3zl2GmUNS/RGkqKqJ5ydVYJ/RHiTocUkXOfzZWrL8yHp3k4xLvhaWUPQ==
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH resend][opkg-utils] opkg.py/opkg-build: fix creation of tar archives
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Nov 2012 13:20:15 -0000
Content-Type: text/plain; charset=UTF-8

On 10 November 2012 09:33, Tomas Frydrych <tf+lists.yocto@r-finger.com> wrote:
> Could this be also applied to the danny branch (and perhaps even denzil)?

This was present in the Danny release.  For Denzil you'd have to ask Scott...

Ross

