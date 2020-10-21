Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web09.10333.1603279722468579756
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2020 04:28:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=v9sjooTG;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id e04b49a3
	for <yocto@lists.yoctoproject.org>;
	Wed, 21 Oct 2020 13:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type; s=obsd; bh=Q7H7td2vOrdDmB4Iut+zuR4+QB
	YhYwi+7UX2dSXLiQs=; b=v9sjooTGw+yEO1KFLTii8IgwCRuqAaEUJ7g4BviHik
	tPWHReWmzPnWHHIShzFcYN5jajJjyWxp6fQF4Pc0HboWvLb/FshXFNqPoVFb9OG6
	DxlCwW1hs24QT7hH1F98sPAjLhctGhgo1KSAPLPuSLWxbG/HHr1kpbmXJzpIJGjJ
	g4RYHO2LXN6PefbZUioS6YpaMaMYY+SKEEWhQ14DbTBx0syDOmmZp/C+cucAszc4
	wXhCprKXCHOiGI7hVwdlz1VMzCcQB4sFysZh1jbbF8/hLPfDTrzwCNAbLLC3xPdj
	Qjam+gEFHW8zYmN0gI8dXQv6B2MOnjIv8ByxyoUikBaw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type; q=dns; s=obsd; b=ltj7bURS+ol4EsmJdHU3n9lUpVOs511J
	zKQdpsgW6mBlvPEn8nIj0eddCZ6K52W/eq9rtgU9OZfg7jOgfbLa2DV2gymYpmEs
	f0ssQ7Nry6Hw1nJuoycIckpSRCO7JNAOvRYlKN3gNaHrbSeRODrEVc/jLTv8a6LK
	0eDXLZiLpKiCoB4dJFrJoD7ofqcpMEXJ/us7qIExVYp7xwXarY/frr+E87Xw3Mgz
	rp/dIfROPYUeXfiqD3rDsJDGJVW/rZmTfauSgy31WNO1gYWSGlGVLvCjbI8EG71p
	t4ZnFLFQhDMJd/n9BukX08dNhgpO543iIijwMeTvTRPHtXszOum6og==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id 78b29d0f (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Wed, 21 Oct 2020 13:28:38 +0200 (CEST)
Subject: Re: [yocto] dnf error coming while compiling core-image-sato image.
To: yocto@lists.yoctoproject.org
References: <CAJw=dJ8rCUx1SOe4ai-cVs3BPaS8MePVw+Uh967ZOeaDoWXm5g@mail.gmail.com>
 <b1644126-1fe8-764b-6ff9-51e25bde59ec@windriver.com>
 <CAJw=dJ_QWnF3bnKCWEuW8PrX32c2nXOdbnA1rBD=Ah55QvpjEg@mail.gmail.com>
 <2946109b-fe92-243c-87fb-296c406c1569@optimcloud.com>
 <CAJw=dJ-AmoJNsG2xwHdbfu3=tQV7TM8thUUeDAa61SEB3XHnKg@mail.gmail.com>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <f7475b4a-7a04-5df7-97e3-be0a748c4cb5@optimcloud.com>
Date: Wed, 21 Oct 2020 18:28:33 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <CAJw=dJ-AmoJNsG2xwHdbfu3=tQV7TM8thUUeDAa61SEB3XHnKg@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------ED08DA8626DE2FDBF4B32193"
Content-Language: en-US

--------------ED08DA8626DE2FDBF4B32193
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 10/21/20 5:38 PM, NIKHIL PATIL wrote:
> Hi team ,
>     I am assuming in local.conf we used  DISTRO ?=  "poky" and DISTRO 
> = "poky-sota-systemd"   both   thats why we are getting these error or 
> what ?


mmm nope...

Build Configuration:
BB_VERSION           = "1.48.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "debian-10"
TARGET_SYS           = "x86_64-overc-linux"
MACHINE              = "intel-corei7-64"
DISTRO               = "overc"
DISTRO_VERSION       = "1.0"
TUNE_FEATURES        = "m64 corei7"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "master:4e4a302e37ac06543e9983773cdb4caf7728330d"
meta-oe
meta-python
meta-networking
meta-filesystems
meta-gnome
meta-multimedia
meta-xfce
meta-perl            = "master:de8198b93f8e524ab2f64fd138185824a79b18e6"
meta-overc
meta-cube            = "master:af81bc7ec63e96aa7816b523b75ad9f29f9dfcf0"
meta-selinux         = "master:6e1100d29aec118df2025c46c77f4c8aa8da4e76"
meta-security        = "master:e8c9e69c80ea2c525250e07db1024d8e34f1f0f8"
meta-virtualization  = "master:7a8167fa82621dd606260450b1e648e50a1d79ab"
meta-cloud-services  = "master:4f6cd1d6664ca1a51bdc742291fe4bf83ecf2a92"
meta-intel           = "master:0e4b3cb01735bdc5ebf50c547927f1f59b0248d2"


>
> On Wed, Oct 21, 2020 at 10:30 AM Yocto <yocto@optimcloud.com 
> <mailto:yocto@optimcloud.com>> wrote:
>
>
>     On 10/20/20 8:06 PM, NIKHIL PATIL wrote:
>>     I changed in local.conf (ostree related stuffs ), and put it for
>>     compilation , that time i got these error
>>
>>     On Tue, Oct 20, 2020 at 6:49 AM Randy MacLeod
>>     <randy.macleod@windriver.com
>>     <mailto:randy.macleod@windriver.com>> wrote:
>>
>>         On 2020-10-18 6:41 a.m., NIKHIL PATIL wrote:
>>         > Hi team ,
>>         >        I am getting continuously dnf error, How we can
>>         resolve these .
>>
>>         Hi Nikhil,
>>
>>         What exact steps did you take before getting this error and
>>         what build host are you using?
>>
>>         Are you able to build core-image-minimal using oe-core/master
>>         and the default local.conf for qemux86-64?
>>
>>         ../Randy
>>
>     I can confirm that Ive also seen this trying to build in the Yocto
>     build appliance I downloaded yesterday....
>
>
>
>>         >
>>         > core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf.
>>         Command
>>         >
>>         '/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf
>>
>>         > -y -c
>>         >
>>         /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf
>>
>>         >
>>         --setopt=reposdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos.d
>>
>>         >
>>         --repofrompath=oe-repo,/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
>>
>>         >
>>         --installroot=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs
>>
>>         >
>>         --setopt=logdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp
>>
>>         > -x packagegroup-core-apl-extra --nogpgcheck install
>>         autoconf-archive dnf
>>         > gstreamer1.0-vaapi iqvlinux jhi kernel-modules libtcti-device0
>>         > libtcti-device-dev libtcti-device-staticdev libtcti-socket0
>>         > libtcti-socket-dev libtcti-socket-staticdev libsapi0
>>         libsapi-dev
>>         > libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs
>>         > packagegroup-base-extended packagegroup-core-audio-essential
>>         > packagegroup-core-boot
>>         packagegroup-core-buildessential-extended
>>         > packagegroup-core-graphics-essential
>>         packagegroup-core-ssh-dropbear
>>         > packagegroup-core-tools-testapps packagegroup-core-x11-base
>>         > packagegroup-core-x11-sato psplash rpm run-postinsts swig
>>         tpm2-abrmd
>>         > usb-modeswitch usb-modeswitch-data va-intel wayland weston
>>         > weston-examples xinit-env xserver-xorg locale-base-en-us
>>         > locale-base-en-gb' returned 1:
>>         > Added oe-repo repo from
>>         >
>>         /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
>>         >
>>         >
>>         >
>>         >
>>         >
>>
>>
>>         -- 
>>         # Randy MacLeod
>>         # Wind River Linux
>>
>>
>
>
>
>
> 
>

--------------ED08DA8626DE2FDBF4B32193
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10/21/20 5:38 PM, NIKHIL PATIL
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJw=dJ-AmoJNsG2xwHdbfu3=tQV7TM8thUUeDAa61SEB3XHnKg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Hi team ,
        <div>    I am assuming in local.conf we used  DISTRO ?=  "poky" 
          and DISTRO = "poky-sota-systemd"   both   thats why we are
          getting these error or what ?</div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>mmm nope...</p>
    <p>Build Configuration:<br>
      BB_VERSION           = "1.48.0"<br>
      BUILD_SYS            = "x86_64-linux"<br>
      NATIVELSBSTRING      = "debian-10"<br>
      TARGET_SYS           = "x86_64-overc-linux"<br>
      MACHINE              = "intel-corei7-64"<br>
      DISTRO               = "overc"<br>
      DISTRO_VERSION       = "1.0"<br>
      TUNE_FEATURES        = "m64 corei7"<br>
      TARGET_FPU           = ""<br>
      meta                 <br>
      meta-poky            <br>
      meta-yocto-bsp       =
      "master:4e4a302e37ac06543e9983773cdb4caf7728330d"<br>
      meta-oe              <br>
      meta-python          <br>
      meta-networking      <br>
      meta-filesystems     <br>
      meta-gnome           <br>
      meta-multimedia      <br>
      meta-xfce            <br>
      meta-perl            =
      "master:de8198b93f8e524ab2f64fd138185824a79b18e6"<br>
      meta-overc           <br>
      meta-cube            =
      "master:af81bc7ec63e96aa7816b523b75ad9f29f9dfcf0"<br>
      meta-selinux         =
      "master:6e1100d29aec118df2025c46c77f4c8aa8da4e76"<br>
      meta-security        =
      "master:e8c9e69c80ea2c525250e07db1024d8e34f1f0f8"<br>
      meta-virtualization  =
      "master:7a8167fa82621dd606260450b1e648e50a1d79ab"<br>
      meta-cloud-services  =
      "master:4f6cd1d6664ca1a51bdc742291fe4bf83ecf2a92"<br>
      meta-intel           =
      "master:0e4b3cb01735bdc5ebf50c547927f1f59b0248d2"<br>
      <br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:CAJw=dJ-AmoJNsG2xwHdbfu3=tQV7TM8thUUeDAa61SEB3XHnKg@mail.gmail.com"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Oct 21, 2020 at 10:30
          AM Yocto &lt;<a href="mailto:yocto@optimcloud.com"
            moz-do-not-send="true">yocto@optimcloud.com</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p><br>
            </p>
            <div>On 10/20/20 8:06 PM, NIKHIL PATIL wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">I changed in local.conf (ostree related
                stuffs ), and put it for compilation , that time i got
                these error </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Tue, Oct 20, 2020
                  at 6:49 AM Randy MacLeod &lt;<a
                    href="mailto:randy.macleod@windriver.com"
                    target="_blank" moz-do-not-send="true">randy.macleod@windriver.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">On 2020-10-18 6:41
                  a.m., NIKHIL PATIL wrote:<br>
                  &gt; Hi team ,<br>
                  &gt;        I am getting continuously dnf error, How
                  we can resolve these .<br>
                  <br>
                  Hi Nikhil,<br>
                  <br>
                  What exact steps did you take before getting this
                  error and<br>
                  what build host are you using?<br>
                  <br>
                  Are you able to build core-image-minimal using
                  oe-core/master<br>
                  and the default local.conf for qemux86-64?<br>
                  <br>
                  ../Randy<br>
                  <br>
                </blockquote>
              </div>
            </blockquote>
            <p>I can confirm that Ive also seen this trying to build in
              the Yocto build appliance I downloaded yesterday....<br>
            </p>
            <p><br>
            </p>
            <p><br>
            </p>
            <blockquote type="cite">
              <div class="gmail_quote">
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex"> &gt; <br>
                  &gt; core-image-sato-1.0-r0 do_rootfs: Could not
                  invoke dnf. Command <br>
                  &gt;
'/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf
                  <br>
                  &gt; -y -c <br>
                  &gt;
/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf
                  <br>
                  &gt;
--setopt=reposdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos.d
                  <br>
                  &gt;
--repofrompath=oe-repo,/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
                  <br>
                  &gt;
--installroot=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs
                  <br>
                  &gt;
--setopt=logdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp
                  <br>
                  &gt; -x packagegroup-core-apl-extra --nogpgcheck
                  install autoconf-archive dnf <br>
                  &gt; gstreamer1.0-vaapi iqvlinux jhi kernel-modules
                  libtcti-device0 <br>
                  &gt; libtcti-device-dev libtcti-device-staticdev
                  libtcti-socket0 <br>
                  &gt; libtcti-socket-dev libtcti-socket-staticdev
                  libsapi0 libsapi-dev <br>
                  &gt; libsapi-staticdev libva mesa-glxinfo libmraa1
                  nodejs <br>
                  &gt; packagegroup-base-extended
                  packagegroup-core-audio-essential <br>
                  &gt; packagegroup-core-boot
                  packagegroup-core-buildessential-extended <br>
                  &gt; packagegroup-core-graphics-essential
                  packagegroup-core-ssh-dropbear <br>
                  &gt; packagegroup-core-tools-testapps
                  packagegroup-core-x11-base <br>
                  &gt; packagegroup-core-x11-sato psplash rpm
                  run-postinsts swig tpm2-abrmd <br>
                  &gt; usb-modeswitch usb-modeswitch-data va-intel
                  wayland weston <br>
                  &gt; weston-examples xinit-env xserver-xorg
                  locale-base-en-us <br>
                  &gt; locale-base-en-gb' returned 1:<br>
                  &gt; Added oe-repo repo from <br>
                  &gt;
/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo<br>
                  &gt; <br>
                  &gt; <br>
                  &gt; <br>
                  &gt; <br>
                  &gt; <br>
                  <br>
                  <br>
                  -- <br>
                  # Randy MacLeod<br>
                  # Wind River Linux<br>
                </blockquote>
              </div>
              <br>
              <fieldset></fieldset>
            </blockquote>
          </div>
          <br>
          <br>
          <br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------ED08DA8626DE2FDBF4B32193--
