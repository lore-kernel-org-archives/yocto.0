Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0526E006DC
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 06:54:12 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id hm11so7217083wib.3
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 06:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=zWpvtBDEKaSi7UBDoWwZny5cgcFxB5ZB8PPy0VCTIxA=;
	b=A0unBAbLnYdRifuxQCmOVklFQ7bIMIDIxhMDuYyzTlZYo5GSvAyv58siatWVVpFiY/
	O6MC+0ycQ28BaJ8t/Pkf4jSpxEn0d/Q2URzQVIZyf/bbgvHPKkrNB2Y/Bwtx5b0xiklH
	YGzDywRdWqLbZ3ZUPViOVC/MtFWAkntC69K6nc7Kgng1TYFvF0gxutsgH7h1ybyHNDdf
	F/8jBez96OpPXg/kp06IxGeIWnFRYfSpCfeVrHEEXnf59H4P/4IFJofysAc4+dKccH/x
	Fx46tbL8TF+jHqMWQBjXwbI91WoX7hlgjbiroEShvaYSbU1TyHMqJRVMONgYg8UFAlAz
	s5Tg==
MIME-Version: 1.0
X-Received: by 10.180.77.9 with SMTP id o9mr5152692wiw.16.1363874051417; Thu,
	21 Mar 2013 06:54:11 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Thu, 21 Mar 2013 06:54:11 -0700 (PDT)
In-Reply-To: <CAPhnLPDrWsXJMUVb+HqUkHqBDiZSyOqjxtmgiuGGgPBFcc4Eww@mail.gmail.com>
References: <CAPhnLPDrWsXJMUVb+HqUkHqBDiZSyOqjxtmgiuGGgPBFcc4Eww@mail.gmail.com>
Date: Thu, 21 Mar 2013 09:54:11 -0400
Message-ID: <CAHUNapQOUHi7f0va3hPjM_Pu69zvbEJuxnHeR__BBZTVnpJvOg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder migration status.
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
X-List-Received-Date: Thu, 21 Mar 2013 13:54:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

The new autobuilder looks great! One thing that's nice is how easy it
is to look at the build and figure out from what commit the build is
based.

Clicking around in some of those builds, though, I can't seem to
figure out what the various configurations are. For example:
meta-fsl-arm has a number of machine definitions, which MACHINE is
being used for the autobuilder build? Also, I can't seem to figure out
which image is being built either; core-image-minimal? sato?

Best regards,
    Trevor

