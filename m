Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85756E0123C
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 05:40:46 -0800 (PST)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 509E623F74
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 13:08:18 +0000 (GMT)
Message-ID: <4F0C3FAC.5040104@communistcode.co.uk>
Date: Tue, 10 Jan 2012 13:39:56 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4F0C1C26.6030301@communistcode.co.uk>
	<20120110111628.GC3445@jama.jama.net>
	<4F0C1F46.20003@communistcode.co.uk>
	<4F0C3B05.7070908@communistcode.co.uk>
	<CANFv2EnoaW5iptTVo5Trg7d6Rr8y4Jbutaq6gEaw+J59PmBUVg@mail.gmail.com>
In-Reply-To: <CANFv2EnoaW5iptTVo5Trg7d6Rr8y4Jbutaq6gEaw+J59PmBUVg@mail.gmail.com>
Subject: Re: Trouble creating new package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jan 2012 13:40:47 -0000
Content-Type: multipart/alternative;
	boundary="------------000908010200070507090403"

--------------000908010200070507090403
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/01/12 13:38, James Abernathy wrote:
>
> On Tue, Jan 10, 2012 at 8:20 AM, Jack Mitchell <ml@communistcode.co.uk 
> <mailto:ml@communistcode.co.uk>> wrote:
>
>     On 10/01/12 11:21, Jack Mitchell wrote:
>
>         On 10/01/12 11:16, Martin Jansa wrote:
>
>             On Tue, Jan 10, 2012 at 11:08:22AM +0000, Jack Mitchell wrote:
>
>                 Good morning everyone,
>
>                 I am currently having issues creating a (very!) simple
>                 package. I have
>                 looked at the latest reference manual and studied
>                 other .bb files to no
>                 avail.
>
>                 I am trying to build a simple web server called
>                 Hiawatha. To install
>                 (http://www.hiawatha-webserver.org/howto/compilation_and_installation)
>                 it consists of a simple:
>
>                 ./configure
>
>                 make
>
>                 make install
>
>                 Now, for the life in me I cannot replicate this
>                 behaviour in a .bb file.
>                 This is what I have so far:
>
>                 DESCRIPTION = "Lightweight secure web server"
>                 HOMEPAGE = "http://www.hiawatha-webserver.org
>                 <http://www.hiawatha-webserver.org/>"
>
>                 LICENSE = "GPLv2"
>                 LIC_FILES_CHKSUM =
>                 "file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"
>
>                 SECTION = "custom"
>
>                 PR = "r0"
>
>                 SRC_URI =
>                 "http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz"
>
>                 SRC_URI[md5sum] = " 8aff3f8c759871ea1d1ff22e98030332"
>
>                 do_configure () {
>
>                    ./configure --disable-ipv6 \
>                               --disable-ssl \
>                               --disable-toolkit \
>                               --disable-xslt \
>                               --disable-largefile \
>
>                    oe_runmake
>
>                 }
>
>                 do_install () {
>
>                    oe_runmake install DESTDIR=${D} SBINDIR=${sbindir}
>                 MANDIR=${mandir} \
>                      INCLUDEDIR=${includedir}
>
>                 }
>
>                 Could someone point me in the right direction, I feel
>                 this should be an
>                 extremely easy piece of software to build - I think
>                 I'm just not
>                 understanding the build system correctly....
>
>                 The error I receive when trying to build this package is:
>
>                 ERROR: Function 'do_install' failed (see
>                 /home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/temp/log.do_install.6289
>
>                 for further information)
>                 | NOTE: make -j 9 -e MAKEFLAGS= -e install
>                 DESTDIR=/home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/image
>
>                 SBINDIR=/usr/sbin MANDIR=/usr/share/man
>                 INCLUDEDIR=/usr/include
>                 | make: *** No rule to make target `install'.  Stop.
>                 | ERROR: oe_runmake failed
>
>             try to start with
>             inherit autotools
>
>             Cheers,,
>
>                 Thanks in advance,
>                 Jack.
>
>                 _______________________________________________
>                 yocto mailing list
>                 yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>                 https://lists.yoctoproject.org/listinfo/yocto
>
>
>         Hi Martin,
>
>         Inheriting autotools makes no difference, I also don't
>         understand why autotools should be inherited if it is only a
>         make/configure combination being used?
>
>         Best Regards
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.org/listinfo/yocto
>
>
>     Ok, I have managed to get a bit further on this. I didn't realise
>     that I had to do
>
>     bitbake -c clean hiawatha
>
>     Everytime I had changed the package to ensure that it was building
>     with the new configuration. My new .bb looks like this:
>
>
>     DESCRIPTION = "Lightweight secure web server"
>     HOMEPAGE = "http://www.hiawatha-webserver.org
>     <http://www.hiawatha-webserver.org/>"
>     LICENSE = "GPLv2"
>     LIC_FILES_CHKSUM =
>     "file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"
>     DEPENDS = "openssl libxml2 libxslt"
>
>     SECTION = "custom"
>
>     PR = "r0"
>
>     SRC_URI =
>     "http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz"
>     SRC_URI[md5sum] = "8aff3f8c759871ea1d1ff22e98030332"
>
>     inherit autotools
>
>     EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include
>     -DWITHOUT_XATTR' \
>                         'BUILDDIR=${S}'"
>
>     EXTRA_OECONF = " --disable-ipv6 \
>                 --disable-ssl \
>                 --disable-toolkit \
>                 --disable-xslt \
>                 --disable-largefile \
>                 --mandir=${mandir}"
>
>     do_configure() {
>
>      oe_runconf
>
>     }
>
>     do_compile() {
>
>      oe_runmake
>
>     }
>
>     do_install() {
>
>      oe_runmake install DESTDIR=${D} SBINDIR=${sbindir}
>     INCLUDEDIR=${includedir}
>
>
>     Now, this is building and installing however the Hiawatha binary
>     doesn't get included in the build. The configuration files make it
>     in so I know it's running the make install phase however I don't
>     know how to find out what is going on during the build and why the
>     binary isn't making it in the rootfs.
>
> Maybe you need an IMAGE_INSTALL += "hiawatha" in you local.conf????

I already have this in my custom image .bb file. As noted above it seems 
to install everything apart from the binary so all the config files go 
in, just not the especially important bit!

Thank you for you help though!

Regards,

> Jim A
>
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>


--------------000908010200070507090403
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <tt>On 10/01/12 13:38, James Abernathy wrote:</tt>
    <blockquote
cite="mid:CANFv2EnoaW5iptTVo5Trg7d6Rr8y4Jbutaq6gEaw+J59PmBUVg@mail.gmail.com"
      type="cite"><tt><br>
      </tt>
      <div class="gmail_quote"><tt>On Tue, Jan 10, 2012 at 8:20 AM, Jack
          Mitchell <span dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:ml@communistcode.co.uk">ml@communistcode.co.uk</a>&gt;</span>
          wrote:<br>
        </tt>
        <blockquote style="BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px
          0.8ex;PADDING-LEFT:1ex" class="gmail_quote">
          <div class="HOEnZb">
            <div class="h5"><tt>On 10/01/12 11:21, Jack Mitchell wrote:<br>
              </tt>
              <blockquote style="BORDER-LEFT:#ccc 1px solid;MARGIN:0px
                0px 0px 0.8ex;PADDING-LEFT:1ex" class="gmail_quote"><tt>On
                  10/01/12 11:16, Martin Jansa wrote:<br>
                </tt>
                <blockquote style="BORDER-LEFT:#ccc 1px solid;MARGIN:0px
                  0px 0px 0.8ex;PADDING-LEFT:1ex" class="gmail_quote"><tt>On
                    Tue, Jan 10, 2012 at 11:08:22AM +0000, Jack Mitchell
                    wrote:<br>
                  </tt>
                  <blockquote style="BORDER-LEFT:#ccc 1px
                    solid;MARGIN:0px 0px 0px 0.8ex;PADDING-LEFT:1ex"
                    class="gmail_quote"><tt>Good morning everyone,<br>
                      <br>
                      I am currently having issues creating a (very!)
                      simple package. I have<br>
                      looked at the latest reference manual and studied
                      other .bb files to no<br>
                      avail.<br>
                      <br>
                      I am trying to build a simple web server called
                      Hiawatha. To install<br>
                      (<a moz-do-not-send="true"
href="http://www.hiawatha-webserver.org/howto/compilation_and_installation"
                        target="_blank">http://www.hiawatha-webserver.org/howto/compilation_and_installation</a>)<br>
                      it consists of a simple:<br>
                      <br>
                      ./configure<br>
                      <br>
                      make<br>
                      <br>
                      make install<br>
                      <br>
                      Now, for the life in me I cannot replicate this
                      behaviour in a .bb file.<br>
                      This is what I have so far:<br>
                      <br>
                      DESCRIPTION = "Lightweight secure web server"<br>
                      HOMEPAGE = "<a moz-do-not-send="true"
                        href="http://www.hiawatha-webserver.org/"
                        target="_blank">http://www.hiawatha-webserver.org</a>"<br>
                      <br>
                      LICENSE = "GPLv2"<br>
                      LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a">"file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"</a><br>
                      <br>
                      SECTION = "custom"</tt>
                    <tt><br>
                      <br>
                      PR = "r0"<br>
                      <br>
                      SRC_URI = "<a moz-do-not-send="true"
                        href="http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz"
                        target="_blank">http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz</a>"<br>
                      <br>
                      SRC_URI[md5sum] = "</tt>
                    <tt>8aff3f8c759871ea1d1ff22e98030332"<br>
                      <br>
                      do_configure () {<br>
                      <br>
                      &nbsp; &nbsp;./configure --disable-ipv6 \<br>
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-ssl \<br>
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-toolkit \<br>
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-xslt \<br>
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-largefile \<br>
                      <br>
                      &nbsp; &nbsp;oe_runmake<br>
                      <br>
                      }<br>
                      <br>
                      do_install () {<br>
                      <br>
                      &nbsp; &nbsp;oe_runmake install DESTDIR=${D}
                      SBINDIR=${sbindir} MANDIR=${mandir} \<br>
                      &nbsp; &nbsp; &nbsp;INCLUDEDIR=${includedir}<br>
                      <br>
                      }<br>
                      <br>
                      Could someone point me in the right direction, I
                      feel this should be an<br>
                      extremely easy piece of software to build - I
                      think I'm just not<br>
                      understanding the build system correctly....<br>
                      <br>
                      The error I receive when trying to build this
                      package is:<br>
                      <br>
                      ERROR: Function 'do_install' failed (see<br>
                      /home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/temp/log.do_install.6289
                      <br>
                      for further information)<br>
                      | NOTE: make -j 9 -e MAKEFLAGS= -e install<br>
                      DESTDIR=/home/jack/yocto/poky-git/beagleInitial/tmp/work/armv5te-poky-linux-gnueabi/hiawatha-7.8.2-r0/image
                      <br>
                      SBINDIR=/usr/sbin MANDIR=/usr/share/man
                      INCLUDEDIR=/usr/include<br>
                      | make: *** No rule to make target `install'.
                      &nbsp;Stop.<br>
                      | ERROR: oe_runmake failed<br>
                    </tt></blockquote>
                  <tt>try to start with<br>
                    inherit autotools<br>
                    <br>
                    Cheers,,<br>
                    <br>
                  </tt>
                  <blockquote style="BORDER-LEFT:#ccc 1px
                    solid;MARGIN:0px 0px 0px 0.8ex;PADDING-LEFT:1ex"
                    class="gmail_quote"><tt>Thanks in advance,<br>
                      Jack.<br>
                      <br>
                      _______________________________________________<br>
                      yocto mailing list<br>
                      <a moz-do-not-send="true"
                        href="mailto:yocto@yoctoproject.org"
                        target="_blank">yocto@yoctoproject.org</a></tt>
                    <tt><br>
                      <a moz-do-not-send="true"
                        href="https://lists.yoctoproject.org/listinfo/yocto"
                        target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
                    </tt></blockquote>
                </blockquote>
                <tt><br>
                  Hi Martin,<br>
                  <br>
                  Inheriting autotools makes no difference, I also don't
                  understand why autotools should be inherited if it is
                  only a make/configure combination being used?<br>
                  <br>
                  Best Regards<br>
                  _______________________________________________<br>
                  yocto mailing list<br>
                  <a moz-do-not-send="true"
                    href="mailto:yocto@yoctoproject.org" target="_blank">yocto@yoctoproject.org</a><br>
                  <a moz-do-not-send="true"
                    href="https://lists.yoctoproject.org/listinfo/yocto"
                    target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
                </tt>
              </blockquote>
              <tt><br>
              </tt></div>
          </div>
          <tt>Ok, I have managed to get a bit further on this. I didn't
            realise that I had to do<br>
            <br>
            bitbake -c clean hiawatha<br>
            <br>
            Everytime I had changed the package to ensure that it was
            building with the new configuration. My new .bb looks like
            this: </tt>
          <div class="im"><tt><br>
              <br>
              DESCRIPTION = "Lightweight secure web server"<br>
              HOMEPAGE = "<a moz-do-not-send="true"
                href="http://www.hiawatha-webserver.org/"
                target="_blank">http://www.hiawatha-webserver.org</a>"<br>
              LICENSE = "GPLv2"<br>
              LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a">"file://COPYING;md5=a9b0a0eb7c54c87ec6ac05f5f603df6a"</a><br>
            </tt></div>
          <tt>DEPENDS = "openssl libxml2 libxslt" </tt>
          <div class="im"><tt><br>
              SECTION = "custom"<br>
              <br>
              PR = "r0"<br>
              <br>
              SRC_URI = "<a moz-do-not-send="true"
                href="http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz"
                target="_blank">http://www.hiawatha-webserver.org/files/hiawatha-7.8.2.tar.gz</a>"<br>
              SRC_URI[md5sum] = "8aff3f8c759871ea1d1ff22e98030332"<br>
              <br>
            </tt></div>
          <tt>inherit autotools<br>
            <br>
            EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include
            -DWITHOUT_XATTR' \<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 'BUILDDIR=${S}'"<br>
            <br>
            EXTRA_OECONF = " --disable-ipv6 \</tt>
          <tt><br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-ssl \<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-toolkit \<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-xslt \<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-largefile \<br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --mandir=${mandir}"<br>
            <br>
            do_configure() {</tt>
          <tt><br>
            <br>
            &nbsp;oe_runconf<br>
            <br>
            }<br>
            <br>
            do_compile() {<br>
            <br>
            &nbsp;oe_runmake<br>
            <br>
            }<br>
            <br>
            do_install() {<br>
            <br>
            &nbsp;oe_runmake install DESTDIR=${D} SBINDIR=${sbindir}
            INCLUDEDIR=${includedir}<br>
            <br>
            <br>
            Now, this is building and installing however the Hiawatha
            binary doesn't get included in the build. The configuration
            files make it in so I know it's running the make install
            phase however I don't know how to find out what is going on
            during the build and why the binary isn't making it in the
            rootfs. </tt>
          <div class="HOEnZb">
            <div class="h5"><tt><br>
              </tt></div>
          </div>
        </blockquote>
        <div><tt>&nbsp;</tt></div>
        <div><tt>Maybe you need an IMAGE_INSTALL += "hiawatha" in you
            local.conf????</tt></div>
      </div>
    </blockquote>
    <tt><br>
      I already have this in my custom image .bb file. As noted above it
      seems to install everything apart from the binary so all the
      config files go in, just not the especially important bit!<br>
      <br>
      Thank you for you help though!<br>
      <br>
      Regards,<br>
      <br>
    </tt>
    <blockquote
cite="mid:CANFv2EnoaW5iptTVo5Trg7d6Rr8y4Jbutaq6gEaw+J59PmBUVg@mail.gmail.com"
      type="cite">
      <div class="gmail_quote"><tt>
        </tt>
        <div><tt>&nbsp;</tt></div>
        <div><tt>Jim A</tt></div>
        <blockquote style="BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px
          0.8ex;PADDING-LEFT:1ex" class="gmail_quote">
          <div class="HOEnZb">
            <div class="h5"><tt>_______________________________________________<br>
                yocto mailing list<br>
                <a moz-do-not-send="true"
                  href="mailto:yocto@yoctoproject.org" target="_blank">yocto@yoctoproject.org</a><br>
                <a moz-do-not-send="true"
                  href="https://lists.yoctoproject.org/listinfo/yocto"
                  target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
              </tt>
            </div>
          </div>
        </blockquote>
      </div>
      <tt><br>
      </tt>
    </blockquote>
    <tt><br>
    </tt>
  </body>
</html>

--------------000908010200070507090403--
