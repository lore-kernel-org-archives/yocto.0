Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01712E006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 17:51:31 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so9577956qcs.35
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 17:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=h1WCJIzVJhg+zBut4Bu97pw9Vect4gz86wUewouYtsg=;
	b=TGk7DJeZcAISqlYPQC9RmoWpa6jorkcAqxnVtVWKQCxPGTGFjJOXQkNoEYw7547Lmf
	O5P9ah0joQehXOe8SciDmG7aoJCTVAKhv9bl24n7dH+eEveTK4y5zoIRVFxqvzfWw9nz
	eyCmSsDnRkUDCNUtkrJehv4jatxfllvaTyJRE=
Received: by 10.224.42.10 with SMTP id q10mr24310958qae.26.1325123491285; Wed,
	28 Dec 2011 17:51:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.187.141 with HTTP; Wed, 28 Dec 2011 17:51:10 -0800 (PST)
In-Reply-To: <CAMvUbCx59KWAN0qeS5Ga9mAb9cMPVvxeKxJS6f6OYC2+mbu0Xw@mail.gmail.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
	<CAMvUbCx59KWAN0qeS5Ga9mAb9cMPVvxeKxJS6f6OYC2+mbu0Xw@mail.gmail.com>
From: Chris Larson <kergoth@gmail.com>
Date: Wed, 28 Dec 2011 18:51:10 -0700
Message-ID: <CABcZAN=6mf4dZkXDrXDyL9UW+HWWEo6wzdLrYfRWr5MOc17WTA@mail.gmail.com>
To: Leon Woestenberg <sidebranch.openembedded@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH V3 0/3] New distribution definition for poky-tiny
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
X-List-Received-Date: Thu, 29 Dec 2011 01:51:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 28, 2011 at 6:07 PM, Leon Woestenberg
<sidebranch.openembedded@gmail.com> wrote:
> On Thu, Dec 29, 2011 at 12:45 AM, Darren Hart <dvhart@linux.intel.com>
> wrote:
>>
>> V3:
>> =C2=A0 =C2=A0o Rebase on master
>> =C2=A0 =C2=A0o Dependent on oe-core series "Fixes for tiny distros and
>> linux-yocto-tiny"
>>
>> RFC V2:
>> =C2=A0 =C2=A0o Use VIRTUAL-RUNTIME_keymaps as suggested by Martin Jansa
>> =C2=A0 =C2=A0o Drop poky-common abstraction as suggested by Richard Purd=
ie in
>> =C2=A0 =C2=A0 =C2=A0favor of POKY_DEFAULT_EXTRA_R* variables.
>>
>> Poky-tiny defines a new distro policy for building tiny Linux images.
>> =C2=A0Rather
>>
>
> Such images are useful for small Linux firmwares, both often also require=
 a
> read-only fs img.
>
> Does this current image require write access at first boot?


That's a good question. I wonder how well we support ro rootfs today.
It'd be nice to have a declarative mechanism to control use of a
unioning filesystem and/or symlinking or bind mounts. poky-tiny does
say that one of its high level policy guidelines is to have a ro
rootfs, so if it doesn't do it today, presumably it's just a matter of
time :)
--=20
Christopher Larson

