Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD07BE00B54; Tue,  3 Nov 2015 03:54:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E77A3E00AA5
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 03:54:30 -0800 (PST)
Received: by lfbn126 with SMTP id n126so14695793lfb.2
	for <yocto@yoctoproject.org>; Tue, 03 Nov 2015 03:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm_se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:organization:user-agent;
	bh=Ren6vqKRDJppdowGWhDM6Cv8C+8hjwFfTM/KaKy3jkA=;
	b=EkwGAZLwBhoNXNcAUlJqiCWUM234rz/RLJkJaPQ75hnzVcvBtMrKo1FlsBqM2htBfx
	Te/ROmICCj6lsOKlhuWxKcFCdGX89ivIieygi233EV15Ksmsks7NOYhVRVFmWgqnvJfB
	pTkiCMmKQri1tlrspq+d1BPJd9zsiYiIkJ9pv43zSc6XrU+DB+M1zYWt7/DjuxUQosW1
	6RejXuH6KTZADiDOZ34slR1lPkMxURIgZWZBYpYD0ABtgojWMgeiYeRGXMhfbrdFht4h
	uaYjcH47CrshpakxNRo0m53Gl8wwG07nucJpH+SB3a5tPVCkFcZRNU/fmGblgHupnVlY
	P34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:organization:user-agent;
	bh=Ren6vqKRDJppdowGWhDM6Cv8C+8hjwFfTM/KaKy3jkA=;
	b=EZyD23XOoJXATB4EIOcRE+JgTZ0JYOBA/eedWIETAUEjGLy9Ed6Q037OrL4K/AFvWK
	1hUBUMJG8EyuFzB1c7VoYM7jiVhxhOccMi4z7QrGIP0hBtLdoPuRSodMWxAdHi1rw9Lb
	XXWrViUa7uU4ouY0xbDNA8zGEyHsLrxe3W0H+Wz+IPRDm5nqTKvcrQsgbjO7xkXQSpNP
	23Zb+VHEUo9HANNNhqCnVITaos4SqlgmNlXW4+bjpGRwlBDJEzKO9suaUO4mBMQnyArK
	4piLR4zhyg8KV+p2wQWu405Ki5XHH2XpTVKmBxfBLIJQgtDhvEiYWDSgbFJEPsBkzJEU
	izoA==
X-Gm-Message-State: ALoCoQmG12rHzqV5T0y6TtZ+diH7RYTUujGDjduhd5nVQiB4k7XLWfPViwUVBxytyWY/D2AISheE
X-Received: by 10.112.202.194 with SMTP id kk2mr12347881lbc.71.1446551668779; 
	Tue, 03 Nov 2015 03:54:28 -0800 (PST)
Received: from ad.chargestorm.se (h83-209-191-235.dynamic.se.alltele.net.
	[83.209.191.235]) by smtp.gmail.com with ESMTPSA id
	q197sm4784946lfd.36.2015.11.03.03.54.27 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Nov 2015 03:54:28 -0800 (PST)
Date: Tue, 3 Nov 2015 12:54:26 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20151103115426.GC5867@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <03d201d1152e$359dada0$a0d908e0$@gmail.com>
	<CAJ86T=U7mmNmTRi5xHpy7C+XOAPuKiRyy=958YsGeQ3cnYap_g@mail.gmail.com>
	<20151103070538.GA5867@ad.chargestorm.se>
	<CAJ86T=UrJ8d=BhKrNuxEHn91BHdDOk6ZYZQ00w789b=-yU897A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJ86T=UrJ8d=BhKrNuxEHn91BHdDOk6ZYZQ00w789b=-yU897A@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: Create uncompressed rootfs
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
X-List-Received-Date: Tue, 03 Nov 2015 11:54:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Andre McCurdy <armccurdy@gmail.com> [151103 11:34]:

> On Mon, Nov 2, 2015 at 11:05 PM, Anders Darander <anders@chargestorm.se> wrote:
> > * Andre McCurdy <armccurdy@gmail.com> [151102 20:35]:

> >> See the "IMAGE_TYPES" variable for a list of rootfs types which are
> >> supported. There's support for creating an uncompressed .tar file, but
> >> I don't see any support for creating a rootfs directory under
> >> tmp/deploy.

> > No, the usual workflow here is to unpack the tar'ed rootfs at a suitable
> > location.

> Indeed. I don't think it's what Roberto was asking for though...

Well, sure, that wasn't what Roberto explicitly was asking for, though
that's a safer way to do what he's after...

After all, if you never learn about best practises, you'll never know...

> >> Depending on your work flow there are a few different solutions
> >> though. You could extend
> >> openembedded-core/meta/classes/image_types.bbclass to do what you want
> >> (e.g. define a new image type or hack "IMAGE_CMD_tar" so that it also
> >> untars rootfs.tar right after creating it).

> > Well, there's some issues with this approach. In order to uncompress the
> > tarball and be able to set owner, group, and permissions on all files,
> > you need to untar the rootfs with root privileges. The same is true when
> > it comes to creating device nodes.

> Enabling CONFIG_DEVTMPFS in the kernel is pretty standard, so for most
> people there are no device nodes in the rootfs tarfile and /dev is an
> empty directory.

Sure, devtmpfs is pretty much standard, though it could nonetheless be
good to know about.

> Extracting rootfs tarfiles as an unprivileged user has always worked
> fine for me. Do you have a specific example where root privileges are
> required?

Well, everything that requires a specific user and permissions. When it
comes to permissions it's likely most if you need to setuid or setgid on
binaries / files / directories.

When you unpack as an unpriviliged user, every file will belong to you.

Thus, the recommended (and safe) way to do this, is to unpack as a
priviliged user.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

