Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD075E014F3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:51:50 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id c13so1246973vea.37
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=W6KfEG15Azl9uzvvZ4DrUbL+ES9taazKF2pO7be2Cc4=;
	b=PWA1Ilc+ZWUHKhESayfsJzEv2SURRjU1i+KT+HoVuYAPEa5GU7RfF2QRg5MOViC7ua
	JifPOAYHwx0fLLhBhVsNLWvnkQSloxX1lWIF7DVvBk5DIPFc+CZLRN3xWFNOCAF3Uw25
	XZU/wVvFgpMW/fuFYl+63w0/NnuAEVHswF8CCL7/gU24aVGmhvwUUUK1YWmctUUpBTuJ
	JhkAHHJU9p8peZRFsdAN3RFep5O1NERZGQ/mYS4LZ0aEPgNCxVdd+2ex3+R+7PGkzci1
	lOJo1IIJcnG+qSLOBh/bWtYLuAYxxJcNlwnogjqqArqFx2UJ45MY4lp4FmctWIjj1pp3
	nMVw==
MIME-Version: 1.0
X-Received: by 10.58.223.134 with SMTP id qu6mr26978005vec.35.1366894310223;
	Thu, 25 Apr 2013 05:51:50 -0700 (PDT)
Sender: paul.betafive@gmail.com
Received: by 10.220.224.135 with HTTP; Thu, 25 Apr 2013 05:51:50 -0700 (PDT)
In-Reply-To: <51788033.9010908@gmail.com>
References: <51788033.9010908@gmail.com>
Date: Thu, 25 Apr 2013 13:51:50 +0100
X-Google-Sender-Auth: XUzmupdFjq_sQp8kWQXw4T6Tbes
Message-ID: <CANyK_8fpnN8C6-vZPyFmGx5U3_ySRQp7twsXcKO4utz+WWc2EQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: seth bollinger <seth.boll@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] sdcard_image-rpi.bbclass: Copy startup files required for 16MB GPU operation.
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
X-List-Received-Date: Thu, 25 Apr 2013 12:51:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 25 April 2013 02:00, seth bollinger <seth.boll@gmail.com> wrote:
> start_cd.elf and fixup_cd.dat are required when running the system with
> a 16MB GPU memory configuration.  This change copies all files contained
> in bcm2835-bootfiles instead of cherry picking.
>
> Signed-off-by: Seth Bollinger <seth.boll@gmail.com>

Trying to apply this email I get:

    Applying: sdcard_image-rpi.bbclass: Copy startup files required
for 16MB GPU operation.
    fatal: corrupt patch at line 14
    Patch failed at 0001 sdcard_image-rpi.bbclass: Copy startup files
required for 16MB GPU operation.

Trying to apply the attached patch I get:

    Patch format detection failed.

Are you using 'git send-email'?

However, I can apply this after fixing the attached patch file by
hand, giving it a test now.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

