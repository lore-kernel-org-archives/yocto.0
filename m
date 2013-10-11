Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACD13E011C5
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 08:50:18 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id ib11so2949616vcb.14
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 08:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=J+wI8fcSH/+de+q+TVM2uCpkibIzSZZTg7JEaVEG9hE=;
	b=ri88dyyWMIiAzf/LUd/jFZRKRU9PZDt/Xtb5By8Gke/8BlML7/qhx9wC7yyiUgYsfP
	8hTAhc74mZJ8JF6rSLVsNr9IeOcVOiAwtfCDuFZFTVg0+qw5M7Cn5d1DL3BD+zVoGqmS
	V7m5qoMlVcpdY03Wy7AUT5LniWSmwj9wi4AOlPsfFZpm41eUryQ0f5aHuqPPU82yZHgI
	AbfYQDCCfpyp8ajCVKIvICLeCWbpRznTjaaNp7JcOOn+Aq3UTmTR++31qrx1GtYRhnZx
	mGVGEOQoZn8Le07kPD4Egd0q+HDefWDquOHWG8xDkvwqQDRWuu61fyAzpsv5ANP4CqsI
	/TUg==
X-Received: by 10.220.47.10 with SMTP id l10mr1737549vcf.32.1381506618114;
	Fri, 11 Oct 2013 08:50:18 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.49.71 with HTTP; Fri, 11 Oct 2013 08:49:37 -0700 (PDT)
In-Reply-To: <1378152710-10291-1-git-send-email-paul@paulbarker.me.uk>
References: <1378152710-10291-1-git-send-email-paul@paulbarker.me.uk>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 11 Oct 2013 16:49:37 +0100
X-Google-Sender-Auth: 6rquvKVzcQmcWx13z6ZwUeyrJLo
Message-ID: <CANyK_8exuMtxWqU1_RkjWw0GoCZg0L6xJ+6GftjGFmqhYkOPQA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2 0/2] rpi-sdimg compression
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
X-List-Received-Date: Fri, 11 Oct 2013 15:50:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 2 September 2013 21:11, Paul Barker <paul@paulbarker.me.uk> wrote:
> I've incorporated the changes recommended by Andrei against the first version of
> the patch. Whilst editing the README file I noticed that the IMAGE_FSTYPES
> example didn't make sense (or include a closing double-quote) so I've fixed this
> as well.
>
> Currently running a build test with a 3.8.y series kernel - I'll post the patch
> to add that recipe once it's confirmed working.
>
> Paul Barker (2):
>   sdcard_image-rpi.bbclass: Allow optional compression
>   README: Fix IMAGE_FSTYPES example
>
>  README                           |  4 +++-
>  classes/sdcard_image-rpi.bbclass | 20 ++++++++++++++++++++
>  2 files changed, 23 insertions(+), 1 deletion(-)
>
> --
> 1.8.4
>

Ping.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

