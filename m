Return-Path: <nickaein.i@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF33DE00B1E; Mon, 15 Jan 2018 03:15:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickaein.i[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C354AE00B5F
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 03:15:40 -0800 (PST)
Received: by mail-qt0-f169.google.com with SMTP id u42so13684431qte.7
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 03:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=xHYRt9TORg+qKrGU4qi+NfYSFOQRRVTM3IKAmnwqstw=;
	b=k82ETJvZ7V4FnrdUWqPwiYSO363I2ZZ/k+SdArIcSgRNvvOIENyQgfcHQVdd0upYYP
	XtMeto38kCjcag8Qr/4M2LfE/jJwjk0UrKwaQ/T10gJ2BkT4E0JtsaLJ/wEmAx92cuS0
	JkLwx6F4ahv4qJ7+Bwcq61ptEzH3hxfuYPB5wfVcT0pogvngPS16VcGUHTRm0xPEjNVp
	rgh8iUi8sSJetb7CpHMxUJtle3STcnNUujU1TslUeHi0hcv73qDyDSVI0RT6V5bHFa/z
	fUF5PxFctdqEkSvkIqc+Q4jFSz25v4+cjHBW35Ve+CdD52CNW+BJcdcD8eX8+R4eTTDN
	MTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=xHYRt9TORg+qKrGU4qi+NfYSFOQRRVTM3IKAmnwqstw=;
	b=OKPnf9QJsCHPYOaD/u7jAnN+Nz3B6XpohwaaPk/QYYg63tEOo8XyG36knbfy/iq93B
	BRFggRmQnnngFTUHIeUDxo7XqXh5oDqBkhqoDxH+SazTWOExFeKwFiRUne4Q3TAo8x22
	T9fxAGEaYvJMKtda9dQcsUAtAV+I5vGQX4T2UP2Q6Gu9o6Z0IgmllBlbcyC4jCuJnGQa
	/+3AkAr7HoC5ws/L8jHPtO0k532sz6c9VETCmzygG9dwvjaq/won/gBBTaVXwdvtlNYl
	QfMnUyTonQ+YDflwrbJXqQvISLo/+A5cwpTFHTjMpSydZ/3QxuUMpzklcQVLSHgtaIix
	fgLA==
X-Gm-Message-State: AKwxytdbA6vRjbKtB2SaGspXeFaXIV93kB8N25w52Mls63ppXp8dAy6n
	b3EfbFRjUulRAIJ8JhoTAsUYsN6IpORxNRGSvlznocfr
X-Google-Smtp-Source: ACJfBosGm6o0BrwldhtllSBiJ5BiG5tiH29PPiVdwzgkOj9yxjyEu2A4tJKBZ7Km620F3mCUfnphzdVls/3EYaB3Cd4=
X-Received: by 10.237.54.8 with SMTP id e8mr51481079qtb.25.1516014939492; Mon,
	15 Jan 2018 03:15:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.214.82 with HTTP; Mon, 15 Jan 2018 03:15:09 -0800 (PST)
From: Isaac Nickaein <nickaein.i@gmail.com>
Date: Mon, 15 Jan 2018 14:45:09 +0330
Message-ID: <CA+NJmkf11LvaSksv_6x=Ft6GSW==8UgMNuo6pX_K02p5n4tY3g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Moving all meta-* directories inside a parent directory like "layers"
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
X-List-Received-Date: Mon, 15 Jan 2018 11:15:42 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I've clone the Poky on rocko branch from http://git.yoctoproject.org/git/poky

By default, it gives a directory structure in which all meta-* layers
are scattered inside the root directory.

A more clean approach is to move all meta-* directories in a dedicated
directory for layers
e.g. "layers" directory like what Toradex BSP does, or "sources"
directory like Freescale BSP.

However, doing a simple move essentially break the poky git repository
and causes trouble in syncing
poky recipes with the upstream later.

Is there any way to do this without breaking anything?

What is your recommendation?


Here is the current root poky directory:

octo@yocto-server:/opt/yocto/rocko-poky/poky$ ls -l
total 100
drwxrwxr-x  6 yocto yocto 4096 Jan  9 15:59 bitbake
drwxrwxr-x  7 yocto yocto 4096 Jan 15 14:26 build-saba
drwxrwxr-x  6 yocto yocto 4096 Jan 15 14:25 build-colibri-imx6
drwxrwxr-x 14 yocto yocto 4096 Jan 14 19:55 documentation
-rw-rw-r--  1 yocto yocto  515 Jan  9 15:59 LICENSE
drwxrwxr-x 19 yocto yocto 4096 Jan  9 15:59 meta
drwxrwxr-x 22 yocto yocto 4096 Jan 10 15:37 meta-freescale
drwxrwxr-x  7 yocto yocto 4096 Jan  9 18:32 meta-freescale-3rdparty
drwxrwxr-x  7 yocto yocto 4096 Jan 13 12:25 meta-freescale-distro
drwxrwxr-x 14 yocto yocto 4096 Jan 10 16:50 meta-openembedded
drwxrwxr-x  5 yocto yocto 4096 Jan 10 16:33 meta-poky
drwxrwxr-x 13 yocto yocto 4096 Jan 10 17:31 meta-qt5
drwxrwxr-x  7 yocto yocto 4096 Jan 15 14:20 meta-my-layer
drwxrwxr-x  8 yocto yocto 4096 Jan  9 15:59 meta-selftest
drwxrwxr-x  7 yocto yocto 4096 Jan  9 15:59 meta-skeleton
drwxrwxr-x 10 yocto yocto 4096 Jan 10 16:46 meta-swupdate
drwxrwxr-x 13 yocto yocto 4096 Jan  9 18:28 meta-toradex-bsp-common
drwxrwxr-x 11 yocto yocto 4096 Jan  9 18:28 meta-toradex-nxp
drwxrwxr-x  8 yocto yocto 4096 Jan 14 19:55 meta-yocto-bsp
-rwxrwxr-x  1 yocto yocto 1754 Jan  9 15:59 oe-init-build-env
lrwxrwxrwx  1 yocto yocto   30 Jan  9 15:59 README.hardware ->
meta-yocto-bsp/README.hardware
-rw-rw-r--  1 yocto yocto 1173 Jan  9 15:59 README.LSB
lrwxrwxrwx  1 yocto yocto   21 Jan  9 15:59 README.poky -> meta-poky/README.poky
-rw-rw-r--  1 yocto yocto  529 Jan  9 15:59 README.qemu
drwxrwxr-x  8 yocto yocto 4096 Jan 14 19:55 scripts
yocto@yocto-server:/opt/yocto/rocko-poky/poky$

