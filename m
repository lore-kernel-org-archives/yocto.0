Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB100E00D88; Thu,  4 Jul 2019 02:43:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.182 listed in list.dnswl.org]
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5745EE00D35
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 02:43:30 -0700 (PDT)
Received: by mail-qk1-f182.google.com with SMTP id t8so5122751qkt.1
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 02:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=cO0yoAsl/XYfsePCMvFqTJDPuZfKx7n85Q8n8rPGQec=;
	b=Dinqzc4hGJAfGdSlfZXsOkAzL0uKrjjttHA8WK1AM/pD/wLo8Wqzi1hF14Q/7/S/0X
	TqO4VqJo51zvOki8VNyLAP+wC09kNhqRjMdr2K80ulmDPakQU3KvLKBm91EC5bBhQ7LA
	0ftEy+svceLkVfS4mfzX2gLnJmco6J66RrEQoMJG47k1xuqjeNyL9rXColMXsM+NnjLx
	C4Wmf/sXVwmCZa7Nh5TBoAJsbqYGEW48IAtyoV+qOsHhDdQO4Twl94HHsOsq2yCP2JTX
	FZyZJvJvxqv75ShE8HZb9EGXg28nH7LofqyrjdRbxnx0kDK6cr2JB0UZc43SEpiQV8Cf
	dx0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=cO0yoAsl/XYfsePCMvFqTJDPuZfKx7n85Q8n8rPGQec=;
	b=DyKgT3H23LZ3UfYshw2wQ46Btz9ui9HQrkvwYuJc2Qbcb2+Hi5/zxTLZx6ZoKrQ/Yk
	8ul1P/y047BW6bjmMHF8eaROLNB6EzptKgHRy1rqfbOWmlEFMsLjasNYY37BbhnD5OZJ
	DhMNhG5q18s0MQCkFhFD4jE3tjLqlLR9345fylW9gcoCu0XRcaaK7YBqRgw0zIKzJ8Mh
	4dmyRtLG2NQLyPgr64xtLCl5PHEwIg2ln/E8e4/saW5sCfBcVvx7Eer9470gVk3e9tR0
	+fkPKn49srm9iGVJc2FhsSeq1YEJEcUVl1uQZi9PXQvQVvtjpaCUuOG4TtR+4/Y6KbWv
	G/vg==
X-Gm-Message-State: APjAAAW1g8918b7YdIKYlYBPUxBl87RjbT2ZSVK9FkH8gu/8IiSPjHNI
	+RmmIqtiXiQFFP0VfqNp1cWc4GhJ/H88XNIMyq8=
X-Google-Smtp-Source: APXvYqw9/+3jSZWSvWs0TLRslo2DLebkYqmJ9pcjZnNj3kbBMZZw7VvVDCDB0/1WwZFaTHZVdBEmNlGp4nDBfT/uZ0o=
X-Received: by 2002:ae9:e217:: with SMTP id c23mr34083211qkc.227.1562233409792;
	Thu, 04 Jul 2019 02:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
In-Reply-To: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 4 Jul 2019 11:43:18 +0200
Message-ID: <CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Json-Glib failed to build during the building of Weston image
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
X-List-Received-Date: Thu, 04 Jul 2019 09:43:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Onur,

Why Weston protocol? Why not classical X11 Client Server in user
space? Which DeskTop are U using in Ur YOCTO build?

Thank you,
Zoran
_______



On Thu, Jul 4, 2019 at 10:46 AM Onur Eser <onureser12@gmail.com> wrote:
>
> Hello Yocto Community!
> When I was trying to build core-image-weston with meta-qt5 and meta-fsl-a=
rm layer for my imx6 (Humming Board 2 - Armv7) board, it gave an error on c=
ompilation of the "jason-glib". I would suprised if my image was builded wi=
thout errors. I never could have finished a Yocto or Qt-cross building in m=
y life...
>
> So, my error log is,
>
> Got pkgconfig variable girdir :
> Program g-ir-scanner found: YES (/home/closx/poky/build/tmp-glibc/work/co=
rtexa9hf-neon-oe-linux-gnueabi/json-glib/1.4.2-r0/recipe-sysroot-native/usr=
/bin/g-ir-scanner)
> Adding test "array".
> Adding test "boxed".
> Adding test "builder".
> Adding test "generator".
> Adding test "gvariant".
> Adding test "invalid".
> Adding test "node".
> Adding test "object".
> Adding test "parser".
> Adding test "path".
> Adding test "reader".
> Adding test "serialize-simple".
> Adding test "serialize-complex".
> Adding test "serialize-full".
> ERROR: meson failed
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_configure (log file is located at /home/closx/=
poky/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/json-glib/1.4.2-=
r0/temp/log.do_configure.13333)
>
> Thanks,
> Have a good day!
> Onur
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

