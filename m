Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web09.7080.1603256434309942417
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 22:00:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=WnWgbJtm;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id da2bad0e
	for <yocto@lists.yoctoproject.org>;
	Wed, 21 Oct 2020 07:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type; s=obsd; bh=0EhSzMVX1Pht7u9nBuyaxb2sWF
	aKKlRAB5OAno1AX0c=; b=WnWgbJtm98aKb7ewGTx35cqEZuXfcO8cCRntdRvknD
	TfV5Kqc/Rb2PNcpozxNfrKrZ1CEpGg1657BZI9AHCzSVGoyLpOtVIWkGhqIod/JF
	qZu/4+U0LForisNi3AGtO6q7G3YfJe5utgJZz8JFCNoYh5JBANkPWP0Prs4UoFZJ
	ouUQeRK257Qgj1PdBM7XOgsiE5eKRRXS2VoA5lSNGeLFjrqalbcBFoJXm8MYHFfd
	fFQ2KZiyrj8oN30xXQKTnXz/RnlANs0xU8Es/eYsWEgWZdSpT/el48CDqz1Vd/UZ
	7ZfikEUcFXB6pGeUmQJyBeXU2px0vz8rWLuqoUbITGzw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type; q=dns; s=obsd; b=ox4R36DBIP7A1CGtMJS35hdvFy50Mt2M
	K4UZT4nzaCryCrjcIzVZRYGM1fXO7dscg2NUAoIwESVAEzuBto/KaDHHyk2zAW6h
	HJe/UlOQeBLRVDl4F8tX9Jrn2IX2ZVyLjIJmqahCND98LFo/Bolf8Iek1EerxmOb
	OAbRGWgQA9WSN9UduGEk3sCTYnm7awduQGdwCvByxO4qwj921rbU5qQS/iRjvzEI
	MFb8RXFb1FFfPRePOywSkonasmditc6GNI4P+AbUfecF8xKDZeV7wJUBaieCrTMA
	QBXVIfaPWvvFmvQsDDaeME756irUTcDbUqrkhPXM5/33Q+VzzIiLlQ==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id 2182b0af (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Wed, 21 Oct 2020 07:00:29 +0200 (CEST)
Subject: Re: [yocto] dnf error coming while compiling core-image-sato image.
To: yocto@lists.yoctoproject.org
References: <CAJw=dJ8rCUx1SOe4ai-cVs3BPaS8MePVw+Uh967ZOeaDoWXm5g@mail.gmail.com>
 <b1644126-1fe8-764b-6ff9-51e25bde59ec@windriver.com>
 <CAJw=dJ_QWnF3bnKCWEuW8PrX32c2nXOdbnA1rBD=Ah55QvpjEg@mail.gmail.com>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <2946109b-fe92-243c-87fb-296c406c1569@optimcloud.com>
Date: Wed, 21 Oct 2020 12:00:23 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <CAJw=dJ_QWnF3bnKCWEuW8PrX32c2nXOdbnA1rBD=Ah55QvpjEg@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------0778F80674DAE4EFCA0708CC"
Content-Language: en-US

--------------0778F80674DAE4EFCA0708CC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 10/20/20 8:06 PM, NIKHIL PATIL wrote:
> I changed in local.conf (ostree related stuffs ), and put it for 
> compilation , that time i got these error
>
> On Tue, Oct 20, 2020 at 6:49 AM Randy MacLeod 
> <randy.macleod@windriver.com <mailto:randy.macleod@windriver.com>> wrote:
>
>     On 2020-10-18 6:41 a.m., NIKHIL PATIL wrote:
>     > Hi team ,
>     >        I am getting continuously dnf error, How we can
>     resolve these .
>
>     Hi Nikhil,
>
>     What exact steps did you take before getting this error and
>     what build host are you using?
>
>     Are you able to build core-image-minimal using oe-core/master
>     and the default local.conf for qemux86-64?
>
>     ../Randy
>
I can confirm that Ive also seen this trying to build in the Yocto build 
appliance I downloaded yesterday....



>     >
>     > core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf. Command
>     >
>     '/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf
>
>     > -y -c
>     >
>     /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf
>
>     >
>     --setopt=reposdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos.d
>
>     >
>     --repofrompath=oe-repo,/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
>
>     >
>     --installroot=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs
>
>     >
>     --setopt=logdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp
>
>     > -x packagegroup-core-apl-extra --nogpgcheck install
>     autoconf-archive dnf
>     > gstreamer1.0-vaapi iqvlinux jhi kernel-modules libtcti-device0
>     > libtcti-device-dev libtcti-device-staticdev libtcti-socket0
>     > libtcti-socket-dev libtcti-socket-staticdev libsapi0 libsapi-dev
>     > libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs
>     > packagegroup-base-extended packagegroup-core-audio-essential
>     > packagegroup-core-boot packagegroup-core-buildessential-extended
>     > packagegroup-core-graphics-essential packagegroup-core-ssh-dropbear
>     > packagegroup-core-tools-testapps packagegroup-core-x11-base
>     > packagegroup-core-x11-sato psplash rpm run-postinsts swig
>     tpm2-abrmd
>     > usb-modeswitch usb-modeswitch-data va-intel wayland weston
>     > weston-examples xinit-env xserver-xorg locale-base-en-us
>     > locale-base-en-gb' returned 1:
>     > Added oe-repo repo from
>     >
>     /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
>     >
>     >
>     >
>     >
>     >
>
>
>     -- 
>     # Randy MacLeod
>     # Wind River Linux
>
>
> 
>

--------------0778F80674DAE4EFCA0708CC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10/20/20 8:06 PM, NIKHIL PATIL
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJw=dJ_QWnF3bnKCWEuW8PrX32c2nXOdbnA1rBD=Ah55QvpjEg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">I changed in local.conf (ostree related stuffs ),
        and put it for compilation , that time i got these error </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Oct 20, 2020 at 6:49
          AM Randy MacLeod &lt;<a
            href="mailto:randy.macleod@windriver.com"
            moz-do-not-send="true">randy.macleod@windriver.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          2020-10-18 6:41 a.m., NIKHIL PATIL wrote:<br>
          &gt; Hi team ,<br>
          &gt;        I am getting continuously dnf error, How we can
          resolve these .<br>
          <br>
          Hi Nikhil,<br>
          <br>
          What exact steps did you take before getting this error and<br>
          what build host are you using?<br>
          <br>
          Are you able to build core-image-minimal using oe-core/master<br>
          and the default local.conf for qemux86-64?<br>
          <br>
          ../Randy<br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <p>I can confirm that Ive also seen this trying to build in the
      Yocto build appliance I downloaded yesterday....<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:CAJw=dJ_QWnF3bnKCWEuW8PrX32c2nXOdbnA1rBD=Ah55QvpjEg@mail.gmail.com">
      <div class="gmail_quote">
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          &gt; <br>
          &gt; core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf.
          Command <br>
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
          &gt; -x packagegroup-core-apl-extra --nogpgcheck install
          autoconf-archive dnf <br>
          &gt; gstreamer1.0-vaapi iqvlinux jhi kernel-modules
          libtcti-device0 <br>
          &gt; libtcti-device-dev libtcti-device-staticdev
          libtcti-socket0 <br>
          &gt; libtcti-socket-dev libtcti-socket-staticdev libsapi0
          libsapi-dev <br>
          &gt; libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs <br>
          &gt; packagegroup-base-extended
          packagegroup-core-audio-essential <br>
          &gt; packagegroup-core-boot
          packagegroup-core-buildessential-extended <br>
          &gt; packagegroup-core-graphics-essential
          packagegroup-core-ssh-dropbear <br>
          &gt; packagegroup-core-tools-testapps
          packagegroup-core-x11-base <br>
          &gt; packagegroup-core-x11-sato psplash rpm run-postinsts swig
          tpm2-abrmd <br>
          &gt; usb-modeswitch usb-modeswitch-data va-intel wayland
          weston <br>
          &gt; weston-examples xinit-env xserver-xorg locale-base-en-us
          <br>
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
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------0778F80674DAE4EFCA0708CC--
