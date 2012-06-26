Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B5FCE00746
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 18:37:09 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1873827eek.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 18:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=K7Ox14LFVGtCCNHRHEo+FgvgxioLfLWUw+zLctWZItk=;
	b=qh+HI5ikgAfgKQaKwMATMZqMMe1LjA/mD+EBeqRd5AEPV3LQXXiC4Y1nIxzqsVhPUa
	qCPp4C3DXw9LesoapkYu3VNmjENMIHbNNfTgIU4gp+CPHTG0SE8VDD0LyE7uLlcOp5wa
	rVaVbGA/2veRJZWd0FhmxSkbZ+6+CtJlNPx8BXb3fil6MteS8ZqVzHjBikn+SyyiSvdI
	t90SrqG0mvyW7wzEgFHaU5tuIUThb1e9E+j0YxdpmTdzF9d+hcBJctip8fMonJl+yOTz
	tjd+fFpUBkeYPMq9bOMJKHWsIlMClBRALAEUK+kjap7HrdzGyfs5e6cd/bPwe0mS/bCm
	w1AA==
Received: by 10.14.97.16 with SMTP id s16mr2573868eef.117.1340674628605; Mon,
	25 Jun 2012 18:37:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Mon, 25 Jun 2012 18:36:38 -0700 (PDT)
In-Reply-To: <11425553-8DCD-4BAF-BAB1-1A2B35AFA225@keylevel.com>
References: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
	<CAMKF1sqfGsPs_2rvsnwBcqYCha1dp47WvaDv2-WNPubpjWbnQw@mail.gmail.com>
	<68462E41-30CB-44B1-92CF-C178AC9844DF@keylevel.com>
	<CAMKF1spcBzJFt0qrLgCc2MpUj7r0t5W3Ng=5XZAFgvHOxEr0xQ@mail.gmail.com>
	<6C75CBD3-D4CF-431A-92DB-9B1C58FD4F6E@keylevel.com>
	<CAMKF1soot0iQ-nfZKAbnEEYieW+_H6YPWnrxcFQMSQiz_XPFjg@mail.gmail.com>
	<863CA417-BC2A-4F07-89C2-3E7A57B402D4@keylevel.com>
	<CAMKF1spJU7av-qysV3kzcT5xbim_o09B6zwYirjRP4MojsBScA@mail.gmail.com>
	<E63D1693-2EBC-463D-9ABE-95DA612387EE@keylevel.com>
	<CAMKF1srVRN4DfrbLb9xQ-h3EyUY_R6QR6cKaDPMBboRxG3aKeA@mail.gmail.com>
	<11425553-8DCD-4BAF-BAB1-1A2B35AFA225@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jun 2012 18:36:38 -0700
Message-ID: <CAMKF1sqh4vsKs1Nc8FoZAKA47Un8t2wsQ0nm6nknGXXO4QTNkw@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Selecting gcc version
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jun 2012 01:37:09 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 25, 2012 at 3:46 PM, Chris Tapp <opensource@keylevel.com> wrote:
>
>
> Well, that proves it's not the compiler. Still fails to boot, even though the toolchain that's supposed to work is 4.5.1. Does 32-bit / 64-bit host make a difference?

host should not matter although from my compiler experience I have
seen few cases where hosts injects bugs into cross compiler which
showed up on the target in compiled code but those cases were rare.

You should make sure that the compiler if the guys (who claim it works
) doesnt carry patches that are special.

