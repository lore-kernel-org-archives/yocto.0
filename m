Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E6BCE00596
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:40:27 -0800 (PST)
Received: by lagz14 with SMTP id z14so599578lag.35
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=4FR5iCNsOIarKuUXKm/wL3yO52zjtXBetGnHcf6XC0g=;
	b=lXowAXmAUwA9ohor+oEsTPD5CieUEJBhJgGJ3mgMtFzSzl2i20aoQ5FBwT+C0j78cE
	BfxtEL5VJ38e9ubHQjayFtjqvsm8w6W2jGZqeMOtpDP4ff43GtzGxjdzjbS1CGVwmhcS
	nygytpkAr/VzREjHajKT9EqKT/+GxyAjFeF1g=
Received: by 10.152.146.163 with SMTP id td3mr1569316lab.6.1327596026229; Thu,
	26 Jan 2012 08:40:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Thu, 26 Jan 2012 08:39:56 -0800 (PST)
In-Reply-To: <CAFZh4h-5m535Uod4=7hYmZzhRaqM8LtpHw1bfE0CQdXPdpFz7A@mail.gmail.com>
References: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
	<CAFZh4h-5m535Uod4=7hYmZzhRaqM8LtpHw1bfE0CQdXPdpFz7A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 26 Jan 2012 08:39:56 -0800
Message-ID: <CAMKF1sr1FcZY+7y1+h6MMi+8LwO5YMd6a6TnCQuEp=79c2mwDA@mail.gmail.com>
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
X-List-Received-Date: Thu, 26 Jan 2012 16:40:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 26, 2012 at 8:36 AM, Brian Hutchinson <b.hutchman@gmail.com> wr=
ote:
> Update,
>
> I'm still not doing something right. =C2=A0I did a clean rebuild of
> core-image-base and a tar jtvf core-image-base-beagleboard.tar.bz2
> reveals opkg stuff in /var/lib/opkg only. =C2=A0No opkg bin.
>
> I guess I'm still in shock over this. =C2=A0I mean why should I have to d=
o
> anything other than:
> PACKAGE_CLASSES ?=3D "package_ipk"

this means thats what format you want for package to be spitted out.
weather you want online (on device) package management is a different story

>
> I mean, if I specify I want package_ipk in the "Package Management
> configuration" section, doesn't logic follow that the image would be
> created with opkg and some sample opkg.conf files? =C2=A0What use is it t=
o
> generate all those .ipk's for the repository the build does without
> opkg being there?

