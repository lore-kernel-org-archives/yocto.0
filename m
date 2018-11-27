Return-Path: <richard.weinberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F671E00C58; Tue, 27 Nov 2018 13:46:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (richard.weinberger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DA7EE00B3E
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2018 13:46:29 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id c14so18617311wrr.0
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2018 13:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=3nbN+O6MD6cON2WU0VGsFUaA2R3bKqOzRb9PXFYjhcQ=;
	b=k+9Fra/IjgkSiYf1hVr60MtUWhbCt1FRvfksXQjG6yqYoBaw1WvZcjs3KbVXSKxX6b
	T2TGfKuoLSm8TpxuT1u/UNvlLBmjLwjk+8aO+FhN4QzVLnPkKoIuamrW2FVGVBzzNVUs
	1sSGZwJt6gFyAZKyJ/TwqfO0boCB1oFIy91U4/5yU42pFshNonJFkN1J4yAK9qN4Cgwd
	ACtTXNOl4+L2XIwuNS6fz57iu5Xc7+IrlQviatp162s8umszZEwnA/jQoWQrmcxEC9Uy
	L/7r7kSnSxdUC106CcdpxdxroFzMqayXz7luppRsTSdU1DuzINp/zCGsVYujCvI0P1zo
	DCfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3nbN+O6MD6cON2WU0VGsFUaA2R3bKqOzRb9PXFYjhcQ=;
	b=HGYjvjjx0g83/sCTdRbVlES57OEeKmPuxH1pOoy9acjI7TH6q4IdQ3o4uFNgU6BLq4
	6VIKpjRPCvr/ZhQxbwN10WScWJAqPpbBk3U2k9Y5hYUxKhYlkzBxEfzZNhQCMQtIQVl8
	yj9VOmqZ33dffpfoap9R54TFLchVjuyPruYO5Lh+XyAJes6ub2gBJyFJ2L+PJ9iErumk
	ZohVI0jTIbDs6ao/PoS0sMd+YXTpUJvrmbByrFDgxc8jQBRRLPCdUQHL/LLc8ElUUg41
	h7ifFh9hQQRZZPDrU/DJdhwSWvW4W5HFi8RIyVCnOEFkuYVO+0xb0dJBdEJPsG/FHMZ2
	ftBw==
X-Gm-Message-State: AA+aEWZO3qFD4IUstZR6o2k1mPACoV2gVKMM0L20w3Nlwe8MwNko+p9m
	h74UGo3WXoMSgRuORMSIqn+6Y4Uj+dhsEWhuhH3Yogoq
X-Google-Smtp-Source: AFSGD/VLc3AMUQJNsv6B4HqsgtZJ8M60WQ+PgLUJjm4kBLgFGljivxil9AF73QpSzNUEiME6GxswCYCS9IiWWNWNRHY=
X-Received: by 2002:adf:ed46:: with SMTP id u6mr30167369wro.262.1543355188319; 
	Tue, 27 Nov 2018 13:46:28 -0800 (PST)
MIME-Version: 1.0
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 27 Nov 2018 22:46:16 +0100
Message-ID: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Tue, 27 Nov 2018 21:46:30 -0000
Content-Type: text/plain; charset="UTF-8"

Hi!

I have a hard time understanding how to build a distro with x86_64
kernel, i586 userland
and an SDK for that.
In the beginning I assumed and have been told on IRC that multilib is
the way to go.

But it seems that building and SDK is currently broken/disabled:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=e153efde9754a650e555f46cba09680baabd7d7e

Another issue,if I try to add lib32 packages to my x86_64 image
building the rootfs fails due
to such odd apt errors:
The following packages have unmet dependencies:
 lib32-packagegroup-core-ssh-dropbear : Depends: lib32-dropbear but it
is not installable
 lib32-packagegroup-core-x11-base : Depends: lib32-dbus-1 but it is
not installable
                                    Depends: lib32-matchbox-terminal
but it is not installable
                                    Depends: lib32-matchbox-wm but it
is not installable
                                    Depends: lib32-mini-x-session but
it is not installable
                                    Depends:
lib32-packagegroup-core-x11-utils but it is not going to be installed
                                    Depends:
lib32-packagegroup-core-x11-xserver but it is not installable

Are there other possibilities?
Userspace can be pure i586, so full multilib support is not needed.
Having a x86_64 toolchain should be goof enough, it could build
userspace with -m32
and the kernel as-is.

-- 
Thanks,
//richard

