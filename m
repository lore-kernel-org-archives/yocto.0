Return-Path: <mont3z.claro5@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81A20E00F03; Sun, 21 Aug 2016 11:27:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mont3z.claro5[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f171.google.com (mail-yb0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB05EE00EA2
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2016 11:27:13 -0700 (PDT)
Received: by mail-yb0-f171.google.com with SMTP id a88so4746133ybi.0
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2016 11:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=YiM7s5uxktw8DL+UWGJjkV1uAfnYWDLd2Qp33OhAK+k=;
	b=xE5/U8VDjyEgF++lvVn5TbWExVZlu4lnDlhyWsNwnu8ONcHX4v5FHcC+HtAsalx2g1
	6yNlTplOo4exB78yx7IzPBuA5AWDcjbLvKeXHmtcSnlSIOuCMt7gc2n7cBuCzJ58/ey6
	Mp66sASj0G3JndNZ9UV9kKGGlVJ2rFNK5CTsSVqwCLL7tFjw+E6jZlsS8cSPkgbsnLV/
	06RyipRackkc0tfqDU/evfiW7WCDylktGR91QLTImlMVfQZD7HZygtvCfdWpqMJA1AYy
	foNtQgMS+a0FOSyDzZogp6Bl499vhRBmDOP1RQI5uFi6FsSkVP909CvRZzr+h2lDYRKt
	f1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YiM7s5uxktw8DL+UWGJjkV1uAfnYWDLd2Qp33OhAK+k=;
	b=F1DtMKCtu9bWGBRq4fRmXiKZGIzlGw7ZLPi5cQMzg9ahAhHl+PE36tgn59b98U9ZR0
	GCfzaHSA8X92XWsFVMRPYk0VG9ULMlAH0HRKxzW3WcixTwfI0oxNFn8VC4EK0bsN8OkU
	aExdlwdmRnwK2zQuj6Mh7KrVOfswKD50Gl0uvDw5ZrBppQOce54uWIJtfljCtfGJYeFv
	BpdgaE4xVVQZZ90MFnYE9gKt4gsRndKiqk2DKvd465U4222HOIxph93L6SFwtmwBjS0L
	03tLnuXPf61con/pmd3jhLiaQLqhMWPl5dr9P7WIrAoOjrBnUH+9l4cNPJNRC5Ho1fyE
	m94w==
X-Gm-Message-State: AEkoout6vr1qcB9yf7X6zhh0X81Tkn5zV/ZZKJlpxuN3jXjGrbgYlB2J911mSQLQ+0BBybVCFSIbu5m8Ac8i9w==
X-Received: by 10.37.98.134 with SMTP id w128mr9033505ybb.112.1471804032801;
	Sun, 21 Aug 2016 11:27:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.132.150 with HTTP; Sun, 21 Aug 2016 11:27:12 -0700 (PDT)
From: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Sun, 21 Aug 2016 11:27:12 -0700
Message-ID: <CAJ70iBSSMWYqZwH7+E0FLVC=xHLcw+0JBKHnDtGJFbCwdMT+eQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Kernel too old with core-image-minimal for Pine64
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
X-List-Received-Date: Sun, 21 Aug 2016 18:27:16 -0000
Content-Type: text/plain; charset=UTF-8

Dear all,

I'm working on a bsp layer for SBC Pine64 and my image is successfully
generated but I'm getting "FATAL: kernel too old" when booting the
rootfs init.

My kernel is version 3.10 and I used Linaro 5.3 to compile all
components of the image. I've tried adding: OLDEST_KERNEL = "3.10" and
I also try using Linaro 4.9 but I still get the same error. Please,
see below a snip of the error:

[   13.068932] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to
feature incompatibilities
[   13.086717] EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to
feature incompatibilities
[   13.112988] EXT4-fs (mmcblk0p2): mounted filesystem with ordered
data mode. Opts: (null)
[   13.127040] VFS: Mounted root (ext4 filesystem) readonly on device 179:2.
[   13.143393] devtmpfs: mounted
[   13.151972] Freeing unused kernel memory: 520K (ffffffc0009e4000 -
ffffffc000a66000)
FATAL: kernel too old
[   13.198566] Kernel panic - not syncing: Attempted to kill init!
exitcode=0x00007f00
[   13.198566]
[   13.218884] CPU: 2 PID: 1 Comm: init Not tainted 3.10.102-pine64 #1
[   13.230876] Call trace:

Thx,
Montez

