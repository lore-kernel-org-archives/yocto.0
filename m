Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A78F5E00293
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:11:03 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id x4so6555144obh.35
	for <yocto@yoctoproject.org>; Tue, 09 Oct 2012 15:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=M0Ly1Il23eZ9P3M1ikdxPERnzCiWZ51o58xY4A9a/lw=;
	b=l1npwbAmLpzkib4jAaEAnbg65V/b2u+RYhvLH3MXSwAwXYalf9/yrxD1/mKIXkhSvY
	kVErFUXgsuAck8LKhUtby6bNqk+UCXddhhGDlTPpE0i6jTWgSg0dFx2uz0ycxOqSx9pp
	wetII6enImgw6t8R9zCwv1DgMC0/THlbL+ZUXiDT+03AeV7kcvzw1S63PXOiVdRBrZaE
	EzceCElwN/6HaDpqXvbYNWcF89hp1cShdxeomxbzU+cfK+zgK3NlFTAPgSJyhrmQ4d0D
	Nc/2I60UHDgaUuFcsLUfBOp2+Oi1y3YqCr6c63SgZEUzExaha6RYeDjfboaaKFiXjW5D
	wB7Q==
MIME-Version: 1.0
Received: by 10.182.116.6 with SMTP id js6mr4059761obb.82.1349820660792; Tue,
	09 Oct 2012 15:11:00 -0700 (PDT)
Received: by 10.76.167.165 with HTTP; Tue, 9 Oct 2012 15:11:00 -0700 (PDT)
Date: Tue, 9 Oct 2012 18:11:00 -0400
Message-ID: <CAMAb8ZO+56YJbrf8LAjbt1eS=GpSgmYr0=MSvx020K=1xwduWw@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Subject: Control which host components are included in ADT output?
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
X-List-Received-Date: Tue, 09 Oct 2012 22:11:03 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I have a question about the ADT and how it selects host SDK components.
If I type:

% bitbake meta-toolchain-sdk

I wind up getting hundreds of target libs when I extract the generated
tarball:

% pwd
/opt/poky/1.2.1/sysroots
% ls armv5te-poky-linux-gnueabi/usr/lib | wc -l
696

but a relatively small number of host libs:

% ls i686-pokysdk-linux/usr/lib | wc -l
53

Is this normal? Taking libxml2 as an example:

% ls -1 armv5te-poky-linux-gnueabi/usr/lib/libxml*
armv5te-poky-linux-gnueabi/usr/lib/libxml2.la
armv5te-poky-linux-gnueabi/usr/lib/libxml2.so
armv5te-poky-linux-gnueabi/usr/lib/libxml2.so.2
armv5te-poky-linux-gnueabi/usr/lib/libxml2.so.2.7.8
% ls -1 i686-pokysdk-linux/usr/lib/libxml*
zsh: no matches found: i686-pokysdk-linux/usr/lib/libxml*

It seems desirable to have libxml2 be part of the SDK I give to my
development team. We have a lot of test applications that can be run on
the host, and I don't like the thought of somebody wasting time chasing
a bug that turns out to be due to the fact that he is linking against a
different (system-installed) version of libxml2 rather than the target
version.

Skimming the ADT manual, this section seems to hint at a solution:

 - http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#adt-=
package

But I can't quite follow all the steps. :-% It says (using libglade as
an example):

  First, you should generate the ipk file for the libglade package and
  add it into a working opkg repository. Use these commands:

    $ bitbake libglade
    $ bitbake package-index


Being totally new to opkg, this lost me. What does the 'package-index'
target actually do?  Does bitbake "add it [libglade] into a working opkg
repository" for me, or am I supposed to take the output of the command
and do something with it? I had a look in these two locations for
'package-index' and came up empty:

 - http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
 - http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual=
.html

What's the best place to look for these kinds of references when I get
stuck on something?

The ADT docs go on to say:

  Next, source the environment setup script found in the Yocto Project
  files. Follow that by setting up the installation destination to point
  to your sysroot as <sysroot_dir>. Finally, have an OPKG configuration
  file <conf_file> that corresponds to the opkg repository you have just
  created.

     $ opkg-cl =96f <conf_file> -o <sysroot_dir> update
     $ opkg-cl =96f <cconf_file> -o <sysroot_dir> \
        --force-overwrite install libglade
     $ opkg-cl =96f <cconf_file> -o <sysroot_dir> \
        --force-overwrite install libglade-dbg
     $ opkg-cl =96f <conf_file> -o <sysroot_dir> \
        --force-overwrite install libglade-dev

<sysroot_dir> I understand, but what is <conf_file>? Did bitbake
generate this for me? Am I supposed to create one by hand? Where? These
instructions are a little hard to follow due to the use of placeholders
rather than concrete arguments. I think a complete, explicit example
would help a lot here.

Also, it seems likely that the above commands would only install a
libglade compiled for the target? How would I generate a libglade for
the host?

Another question is: is there a way to tune the ADT tarball to be a
better fit for my needs so that I don't need to add so many packages by
hand after-the-fact?

Any advice much appreciated, thanks!

