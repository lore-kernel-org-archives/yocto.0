Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D2B2E011AF
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 09:42:45 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so8372053lah.35
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 09:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JHDpGDHu7QW59xn1eMFzlSIn+NfsqaQt2q9abyNZedY=;
	b=ZxjBI7lHb6DfDh0LggJ9kBVwvUlSbuV6DP1KjEanMZ8YaWtP8qeO6cgWZIRywpS+bl
	cZCWxioOMjFsaanfmSqhTtg+ieJdurq8t9k8srVnoSzCK4K2OpgMft/hA+4xMKnAXz1z
	yT9d3Q0MPx1v9DctXjC3sEZ1443LvGsshLtFzHR/+Hzq+RLhHBFMk2buZUO7Ux5w+bCl
	NYpNe5Na6SPvDvl7GuCIHFsJNV+LPhxEEOq98pLw1yCNWBTZTZZdnJ7Z27URojHam0f2
	iSvNWzIDypcB9grsQ+oMNkzUWzP0Df+aayHym/kxQc0JKJxCXzAmVfPIt3soe4t8CjG3
	xxMg==
MIME-Version: 1.0
Received: by 10.152.47.75 with SMTP id b11mr15178745lan.14.1354038164092; Tue,
	27 Nov 2012 09:42:44 -0800 (PST)
Received: by 10.112.117.194 with HTTP; Tue, 27 Nov 2012 09:42:43 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1211271203380.4220@oneiric>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
	<CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
	<CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
	<20121127113952.06050a25@eb-e6520>
	<CAHUNapSULHA0kmWi9Qb61kxRJsuvGdbTjm9Wvktxc=PmGfVOSg@mail.gmail.com>
	<20121127161136.GA94097@gmail.com>
	<alpine.DEB.2.02.1211271203380.4220@oneiric>
Date: Tue, 27 Nov 2012 12:42:43 -0500
Message-ID: <CAHUNapRCGZMs-=eorNUfrjeKikyDW-O0K7GfREOHzs86B6pxEw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
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
X-List-Received-Date: Tue, 27 Nov 2012 17:42:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Nov 27, 2012 at 12:24 PM, Robert P. J. Day
<rpjday@crashcourse.ca> wrote:
> and ran the fetchall again.  this time, no strace source was fetched,
> so it looks like an issue with simple fetching.


Thank you for your testing and observations.

But I'd like to point out that in my tests, all the relevant files
have already been fetched. My DL_DIR already contains everything to do
with bash, trace-cmd, and various others that I have been testing. The
errors I am getting are not fetching-related errors, but are errors
because do_rootfs can't find any packages (since packages relating to
the recently-appended recipes have not been built).

Somewhere in the guts of bitbake a modified IMAGE_INSTALL_append
variable is not being noticed; packages aren't being created (as I've
noticed) and sources aren't being downloaded (as you have just
noticed). But somehow do_rootfs is noticing the change and complaining
it can't find the necessary packages.

