Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f47.google.com (mail-qe0-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC526E0148D
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 07:50:02 -0700 (PDT)
Received: by mail-qe0-f47.google.com with SMTP id f6so1008106qej.20
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 07:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=e8TegFyfwvefwr0w8fyOqPyfkdZLOeqqKSE23S4JRnk=;
	b=mINBQ/m4d4SXFJX6lxL6ikzyDanR9lrV07rpVvjZFq70sm7FWBW4dtjEzDHIuAEdhr
	CpxLKDp6l97ijeZsFaKcDo8To9B84uagIL14cbnieMlWr+C/0+mpyQHFNnJzw2rgTQTt
	ah1tPqns29kOYQHQ19J3jbSHhhS7LP77EuIfg5htpBuYfAKBI3xEztGlAF6kdcmRUqua
	PW+ideGEcEdi2sGk0Ris4TbvccPw309YgTGDz0O7wT2OLngI9o25rAG/GV9wPqYnXnD8
	vtU/BmRnijmAOwVFTkDQzcui2nEfraMdFPYW+LIhri6PCNwXu5N9vHV1gO1uGrR0cJme
	OLgA==
MIME-Version: 1.0
X-Received: by 10.224.78.193 with SMTP id m1mr11956689qak.79.1369320601978;
	Thu, 23 May 2013 07:50:01 -0700 (PDT)
Received: by 10.49.24.142 with HTTP; Thu, 23 May 2013 07:50:01 -0700 (PDT)
Date: Thu, 23 May 2013 16:50:01 +0200
Message-ID: <CAFyqS9r0yUn_dNT0PH9WgFp2pyOs3M+bNdQ=YnPAa8u8fbkFzw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: .rpm packaging weirdness of dynamic libraries
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
X-List-Received-Date: Thu, 23 May 2013 14:50:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello. On the rootfs all of user added packages with dynamic libraries
(/usr/lib) are missing the .so file soft link? If I check in the
source folder in .libs created by libtool they are all there and links
correctly. Eg. for the linx package:

[git/lib/.libs]: ls -l liblinx*
-rw-r--r-- 1 xxxxxxx rnd 46558 May 22 17:51 liblinx.a
lrwxrwxrwx 1 xxxxxxx rnd    13 May 22 17:51 liblinx.la -> ../liblinx.la
-rw-r--r-- 1 xxxxxxx rnd   911 May 22 17:51 liblinx.lai
lrwxrwxrwx 1 xxxxxxx rnd    16 May 22 17:51 liblinx.so -> liblinx.so.0.0.0
lrwxrwxrwx 1 xxxxxxx rnd    16 May 22 17:51 liblinx.so.0 -> liblinx.so.0.0.0
-rwxr-xr-x 1 xxxxxxx rnd 43883 May 22 17:51 liblinx.so.0.0.0

Also in the package folder everything looks ok

[linx/1.0-r0/package]: ls -l usr/lib/liblinx*
-rw-r--r-- 2 xxxxxxx rnd 46558 May 22 17:51 usr/lib/liblinx.a
-rwxr-xr-x 2 xxxxxxx rnd   911 May 22 17:51 usr/lib/liblinx.la
lrwxrwxrwx 1 xxxxxxx rnd    16 May 22 17:51 usr/lib/liblinx.so ->
liblinx.so.0.0.0
lrwxrwxrwx 1 xxxxxxx rnd    16 May 22 17:51 usr/lib/liblinx.so.0 ->
liblinx.so.0.0.0
-rwxr-xr-x 2 xxxxxxx rnd 10356 May 22 17:52 usr/lib/liblinx.so.0.0.0

But in the rpm, the libs are packaged incorrectly (or at least not as expected)

[1.0-r0/deploy-rpms/cortexa9_vfp]: rpm -q -filesbypkg -p
linx-1.0-r0.cortexa9_vfp.rpm
warning: linx-1.0-r0.cortexa9_vfp.rpm: Header V4 DSA signature: NOKEY,
key ID e747fcfb
linx                      /etc
linx                      /etc/linxdisc.conf
linx                      /usr
linx                      /usr/bin
linx                      /usr/bin/linx_basic_client
linx                      /usr/bin/linx_basic_server
linx                      /usr/bin/linx_bmark
linx                      /usr/bin/linxcfg
linx                      /usr/bin/linxdisc
linx                      /usr/bin/linxgwcmd
linx                      /usr/bin/linxgws
linx                      /usr/bin/linxstat
linx                      /usr/bin/mkcmclcon
linx                      /usr/bin/mkethcon
linx                      /usr/bin/mkhdlccon
linx                      /usr/bin/mklink
linx                      /usr/bin/mkriocon
linx                      /usr/bin/mkshmcon
linx                      /usr/bin/mksriocon
linx                      /usr/bin/mktcpcon
linx                      /usr/bin/rmcmclcon
linx                      /usr/bin/rmethcon
linx                      /usr/bin/rmhdlccon
linx                      /usr/bin/rmlink
linx                      /usr/bin/rmriocon
linx                      /usr/bin/rmshmcon
linx                      /usr/bin/rmsriocon
linx                      /usr/bin/rmtcpcon
linx                      /usr/bin/uselgws
linx                      /usr/lib
linx                      /usr/lib/libcfg.so.0
linx                      /usr/lib/libcfg.so.0.0.0
linx                      /usr/lib/libgw.so.0
linx                      /usr/lib/libgw.so.0.0.0
linx                      /usr/lib/liblinx.so.0
linx                      /usr/lib/liblinx.so.0.0.0
linx                      /usr/lib/libusel_linx.so.0
linx                      /usr/lib/libusel_linx.so.0.0.0

As can be seen in the end, there are no .so files :(, only .so.0
pointing to the exact version of the library. Has this been observed
before? Have we made something wrong in our .bb file that results in
this abnormality? From what I know (and also from what some of our
system software require) there should always be a plain .so file for
dynamic library version(s) to work as expected.

I am currently on poky/master, but this has been confirmed also on
official danny releases.

Hans

