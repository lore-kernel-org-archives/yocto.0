Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2B51E007A8
	for <yocto@yoctoproject.org>; Sun,  8 Dec 2013 11:21:13 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id e14so4761787iej.14
	for <yocto@yoctoproject.org>; Sun, 08 Dec 2013 11:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=XzwPMXGd1EeVzZyYOYksYmvE/IRMlj+0XhslL1mDjQ0=;
	b=sjn18f0oq8Tk6zXtPGwFG5UKLP1EfJqpbAiHtaAeYobgD5myuFEFxZwtaX2ghqbINx
	wJADTl+Ddh5iZJIJoWK35nSz5khePU+iODBffnWH0Tzdx8a0EbQCquPhs/lBef/uTN3h
	ycYelvzznH2X7l/A2wwjbleSc8FmFYwy/gh5U8JJ6z9JEPnDj3OKAt60q3Q+Mu0rpSVc
	8TpfhQnN4ULDVrFwoMonOSh1dxGNSC1T7isv/lbceR7kJcB9jz9ewsy7DOYxP2/WPLv1
	XsJaIyZdLhXf8x4DL9G5UzhwF/qqrHu5Fyy3x6M8O5NUT55kn9TLvyIO1trpkIRjAWUh
	vlvw==
X-Received: by 10.50.40.102 with SMTP id w6mr12974877igk.20.1386530472569;
	Sun, 08 Dec 2013 11:21:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.79.167 with HTTP; Sun, 8 Dec 2013 11:20:42 -0800 (PST)
In-Reply-To: <CANwz6nwekJf0b7Z1D7imWof5+wL9baKR8K=Fk+6F-JDCUO857A@mail.gmail.com>
References: <CANwz6nwekJf0b7Z1D7imWof5+wL9baKR8K=Fk+6F-JDCUO857A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 8 Dec 2013 11:20:42 -0800
Message-ID: <CAMKF1sq-fmyRo7C8mo++RKcbZBBE3pTWF9s-+RvUYfcGdKD1vg@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: firefox
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
X-List-Received-Date: Sun, 08 Dec 2013 19:21:14 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 8, 2013 at 10:52 AM, Edward Vidal <vidal.develone@gmail.com> wrote:
>
> /home/vidal/POKY/dylan_build/poky/meta-browser/recipes-gnome/gnome-settings-daemon/gnome-settings-daemon_2.32.1.bbappend

you probably are missing meta-gnome in your BBLAYERS mix

