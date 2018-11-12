Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD433E0090E; Mon, 12 Nov 2018 03:52:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.54 listed in list.dnswl.org]
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23ED1E007B3
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 03:52:12 -0800 (PST)
Received: by mail-ot1-f54.google.com with SMTP id w25so6957018otm.13
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 03:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=vtJX7R4Xv8zwIMOWnzlqL4t+BKsDGlgZoStcfQHq1ag=;
	b=j2sJtdWTQZ/IqUcpaEMx5RAhsQHyeI+HfZSZ2rWXjM3S0wRxCheUntAUfXAguWgCs/
	t4E5THwUiF2X2EG+SbiGVOwjx187nUtwc6hlxnRiTkmCGn16ZO3RarXY+87bZ9EALSRv
	kCPBtXo6zo50n97X37QfKaHN0t0TPggmHXa5euATYrBo8F2Rp5xz9pmssQ03+ppNlPiE
	ewhd9as0yuK8JF14JM9I0tyndrog67U0zOHdvuUAdGWgDq/SOqtX2duT6HDTt2tMagts
	eAl1TiLUvqkqa19uJKrLf+FJ7+SANVvrEwxO4Em2/Es4eOPKt9gq/F3XITs879XubONV
	jxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=vtJX7R4Xv8zwIMOWnzlqL4t+BKsDGlgZoStcfQHq1ag=;
	b=C/ysr95dpnrn74+tvT5SesxXC+ue0eyeof2kD6yGXnLFfN+uxh0M4fkcyme7HGRaVe
	xB40dVwASjrnvsO1YkT0HlVmocimtNXYHp0soW4RayKQ4D8CjE/rgcnuP8wbX+SHxLEM
	I97bvv6y2igom9N9COlFk8mKgc1q69gtGFyGoRg1volV+ipRSB3aprBbNnhJ3QJq65Va
	itG+ENdWT0/enGyUWurdEJ/6iPLco/AoCfiO4EmLDyavEiaYJArPJ3d7GDbrNo4HRYLb
	R5G4VS6LFyxGFS64rh8lwx0RPuKoQ4Kg37kMgQh4qfqj9GiFvBHYx/8fT2O0ZQfVjggS
	HGMQ==
X-Gm-Message-State: AGRZ1gLL07SxoBGWCPOu8gxy+HiuXxcWCZfg8q7mQmcFPU4bqUGz7R0A
	zlFA6xKyUQGYt6xscFUWTlGr91JeY+dNdeHkBSvpIYILOSQ=
X-Google-Smtp-Source: AJdET5cYEYfae1kdydnbFwV7DHJIDw6hDSmlnjS0X1ykCBS/6tYtlSICHUX8FQsiGSsKnLyC4HpNlVcx8RK+4aHq8nk=
X-Received: by 2002:a9d:40cd:: with SMTP id t13mr341317oti.98.1542023531202;
	Mon, 12 Nov 2018 03:52:11 -0800 (PST)
MIME-Version: 1.0
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Mon, 12 Nov 2018 12:52:00 +0100
Message-ID: <CAOT_U5Y5cpc5e0wLm92PDZxjjTVedxc6enHrVV4-8GN-ZFcYQQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: CONFFILES journey form source dir to rootfs
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
X-List-Received-Date: Mon, 12 Nov 2018 11:52:12 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm trying to understand how a conf file finds its way from source to
the rootfs.

The example is use is `journald.conf` from systemd.
The file originates from systemd source:
    work/cortexa7hf-neon-vfpv4-senic-linux-gnueabi/systemd/1_234-r0/git/src/journal/journald.conf

In the environment is only mentioned as a part of the CONFFILES.
[output of `bitbake systemd -e` formated for readability]:

    # $CONFFILES [2 operations]
    #   set /mnt/data/alan/work/senic-os/oe/meta/conf/documentation.conf:116
    #     [doc] "Identifies editable or configurable files that are
part of a package."
    #   override[systemd]:rename from CONFFILES_${PN} data.py:116 [expandKeys]
    #     "${sysconfdir}/machine-id
           ${sysconfdir}/systemd/coredump.conf
           ${sysconfdir}/systemd/journald.conf
           ${sysconfdir}/systemd/logind.conf
           ${sysconfdir}/systemd/system.conf
           ${sysconfdir}/systemd/user.conf"
    # pre-expansion value:
    #   "None"
    #
    # $CONFFILES_systemd
    #   rename from CONFFILES_${PN} data.py:116 [expandKeys]
    #     "${sysconfdir}/machine-id
           ${sysconfdir}/systemd/coredump.conf
           ${sysconfdir}/systemd/journald.conf
           ${sysconfdir}/systemd/logind.conf
           ${sysconfdir}/systemd/system.conf
           ${sysconfdir}/systemd/user.conf"
    CONFFILES_systemd="/etc/machine-id
            /etc/systemd/coredump.conf
            /etc/systemd/journald.conf
            /etc/systemd/logind.conf
            /etc/systemd/system.conf
            /etc/systemd/user.conf"


The file successfully ends up at `/etc/systemd/journald.conf`.

Why isn't there an action in the environment showing the copying of
journald.conf
from `...git/src/journal/journald.conf` to
`${sysconfdir}/systemd/journald.conf`?


Disclaimer:
There were also some sed related actions with the file in the environment
which I dropped to reduce noise.

Be Well,
Alan

