Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C7C7FE01484
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 09:04:26 -0800 (PST)
Received: by mail-we0-f172.google.com with SMTP id x10so2758535wey.3
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 09:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=Rz1HeKl2Re5AIhTqoNJTWOXu8qs/gWLum9u0Zpdul58=;
	b=XOH/bHoenEnhUzFL30fgbieeCWPVGSRZNdNq2DZibah+jAgkNUK18UEE+CCPT3doYE
	AuLUkP156jbSmR7D7MBHuiKFW+27IRT7JKvqh3Wb9wwbwXO29zjAy/4r7Cvp3OTZ1al6
	R4HpAwQtGm/cHmD4JhRVlN8uWdb1XSdOmMpS5/LzStNUz8z1accYVfSfppx5pdO3ONQP
	9BQWOrLe8OriSOPTszKWdejaMScByZVToakPdTF1V0reSP2gXbNHI3S9s9g5EF/dkY7/
	y3bmJreQSRHnpcQe5hi4o8F5FP5tWAkyGhOZ2TX8hKp5JrvDnFBE1R6jTXk6nT7OrF2o
	1aVw==
MIME-Version: 1.0
X-Received: by 10.180.77.9 with SMTP id o9mr40985331wiw.16.1362157465121; Fri,
	01 Mar 2013 09:04:25 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Fri, 1 Mar 2013 09:04:25 -0800 (PST)
In-Reply-To: <D5D8A4D8397140AB98A5568853482737@PAULD>
References: <D5D8A4D8397140AB98A5568853482737@PAULD>
Date: Fri, 1 Mar 2013 12:04:25 -0500
Message-ID: <CAHUNapToOXjYXmxe7WpABdTub-P5nivAEkbxZyDAyZp7Lwo0kQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Newbie trying to get started
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
X-List-Received-Date: Fri, 01 Mar 2013 17:04:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

I saw your email on the gumstix list but forgot to "star" it, and
therefore didn't get back to it as I would have liked, sorry about
that.

I too play around with a gumstix from time to time, as well as other
boards. In my (still learning) opinion, the gumstix stable build is
based on really old stuff (i.e. from last... September? October?) So
in my case I tend to have two completely separate "yocto" areas: one
for gumstix, and another for everything else, and I don't mix anything
between the two except the download location. For example, the gumstix
build is sort of based on Danny, but not really, if you check, the
repositories are checked out at random points in time (detached HEAD
state) instead of actually using or tracking Danny.

Working with a gumstix is sort of like having to work with a vendor
branch: for best results you have to use their stuff, but their stuff
isn't really upstream or tracking upstream very closely. So it's best
not to confuse the "real" Yocto, for gumstix's Yocto-based build. For
example their instructions have you use the "repo" utility (instead of
just using git) and start your project with:

    $ TEMPLATECONF=meta-gumstix/conf source ./poky/oe-init-build-env

instead of the "regular" template file and a regular git checkout of
the yocto project.

For best results I would recommend that you be sure to use a separate,
new terminal when you start your Intel work. That way various
environment variables (PATH, etc) don't interfere with each other.

As I mentioned above, you might get some savings if you open the
conf/local.conf of both projects and point the DL_DIR variable to the
same directory. But how much savings you'll get from that isn't
obvious (you might not get any).

Best regards,
    Trevor

