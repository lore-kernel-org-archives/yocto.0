Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11902E00AD1; Mon, 12 Nov 2018 06:33:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0810E00AD1
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 06:33:02 -0800 (PST)
Received: by mail-ot1-f48.google.com with SMTP id z33so8108320otz.11
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 06:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6sKBGe7mR66zqXKzV3exeuoF07ga1bPRynQAVUCMk9A=;
	b=Ds/sybB86fZTKdxppxrd1GAQVwebd64CYoRgHybx0swkdboyomeR7NQ7nl/rbmT39j
	domGXFT7IbgOX1yqgn/0DjLyqqruIHyNDee0cCqgG2IUSVTn2lBRtgYhGgQ42fy3Irfb
	vlN4lPaMiWNpGZBWmh2bk/2D/sDfK/og3OXni2Ygqz24ZHOE8e2ZqYxU7rTTH+8BzYrG
	DHbR2mycKJYwF89pI7Uvy3328gzq1fCf38S+afsYlJ3Gl7d5psPFoo/Mnd9k8qCOFq6d
	VOuVVNpiOfOfnKzEp7ZYN/U0t83FpR4UIArYPq96XgOJRqqmBt2etVEFcgL1ZMm4nDzq
	6yRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6sKBGe7mR66zqXKzV3exeuoF07ga1bPRynQAVUCMk9A=;
	b=LfC4DPKn5PwGI2vmZS/dXnxriyuwh05qMB8klD2117uWQzDVb4K5smTj0YLZyqHUEd
	wC8Hn1nDVv5H+hxKL9EfgcmBPik4DQkHjCBX/PNv2veZ88Mblge/yK+Jzq4sQXoEQpG4
	JaWlYOxNJKiXeyTX3hxARbR48eR9DhBFlN7q5xY4efFI3HLdfiYX2agCKd+ZEwljwvly
	VZfgeAh6/0qPOCJzcv1gyCKh31ixR/+2JXvIuc8YkxA8J48GU5ODlvnd+8ndhioXTSrz
	zbXmysrcIh5T3s30rGoZn0cRP49Jp6zMwRKXlFjs1IYSJM0IjpV2M2ke71GbR0acSlDz
	K2Nw==
X-Gm-Message-State: AGRZ1gJsd4XmX+np5i7xTgmNun2UsKmtnIv7LbKfttLBvJoNXOvmy6X2
	KhJaNpoQMWBYHZqUqTOK1Q/k5QR04QYOuCiN8Ht+xw==
X-Google-Smtp-Source: AJdET5fLJAcZNtvW2Y9we5fhOkEa5IUckc0/60DXt6m7OBih7qBmPrsHN8sD/6JDf26FqXIbkAf3Nl7oI2hnS6UrMVw=
X-Received: by 2002:a9d:5549:: with SMTP id h9mr626565oti.83.1542033177028;
	Mon, 12 Nov 2018 06:32:57 -0800 (PST)
MIME-Version: 1.0
References: <CAOT_U5Y5cpc5e0wLm92PDZxjjTVedxc6enHrVV4-8GN-ZFcYQQ@mail.gmail.com>
	<CAJTo0Lbnde9NX7XYGzD2UU78-R6bCjN8RvRPMvomYDnnV66sgQ@mail.gmail.com>
In-Reply-To: <CAJTo0Lbnde9NX7XYGzD2UU78-R6bCjN8RvRPMvomYDnnV66sgQ@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Mon, 12 Nov 2018 15:32:45 +0100
Message-ID: <CAOT_U5bPpZ4rWUN=2cF5NS5fs08S5i80iJy60Lx=ZB_OpyrDVg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: CONFFILES journey form source dir to rootfs
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
X-List-Received-Date: Mon, 12 Nov 2018 14:33:03 -0000
Content-Type: text/plain; charset="UTF-8"

> The standard do_install (which calls make install) copies the file
> from the source tree to the staging directory.

What's the reason for not seeing that in `bitbake -e systemd`?


Be Well,
Alan

On Mon, Nov 12, 2018 at 1:30 PM Burton, Ross <ross.burton@intel.com> wrote:
>
> The standard do_install (which calls make install) copies the file
> from the source tree to the staging directory.
>
> Ross
> On Mon, 12 Nov 2018 at 11:52, Alan Martinovic <alan.martinovic@senic.com> wrote:
> >
> > Hi,
> > I'm trying to understand how a conf file finds its way from source to
> > the rootfs.
> >
> > The example is use is `journald.conf` from systemd.
> > The file originates from systemd source:
> >     work/cortexa7hf-neon-vfpv4-senic-linux-gnueabi/systemd/1_234-r0/git/src/journal/journald.conf
> >
> > In the environment is only mentioned as a part of the CONFFILES.
> > [output of `bitbake systemd -e` formated for readability]:
> >
> >     # $CONFFILES [2 operations]
> >     #   set /mnt/data/alan/work/senic-os/oe/meta/conf/documentation.conf:116
> >     #     [doc] "Identifies editable or configurable files that are
> > part of a package."
> >     #   override[systemd]:rename from CONFFILES_${PN} data.py:116 [expandKeys]
> >     #     "${sysconfdir}/machine-id
> >            ${sysconfdir}/systemd/coredump.conf
> >            ${sysconfdir}/systemd/journald.conf
> >            ${sysconfdir}/systemd/logind.conf
> >            ${sysconfdir}/systemd/system.conf
> >            ${sysconfdir}/systemd/user.conf"
> >     # pre-expansion value:
> >     #   "None"
> >     #
> >     # $CONFFILES_systemd
> >     #   rename from CONFFILES_${PN} data.py:116 [expandKeys]
> >     #     "${sysconfdir}/machine-id
> >            ${sysconfdir}/systemd/coredump.conf
> >            ${sysconfdir}/systemd/journald.conf
> >            ${sysconfdir}/systemd/logind.conf
> >            ${sysconfdir}/systemd/system.conf
> >            ${sysconfdir}/systemd/user.conf"
> >     CONFFILES_systemd="/etc/machine-id
> >             /etc/systemd/coredump.conf
> >             /etc/systemd/journald.conf
> >             /etc/systemd/logind.conf
> >             /etc/systemd/system.conf
> >             /etc/systemd/user.conf"
> >
> >
> > The file successfully ends up at `/etc/systemd/journald.conf`.
> >
> > Why isn't there an action in the environment showing the copying of
> > journald.conf
> > from `...git/src/journal/journald.conf` to
> > `${sysconfdir}/systemd/journald.conf`?
> >
> >
> > Disclaimer:
> > There were also some sed related actions with the file in the environment
> > which I dropped to reduce noise.
> >
> > Be Well,
> > Alan
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

