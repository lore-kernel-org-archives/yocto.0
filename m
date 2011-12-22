Return-Path: <kergoth@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A42E0123C
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 07:09:15 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qabg40 with SMTP id g40so3270384qab.14
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 07:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=WALnWTZVkDqU8SZiDwuxngb9jwOQvilsAViN0+FX8U8=;
	b=tycvknHERlHw8qR6Ow8SOidIYObVYhzxQxUyYyS68lYl5w2lB0CEWFdi7ynZXq0Py4
	tdO2LOBzWYSgcbseRM4UYeGAZ9VoDJd7OspGkqPJiZWaOoyi/Eo3pgp1o3BOx58bZXPv
	qWXStAxgZOzcNqElP4vUnHeMSibEBvVPLiGOU=
Received: by 10.224.200.197 with SMTP id ex5mr13690064qab.88.1324566555360;
	Thu, 22 Dec 2011 07:09:15 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.187.141 with HTTP; Thu, 22 Dec 2011 07:08:54 -0800 (PST)
In-Reply-To: <4EF34776.9030002@gmail.com>
References: <4EF34776.9030002@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 22 Dec 2011 08:08:54 -0700
X-Google-Sender-Auth: 9PNDnV-SjMv41lk-ySQjIRL6SaU
Message-ID: <CABcZANkOWGaqbL4+4a6gBG7KL6YNXMGbv3xhm_KbuGWE8xe2Nw@mail.gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: meta-ti?????
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
X-List-Received-Date: Thu, 22 Dec 2011 15:09:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 22, 2011 at 8:06 AM, Jim Abernathy <jfabernathy@gmail.com> wrot=
e:
> I know the examples in the documentation of Yocto use meta-intel a lot to
> get the board specific BSPs like meta-crownbay or meta-n450.
>
> Is there a meta-ti or similar that gets you the meta-beagleboard and
> meta-pandaboard? =C2=A0If not how do you clone and checkout the pandaboar=
d BPS?

http://www.openembedded.org/wiki/LayerIndex
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

