Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C63E8E013B8
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 13:05:52 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id c10so5007309ieb.24
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 13:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=zMOgCSNQiF62V4+HTPRqn3bPOyKyPi0bX4oQfM8G5RM=;
	b=O1rpqf/4uDxTf3M48emrYtH5kSpPjh4pmNDF/V0LNwgslGoD39SP3MRiF3qeFq6Nwf
	yh9pWW3hZKTkbIL6DSVnWbO5aRl8Psweymuok8US6zcodqhY2431YWcmrm/BmuLXVCtm
	W1w8fsNi7q4oIkAKCrLuubtV8Yoopq0V6fqvw0Pic4jmC2IL4bQj+xNBMTugrmeeTD56
	38FUWAC1DyQwqp5OJs8JUjyAJIBXOtrA4/FgSZ63csy72XBvKo6aCqYD5ptXSreBowD7
	aCrsL+0UWFkHqSziUlFHhEiml1u0p71KilbNMPYK1CkBeOFEFzZKNHDHI5SMfvwfROHj
	GMjQ==
X-Received: by 10.50.70.101 with SMTP id l5mr3349295igu.104.1371413151769;
	Sun, 16 Jun 2013 13:05:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.4.168 with HTTP; Sun, 16 Jun 2013 13:05:21 -0700 (PDT)
In-Reply-To: <981EAD74-B99C-43D8-8DD1-FF06BB484CAA@keylevel.com>
References: <981EAD74-B99C-43D8-8DD1-FF06BB484CAA@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 16 Jun 2013 13:05:21 -0700
Message-ID: <CAMKF1squXJOS3Zmhm27nwKgjpKQJfxTPaMtYz_5mzW+9k6_vnQ@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Disabling udev NIC renaming
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
X-List-Received-Date: Sun, 16 Jun 2013 20:05:52 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jun 16, 2013 at 4:09 AM, Chris Tapp <opensource@keylevel.com> wrote:
> I use a USB drive to boot systems for testing and to install the image. This works ok for the first, but 'eth0' gets renamed to 'eth1' on the second system (etc).
>
> Is there an option I can set to stop udev creating rules which result in the NIC name changing, or should I just add an empty
>
> /etc/udev/rules.d/75-peristent-net-generator.rules
>
> file to my image?

thats one way. If you are using systemd then systemd already have the
feature to use persistent IF names. see
http://www.freedesktop.org/wiki/Software/systemd/PredictableNetworkInterfaceNames/

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

