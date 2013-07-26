Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D7FE014E4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:35:04 -0700 (PDT)
Received: by mail-vc0-f171.google.com with SMTP id ij15so375082vcb.2
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=ubP3ot+yTvXuZOos/EBI0zCaEi3eGRoBsDgiTbuv9HA=;
	b=NoB0+KTVbUhnaxQIeQJAzBp01Pmbh4jiVinTyrLW5+S/O8aPU2DOcDrg7S05f4Oc1g
	EQ0YTSk/Wzrq5GCDlsD/BEgDJmZI7xFG1IGGS48L5gzi6zIYgc396rjRM22VlFkiV1ow
	Mw1BkxSJfXIH+o60grQe6CcDLYlggabYvC/giDLwm90XsVNBfmvAQGtjWtPDt9zcf7uq
	RKF4ZKVsUa5yyat4FSxO7cvdGCB70eIOWnA/BRfXA9uPD+fR+fUc9HqNcY3k5X9odQQQ
	YENXWUT2YV1ynxjlWFDzjW0OH3/0DMKzcazguT0yrozX8KkYImnWoJa0toB+7YRrwGdI
	8pUw==
X-Received: by 10.220.98.68 with SMTP id p4mr2902786vcn.28.1374834903339; Fri,
	26 Jul 2013 03:35:03 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Fri, 26 Jul 2013 03:34:23 -0700 (PDT)
In-Reply-To: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 26 Jul 2013 11:34:23 +0100
X-Google-Sender-Auth: TpEZKiOAQiT451kdORqdFkZvA-Y
Message-ID: <CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 10:35:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 26 July 2013 11:21, Laszlo Papp <lpapp@kde.org> wrote:
> Hi,
>
> may I ask if it is acceptable to target Archlinux host (64 bit) supported
> any time soon for a release?
>

I'm not in any official position within the Yocto project but I do use
Arch so I'm just putting my tuppence (or 2 cents) in here. I don't
think it makes sense to call a rolling-release, compiled from source
and close to bleeding edge distro like Arch (or Gentoo for that
matter) "supported". The sanity check warning when building Poky was
what made me decide to spin up a Ubuntu Server 12.04 LTS virtual
machine for doing my important builds as that is a much more stable
distribution. When a new official release of Ubuntu, Debian, Fedora,
etc are released, a Poky build can be tested on that release and the
platform certified as being supported because it's been proven to
correctly build Poky. How often would you have to test Arch Linux when
major package updates can occur on any given day?

Don't get me wrong, I love Arch and use it on my desktop for all
development work. But for builds I want to be known-good, I push them
off to a Ubuntu Server virtual machine.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

