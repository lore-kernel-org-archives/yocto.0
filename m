Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE817E0030F
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 12:07:30 -0800 (PST)
Received: by lagz14 with SMTP id z14so787786lag.35
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 12:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=YTtWefWE6js1SyPbK+aEShKs47g3da5VddcwHui02+k=;
	b=gk3WY/MCkVpb3vVDqRTBQxpRKBTRSNRnnFBI6eAZD55CyD/B1vE2lygRrWRzt1LcVx
	3ASUGlTY6FlMYSQWTaqUJfRurEQZxSumjrvTgsT76GcI5X4IJJNNawTpx1Aca+BrGznN
	RhUKXWnOhNxVWfV3XR3r0EyhmCz18JK0y6Ao4=
Received: by 10.152.114.169 with SMTP id jh9mr2023020lab.20.1327608449257;
	Thu, 26 Jan 2012 12:07:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Thu, 26 Jan 2012 12:06:59 -0800 (PST)
In-Reply-To: <CAFZh4h-0h0LOJAuMDdoOx7YHa9ofpbApGSb34AZaLq=MjtB54g@mail.gmail.com>
References: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
	<CAFZh4h-5m535Uod4=7hYmZzhRaqM8LtpHw1bfE0CQdXPdpFz7A@mail.gmail.com>
	<4F2183B6.9070603@mlbassoc.com>
	<CAFZh4h-0h0LOJAuMDdoOx7YHa9ofpbApGSb34AZaLq=MjtB54g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 26 Jan 2012 12:06:59 -0800
Message-ID: <CAMKF1srz-cBNdzh_oPHPOA9JR75ciy-pqyj+TK-URVB1s3rydQ@mail.gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to get opkg in rootfilesystem
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
X-List-Received-Date: Thu, 26 Jan 2012 20:07:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 26, 2012 at 10:53 AM, Brian Hutchinson <b.hutchman@gmail.com> w=
rote:
> I'm not building minimal. =C2=A0I built core-image-minimal and it truly w=
as
> minimal. =C2=A0Nothing in /usr/lib!
>
> Next I build core-image-base. =C2=A0Most of the Angstrom & Arago images
> I've build that were minimal-ish had opkg.

Every distro defines their own policies for images and there ought to
be differences
its normal.

