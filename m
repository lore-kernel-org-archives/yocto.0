Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web11.42.1577466015317069875
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Dec 2019 09:00:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RZBSpzfc;
 spf=pass (domain: gmail.com, ip: 209.85.222.43, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id y23so9233484ual.2
        for <yocto@lists.yoctoproject.org>; Fri, 27 Dec 2019 09:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=NQK0F+Z3gzxsJjttqaO0yWdm6cgfTr9R2D4+SLhkmHA=;
        b=RZBSpzfcZ1/uiTXeziaGNdHLYTwJ9NDHw2kbV3Oiw5AQNgXkCerfyy8G6k/EjWYLQU
         NnBzabH0AAADN20r2IUV9bXREj25NI2JgWma1T/D/WcQw/BATtUxV2YJ2NdiQ8oFOzIT
         bOZo/zeYIzMeFpRNTtafYRBmgpIFB4cjCucZ8U2zAoCBYIHBlZ3o6JOyneo7KEYQYAMG
         ROJm9ioHsztm4NrID7uKTitr+CkwTVXVixubgw3JW+Qlv9v8fZSW2qHh3wxxSTO2FqYH
         bYJP8E0pdpeq4j0YRbp6cKzx+G7p2D7RJycbAsLRheisEgMff3KoDrX32IkVTlMAvf26
         2I6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NQK0F+Z3gzxsJjttqaO0yWdm6cgfTr9R2D4+SLhkmHA=;
        b=Hac/GS7RmAQICuTNJOop+f9TwuGRHaJmorlAFIt/H0dJigVSx/prMGy0NyedDSGvRG
         bVxwBLopHT+MIVJDGQfe36vFNAAus+Ed9xJ4P7oi+Ja3rFNZtdAFeTd5Gc5erCsP2955
         XL8mti6PIvZraKghL7oTOTig9MsGN31aDi16vddbKpPyMGqhi5nLlQDVYkjZIO9BaWlN
         pwoJHO7211EpK/Tbn4bWSu+CwTP5I9gUthK+dTUxLyIY1yKcElY/UAkNKPiEzxzIWyRY
         WPCySQmWdXvqTpEJGELyvs+bgyEEP3xpizgaV6wE+CgoR7zu/Ity6UNjkztA13N1u/dC
         Sbsw==
X-Gm-Message-State: APjAAAWXQVTrwjneJRpQY4CHc8TLIzk+yAcGIaBdS/8Gci91afnsIF+y
	aBx1pEdhg7z6AJWugtEmjG8GCtdGDukNHfzp99iIcw==
X-Google-Smtp-Source: APXvYqwA6aeHxFhlegFH9zNhK+Zh0aeYAqJeKDWFjJjeyiPyitcfC7AQ8dVTm+GOuHFoP4KXhfamRtjMWx4Vl3vbbZA=
X-Received: by 2002:ab0:69c9:: with SMTP id u9mr10252143uaq.80.1577466013959;
 Fri, 27 Dec 2019 09:00:13 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:4186:0:0:0:0:0 with HTTP; Fri, 27 Dec 2019 09:00:13
 -0800 (PST)
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Fri, 27 Dec 2019 12:00:13 -0500
Message-ID: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
Subject: OEM supplied yocto image is impossible to work with
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Oh, and this is the THIRD time I've tried posting this...you certainly
don't make the yocto mailing lists easy to subscribe to.

Lemme appologize in avance because parts of this are going to come
across as rants directed at both our OEM and yocto.  Hopefully "yinz"
have thick skins.

I've been doing embedded system design since the beginning of the
millenium (mostly VXworks, with some linux intel embedded, PPC
cross-dev chain stuff, and bare metal C/C++ microcontrollers) and now
I'm tasked with implementing a very mission critical set of embedded
processors in an aerospace project.  I've not used yocto before.  The
closest thing being buildroot.

Anyway, the OEM for our boards was chosen before I came on board and
while I can find no fault with the zynq based hardware, their software
SDK and support is fracking terrible.

Like most OEMs, their prefered model is to give the customer just
enough information to try and force us to pay them to build a turnkey
solution on our behalf, which is not an option in our enterprise.

Their minimal yocto based SDK and reference implementation:

1) as is, isn't suitable for our mission needs, where we must make
changes to the base image,  kernel, and initramfs.  They seem to
expect customers to only add on apps to the UBI rootfs and not screw
with anything else.

2) has many closed source packages in it that will only build from
source when in their local intranet.  Deleting the cache and
attempting a complete source level rebuild consistently fails.

3) isn't documented at all, and they will only answer direct, well
phrased questions, instead of volunteering information that meets our
stated goals.

4) them being a multinational company causes additional legal,
information sharing, and logistical problems

Questions/problems in yocto where the documentation kind of sucks, are:

1) the necessity to "clean build" is inherent in any software
endeavour, yet the simple equivalent of "make clean && make image" is
nowhere to be easily found in yocto.  It is implied that deleting the
tmp/ and sstate_cache/ directories should have the same affect, but is
that safe?  What will it break?  I need to be confident in the process
when I go scream at the OEM, telling them that their build tool is
incomplete for our air-gapped environment.

2) related to above, yocto needs a much better description of the
expected directory tree within a project.

3) the relationship between bitbake and devtool needs to be better
documented and both utilities need to be better documented themselves.
trying to run bitbake manually causes path errors (null entry in path)
when in fact, bitbake itself is setting a path somewhere incorrectly.
my path has no null entries or "." in it.

4) yocto documentation fails in presenting a good explanation of the
difference between packages, layers, recipes, and images.  Also, I've
seen cases where virtual/kernel is used to check-out the kernel to
work on it, yet no virtual/kernel directory exists in the layers
directory tree, so a better explanation of the mapping between real
directories and virtual names is warranted. ... and yes, I know what
BB files are for.

5) a big area that seems to be lacking is the ability to inquire in a
yocto build as to what is included in it.  This is especially
important if the responsible party didn't actually create the build,
as is our case.  We're left with trying to guess what the OEM did, and
why.

6) the seeming inability of yocto to build reproducable binary images
is a serious shortcoming in IA environments.  The first step in
development for us is to baseline the reference build provided by the
OEM and then make incremental changes to it, but yocto doesn't seem to
have a way to validate that the build done in-house is identical to
the pre-built images supplied on the board.  Is there a way to "forced
sequentialize" the yocto process so that images can be reproducable?

7) a large part of me wants to throw away the OEM build and start from
scratch, but I have no information about how to correctly import their
"blob only" packages into a separate yocto project.  Hell, I am not
convinced that their blobs will remain persistent if I delete the
cache because I don't know whether they were created in their network
and  expected to always live in the cache, thus negating the ability
of a customer to do a "clean build"

Anyway, yes, I've read what docs I can find on yocto, and aside from
falling asleep several times in the process, the docs really are not
helping me with the problem at hand: using an existing yocto build
provided by a possibly unscrupulous vendor.
