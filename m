Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12F95E0049F
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 07:51:02 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id h2so2293995oag.35
	for <yocto@yoctoproject.org>; Fri, 05 Oct 2012 07:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FinoSGmEm+GLfterRooDNL5YA2w+QFD5vzTrie55Amo=;
	b=w70xr1oii5D0mLKrkjdkFQhrJsHc32Eu77GWJSJaIuWoHVN7JjGHR0t/hToGxfLgid
	lirzpO0vlzpjVI2ieKfrh+vcS72w0pWEaX2T3gybv8JdLmZmaLNVHGIan6Hk9tEr4onm
	EqLZzMSPLXAT6clZT0gDDOwwhfc0fFUJqv8oLRGbuhHpWX9/QvjoX/GaEfHbTlm3oZmr
	NwxAopGNaDgagKj92GDVbk6WUnQQGj5i2fD5kMW++Wnkr3hr4TzNBmDF8EFMa8088X+B
	C4LscgshR5qTdEYnsWhMgi9ca69MvKsZA4RwP+q/ESa993rU9ql3gnmcIfi4tJIqVlJZ
	m8OA==
MIME-Version: 1.0
Received: by 10.60.170.9 with SMTP id ai9mr7084629oec.36.1349448661357; Fri,
	05 Oct 2012 07:51:01 -0700 (PDT)
Received: by 10.76.167.165 with HTTP; Fri, 5 Oct 2012 07:51:01 -0700 (PDT)
Date: Fri, 5 Oct 2012 10:51:01 -0400
Message-ID: <CAMAb8ZPFz+Q72TVbKrqO+0Nu9a5ZJyJLLV9cdtw87YgC-mm6iQ@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Subject: HTTP-accessible poky repo?
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
X-List-Received-Date: Fri, 05 Oct 2012 14:51:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'd like to track yocto development more closely, but I'm stuck behind a
restrictive HTTP-only firewall all day at work.  Is there an official
(or unofficial-but-up-to-date), HTTP-accessible mirror of
git://git.yoctoproject.org/poky.git I can clone from?

I can create a clone on github and run some cron scripts at home to sync
it, but I'd rather not bother if there's already something like this out
there...

