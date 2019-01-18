Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 058A3E00CDF; Fri, 18 Jan 2019 08:53:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDF40E00C91
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 08:53:37 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id i20so15000113otl.0
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 08:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5XXRR8xZJDj3Z2C/uTk3KtovJ3fIu2aP5kKXTkKKuQY=;
	b=tSdDJwkphf3AVpvp2mSG/589zhHBI/SIPnnwF+H09N5aspZOAny3SHuyw6aBOsR8Jv
	R5DZM4A1pdT9NDH48+a7PTHQ/TTdQoWzCbKOJIWEVhyfeWzm5bCtrWyuAvzb5a6LpCS7
	pvGAcLvHx3Gzom9N8ftPuPgWaHl409fiLmlW8itQn2hKjLGfOPFXlcD1p7/4V1ahERyg
	KGZThgWzNGHUi69rSh5atw8kPOScNkH73zJ3x/F2JUooPnNZh/E0sXOxX10BUlVFcIiF
	EXeG1A0rx52GZ6KP0nYwCqtaoZSMcwNk4DxEPjDIyrY7Zfw9iL4zZ6bIVm2/uoc4pMxU
	QFhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5XXRR8xZJDj3Z2C/uTk3KtovJ3fIu2aP5kKXTkKKuQY=;
	b=MM9rp0skptbw1IJJ6fwdnmvprO6eOORna9wH8mZQpvsX7XuxcnGF5tWe1oHr3u4Utt
	mDUc6lKGgCz1VGLSMY/jBB/zvQEID5TPJGI68VX7GOUbx09o6q5gkAunP3vsfgtqZV3e
	XZhg5kDi3GIbEUVTqekuC8JqNlG0tmrVAZu5oNZFy11IvTD8d5Fm3HcIXwbFAfqhv8wI
	cCE7TP1soGdZar82Q1O8ISU5oer0jL3z7icT/vDVqE3TO7SPtJcQAgB1OwQv7A8Xp7Qi
	+uocRYoGUAQh+QWA2RfVFfcQak1dYG+uI5VFJYKudTyjg/YS6p4mkh282vDyjLp+zB3X
	Qpdg==
X-Gm-Message-State: AJcUukcHPX494YE87ld/EaNflqlDu/FYSjz6thjSY/TseJDU2jFr6Rto
	L8fGFyv4rb9Hcf5Ceci+XhYwDat/172OuHjgydc=
X-Google-Smtp-Source: ALg8bN68u+cDphDoIp+JVf9ylfsyDEk2iwM5vWWjKZ2eXE7Y/GyPxPCN0VxWlvGzB1RBzKNsbKkzT0OZnXiSXb7d8jU=
X-Received: by 2002:a9d:66f:: with SMTP id 102mr12749103otn.293.1547830417178; 
	Fri, 18 Jan 2019 08:53:37 -0800 (PST)
MIME-Version: 1.0
References: <CAJWg_GmVLZURNCSscw7CQDRbJTqmZmt=QJJKgMTfUSbW7xM8Kw@mail.gmail.com>
In-Reply-To: <CAJWg_GmVLZURNCSscw7CQDRbJTqmZmt=QJJKgMTfUSbW7xM8Kw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 18 Jan 2019 17:53:25 +0100
Message-ID: <CANNYZj-oBVCQMoVyck6mT+x-jm5cRBH=dSAt1ff_-E3V377oDQ@mail.gmail.com>
To: Seth McLean <sethamclean@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Rebased Python 3.7.1 patch
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
X-List-Received-Date: Fri, 18 Jan 2019 16:53:39 -0000
Content-Type: text/plain; charset="UTF-8"

You can start by reading the following:

https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

Alex

On Fri, 18 Jan 2019 at 16:24, Seth McLean <sethamclean@gmail.com> wrote:
>
> I've rebased and made some minor changes to a Python 3.7.1 patch from patchworks. I'd be interested in seeing this patch make it into master if possible.
>
> Could anyone provide any guidance on the process of submitting a patch?
>
> Thanks,
>
> Seth
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

