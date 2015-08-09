Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94D66E00A6D; Sun,  9 Aug 2015 14:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F4109E00306
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 14:20:14 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so59052754igb.0
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 14:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qdqGLLhtMUhTZu4Q7aJgYImUH1Q0iAs27fKvHfM+LF8=;
	b=KxemNFIRp/SjbVor7HgyJhJTCZKGAUBxpiuOdm46LVTtyPDEhQCqy/yhUY6Ize0Z8M
	OUD1ZfZkjIh3rI4JTGktTqb86jq+JvruLMThPGcsOnBixRxiNbMIsI1yHX844xVKowj2
	GGqlJqjgrdGnclh3T/JXsSH3vDa5VxtEJmwuDyOC8tH5A4NNhxzaDEJW39ucKGLzQoA1
	+KWnkx10oiiKI6sMS/xbxlqz0O0fTo+xwCc79WAaqOVdXg9DgmUTCD63VLiOaLK3XWtY
	DOi85CsCY/95WV+gVMJ36NEJzt7/7rwHq2RgBFu3EHn8RJof5If8UlBt7YdiWFZDyMbJ
	8uuw==
MIME-Version: 1.0
X-Received: by 10.50.36.5 with SMTP id m5mr7674199igj.52.1439155213741; Sun,
	09 Aug 2015 14:20:13 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Sun, 9 Aug 2015 14:20:13 -0700 (PDT)
In-Reply-To: <1437479130-7065-1-git-send-email-gary@mlbassoc.com>
References: <1437479130-7065-1-git-send-email-gary@mlbassoc.com>
Date: Sun, 9 Aug 2015 23:20:13 +0200
Message-ID: <CALbNGRQk7o7_+B7rjY887Bm8MxbpD1dSmGtEG0-fA87A05YoRA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image: Fix sdcard image generation
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
X-List-Received-Date: Sun, 09 Aug 2015 21:20:17 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 21, 2015 at 1:45 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> Recent updates to the MSDOS tools (OE-core is now at 3.0.28) have made
> it an error to overwrite an image using mkfs.vfat.  This patch fixes
> that problem by removing any old/stale images, thus starting from scratch.
>
> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
I meant to ping on this one.

Andreas

