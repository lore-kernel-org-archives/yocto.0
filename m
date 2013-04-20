Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6E46E014AA
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2013 06:05:22 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id hx10so4709554vcb.14
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2013 06:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=hr+JTGFtVRR2CCyf166LOths3o7SBQ4NhhbpDHqYqa0=;
	b=GtjEEOe2Ufz0k26o5ivluDDMzztZyLoBPIgx01juOWCEnxPdOeNlfG4CzPBRKQvTYu
	Pe8psyLy1ErNwbrcTrlbJuJFc+B4IIXCbOxSC7p6QeK5+p9rrGmSseQmEP8lzDVG3YBD
	uU96WQat+ZpBTGy7iRC82R/FDCdEkZcH63j1F1m3A8j1L6Ke8OGD10wr+VUZJIMVthDo
	GVGp0aZUTa6+G3mLeIpbeW123AM+EnE/jxk9Ky7FsfnwF+/MlrbAAGYvzrz6rX65cliS
	IBNNnmYC7YlwweyiXT2ffaDdbOHWzeH0rYT0rfLvbBRU3JPC5q8zUMyETpvcWNwqs3Jv
	DA+A==
MIME-Version: 1.0
X-Received: by 10.220.167.9 with SMTP id o9mr14289110vcy.25.1366463121817;
	Sat, 20 Apr 2013 06:05:21 -0700 (PDT)
Sender: paul.betafive@gmail.com
Received: by 10.220.224.135 with HTTP; Sat, 20 Apr 2013 06:05:21 -0700 (PDT)
In-Reply-To: <51716F8F.2080408@linux.intel.com>
References: <alpine.DEB.2.02.1304190932010.4968@oneiric>
	<20130419135843.GH2489@jama>
	<alpine.DEB.2.02.1304191016030.5451@oneiric>
	<20130419142509.GJ2489@jama>
	<alpine.DEB.2.02.1304191038530.5636@oneiric>
	<CANyK_8ehX8Bsgd35pvx54EGeCG6=WLBoDFV0h=5Suz3uXPyREw@mail.gmail.com>
	<51716F8F.2080408@linux.intel.com>
Date: Sat, 20 Apr 2013 14:05:21 +0100
X-Google-Sender-Auth: AGSE6fOXaEA_QebJXioHWNMaPF8
Message-ID: <CANyK_8dNtrKOT=dqueYHBTUPm6scULOO-qAURY41hZdzeX_yqA@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Saul Wold <sgw@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Fix FILESEXTRAPATHS, dir is "netbase-5.0"
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
X-List-Received-Date: Sat, 20 Apr 2013 13:05:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 19 April 2013 17:23, Saul Wold <sgw@linux.intel.com> wrote:
> Just another note about the netbase, for 1.4 the interfaces file moved to
> init-ifupdown, so that file should move to a new recipe with bbappends for
> init-ifupdown-1.0.
>
> We just fixed meta-yocto for the beagleboard  in the final 1.4 release.
>

Ok, had a look at this now.

As originally pointed out by Robert, the hosts and interfaces files
are not picked up as the wrong directory is named in
netbase_5.0.bbappend. However, the image I've just built works fine
with the stock files in openembedded-core. Both eth0 and lo interfaces
come up fine. Other interfaces listed in the stock files don't have an
"auto" line so no attempt is made to bring them up at boot.

If we look at the interfaces file in meta-raspberrypi
(http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-core/netbase/netbase-5.0/raspberrypi/interfaces),
it doesn't even list eth0 so I can't see how it would work.

The hosts file (http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-core/netbase/netbase-5.0/raspberrypi/hosts)
just adds the names 'raspberrypi' and 'rpi' as aliases for localhost,
which I don't see the purpose of myself.

So I'd recommend dropping these from meta-raspberrypi completely. Just
my opinion though, anyone else got any thoughts on this?

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

