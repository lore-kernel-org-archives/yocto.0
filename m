Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0727E00BE0; Mon, 12 Sep 2016 19:10:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83E02E00B78
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 19:10:01 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id y2so352947587oie.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 19:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=OLOkhcjjyNzpc6Gj5+ICvn8FokO0A0D+g6FXYpYVrAQ=;
	b=smwZNywD6ja8ONz6ds+cZhGKdTI+63bmFEpuMYhuheXzZ3j8LHHE99lzVOZJ7xOIPb
	MX0m+jtLqOCpMsf6BzpVb+ImFonhxxVEN+Aah6jDcSDXxUTypW2wn0jQq9Hp3EUYIdPD
	G8Lt9GmXSVmVrYAXxryRigY31HnFlUNZ0ltD6lvPQorlEXft6oZIWzkiUYtd499BRGBi
	fQBWhUax2JLtyhpCiYsz3RTHeMDfMqDuOa1j3fay5/P0P9/SY+kijgsllYb5MUiV7P/H
	E1MPLO/hk9hXNCg6X5vVHOetyeEtMDnSaQ9zH0CpkxPgpMaqBs9mr4rYQzeQ/ir5v85I
	SQ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=OLOkhcjjyNzpc6Gj5+ICvn8FokO0A0D+g6FXYpYVrAQ=;
	b=KtGwLlAh4CxSVOKD99EHRBAwYFw4QqgseB9uKwmwD6jGusqJ1Q7kAE1JOUgSOvlS71
	N4exqfYhgtbDAswd45vh06RFc5Jbb/02/dyQYT5HhsJekqzkxS5b1QgQbv3Ro44pXtuc
	LvyZ9JjzpR9oX9eAi3fQ8974Xni3yXkxO00d24dGuZeFQxHAocT8JDIFA0FzCahzfQwP
	23lUVWTkNj0BwzbjEEHtTpvB8PSbIVbxMcXNYL22sYkCLH7MUrphI/NjS4LU+Bx4Oo62
	o3nQeKohPWiJaSpJ0tOS+3ArSMZbThwZBBx9zfh7sHF0Y9nStph3R4+2ep6G2PmaiFGX
	C0KA==
X-Gm-Message-State: AE9vXwPp5/5yd+ZNubsrfffn1KHp3Vg8fOK+M90wcd6kdesjWglBkppC2fI8yYgu3t+UlNyVaktg+TZRy4O+hg==
X-Received: by 10.157.61.166 with SMTP id l35mr28112394otc.52.1473732600483;
	Mon, 12 Sep 2016 19:10:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.60.73 with HTTP; Mon, 12 Sep 2016 19:09:59 -0700 (PDT)
In-Reply-To: <1473725946-7854-1-git-send-email-schnitzeltony@googlemail.com>
References: <1473725946-7854-1-git-send-email-schnitzeltony@googlemail.com>
From: Jonathan Liu <net147@gmail.com>
Date: Tue, 13 Sep 2016 12:09:59 +1000
Message-ID: <CANwerB3JBqUczJ8Nv_h0zwJGmxFHVJ7X1g-T70bK1sME0VvbtA@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: remove stamp file
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
X-List-Received-Date: Tue, 13 Sep 2016 02:10:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

On 13 September 2016 at 10:19, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> stamp files are not of much use and this patch fixes:
> ERROR: kde-base-image-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 3fad66=
75b6fcc6b048099609adf21967 versus f0665d2ea6d2db2359c456c60a33e52e for /hom=
e/superandy/data/oe-core/sources/meta-misc/recipes-image/kde/kde-base-image=
.bb.do_image_rpi_sdimg
> ERROR: Taskhash mismatch 3fad6675b6fcc6b048099609adf21967 versus f0665d2e=
a6d2db2359c456c60a33e52e for /home/superandy/data/oe-core/sources/meta-misc=
/recipes-image/kde/kde-base-image.bb.do_image_rpi_sdimg
>
> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>

I have posted an alternative patch which removes the redundant use of
IMAGEDATESTAMP as IMAGE_NAME already includes date and time. That
should solve the issue. Some people may find this image-version-info
file still useful as it identifies the name of the image.

Regards,
Jonathan

