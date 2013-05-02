Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46C0CE014DB
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 08:53:21 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ib11so617359vcb.35
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 08:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=KnKv0+uSxbRyzesBznOGCVHBTP9wkYFPQKftYDPWHKg=;
	b=ODlE6BWQgh7oqxyg0zQBjsZ/YxjRKZMu8I6hM+2YoCKiRlQeQJ1RC8U0sgp04gGXwO
	aRNUpdsq+yIiCLMmH+I5DdGooAoT0Zw//4jyE34p0ud3Yx17hl/cNCG1Y/Pbyh6auz7e
	ZlCTEmdpAFolrfRAwYoNDefe1iMs0F58VbnfUVUCt+bIDKMpVH9W+0oFqGjX6zK2ZUu8
	LcD8x+BrSJqKyV59t2RpUNkwxY2XfB50WaOjkkuGhQw1v/MR7e3aFYXdh72TUkW+/aX6
	9OlmSIgKZmd/ksYSOsmPMsk1chydtxNkOkTHWyimnISHXVl7IoMymm8zrMjg4GmdDzVm
	zCCA==
X-Received: by 10.220.103.209 with SMTP id l17mr2338943vco.39.1367510000504;
	Thu, 02 May 2013 08:53:20 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Thu, 2 May 2013 08:52:59 -0700 (PDT)
In-Reply-To: <CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
	<CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
	<CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 2 May 2013 16:52:59 +0100
X-Google-Sender-Auth: VnfhTp7s8_YNhOZM-eI30sqwW68
Message-ID: <CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Thu, 02 May 2013 15:53:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 2 May 2013 16:12, Trevor Woerner <twoerner@gmail.com> wrote:
> - a separate tool (which will probably need to be run as root) is used
> to actually format/create the SD device (using, say, sfdisk for
> automation) this way the last partition can be specified as "use the
> rest of the disk"
> - this tool unpacks the requested/required {tar|rpm|deb|ipk}s onto the
> SD device (some of which can come from outside the Yocto build system,
> e.g. from using the SDK); this device already has its
> formatting/partitions ready
> - this tool could also handle setting up serial numbers, IP addresses, etc
> - this tools also sets up the bootloader (if required)

Sounds great though it may take a long time to copy files to an SD
card (I noticed a similar opinion at
http://www.raspbian.org/RaspbianInstaller). May be quicker to generate
an image file with the correct size first then dd that to the card.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

