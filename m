Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8494FE00D86; Thu,  4 Jul 2019 03:15:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D440FE00B1B
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 03:15:18 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id w25so11737305ioc.8
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 03:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=XrzOz9pJazX4G7Hm0mVOFuXe2PnJiweUxKnEcRFIVGw=;
	b=gHJGI/4mXHMTIWLgcTeyb1wHkVtgtKEQomjAHF7pDlfCwwsfwiF1253dgcna0SSD2D
	NUHzGo7PVb0LvVHRq08PzRJG+U0cMHvqA27CWAThL+0mWeMh6vnUsM3jFNEKkswud2Tp
	SXdXmTZiy2Il71X0NTjs4kydxqaZqg9FBf6tmmcDxjNFrkVfhBpc2BfTwFeAGa0i8trp
	gvbPQX0+G2L3GOOm6CpJL4VFFeGzj0jnadJBhS6JjIJ5qBsRRgsyaR4m/09WnRm/G+V+
	PHw7pKzE/cgx0EzvzqgDwS2R6JC1DVA6mgFo7bGNkJQQeRiDdSzels35UsjfWbrAwbzy
	W0IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=XrzOz9pJazX4G7Hm0mVOFuXe2PnJiweUxKnEcRFIVGw=;
	b=NVk5UI7qJ9SgtNhE3RObGvQBl75/iYmhGvRYYsm/9/g9ouMckhT2BwBxuqrUPEH48W
	f7CmyJGxMMduYRHP2L8X1RldRI3C+/PaO+22m3/zVzGyy5r/IucrXbVJo1+IUzo15vLI
	ahLvMNY6PiF+x8X8LMSWiUQBmQ1UumyIMGT4ja9tCepNCUwhs7KNtX6f6sTmyisPiFjV
	K3/okbnAT7cPKpxjxk0y0yhuHdxE0nkMCdwkUacTovnxJIIYQHVwv1L/ea3PRDpFkDlC
	X/IZDIEBoLijsCoyCNu5y/lOGDQQvAA1V/lwqo1TjUB3OgUwifd4fyFEONx+gw5zWt0N
	O+0Q==
X-Gm-Message-State: APjAAAUw4pg0O68G4nCthleOItK8kkbsZRoeElyJJ+UCexw5q8y5bB6b
	uMZGeXiXptxgJ1I755gPwfG8fD4naCFCvPIB4DPZig==
X-Google-Smtp-Source: APXvYqwmXw52QkIP5XrpVCnCDfiDiW/tngoa0wKRUZSglULebyem5CcpTUE4mj00tD6IS2Y475HyGm25h8LTi/rAqy8=
X-Received: by 2002:a05:6602:104:: with SMTP id
	s4mr36878145iot.200.1562235318348; 
	Thu, 04 Jul 2019 03:15:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
In-Reply-To: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Jul 2019 11:15:07 +0100
Message-ID: <CAJTo0LbEJYdqNpDk2_CGQOm4M1Oc23cxqO9zJBcU_RX_eB4BeQ@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 04 Jul 2019 10:15:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 4 Jul 2019 at 09:46, Onur Eser <onureser12@gmail.com> wrote:
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

Can you share the full log.do_configure?

Ross

