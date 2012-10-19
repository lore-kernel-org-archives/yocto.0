Return-Path: <b.hutchman@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3731EE00348
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 12:53:28 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id h2so971311oag.35
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 12:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=MWDuL/QQUcEb9bYeqw9pJlmGYNKktnzrgmYuE95/as8=;
	b=Wm051+BPIJbRHr20L3zdLQFv7jZx0OWYjXmnJ0a1XzNPoI9KFakFmDxiC/bCj6DGaD
	KMhAncySrEJzQuUtjc3T0u9en70dkLKQ7tjWVOqWJhsVTCof1F7VhJKatkcK3mIYjnSd
	Ql/uE0Di+wI9OU0NW/BxqUj3kzCLyUk9fQixQ4OGMu5c0VNR2V/k59R5VQfVtQuQod15
	FZPKyuYVjNHXNgdrSxL/gsez8VkUi0gVU+fqdcKzg58T52qpanVoO+oZ0Wh9tUbKcaCk
	EHBUV7/AKfkzCohJsGFwKfJW372GDSokRHa6wHf8/L6TtnaP9hA31IuW/CPxFlqPkNGj
	n2Uw==
MIME-Version: 1.0
Received: by 10.60.13.198 with SMTP id j6mr2443253oec.51.1350676405405; Fri,
	19 Oct 2012 12:53:25 -0700 (PDT)
Received: by 10.76.22.198 with HTTP; Fri, 19 Oct 2012 12:53:25 -0700 (PDT)
Date: Fri, 19 Oct 2012 15:53:25 -0400
Message-ID: <CAFZh4h_OQBiRAYWbeXuLV6m0wLeohb2rD4NZe+MgfDgqAwXmvw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: yocto@yoctoproject.org
Subject: Building meta-toolchain-sdk fails on some strange cannot parse db2omf.lang stuff
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
X-List-Received-Date: Fri, 19 Oct 2012 19:53:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm trying to spin a toolchain (Poky 1.1) for x86 target that contains
sysroot we need to link our apps against.  The bitbake of
meta-toolchain worked fine (but no sysroot) but bitbake
meta-toolchain-sdk fails one some gnome-doc-utils stuff that looks
like:


| warning: failed to load external entity "db2omf.lang"
| cannot parse db2omf.lang
| make[2]: *** [gnome-doc-make-C.omf] Error 1
| make[2]: *** Waiting for unfinished jobs....

When I consult Google, I see lots of other projects complaining about
similar messages but I don't see anything that helps me figure out
what my problem is.

I'm on Ubuntu 10.04.

Has anyone seen something like this before?

Thanks,

Brian

