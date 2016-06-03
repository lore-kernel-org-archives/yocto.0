Return-Path: <dan@emutex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83AE8E00DD0; Fri,  3 Jun 2016 07:16:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bert.emutex.com (bert.emutex.com [91.103.1.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FA50E00DBD
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 07:16:01 -0700 (PDT)
Received: from [92.51.199.138] (helo=statler.emutex.com)
	by bert.emutex.com with esmtp (Exim 4.84)
	(envelope-from <dan@emutex.com>)
	id 1b8ptG-0003ZR-PJ; Fri, 03 Jun 2016 15:15:58 +0100
Received: from [10.10.68.110] by statler.emutex.com with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84)
	(envelope-from <dan@emutex.com>)
	id 1b8ptH-0002kO-OT; Fri, 03 Jun 2016 15:16:00 +0100
To: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
References: <5751489D.8000403@emutex.com>
	<CAEeWub+31SEF90HY9JC-+7PtGxHZjjz+S1Sm9mS99dDxUFCKCQ@mail.gmail.com>
From: Dan O'Donovan <dan@emutex.com>
Message-ID: <5751911F.8010107@emutex.com>
Date: Fri, 3 Jun 2016 15:15:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAEeWub+31SEF90HY9JC-+7PtGxHZjjz+S1Sm9mS99dDxUFCKCQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: rootfs mounted read-only on Live USB (x86-64)
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
X-List-Received-Date: Fri, 03 Jun 2016 14:16:05 -0000
Content-Type: multipart/alternative;
	boundary="------------010004060104030806090207"

--------------010004060104030806090207
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 06/03/2016 10:54 AM, Oleksandr Poznyak wrote:
> Hi,
Hi Oleksandr
> Check if "read-only-rootfs" feature is added to any of these variables either in your local.conf or your image bitbake recipe:
>
> Something like that:
>
> IMAGE_FEATURES = "read-only-rootfs"
>
> EXTRA_IMAGE_FEATURES += "read-only-rootfs"
Thanks for your suggestion.  I didn't find "read-only-rootfs" specified in the IMAGE_FEATURES in local.conf or elsewhere.  I suspect it might be a different issue because it only affects the live-boot of the .iso image.  If I install the .hddimage directly to the storage device instead, then it boots fine and the rootfs is read/write.

[update]
It looks like the problem was indeed the lack of aufs.
I added this in conf/local.conf
    DISTRO_FEATURES_append = " aufs"
and this in the kernel recipe
    KERNEL_FEATURES_append += "${@bb.utils.contains('DISTRO_FEATURES', 'aufs', ' features/aufs/aufs-enable.scc', '', d)}"
and now the live USB image boots correctly with a read-write filesystem.

Considering that the default images built for a generic x86-64 machine include a live-boot image (.iso) which is effectively broken, I assume the aufs feature (or another solution for the live-boot use case) should really be added by default for those builds as well.
>
> Thanks,
> Oleksandr Poznyak!
>
> On Fri, Jun 3, 2016 at 12:06 PM, Dan O'Donovan <dan@emutex.com <mailto:dan@emutex.com>> wrote:
>
>     Hi all
>
>     Has anyone else noticed that the root file-system appears to be mounted read-only when booting a Live USB image from Yocto 2.1.
>
>     This is on a sato build from the krogoth branch of poky and meta-intel, for a generic x86-64 machine (4.4 kernel).
>
>     I'm transferring the resulting .iso image to a usb stick using 'dd', and then picking the 'boot' option at startup.
>
>     As well as a bunch of errors about the read-only filesystem (e.g. failing to create files in /var and other locations), the desktop UI fails to load.
>
>     This worked fine with Yocto 2.0.
>
>     I have a hunch that it might be caused by a lack of aufs support.  Is it possible that aufs patches were omitted from the x86 kernels in Yocto 2.1?
>
>     Thanks,
>     -Dan
>
>     P.S. It works fine if I just install it directly, or if I use the .hddimg, instead of trying to boot the live image from the .iso.
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>


--------------010004060104030806090207
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    On 06/03/2016 10:54 AM, Oleksandr Poznyak wrote:<br>
    <blockquote
cite="mid:CAEeWub+31SEF90HY9JC-+7PtGxHZjjz+S1Sm9mS99dDxUFCKCQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>Hi,<br>
          </div>
        </div>
      </div>
    </blockquote>
    Hi Oleksandr<br>
    <blockquote
cite="mid:CAEeWub+31SEF90HY9JC-+7PtGxHZjjz+S1Sm9mS99dDxUFCKCQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>Check if "read-only-rootfs" feature is added to any of
            these variables either in your local.conf or your image
            bitbake recipe:<br>
            <br>
            Something like that:<br>
            <br>
            IMAGE_FEATURES = "read-only-rootfs"<br>
            <br>
            EXTRA_IMAGE_FEATURES += "read-only-rootfs"<br>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks for your suggestion.  I didn't find "read-only-rootfs"
    specified in the IMAGE_FEATURES in local.conf or elsewhere.  I
    suspect it might be a different issue because it only affects the
    live-boot of the .iso image.  If I install the .hddimage directly to
    the storage device instead, then it boots fine and the rootfs is
    read/write.<br>
    <br>
    [update]<br>
    It looks like the problem was indeed the lack of aufs.<br>
    I added this in conf/local.conf<br>
        DISTRO_FEATURES_append = " aufs"<br>
    and this in the kernel recipe<br>
        KERNEL_FEATURES_append +=
    <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('DISTRO_FEATURES','aufs','features/aufs/aufs-enable.scc','',d)}">"${@bb.utils.contains('DISTRO_FEATURES', 'aufs', '
    features/aufs/aufs-enable.scc', '', d)}"</a><br>
    and now the live USB image boots correctly with a read-write
    filesystem.<br>
    <br>
    Considering that the default images built for a generic x86-64
    machine include a live-boot image (.iso) which is effectively
    broken, I assume the aufs feature (or another solution for the
    live-boot use case) should really be added by default for those
    builds as well.<br>
    <blockquote
cite="mid:CAEeWub+31SEF90HY9JC-+7PtGxHZjjz+S1Sm9mS99dDxUFCKCQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div><br>
          </div>
          Thanks,<br>
        </div>
        Oleksandr Poznyak!<br>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Fri, Jun 3, 2016 at 12:06 PM, Dan
          O'Donovan <span dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:dan@emutex.com" target="_blank">dan@emutex.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi all<br>
            <br>
            Has anyone else noticed that the root file-system appears to
            be mounted read-only when booting a Live USB image from
            Yocto 2.1.<br>
            <br>
            This is on a sato build from the krogoth branch of poky and
            meta-intel, for a generic x86-64 machine (4.4 kernel).<br>
            <br>
            I'm transferring the resulting .iso image to a usb stick
            using 'dd', and then picking the 'boot' option at startup.<br>
            <br>
            As well as a bunch of errors about the read-only filesystem
            (e.g. failing to create files in /var and other locations),
            the desktop UI fails to load.<br>
            <br>
            This worked fine with Yocto 2.0.<br>
            <br>
            I have a hunch that it might be caused by a lack of aufs
            support.  Is it possible that aufs patches were omitted from
            the x86 kernels in Yocto 2.1?<br>
            <br>
            Thanks,<br>
            -Dan<br>
            <br>
            P.S. It works fine if I just install it directly, or if I
            use the .hddimg, instead of trying to boot the live image
            from the .iso.<br>
            <span class="HOEnZb"><font color="#888888">--<br>
                _______________________________________________<br>
                yocto mailing list<br>
                <a moz-do-not-send="true"
                  href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <a moz-do-not-send="true"
                  href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010004060104030806090207--
