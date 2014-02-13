Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AA73E007E6
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 08:57:11 -0800 (PST)
Received: by mail-qa0-f45.google.com with SMTP id m5so3234454qaj.18
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 08:57:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=iwh/OCSpXG2D5kc3+GManyLj0Rp1Jgr3jEkp06NtcYg=;
	b=YNYyUUGtZFYWhL7XfVrdxPil9iLYSK7ZlK+T/AW9PnE8hm7QeGr57P49zNg5ubddS8
	rNRpNgH5sRAzbr5RgLRKzPtOF2/mRmDu/Ea7pmLV0xcTJSeEKidZ/WDh8gsAuwhDnHJ9
	Hvv74rGt1eov/cXo2Rxmr+Da1bqTWslIwn/qUl8TXUb25zCp/QHpj6ao+gDHCQoePHR2
	E5dirPW6hGm6xHXNqHhX97BDPRV3FPj0ySc1BXX803LE73HoApQYs0m35w6ezIcAy/3W
	tRUmcZQy4xFNN0FM65lzv+rcbF6++9e27+vJOdEkHJcS8cWrpgkjHEtG1LmP6u2MoEjl
	p0yA==
X-Gm-Message-State: ALoCoQkJ3vc5xGj29ySAPR6VKbQiW2vEknNQhTE44X6NgbbYXSAVqtWI3u+ChfE4rIwKNGP/NmRV
X-Received: by 10.224.98.139 with SMTP id q11mr4410598qan.64.1392310630422;
	Thu, 13 Feb 2014 08:57:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Thu, 13 Feb 2014 08:56:50 -0800 (PST)
In-Reply-To: <52FCD87B.30301@mlbassoc.com>
References: <52FCD87B.30301@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Feb 2014 16:56:50 +0000
Message-ID: <CAJTo0LaJ4rmWpvPZK62kgkoBm9CTK4uUSaYFZ8JPdZ4qXycQTQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't build core-image-weston
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
X-List-Received-Date: Thu, 13 Feb 2014 16:57:15 -0000
Content-Type: text/plain; charset=UTF-8

Hi Gary,

On 13 February 2014 14:36, Gary Thomas <gary@mlbassoc.com> wrote:
> I had previously built core-image-sato-sdk with some extra packages:
>   CORE_IMAGE_EXTRA_INSTALL += "rsync openssh"
> That worked fine, but core-image-weston fails as above.  Is there a
> reason I can't choose openssh instead of dropbear (and perhaps there
> is some other way I am supposed to choose)?

You might find EXTRA_IMAGE_FEATURES += "ssh-server-openssh" better
than CORE_IMAGE_EXTRA_INSTALL, because core-image-weston has the
ssh-server-dropbear image feature. When specifying both the right
thing happens (dropbear is dropped).

> I removed the openssh from the extras and now it builds, but it doesn't
> do anything [useful] - should it actually work?  I don't see anything
> that looks like 'weston' running.

Looks like weston is crashing.  There are known problems with Weston in qemu:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5660

Valentin did the research here and I can't remember the details:
Valentin, can you elaborate on the comments there about what is
working/breaking?  I remember there being a qemu option that changed
behaviour too.

Try changing the init script (or just running weston manually) to pick
the fbdev backend.  Note that right now this isn't enabled but there's
a patch on the list to enable it by default, but it's just a
PACKAGECONFIG away from being enabled.

Ross

