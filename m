Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21106E01410
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 15:02:11 -0700 (PDT)
Received: by mail-we0-f178.google.com with SMTP id o45so5252333wer.37
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 15:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=F44b4KqL5Xvczr1lsqM1TVGJBqdrBCRslqfrvV3w9w8=;
	b=eLmBsZgPC86AxgZBjuND51gJvZ1uH05CHAxaW2421DIHYPsLSLOgmLUVEi0OBACKyK
	A0OtgMEsK36ik8nSrlntakEBloCWJGadxu/bBTri5LcfNCKTK7WIKMn/7J01IcZegTD5
	nR7W4NhPZCRuAl/LfxWzlHzvNMbF0RbNI7lNTMjCC1BTKGDISPVF038cJj4eUgXfX9cB
	gLLH1urXS7c8o2GXht99M7EjdCun4WVqA2HTRJ+jWAfTKeV9bWnRcRrmejLng7olVSYP
	FK3SJMk4Aix17twl6CQ9IMw6tjYfWDpVmhYTplxxkyshBlGR5rDG8KJoa9IeUU00vPYU
	VKeA==
MIME-Version: 1.0
X-Received: by 10.180.83.39 with SMTP id n7mr1134915wiy.8.1363644130672; Mon,
	18 Mar 2013 15:02:10 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Mon, 18 Mar 2013 15:02:10 -0700 (PDT)
Date: Mon, 18 Mar 2013 18:02:10 -0400
Message-ID: <CAHUNapTBSMo+M-g8Kg8NKoVksAkZ6j8kvC5OsSG2V=q7=zqO0w@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: TMPDIR collision
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
X-List-Received-Date: Mon, 18 Mar 2013 22:02:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have been going through the archives from this list looking for
information to not only improve my build times but to make these
builds safer (there are hints dropped here and there that these large
builds are bad on disks which has me worried seeing that I use the
same disk+partition for both my builds and my personal data).

One of the suggestions I'm anxious to try is to use tmpfs for my /tmp.
I assume this is because gcc uses the environment's TMPDIR variable to
define the location to place its temporary artifacts (which on most
systems turns out to be /tmp)? I can certainly see how this would be a
good improvement, but sometimes my /tmp ends up with lots of
non-build-related cruft which can become quite large. While I would
like to get gcc to use a tmpfs for its temporary files, I don't
necessarily want a whole bunch of PDFs I'm reading to be taking up
valuable tmpfs space unnecessarily. Therefore I'd like to keep /tmp
where it is, but somehow get gcc to use a different TMPDIR when
performing a build.

I can't just modify my .bashrc to define the new TMPDIR since anything
that uses the TMPDIR that is run after such a change (i.e. the
non-build-related cruft) will just end up in TMPDIR anyway.

But in bitbake's configuration there is also a variable named TMPDIR
which specifies where bitbake does all of its work (e.g.
${TOPDIR}/tmp). These two TMPDIRs could possibly collide, couldn't
they?

Let's say I wanted to leave /tmp where it is, but modify my
environment, when building, such that gcc will use /some/other/tmp
(i.e. a tmpfs) for its artifacts. It is normal to modify one's
environment when invoking a command, but if I wanted to modify my
environment when invoking bitbake, it'll confuse the two TMPDIRs,
won't it?

$ TMPDIR=/some/other/tmp bitbake world

This would cause both gcc and bitbake to use /some/other/tmp, no?

