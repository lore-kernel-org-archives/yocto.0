Return-Path: <paulsheer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA9B1E0097C; Tue, 21 Aug 2018 15:52:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (paulsheer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D67FE008D9
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 15:52:05 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id k12-v6so5041oiw.8
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 15:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=al7W0ylFi/6SG2CI1sEjCopzn/ZEL4Vxv6BZuQUmQKA=;
	b=OSDp8D8Yy1Y6TSh1xdeHsI7XpBv+lkXVBUrtGB8rD9ZTZ3u9EREvNx1G4PKyp4KEnu
	yuzep9b8gffjP3jLT/ZnSjtht8gn3ZWIJhRt84WI1IaqLqHgwE1U5G7TZLCvo9j14dsE
	v9eEpqhZP7zU0W32XnVGZ1cgMfDUHTJbq/8WpRVGCbHukfi3uoAkGXVDhnOnbF8yoneq
	jXB6r2iCdakMm9qs/uIYsIAI8TodNwohpQK7mO3Ec1fjXMFML2xcGXdfLK91wwM55ZyR
	wk69/IjmdKO30/vEUQFYKQRoEswufP6742N2QILIX/WGoRvfhpZ1Qze74PMeaqnFfDN8
	/caQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=al7W0ylFi/6SG2CI1sEjCopzn/ZEL4Vxv6BZuQUmQKA=;
	b=nMiYy7TkYbpIz0TR1xkHqtpOsLc4dRltH+joVENXQ0GZtDERilv+/1N7PCVjCZx2Fh
	p2FOUcYxN/Sn18BYaEvRw+/zRzlZJZARLa/ehtlXCaI79yHLFT8nQmOvcKiYXhaV4NIW
	u1K6ld1TqYRn3OXS5be0bYYbRR9d56+Z3Crg6Ztcg3PmpRFlAU6t2nYamRGHzJ5u/3PJ
	OHtshc3vk5tqaF7iBbeTbXAiQxki8h8P/UobQOTKvrSbD4GvZIoCe9ET3SDTtwGX/P5V
	C3NS7NEgUmNNgnvdJOb3ZZQImpATpwNWT0mNf98AAM3HJXOYYgbtsH8X1b7bPZvxRK2w
	Y9Jg==
X-Gm-Message-State: APzg51BSDo7fAxIojbiTuykbtaf0YL2+MDaWvbbO7a8MUTZYO12bckjU
	E0K1GM/6uK05ENbGO5wazPwpVQJLzBdfwGvMriukCg==
X-Google-Smtp-Source: ANB0VdZMrdPO8uGiI3WbePn2916xC3OOPs+UwLw/ztitusYLC/gFOu0sNb/xqSjfwDAlibMhhuwWjjSRp0hFmYiD+C0=
X-Received: by 2002:aca:d452:: with SMTP id
	l79-v6mr1318097oig.222.1534891924812; 
	Tue, 21 Aug 2018 15:52:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:e0b:0:0:0:0:0 with HTTP;
	Tue, 21 Aug 2018 15:52:04 -0700 (PDT)
From: Paul Sheer <paulsheer@gmail.com>
Date: Tue, 21 Aug 2018 17:52:04 -0500
Message-ID: <CABxOuY_5=1XEg45janMNWmEidhkeB5b=7mfbQM4uAivhf1xfxg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Cleaning out build without re-downloading sources
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
X-List-Received-Date: Tue, 21 Aug 2018 22:52:06 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to do a clean out all packages within my build due to a
change in my GCC environment.

I updated my GCC so, for assurance reasons, I want a rebuild of everything.

However I want to avoid re-downloading gigs of source packages.

I am hoping there is a way, say, to restart all packages build from
the "unpack" step without doing the download step?

This seems like a common use case.  Is it supported?

The only help I could find is to run commands like,

bitback -C xyz abc
bitback -c xyz abc

Nothing I have tried forces a complete clean out of all builds (nor
the other options -- a restart from the unpack step).

rm -rf ./tmp   works, but it also forces a download of every package :-(

Thanks

Paul

