Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53E50E00282
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 08:32:22 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5932EF81272; Sat, 24 Aug 2013 09:32:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id AE1C0F81270;
	Sat, 24 Aug 2013 09:32:19 -0600 (MDT)
Message-ID: <5218D214.1090301@mlbassoc.com>
Date: Sat, 24 Aug 2013 09:32:36 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: Reeve Yang <reeve.yang@gmail.com>
References: <CAGNTBAWeb_JRGvJ4B1awDeHhE+KOSPk1Ea-G_R7JqqOX=CpafQ@mail.gmail.com>
	<521666EE.8070403@mlbassoc.com> <521670B4.5080905@mlbassoc.com>
	<CAGNTBAXZhYXU01RiiF-CDdpc+64uFwSq-ZaM2tQjwGHdweMV8w@mail.gmail.com>
In-Reply-To: <CAGNTBAXZhYXU01RiiF-CDdpc+64uFwSq-ZaM2tQjwGHdweMV8w@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: an error when adding "snappy" package
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
X-List-Received-Date: Sat, 24 Aug 2013 15:32:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-23 14:36, Reeve Yang wrote:
> Hi Gary, the uri.inc is just my include file to point to local package storage location, and "native" extend I have taken it out.
>
> Yeah, I figured it out this is rpm specific. If I change the site-packages/smart/backends/rpm/pm.py, line 280 to:
>
>                  self.rpmout = reader(open(rpmoutpath), errors = "ignore")
>
> The error would be gone and my tarball is created successfully. My question is, why yocto assume default encoding is ascii? Is there anyway for me to specify the encoding in "utf8"?

This sounds like a bug to me.  It would be best if you file it as
such with bugzilla so it gets looked at properly (I'm not the one
to do that, sorry)

> On Thu, Aug 22, 2013 at 1:12 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2013-08-22 13:30, Gary Thomas wrote:
>
>         On 2013-08-21 16:03, Reeve Yang wrote:
>
>             Hi Grus,
>
>             I have been trying to add google snappy package into yocto (https://code.google.com/p/__snappy/ <https://code.google.com/p/snappy/>), here is my receipt file, nothing
>             special:
>
>             SUMMARY = "Snappy is a compression/decompression library."
>             DESCRIPTION = "...."
>             HOMEPAGE="https://code.google.__com/p/snappy <https://code.google.com/p/snappy>"
>             SECTION = "console/utils"
>             LICENSE = "BSD"
>             LIC_FILES_CHKSUM = "file://COPYING;md5=__b2c8cef4261c6377dcae51b2903d70__4b"
>             PR = "r0"
>             require ../uri.inc
>
>
>         What's in this file (uri.inc)?
>
>             SRC_URI = "${URIPREFIX}/snappy-${PV}.__tar.gz"
>             SRC_URI[md5sum] = "__c8f3ef29b5281e78f4946b2d739cea__4f"
>             SRC_URI[sha256sum] = "__1fa82bc588bb93fa74dfc0e2e9b7d6__3b6e2a20ede323ef42bf0af0f94767__6160"
>             inherit autotools
>             BBCLASSEXTEND = "native"
>             do_compile() {
>                   oe_runmake all
>             }
>             do_install() {
>                   oe_runmake DESTDIR=${D} install
>             }
>             BBCLASSEXTEND = "native"
>
>
>         Do you need this (is snappy-native used)?
>
>
>     Note: I had no trouble building and installing this into a IPK based image, so
>     it may be something special with the RPM packaging (which I don't use).
>
>
>
>
>             The package was built successfully, but when I try to build core-image-lsb (my own image but similar), I got following error:
>
>             |  528:Installing libsnappy1      ##############################__########## [ 44%]
>             | Traceback (most recent call last):
>             |   File "/home2/reeve-ws/yocto-dylan-__merge/build/tmp/sysroots/x86___64-linux/usr/lib/python2.7/__site-packages/smart/backends/__rpm/pm.py", line 312, in __call__
>             |     self._process_rpmout()
>             |   File "/home2/reeve-ws/yocto-dylan-__merge/build/tmp/sysroots/x86___64-linux/usr/lib/python2.7/__site-packages/smart/backends/__rpm/pm.py", line 297, in _process_rpmout
>             |     output = self.rpmout.read()
>             |   File "/home2/reeve-ws/yocto-dylan-__merge/build/tmp/sysroots/x86___64-linux/usr/lib/python2.7/__codecs.py", line 477, in read
>             |     newchars, decodedbytes = self.decode(data, self.errors)
>             | UnicodeDecodeError: 'ascii' codec can't decode byte 0xa1 in position 740: ordinal not in range(128)
>             |
>             | Traceback (most recent call last):
>             |   File "/home2/reeve-ws/yocto-dylan-__merge/build/tmp/sysroots/x86___64-linux/usr/lib/python2.7/__site-packages/smart/backends/__rpm/pm.py", line 312, in __call__
>             |     self._process_rpmout()
>             |   File "/home2/reeve-ws/yocto-dylan-__merge/build/tmp/sysroots/x86___64-linux/usr/lib/python2.7/__site-packages/smart/backends/__rpm/pm.py", line 297, in _process_rpmout
>             |     output = self.rpmout.read()
>             |   File "/home2/reeve-ws/yocto-dylan-__merge/build/tmp/sysroots/x86___64-linux/usr/lib/python2.7/__codecs.py", line 477, in read
>             |     newchars, decodedbytes = self.decode(data, self.errors)
>             | UnicodeDecodeError: 'ascii' codec can't decode byte 0xa1 in position 740: ordinal not in range(128)
>             |
>             | ERROR: Function failed: do_rootfs (see /home2/reeve-ws/yocto-dylan-__merge/build/tmp/work/rp-poky-__linux/core-image-ssr/1.0-r0/__temp/log.do_rootfs.2751 for further
>             information)
>             ERROR: Task 7 (/home2/reeve-ws/yocto-dylan-__merge/meta-ericsson-ssr-rp/__recipes-core-image/core-image-__ssr.bb <http://core-image-ssr.bb> <http://core-image-ssr.bb>,
>             do_rootfs) failed with exit code '1'
>             NOTE: Tasks Summary: Attempted 4128 tasks of which 4114 didn't need to be rerun and 1 failed.
>             No currently running tasks (4128 of 4129)
>
>             Can anyone help me out?
>
>
>             _________________________________________________
>             yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             https://lists.yoctoproject.__org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>     --
>     ------------------------------__------------------------------
>     Gary Thomas                 |  Consulting for the
>     MLB Associates              |    Embedded world
>     ------------------------------__------------------------------
>     _________________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.__org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

