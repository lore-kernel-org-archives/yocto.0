Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f174.google.com (mail-ea0-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D16C0E01793
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 10:56:22 -0800 (PST)
Received: by mail-ea0-f174.google.com with SMTP id n15so1173143ead.19
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 10:56:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=C0Vg9zHcTS/RVzjtnZG7sMP0EFR3IYc7GDfclBcfNzY=;
	b=CX1HhXe9Oh1DK/8hhxqkgwa+D6dsNwbqAhifLuSv8+MlQn2VYajpktHfDcKKm/FDjV
	k4h3zl+VjbM6p1n62EtOLxUriaini2u/+CKQVqNyIAlfjA5K9O71O+4TkESfKTYf4SKP
	utvYhb126z/OXob75NrJDM/EIYjcEpnTK9NkSqugveKXMPgeZEpGBbVpboAU3PzHYlQ2
	Y1fb74jaQO65SM14p3oSXFD75drsBjABD76wzfEk0kTxuOpQNaFWK/Mv0crCjf/GGdvU
	ba0o1Ln+g9OAyoVTKLohNGwimk0wRMtmI9HCEPAA7VZ1sZ5X7avWpnSNNpnVEC4ZGjbM
	tRGQ==
X-Gm-Message-State: ALoCoQkyBUulbaUlQq3XZcV6ysk1aeVU360DREA1M0tj0ScYtaz/2syX4MQj2xmWnAcQbEnrlO2Q
MIME-Version: 1.0
X-Received: by 10.14.183.130 with SMTP id q2mr5302222eem.64.1383764181700;
	Wed, 06 Nov 2013 10:56:21 -0800 (PST)
Received: by 10.14.117.67 with HTTP; Wed, 6 Nov 2013 10:56:21 -0800 (PST)
Date: Wed, 6 Nov 2013 10:56:21 -0800
Message-ID: <CALmOhgnQ29+TvdGJ-7R=5wj-7zOx6LR8kn8c1vv6kzxz0hNkDQ@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: using Clang Was: Minutes: Yocto Project Technical Team Meeting - Tuesday, November 05, 2013
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
X-List-Received-Date: Wed, 06 Nov 2013 18:56:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 5 November 2013 15:44, Liu, Song <song.liu@intel.com> wrote:
>   - Randy: Any plan to add Clang? open source compiler. Developed by Apple.
> Qualcomm is working on it.  RP: there are lots of other things. Not hearing
> from tens of users on this. Welcome others to contribute.

I'm curious to try Clang with OE too, but the last time I checked it
still is not possible to build a valid kernel using Clang alone.
Therefore I would assume if I wanted to use Clang it could only be for
building user-space things and I'd still need a cross-gcc compiler for
the kernel. Is that the current plan?

