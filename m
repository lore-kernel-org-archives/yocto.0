Received: from mailout11.t-online.de (mailout11.t-online.de [194.25.134.85])
 by mx.groups.io with SMTP id smtpd.web09.1031.1632426355719273637
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 12:45:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.85, mailfrom: f_l_k@t-online.de)
Received: from fwd82.dcpf.telekom.de (fwd82.aul.t-online.de [10.223.144.108])
	by mailout11.t-online.de (Postfix) with SMTP id B2ABA3481
	for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 21:45:06 +0200 (CEST)
Received: from [192.168.178.83] ([79.219.228.58]) by fwd82.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mTUeY-36NdPF0; Thu, 23 Sep 2021 21:45:06 +0200
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding root device
To: yocto@lists.yoctoproject.org
References: <20210917220121.26663-1-twoerner@gmail.com>
 <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
 <20210923115919.GA25233@localhost>
From: "Markus Volk" <f_l_k@t-online.de>
Message-ID: <254c0237-f5c0-8f64-61a0-a5e8835d64f4@t-online.de>
Date: Thu, 23 Sep 2021 21:45:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210923115919.GA25233@localhost>
X-TOI-EXPURGATEID: 150726::1632426306-00001468-4F34C4DE/0/0 CLEAN NORMAL
X-TOI-MSGID: 215c4ec1-45cf-4009-8a30-b2fccc346291
Content-Type: multipart/alternative;
 boundary="------------6A74B96F8A8DF2AB0F8A9508"
Content-Language: en-US

--------------6A74B96F8A8DF2AB0F8A9508
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Am 23.09.21 um 13:59 schrieb Trevor Woerner:
> Curious. I boot tested my patch on multiple boards and I've built and booted
> numerous images on my rock-pi-4b and rock64 boards in the last day or so since
> I applied the patch. I'll try some "clean" builds and see if that makes a
> difference. I don't doubt your report (especially since Khem confirmed it),
> I'd just like to know for myself what's different.

That is really strange. As soon as there are those /dev/sda* entries in my fstab
my rock-pi-4c doesn't boot up anymore. As soon as i comment them out or delete them,
everything is working again.

> I wonder if just applying your 2nd patch would be enough (i.e. the one that
> removes the /dev/sda* lines from /etc/fstab)? It's odd that the first 6
> entries in the wic file would need UUIDs since it's the SoC's ROM firmware
> that uses them, and I'm pretty sure the Rockchip firmware isn't using UUIDs
> (my guess is it's just blindly grabbing whatever it finds at specific
> offsets). The things stored in those partitions are u-boot related bits (atf,
> spl, the u-boot binary itself) so by the time Linux starts, those things are
> already "behind" us. I can't see how adding UUIDs to the partitions holding
> u-boot would affect how the kernel finds the root partition (?).

Applying only the second patch should be enough to hide the problem, but as soon as
one decides to disable WIC_CREATE_EXTRA_ARGS for example because he/she wants /boot to be
mounted automatically, those non working /dev/sda* entries will be written into fstab again.
With the first patch they are included like this and are mountable via fstab:


UUID=0C48-9342	loader1	vfat	defaults	0	0
UUID=C4D3-D17A	reserved1	vfat	defaults	0	0
UUID=8FBE-2551	reserved2	vfat	defaults	0	0
UUID=35FA-8BBB	loader2	vfat	defaults	0	0
UUID=CFF3-5D80	atf	vfat	defaults	0	0
UUID=832C-48C4	/boot	vfat	defaults	0	0


u-boot is able to find its partitons even if '--use-uuid' is set. As you mentioned u-boot doesn't
know about uuid but it seems to be able to find its partitions nevertheless. But if '--use-uuid'
is not set, wic writes /dev/sda* instead of the correct  UUID values to fstab. So its not u-boot that
needs uuid to be set but fstab.
Of course it would be nice, if wic didn't try to add the u-boot partitions to fstab at all.
I guess nobody ever needs to have them mounted into userspace ( except possibly /boot).

> Are you using poky or a distro other than "nodistro"? Perhaps other
> layers/distros are affecting the build?

Thats not unlikely. I have a long layer-list in bblayers.conf to build my image:

   /home/flk/build/poky/meta \
   /home/flk/build/poky/meta-poky \
   /home/flk/build/poky/meta-yocto-bsp \
   /home/flk/build/poky/meta-rockchip \
   /home/flk/build/poky/meta-rockchip-extras \
   /home/flk/build/poky/meta-wayland \
   /home/flk/build/poky/meta-retro \
   /home/flk/build/poky/meta-retro-wayland \
   /home/flk/build/poky/meta-rauc \
   /home/flk/build/poky/meta-openembedded/meta-oe \
   /home/flk/build/poky/meta-openembedded/meta-multimedia \
   /home/flk/build/poky/meta-openembedded/meta-networking \
   /home/flk/build/poky/meta-openembedded/meta-xfce \
   /home/flk/build/poky/meta-openembedded/meta-gnome \
   /home/flk/build/poky/meta-openembedded/meta-python \
   /home/flk/build/poky/meta-openembedded/meta-filesystems \
   /home/flk/build/poky/meta-arm/meta-arm \
   /home/flk/build/poky/meta-arm/meta-arm-toolchain \
   /home/flk/build/poky/meta-kodi \
   /home/flk/build/poky/meta-browser/meta-chromium \
   /home/flk/build/poky/meta-browser/meta-firefox \
   /home/flk/build/poky/meta-clang \


best regards,

   Markus


--------------6A74B96F8A8DF2AB0F8A9508
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Am 23.09.21 um 13:59 schrieb Trevor
      Woerner:<br>
    </div>
    <blockquote type="cite" cite="mid:20210923115919.GA25233@localhost">
      <pre class="moz-quote-pre" wrap="">Curious. I boot tested my patch on multiple boards and I've built and booted
numerous images on my rock-pi-4b and rock64 boards in the last day or so since
I applied the patch. I'll try some "clean" builds and see if that makes a
difference. I don't doubt your report (especially since Khem confirmed it),
I'd just like to know for myself what's different.</pre>
    </blockquote>
    <pre class="moz-quote-pre" wrap="">That is really strange. As soon as there are those /dev/sda* entries in my fstab
my rock-pi-4c doesn't boot up anymore. As soon as i comment them out or delete them,
everything is working again.
</pre>
    <blockquote type="cite" cite="mid:20210923115919.GA25233@localhost">
      <pre class="moz-quote-pre" wrap="">I wonder if just applying your 2nd patch would be enough (i.e. the one that
removes the /dev/sda* lines from /etc/fstab)? It's odd that the first 6
entries in the wic file would need UUIDs since it's the SoC's ROM firmware
that uses them, and I'm pretty sure the Rockchip firmware isn't using UUIDs
(my guess is it's just blindly grabbing whatever it finds at specific
offsets). The things stored in those partitions are u-boot related bits (atf,
spl, the u-boot binary itself) so by the time Linux starts, those things are
already "behind" us. I can't see how adding UUIDs to the partitions holding
u-boot would affect how the kernel finds the root partition (?).
</pre>
    </blockquote>
    <pre>Applying only the second patch should be enough to hide the problem, but as soon as
one decides to disable WIC_CREATE_EXTRA_ARGS for example because he/she wants /boot to be
mounted automatically, those non working /dev/sda* entries will be written into fstab again.
With the first patch they are included like this and are mountable via fstab:


UUID=0C48-9342	loader1	vfat	defaults	0	0
UUID=C4D3-D17A	reserved1	vfat	defaults	0	0
UUID=8FBE-2551	reserved2	vfat	defaults	0	0
UUID=35FA-8BBB	loader2	vfat	defaults	0	0
UUID=CFF3-5D80	atf	vfat	defaults	0	0
UUID=832C-48C4	/boot	vfat	defaults	0	0


u-boot is able to find its partitons even if '--use-uuid' is set. As you mentioned u-boot doesn't
know about uuid but it seems to be able to find its partitions nevertheless. But if '--use-uuid'
is not set, wic writes /dev/sda* instead of the correct  UUID values to fstab. So its not u-boot that
needs uuid to be set but fstab.
Of course it would be nice, if wic didn't try to add the u-boot partitions to fstab at all.
I guess nobody ever needs to have them mounted into userspace ( except possibly /boot).

</pre>
    <blockquote type="cite" cite="mid:20210923115919.GA25233@localhost">
      <pre class="moz-quote-pre" wrap="">
Are you using poky or a distro other than "nodistro"? Perhaps other
layers/distros are affecting the build?</pre>
    </blockquote>
    <pre>Thats not unlikely. I have a long layer-list in bblayers.conf to build my image:

  /home/flk/build/poky/meta \
  /home/flk/build/poky/meta-poky \
  /home/flk/build/poky/meta-yocto-bsp \
  /home/flk/build/poky/meta-rockchip \
  /home/flk/build/poky/meta-rockchip-extras \
  /home/flk/build/poky/meta-wayland \
  /home/flk/build/poky/meta-retro \
  /home/flk/build/poky/meta-retro-wayland \
  /home/flk/build/poky/meta-rauc \
  /home/flk/build/poky/meta-openembedded/meta-oe \
  /home/flk/build/poky/meta-openembedded/meta-multimedia \
  /home/flk/build/poky/meta-openembedded/meta-networking \
  /home/flk/build/poky/meta-openembedded/meta-xfce \
  /home/flk/build/poky/meta-openembedded/meta-gnome \
  /home/flk/build/poky/meta-openembedded/meta-python \
  /home/flk/build/poky/meta-openembedded/meta-filesystems \
  /home/flk/build/poky/meta-arm/meta-arm \
  /home/flk/build/poky/meta-arm/meta-arm-toolchain \
  /home/flk/build/poky/meta-kodi \
  /home/flk/build/poky/meta-browser/meta-chromium \
  /home/flk/build/poky/meta-browser/meta-firefox \
  /home/flk/build/poky/meta-clang \


</pre>
    <pre>best regards,</pre>
    <pre>  Markus
</pre>
  </body>
</html>

--------------6A74B96F8A8DF2AB0F8A9508--
