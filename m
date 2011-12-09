Return-Path: <twoerner@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02F52E00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 09:10:08 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by dadi14 with SMTP id i14so4310583dad.35
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2011 09:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=VMIUPu4/s7QhdFmeChouKRjxicoUdWGSddnJ5D0Cjg0=;
	b=CIgJY7/U15U6xhwWVR40X1V5rGqL6ayURpV2u4xG3ueQMcIHAj3GZBzvPRoGKIEpRf
	RaDUNiWVrGZabd1kPdivjZfaEoAyMsm80MBLhx0J2yWVodcoeV2PCBJJl6mHordmKZ1T
	Wokk6RKR5V+2xe4kljdmv+ooax+u3eDxkz7r4=
MIME-Version: 1.0
Received: by 10.68.208.225 with SMTP id mh1mr3553968pbc.20.1323450608605; Fri,
	09 Dec 2011 09:10:08 -0800 (PST)
Received: by 10.68.25.4 with HTTP; Fri, 9 Dec 2011 09:10:08 -0800 (PST)
In-Reply-To: <1323384424.5309.85.camel@ted>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
	<1605255.ltn5bNtJ0l@helios>
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
	<88701C38B5D07249817D428430999C910B774381@sestoex09.enea.se>
	<CADkTA4O1DeNXkfVk0Oc3Gspsz2erGf0pJTRE0XOLypww8M2n_Q@mail.gmail.com>
	<4EE106CB.6080104@linux.intel.com> <1323384424.5309.85.camel@ted>
Date: Fri, 9 Dec 2011 12:10:08 -0500
Message-ID: <CAHUNapQ3MW4m7q5h+cT3zLgSrskFaKkRzvU7W-qDrN=be_yvOg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: =?ISO-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Fri, 09 Dec 2011 17:10:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Dec 8, 2011 at 5:47 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> Imagine you have:
>
> core-image-minimal setting PREFERRED_PROVIDER = "kernelA" and
> core-image-minima-debug setting PREFERRED_PROVIDER = "kernelB". Both
> would depend on "virtual/kernel". You then run:
>
> "bitbake core-image-minimal core-image-minimal-debug"
>
> What would you expect bitbake to do?

Would it be possible to have both kernels built and installed to the
image with the PREFERRED_PROVIDER selecting the default kernel to boot
(i.e. grub/lilo/<whatever> configuration setting)?

