Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3587E0146B
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:15:02 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id m15so825173wgh.17
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=GVPglOqI6DSccy6uBpPKQIXKPPCn2bJZxQhynZ81QWI=;
	b=p3VwRRvBEHn4O0jL4Ai6xa7k2VqHhSgpmCg3W/BWAnQ8xwN4RPZpkd6nZacNly36x6
	zQHo8fmSNDAUrQyxhaeyusMRvbkgeeZ4miOy6fLcmotZF0cA5Aybg0DojZ6NQ9W1HWj0
	0sykvfa6cDAmlWga9b7IRtuDyi27+r8ojZ2itYDhj1OWsCVESMVD3scbhwiOhq33D+cs
	8m/aOj4OqcXaeJb2C7mPIjEtTkflewg4vMlMwl1JwkUd3YP8qTQNReWwsIgwFO3LMLCh
	OcWXxd65rNaAJxLXrBq+vEVEtKLnQAkpToSjTULhFcKo/Gu8g7imrPgBhsqk6i/f/Mhg
	CGFA==
MIME-Version: 1.0
X-Received: by 10.180.109.196 with SMTP id hu4mr573190wib.27.1366139701463;
	Tue, 16 Apr 2013 12:15:01 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Tue, 16 Apr 2013 12:15:01 -0700 (PDT)
In-Reply-To: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
Date: Tue, 16 Apr 2013 15:15:01 -0400
Message-ID: <CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Repository to upgrade images
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
X-List-Received-Date: Tue, 16 Apr 2013 19:15:03 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2013 at 3:02 PM, Edward Vidal <vidal.develone@gmail.com> wr=
ote:
> Are there any plans to provide a repo of pkgs where systems can be upgrad=
ed
> and new pkgs installed like other distro Fedora, CentOS, and rhel?  This
> would also require yum or the new software that is replacing yum.

I doubt it. The Yocto Project is not an embedded Linux distribution =96
it creates a custom one for you. Providing a public package upgrade
repository is fine for a given distribution (e.g. Fedora, Debian, etc)
because it can make assumptions regarding the compiler, c library,
build/configuration options, etc. If you are creating your own
distributions, any of those variable can be tweaked, therefore making
any such public repository useless.

If you would like to have such an ability for your devices, you'll
need have to create your own public site and build the packages
yourself (all of which will incorporate any of your specific
"tweaks"). Yocto will help you do that (and make it easy) but doing
this in a generic way for everyone's Yocto distribution would be
impossible (I would think).

> Does any of embedded boards support PXE?

Whether or not a board can boot via TFTP is a function of the
bootloader. u-boot supports TFTP booting so theoretically this should
be possible. Whether or not TFTP is enabled in your u-boot build
and/or whether or not your BSP includes and builds your own u-boot is
another question.

