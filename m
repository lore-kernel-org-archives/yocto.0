Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web09.11789.1612884361438040294
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Feb 2021 07:26:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@oripessach-com.20150623.gappssmtp.com header.s=20150623 header.b=zJBkFWst;
 spf=none, err=permanent DNS error (domain: oripessach.com, ip: 209.85.208.54, mailfrom: mail@oripessach.com)
Received: by mail-ed1-f54.google.com with SMTP id s11so24261288edd.5
        for <yocto@lists.yoctoproject.org>; Tue, 09 Feb 2021 07:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oripessach-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=K6h1awwNu4oDcTf4O3r1HYeUXmqn/zTJ/VMbeZE+5cg=;
        b=zJBkFWsthuk4TCiVq1Pl/E0h9TJxN/XjMizM1fyKAqbbe8tfpU7AVyyarhQZWYD/YN
         e0SONhLXN6XEnvP6lhIPkkqpsNS74o+OBphPHmVuRIWcnBvl5OPNDM7erLTcRcJ5D+kW
         CUFSzl7afwjdYyf/Gc+zKGMP3U1arvYcIThSOw0g9lVFcV7bMr+eVMg238Xh4WTpuNca
         grrz50s0ugos57rb3KG/ClQaqFmh/4H2vsIi0YFzX9pevqW28en1sJlo4Fj3/8WWb3LN
         uDl/Un5wshglH/M77tzA6WAHXJ4c97YobLmgUxUMrlCuzInp/BDy3gL7C+4ziROWvlHD
         fj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=K6h1awwNu4oDcTf4O3r1HYeUXmqn/zTJ/VMbeZE+5cg=;
        b=PTyWxPBzbGIxxXLT9D3rPMTwnZAmJVdSK8wXS+GE8V3bc0tIwQvtJrHLvhdCTiBBfd
         BHsk3mpWrb+8eRabhEmrFRZbXBuQMhc+ohBZjsNEPubElSLBvaPhg/HCzkN7BqtpjZtk
         QyTnSRA/ydOqqVWJ5pEeERDHcXgC8fuZujEtS8Yv/PMDH7T25PSz3ciZvenLZn0Cu4pD
         wIXfdNfVHRAA57OMo1UFB6fLozOAmUL2LrfS8Y2tOvqQVvyhs2fKqTzoF2M/wzHB5pYD
         GxULJjLsSZ+LkhqwvJ5GlG65Em7vqeQib6Uz+hMMCYgIVjM0rDTzaHpAhlowVHMDI7tW
         zWXQ==
X-Gm-Message-State: AOAM532m9Cbvg63Zt0wOiVURms7+1dwcSF3eolfwL96pYiSuqZk/fUC9
	JBxg+kiFSA4AKc1WPKrcbXmKNrHA0RYCBpCnIDIy1DrR9XFgQLIb
X-Google-Smtp-Source: ABdhPJzXFl3qCmrdP8SuzMiZ/cM8Xn30tY/zF6AL3VqW0T2mYmRJyBqT0vwPPRYoPbjjrxzNKdvu/o9E0XXPOqoH6tU=
X-Received: by 2002:a05:6402:19bd:: with SMTP id o29mr23175257edz.161.1612884359160;
 Tue, 09 Feb 2021 07:25:59 -0800 (PST)
MIME-Version: 1.0
From: "Ori Pessach" <mail@oripessach.com>
Date: Tue, 9 Feb 2021 08:25:32 -0700
Message-ID: <CAJekvNSU76iCo25=bOT42P+Dt3R+r0N7RX+OuAvC+rrKYAP2pA@mail.gmail.com>
Subject: Image installation problems after an upgrade to gatesgarth
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004ab7f805bae8e790"

--0000000000004ab7f805bae8e790
Content-Type: text/plain; charset="UTF-8"

Hi,

I have an image that was building and working fine with an older release of
Poky. The target system is genericx86-64, and I'm trying to create a boot
USB drive that installs the system on the PC it boots on.

Like I said, this was working fine before.

With gatesgarth, I'm only getting the "boot" option in grub. I have a
grub-bootconf bbappend file that sets LABELS to "install" (the only option
I want) and a couple of bbappend files modifying the init-install-efi.sh
file in initrdscripts. I can see that the grub.cfg file generated during
the build is correct (under
tmp/work/genericx86_64-poky-linux/grub-bootconf/1.00-r0/image/boot/EFI/BOOT/grub.cfg)
and yet, the wic image only has the boot option.

How do I get the install grub option into the image?

The image is based on core-image-sato.

Thanks,

Ori Pessach

--0000000000004ab7f805bae8e790
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I have an image that was=
 building and working fine with an older release of Poky. The target system=
 is genericx86-64, and I&#39;m trying to create a boot USB drive that insta=
lls the system on the PC it boots on. <br></div><div><br></div><div>Like I =
said, this was working fine before.</div><div><br></div><div>With gatesgart=
h, I&#39;m only getting the &quot;boot&quot; option in grub. I have a grub-=
bootconf bbappend file that sets LABELS to &quot;install&quot; (the only op=
tion I want) and a couple of bbappend files modifying the init-install-efi.=
sh file in initrdscripts. I can see that the grub.cfg file generated during=
 the build is correct (under tmp/work/genericx86_64-poky-linux/grub-bootcon=
f/1.00-r0/image/boot/EFI/BOOT/grub.cfg) and yet, the wic image only has the=
 boot option.</div><div><br></div><div>How do I get the install grub option=
 into the image?</div><div><br></div><div>The image is based on core-image-=
sato.</div><div><br></div><div>Thanks,</div><div><br></div><div>Ori Pessach=
<br></div></div>

--0000000000004ab7f805bae8e790--
