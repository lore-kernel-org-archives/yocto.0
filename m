Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00821E0071F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 15:23:30 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id y10so4122902wgg.4
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 15:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=c7WVjplC5C4Q2ZTW/VD4lklakyfSuzKWHvv+nd9Atyc=;
	b=1JdlK7u0YzC2cqg0X+iDRZISTwfOzQ7hqdXgJl2uMRg88+PIMsG4fJJwHDcpnrhBNJ
	Wv5J31bn6+R++YaQWoiAPtFzFIwqTOCElBY+Ts6dOudOlCi0zTu2x6FPt3/8K1P+bJ5d
	1mKSIMKiXhF6R3UGK9K1R1kEAr+6mxGkuc/Ms32qwZm4Pjx0Tr1YBV+5mpdp3BtjXWgw
	4cqnmlWKE4U3qOja5ehwCVPQY7wfnRUGRt8G6slBdmk6vAkku06xciHwfG2kW4atcm5p
	2/uXQ6zJ+1QT3CwbA6rXPyVuSkf45pR07XyeVXwasGY0Mwvhh9KAmFj+Mgotd7gHVLxI
	GrLA==
X-Received: by 10.194.179.33 with SMTP id dd1mr2747307wjc.51.1374013409211;
	Tue, 16 Jul 2013 15:23:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.241.233 with HTTP; Tue, 16 Jul 2013 15:23:08 -0700 (PDT)
In-Reply-To: <mailman.9.1373655601.11393.yocto@yoctoproject.org>
References: <mailman.9.1373655601.11393.yocto@yoctoproject.org>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Wed, 17 Jul 2013 00:23:08 +0200
Message-ID: <CAAGt+t1avQ+L45e1gEcvzd+wtjq_L=OnYMdus4_BPwTN6kZhbw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Re: yocto Digest, Vol 34, Issue 38
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
X-List-Received-Date: Tue, 16 Jul 2013 22:23:32 -0000
Content-Type: multipart/alternative; boundary=089e013d0f802c3d2604e1a86d1b

--089e013d0f802c3d2604e1a86d1b
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I added opencv
in /home/yocto/poky/meta-gumstix-extras/recipes-images/gumstix/
gumstix-console-image.bb.

Why do I need to add  'IMAGE_EXTRAS += "opencv-apps opencv-samples" in
local.conf? aren't we supposed to add it in
/home/yocto/poky/meta-gumstix-extras/recipes-images/gumstix/
gumstix-console-image.bb? I am confused here.

I added Gstreamer along with opencv in (gumstix-console-image.bb) and build
was successful. Gstreamer was added to Image but not opencv.

Is it not sufficient if we add just 'opencv' in
/home/yocto/poky/meta-gumstix-extras/recipes-images/gumstix/
gumstix-console-image.bb? what are these 'opencv-apps opencv-samples' files?

Regards,
Zafrullah Syed


On Fri, Jul 12, 2013 at 9:00 PM, <yocto-request@yoctoproject.org> wrote:

> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. Libraries missing after build is successful (Zafrullah Syed)
>    2. Re: Libraries missing after build is successful (Gary Thomas)
>    3. Re: Fwd: Yocto Layers not getting recognized by bitbake
>       (varun bhatnagar)
>    4. meta-security Layer Now Available (Jeff Osier-Mixon)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Fri, 12 Jul 2013 17:21:39 +0200
> From: Zafrullah Syed <zafrullahmehdi@gmail.com>
> To: yocto <yocto@yoctoproject.org>
> Subject: [yocto] Libraries missing after build is successful
> Message-ID:
>         <CAAGt+t1GaWBqsZAXR9xq0bTeYry_W_xOX38Qz=ZMxzM1=
> ivkbQ@mail.gmail.com>
> Content-Type: text/plain; charset="iso-8859-1"
>
> I appended OpenCV and Gstreamer plugins to Image and made a build. Build is
> successful without any errors but OpenCV libraries are missing in
> rootfs.tar.bz2
>
> I searched for libs( libopencv_core.so, libhighgui.so, libOpenCV.so ) in
> /usr/bin, /usr/lib and the whole archive but unable to find any libraries.
>
> In /yocto/build/downloads, I can
> see OpenCV-2.4.3.tar.bz2, OpenCV-2.4.3.tar.bz2.done files.
>
> In /yocto/build/tmp/deploy/licenses, I can see OpenCV folder.
>
> In /yocto/build/tmp/deploy/rpm/armv7a_vfp_neon, I can see .rpm packages.
>
> Log file after build says this:
> (Pasted only start and success logs)
>
> NOTE: recipe opencv-2.4.3-r2: task do_compile: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_install: Started
> NOTE: recipe opencv-2.4.3-r2: task do_install: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_package: Started
> NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Started
> NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_package: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Started
> NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Started
> NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Succeeded
> NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Started
> NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Succeeded
>
> Any Idea/hints where these files are and why they are missing?
>
> Regards,
> Zafrullah Syed.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20130712/482fc477/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 2
> Date: Fri, 12 Jul 2013 10:21:54 -0600
> From: Gary Thomas <gary@mlbassoc.com>
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Libraries missing after build is successful
> Message-ID: <51E02D22.1090200@mlbassoc.com>
> Content-Type: text/plain; charset=ISO-8859-1; format=flowed
>
> On 2013-07-12 09:21, Zafrullah Syed wrote:
> > I appended OpenCV and Gstreamer plugins to Image and made a build. Build
> is successful without any errors but OpenCV libraries are missing in
> rootfs.tar.bz2
>
> How did you do this?
>
> You should be able to just add them in your local.conf, e.g.
>    IMAGE_EXTRAS += "opencv-apps opencv-samples"
> etc.
>
> > I searched for libs( libopencv_core.so, libhighgui.so, libOpenCV.so ) in
> /usr/bin, /usr/lib and the whole archive but unable to find any libraries.
> >
> > In /yocto/build/downloads, I can see OpenCV-2.4.3.tar.bz2,
> OpenCV-2.4.3.tar.bz2.done files.
> >
> > In /yocto/build/tmp/deploy/licenses, I can see OpenCV folder.
> >
> > In /yocto/build/tmp/deploy/rpm/armv7a_vfp_neon, I can see .rpm packages.
> >
> > Log file after build says this:
> > (Pasted only start and success logs)
> >
> > NOTE: recipe opencv-2.4.3-r2: task do_compile: Succeeded
> > NOTE: recipe opencv-2.4.3-r2: task do_install: Started
> > NOTE: recipe opencv-2.4.3-r2: task do_install: Succeeded
> > NOTE: recipe opencv-2.4.3-r2: task do_package: Started
> > NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Started
> > NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Succeeded
> > NOTE: recipe opencv-2.4.3-r2: task do_package: Succeeded
> > NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Started
> > NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Succeeded
> > NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Started
> > NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Succeeded
> > NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Started
> > NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Succeeded
> >
> > Any Idea/hints where these files are and why they are missing?
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>
>
> ------------------------------
>
> Message: 3
> Date: Fri, 12 Jul 2013 23:53:32 +0530
> From: varun bhatnagar <varun292006@gmail.com>
> To: Paul Eggleton <paul.eggleton@linux.intel.com>,
>         "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] Fwd: Yocto Layers not getting recognized by
>         bitbake
> Message-ID:
>         <CAGxOggGH0mpoV=KqgGc=yEpNbdht5=
> L1WAzFvcm0za-TEC-FkQ@mail.gmail.com>
> Content-Type: text/plain; charset="iso-8859-1"
>
> Hi Paul,
>
> I am pasting the content of my recipe file below, please have a look at it.
>
>
> DESCRIPTION = "bitake file"
> *DEPENDS = "net-snmp fuse"*
> RDEPENDS = "curl rpm openssh openldap procps psmisc sed net-snmp-server"
> LICENSE = "GPLv2+"
> PR = "r0"
> SRC_URI =
> "*file:///home/user/Myapp.tar.gz"*<file:///home/user/Myapp.tar.gz%22>
> ;
> EXTRA_OECMAKE += "-DCMAKE_FIND_ROOT_PATH=${STAGING_DIR_HOST} "
> EXTRA_OECMAKE += "-DTARGET_ARCHITECTURE=${TARGET_ARCH} "
> EXTRA_OECMAKE += "-DCMAKE_SYSTEM_NAME=Linux "
> EXTRA_OECMAKE += "-DCMAKE_SYSTEM_VERSION=1 "
> EXTRA_OECMAKE += "-DRSTATE=${PR} "
> EXTRA_OECMAKE += "-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER "
> EXTRA_OECMAKE += "-DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY "
> EXTRA_OECMAKE += "-DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=ONLY "
> EXTRA_OECMAKE += "-DRPM=1 "
>
> inherit cmake
>
> do_configure(){
>         cmake ..${EXTRA_OECMAKE}
> }
>
> do_compile(){
>         oe_runmake all
> }
>
> //
> Varun
>
>
> On Mon, Jul 1, 2013 at 3:18 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com
> > wrote:
>
> > On Sunday 30 June 2013 00:05:58 varun bhatnagar wrote:
> > > Yes Paul that was the entry was there in CORE_IMAGE_EXTRA_INSTALL. I
> have
> > > removed it from there but I need to add the command provided by these
> > > packages in my image. So I have added one line in my layer.conf file
> > > "IMAGE_INSTALL_append= test-ea ". Now if I try to run bitbake -k
> > > core-image-minimal, it gives me a message saying "Nothing provides
> > > test-ea". What shall I do? (I have build the recipe file of test-ea
> > without
> > > any error.)
> >
> > Can you show me what the test-ea recipe contains?
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20130712/8f089776/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 4
> Date: Fri, 12 Jul 2013 11:43:41 -0700
> From: Jeff Osier-Mixon <jefro@jefro.net>
> To: Yocto Project <yocto@yoctoproject.org>,
>         yocto-announce@yoctoproject.org
> Subject: [yocto] meta-security Layer Now Available
> Message-ID:
>         <CA+YB3rYaryy71L3b8Ou=1+wgCU8tR=bKxapAuqYkB4C=
> wCAhmA@mail.gmail.com>
> Content-Type: text/plain; charset=ISO-8859-1
>
> [thanks to Andrei Dinu for writing this]
>
> _______________________________________________________________
> meta-security Layer Now Available
>
>
> Can embedded devices have the same type of security that normal
> desktops run? Can the security be enhanced in some way? The answer is
> yes! With the new meta-security-layer which can be used with the Yocto
> Project. Now it's very simple to build a Linux distribution with the
> Yocto Project and use all the security tools to harden, protect, and
> detect vulnerabilities on embedded devices.
>
>
> Why the security layer?
>
> As embedded devices keep getting more and more powerful, there must be
> some concern regarding the security of that device. Maybe some devices
> are in a closed environment, with no access from outside, but that is
> not the case for all of them. If someone is running a webserver on a
> router for example, or uses a device that is permanently connected to
> the internet, it can be susceptible to hijacking. With this security
> layer we wanted to give the users the chance to enhance the security
> on every device that uses the Yocto Project.
>
>
> What does it contain?
>
> After searching the internet looking for open source security packages
> that can be used on embedded devices, we came down to a list that
> covers a wide range of functionalities useful for the user. At the
> moment the security layer contains hardening tools, security checking
> tools, a library for syscall filtering, webserver security, port
> scanners, and other features that are targeted to different levels of
> system security, from low-level to high level.
>
> The packages included in this layer are described below, along with
> some usage examples.
>
> We are going to start with Bastille, which is a hardening program used
> to secure the system and environment in order to make it
> non-penetrable and non-exploitable. It is an easy to use, rule-based
> hardening tool, which has an interactive way of configuring it. On the
> first run with "bastille -c", the user must go through a list of
> questions. After all questions are answered, a config file is created
> and run. After running the config file, the system is hardened based
> on the answers to the questions. Also, if a config file is already
> present on the system, it can be run by simply writing "bastille -b".
>
> Next in line are the redhat-security tools. This is a collection of
> scripts that analyzes security problems ranging from file permissions
> to correctness of code. Here are some items from that list:
>
> - find-chroot.sh - This script scans the whole file system looking for
> ELF files that calls chroot(2) that also do not include a call to
> chdir. Programs that fail to do this do not have the cwd inside the
> chroot. This means the app can escape the protection that was
> intended.
>
> - find-nodrop-groups.sh - This script scans a whole file system to see
> if a program makes calls to change UID and GID without also calling
> setgroups or initgroups.
>
> - find-hidden-exec.sh - This script scans the whole file system
> looking for excutables that are hidden. Anything found must be
> investigated since its highly unusual for executables to be hidden.
>
> Another tool that is included is pax-utils. This package also includes
> a list of scripts that scan ELF files for consistency and not only.
> One of the most popular ones is scanelf. With this script you can
> print out the information specific to the ELF structure of a binary.
> Also, very useful for developers is dumpelf. This is a user space
> utility that dumps all of the internal ELF structures into the
> equivalent C structures for debugging or reference purposes.
>
> Buck-security is a security scanner that checks and reports any
> vulnerabilities. Unlike bastille which also hardens your system,
> buck-security runs a series of scripts present in the configuration
> file. The user can add or remove some checks if they are not
> necessary.
>
> Libseccomp is a library that provides a platform independent, easy to
> use, interface to the Linux Kernel's syscall filtering mechanism. The
> libseccomp API is designed to abstract away the underlying BPF based
> syscall filter language and present a more conventional function-call
> based filtering interface that should be familiar to, and easily
> adopted by application developers.
>
> Checksecurity - check for changes to setuid programs - command scans
> the mounted files systems (subject to the filter defined in
> /etc/checksecurity.conf) and compares the list of setuid programs  to
> the list created on the previous run. Any changes are printed to
> standard output. Also, it generates a list  of  nfs  and afs
> filesystems that are mounted insecurely (i.e. they are missing the
> nodev and either the noexec or nosuid flags).
>
> Nikto - This tool is very useful if you have a web server running on
> your device. Nikto is a scanner which performs comprehensive tests
> against web servers for potentially dangerous files or CGI's, checks
> for outdated versions of over 1250 servers and version specific
> problems.
>
> And last but not least : Nmap - This famous tool used for network
> discovery and security auditing is very useful for system and network
> administrators. Now, you can monitor anything on the network via your
> embedded device with the usage of this tool.
>
>
> Conclusion
>
> The best way to have a secure embedded device is to "keep it simple".
> That means, if you want to be bulletproof, don't include tools that
> can bring security holes to your device. But when you really need
> those programs, it is best to bring them along with a security
> checking tool that assures you the security you need.
>
> [
> https://www.yoctoproject.org/blogs/andrei-dinu/2013/meta-security-layer-now-available
> ]
>
> --
> Jeff Osier-Mixon http://jefro.net/blog
> Yocto Project Community Manager @Intel http://yoctoproject.org
>
>
> ------------------------------
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 34, Issue 38
> *************************************

--089e013d0f802c3d2604e1a86d1b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div>I added opencv in=A0/home/yoc=
to/poky/meta-gumstix-extras/recipes-images/gumstix/<a href=3D"http://gumsti=
x-console-image.bb" target=3D"_blank">gumstix-console-image.bb</a>.<div><br=
></div>

<div>Why do I need to add =A0&#39;IMAGE_EXTRAS +=3D &quot;opencv-apps openc=
v-samples&quot; in local.conf? aren&#39;t we supposed to add it in /home/yo=
cto/poky/meta-gumstix-extras/recipes-images/gumstix/<a href=3D"http://gumst=
ix-console-image.bb" target=3D"_blank">gumstix-console-image.bb</a>? I am c=
onfused here.</div>


<div><br></div><div>I added Gstreamer along with opencv in (<a href=3D"http=
://gumstix-console-image.bb" target=3D"_blank">gumstix-console-image.bb</a>=
) and build was successful. Gstreamer was added to Image but not opencv.</d=
iv>

<div><br></div>
<div>Is it not sufficient if we add just &#39;opencv&#39; in /home/yocto/po=
ky/meta-gumstix-extras/recipes-images/gumstix/<a href=3D"http://gumstix-con=
sole-image.bb" target=3D"_blank">gumstix-console-image.bb</a>? what are the=
se &#39;opencv-apps opencv-samples&#39; files?</div>


<div><br></div><div>Regards,</div><div>Zafrullah Syed</div><div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Jul 12, 2013 at=
 9:00 PM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:yocto-request@yoctoproje=
ct.org" target=3D"_blank">yocto-request@yoctoproject.org</a>&gt;</span> wro=
te:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Send yocto mailing list submissions to<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" t=
arget=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto-request@yoctoproject.org" target=3D=
"_blank">yocto-request@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto-owner@yoctoproject.org" target=3D"_=
blank">yocto-owner@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=A0 =A01. Libraries missing after build is successful (Zafrullah Syed)<br>
=A0 =A02. Re: Libraries missing after build is successful (Gary Thomas)<br>
=A0 =A03. Re: Fwd: Yocto Layers not getting recognized by bitbake<br>
=A0 =A0 =A0 (varun bhatnagar)<br>
=A0 =A04. meta-security Layer Now Available (Jeff Osier-Mixon)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Fri, 12 Jul 2013 17:21:39 +0200<br>
From: Zafrullah Syed &lt;<a href=3D"mailto:zafrullahmehdi@gmail.com" target=
=3D"_blank">zafrullahmehdi@gmail.com</a>&gt;<br>
To: yocto &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a>&gt;<br>
Subject: [yocto] Libraries missing after build is successful<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;CAAGt+t1GaWBqsZAXR9xq0bTeYry_W_xOX38Qz=3DZMxzM1=3D<a hr=
ef=3D"mailto:ivkbQ@mail.gmail.com" target=3D"_blank">ivkbQ@mail.gmail.com</=
a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
I appended OpenCV and Gstreamer plugins to Image and made a build. Build is=
<br>
successful without any errors but OpenCV libraries are missing in<br>
rootfs.tar.bz2<br>
<br>
I searched for libs( libopencv_core.so, libhighgui.so, libOpenCV.so ) in<br=
>
/usr/bin, /usr/lib and the whole archive but unable to find any libraries.<=
br>
<br>
In /yocto/build/downloads, I can<br>
see OpenCV-2.4.3.tar.bz2, OpenCV-2.4.3.tar.bz2.done files.<br>
<br>
In /yocto/build/tmp/deploy/licenses, I can see OpenCV folder.<br>
<br>
In /yocto/build/tmp/deploy/rpm/armv7a_vfp_neon, I can see .rpm packages.<br=
>
<br>
Log file after build says this:<br>
(Pasted only start and success logs)<br>
<br>
NOTE: recipe opencv-2.4.3-r2: task do_compile: Succeeded<br>
NOTE: recipe opencv-2.4.3-r2: task do_install: Started<br>
NOTE: recipe opencv-2.4.3-r2: task do_install: Succeeded<br>
NOTE: recipe opencv-2.4.3-r2: task do_package: Started<br>
NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Started<br>
NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Succeeded<br>
NOTE: recipe opencv-2.4.3-r2: task do_package: Succeeded<br>
NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Started<br>
NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Succeeded<br>
NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Started<br>
NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Succeeded<br=
>
NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Started<br>
NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Succeeded<br>
<br>
Any Idea/hints where these files are and why they are missing?<br>
<br>
Regards,<br>
Zafrullah Syed.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20130712/482fc477/attachment-0001.html" target=3D"_blank">http://lists.y=
octoproject.org/pipermail/yocto/attachments/20130712/482fc477/attachment-00=
01.html</a>&gt;<br>



<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Fri, 12 Jul 2013 10:21:54 -0600<br>
From: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank=
">gary@mlbassoc.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a><br>
Subject: Re: [yocto] Libraries missing after build is successful<br>
Message-ID: &lt;<a href=3D"mailto:51E02D22.1090200@mlbassoc.com" target=3D"=
_blank">51E02D22.1090200@mlbassoc.com</a>&gt;<br>
Content-Type: text/plain; charset=3DISO-8859-1; format=3Dflowed<br>
<br>
On 2013-07-12 09:21, Zafrullah Syed wrote:<br>
&gt; I appended OpenCV and Gstreamer plugins to Image and made a build. Bui=
ld is successful without any errors but OpenCV libraries are missing in roo=
tfs.tar.bz2<br>
<br>
How did you do this?<br>
<br>
You should be able to just add them in your local.conf, e.g.<br>
=A0 =A0IMAGE_EXTRAS +=3D &quot;opencv-apps opencv-samples&quot;<br>
etc.<br>
<br>
&gt; I searched for libs( libopencv_core.so, libhighgui.so, libOpenCV.so ) =
in /usr/bin, /usr/lib and the whole archive but unable to find any librarie=
s.<br>
&gt;<br>
&gt; In /yocto/build/downloads, I can see OpenCV-2.4.3.tar.bz2, OpenCV-2.4.=
3.tar.bz2.done files.<br>
&gt;<br>
&gt; In /yocto/build/tmp/deploy/licenses, I can see OpenCV folder.<br>
&gt;<br>
&gt; In /yocto/build/tmp/deploy/rpm/armv7a_vfp_neon, I can see .rpm package=
s.<br>
&gt;<br>
&gt; Log file after build says this:<br>
&gt; (Pasted only start and success logs)<br>
&gt;<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_compile: Succeeded<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_install: Started<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_install: Succeeded<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_package: Started<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Started<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Succeeded<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_package: Succeeded<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Started<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Succeeded<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Started=
<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Succeed=
ed<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Started<br>
&gt; NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Succeeded<br>
&gt;<br>
&gt; Any Idea/hints where these files are and why they are missing?<br>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------------------------------------<br>
<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Fri, 12 Jul 2013 23:53:32 +0530<br>
From: varun bhatnagar &lt;<a href=3D"mailto:varun292006@gmail.com" target=
=3D"_blank">varun292006@gmail.com</a>&gt;<br>
To: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" targ=
et=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;,<br>
=A0 =A0 =A0 =A0 &quot;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_=
blank">yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto@yoctopr=
oject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
Subject: Re: [yocto] Fwd: Yocto Layers not getting recognized by<br>
=A0 =A0 =A0 =A0 bitbake<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;CAGxOggGH0mpoV=3DKqgGc=3DyEpNbdht5=3D<a href=3D"mailto:=
L1WAzFvcm0za-TEC-FkQ@mail.gmail.com" target=3D"_blank">L1WAzFvcm0za-TEC-FkQ=
@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
Hi Paul,<br>
<br>
I am pasting the content of my recipe file below, please have a look at it.=
<br>
<br>
<br>
DESCRIPTION =3D &quot;bitake file&quot;<br>
*DEPENDS =3D &quot;net-snmp fuse&quot;*<br>
RDEPENDS =3D &quot;curl rpm openssh openldap procps psmisc sed net-snmp-ser=
ver&quot;<br>
LICENSE =3D &quot;GPLv2+&quot;<br>
PR =3D &quot;r0&quot;<br>
SRC_URI =3D &quot;*file:///home/user/Myapp.tar.gz&quot;*&lt;file:///home/us=
er/Myapp.tar.gz%22&gt;<br>
;<br>
EXTRA_OECMAKE +=3D &quot;-DCMAKE_FIND_ROOT_PATH=3D${STAGING_DIR_HOST} &quot=
;<br>
EXTRA_OECMAKE +=3D &quot;-DTARGET_ARCHITECTURE=3D${TARGET_ARCH} &quot;<br>
EXTRA_OECMAKE +=3D &quot;-DCMAKE_SYSTEM_NAME=3DLinux &quot;<br>
EXTRA_OECMAKE +=3D &quot;-DCMAKE_SYSTEM_VERSION=3D1 &quot;<br>
EXTRA_OECMAKE +=3D &quot;-DRSTATE=3D${PR} &quot;<br>
EXTRA_OECMAKE +=3D &quot;-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=3DNEVER &quot;=
<br>
EXTRA_OECMAKE +=3D &quot;-DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=3DONLY &quot;<=
br>
EXTRA_OECMAKE +=3D &quot;-DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=3DONLY &quot;<=
br>
EXTRA_OECMAKE +=3D &quot;-DRPM=3D1 &quot;<br>
<br>
inherit cmake<br>
<br>
do_configure(){<br>
=A0 =A0 =A0 =A0 cmake ..${EXTRA_OECMAKE}<br>
}<br>
<br>
do_compile(){<br>
=A0 =A0 =A0 =A0 oe_runmake all<br>
}<br>
<br>
//<br>
Varun<br>
<br>
<br>
On Mon, Jul 1, 2013 at 3:18 PM, Paul Eggleton &lt;<a href=3D"mailto:paul.eg=
gleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>=
<br>
&gt; wrote:<br>
<br>
&gt; On Sunday 30 June 2013 00:05:58 varun bhatnagar wrote:<br>
&gt; &gt; Yes Paul that was the entry was there in CORE_IMAGE_EXTRA_INSTALL=
. I have<br>
&gt; &gt; removed it from there but I need to add the command provided by t=
hese<br>
&gt; &gt; packages in my image. So I have added one line in my layer.conf f=
ile<br>
&gt; &gt; &quot;IMAGE_INSTALL_append=3D test-ea &quot;. Now if I try to run=
 bitbake -k<br>
&gt; &gt; core-image-minimal, it gives me a message saying &quot;Nothing pr=
ovides<br>
&gt; &gt; test-ea&quot;. What shall I do? (I have build the recipe file of =
test-ea<br>
&gt; without<br>
&gt; &gt; any error.)<br>
&gt;<br>
&gt; Can you show me what the test-ea recipe contains?<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20130712/8f089776/attachment-0001.html" target=3D"_blank">http://lists.y=
octoproject.org/pipermail/yocto/attachments/20130712/8f089776/attachment-00=
01.html</a>&gt;<br>



<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Fri, 12 Jul 2013 11:43:41 -0700<br>
From: Jeff Osier-Mixon &lt;<a href=3D"mailto:jefro@jefro.net" target=3D"_bl=
ank">jefro@jefro.net</a>&gt;<br>
To: Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_=
blank">yocto@yoctoproject.org</a>&gt;,<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto-announce@yoctoproject.org" target=
=3D"_blank">yocto-announce@yoctoproject.org</a><br>
Subject: [yocto] meta-security Layer Now Available<br>
Message-ID:<br>
=A0 =A0 =A0 =A0 &lt;CA+YB3rYaryy71L3b8Ou=3D1+wgCU8tR=3DbKxapAuqYkB4C=3D<a h=
ref=3D"mailto:wCAhmA@mail.gmail.com" target=3D"_blank">wCAhmA@mail.gmail.co=
m</a>&gt;<br>
Content-Type: text/plain; charset=3DISO-8859-1<br>
<br>
[thanks to Andrei Dinu for writing this]<br>
<br>
_______________________________________________________________<br>
meta-security Layer Now Available<br>
<br>
<br>
Can embedded devices have the same type of security that normal<br>
desktops run? Can the security be enhanced in some way? The answer is<br>
yes! With the new meta-security-layer which can be used with the Yocto<br>
Project. Now it&#39;s very simple to build a Linux distribution with the<br=
>
Yocto Project and use all the security tools to harden, protect, and<br>
detect vulnerabilities on embedded devices.<br>
<br>
<br>
Why the security layer?<br>
<br>
As embedded devices keep getting more and more powerful, there must be<br>
some concern regarding the security of that device. Maybe some devices<br>
are in a closed environment, with no access from outside, but that is<br>
not the case for all of them. If someone is running a webserver on a<br>
router for example, or uses a device that is permanently connected to<br>
the internet, it can be susceptible to hijacking. With this security<br>
layer we wanted to give the users the chance to enhance the security<br>
on every device that uses the Yocto Project.<br>
<br>
<br>
What does it contain?<br>
<br>
After searching the internet looking for open source security packages<br>
that can be used on embedded devices, we came down to a list that<br>
covers a wide range of functionalities useful for the user. At the<br>
moment the security layer contains hardening tools, security checking<br>
tools, a library for syscall filtering, webserver security, port<br>
scanners, and other features that are targeted to different levels of<br>
system security, from low-level to high level.<br>
<br>
The packages included in this layer are described below, along with<br>
some usage examples.<br>
<br>
We are going to start with Bastille, which is a hardening program used<br>
to secure the system and environment in order to make it<br>
non-penetrable and non-exploitable. It is an easy to use, rule-based<br>
hardening tool, which has an interactive way of configuring it. On the<br>
first run with &quot;bastille -c&quot;, the user must go through a list of<=
br>
questions. After all questions are answered, a config file is created<br>
and run. After running the config file, the system is hardened based<br>
on the answers to the questions. Also, if a config file is already<br>
present on the system, it can be run by simply writing &quot;bastille -b&qu=
ot;.<br>
<br>
Next in line are the redhat-security tools. This is a collection of<br>
scripts that analyzes security problems ranging from file permissions<br>
to correctness of code. Here are some items from that list:<br>
<br>
- find-chroot.sh - This script scans the whole file system looking for<br>
ELF files that calls chroot(2) that also do not include a call to<br>
chdir. Programs that fail to do this do not have the cwd inside the<br>
chroot. This means the app can escape the protection that was<br>
intended.<br>
<br>
- find-nodrop-groups.sh - This script scans a whole file system to see<br>
if a program makes calls to change UID and GID without also calling<br>
setgroups or initgroups.<br>
<br>
- find-hidden-exec.sh - This script scans the whole file system<br>
looking for excutables that are hidden. Anything found must be<br>
investigated since its highly unusual for executables to be hidden.<br>
<br>
Another tool that is included is pax-utils. This package also includes<br>
a list of scripts that scan ELF files for consistency and not only.<br>
One of the most popular ones is scanelf. With this script you can<br>
print out the information specific to the ELF structure of a binary.<br>
Also, very useful for developers is dumpelf. This is a user space<br>
utility that dumps all of the internal ELF structures into the<br>
equivalent C structures for debugging or reference purposes.<br>
<br>
Buck-security is a security scanner that checks and reports any<br>
vulnerabilities. Unlike bastille which also hardens your system,<br>
buck-security runs a series of scripts present in the configuration<br>
file. The user can add or remove some checks if they are not<br>
necessary.<br>
<br>
Libseccomp is a library that provides a platform independent, easy to<br>
use, interface to the Linux Kernel&#39;s syscall filtering mechanism. The<b=
r>
libseccomp API is designed to abstract away the underlying BPF based<br>
syscall filter language and present a more conventional function-call<br>
based filtering interface that should be familiar to, and easily<br>
adopted by application developers.<br>
<br>
Checksecurity - check for changes to setuid programs - command scans<br>
the mounted files systems (subject to the filter defined in<br>
/etc/checksecurity.conf) and compares the list of setuid programs =A0to<br>
the list created on the previous run. Any changes are printed to<br>
standard output. Also, it generates a list =A0of =A0nfs =A0and afs<br>
filesystems that are mounted insecurely (i.e. they are missing the<br>
nodev and either the noexec or nosuid flags).<br>
<br>
Nikto - This tool is very useful if you have a web server running on<br>
your device. Nikto is a scanner which performs comprehensive tests<br>
against web servers for potentially dangerous files or CGI&#39;s, checks<br=
>
for outdated versions of over 1250 servers and version specific<br>
problems.<br>
<br>
And last but not least : Nmap - This famous tool used for network<br>
discovery and security auditing is very useful for system and network<br>
administrators. Now, you can monitor anything on the network via your<br>
embedded device with the usage of this tool.<br>
<br>
<br>
Conclusion<br>
<br>
The best way to have a secure embedded device is to &quot;keep it simple&qu=
ot;.<br>
That means, if you want to be bulletproof, don&#39;t include tools that<br>
can bring security holes to your device. But when you really need<br>
those programs, it is best to bring them along with a security<br>
checking tool that assures you the security you need.<br>
<br>
[<a href=3D"https://www.yoctoproject.org/blogs/andrei-dinu/2013/meta-securi=
ty-layer-now-available" target=3D"_blank">https://www.yoctoproject.org/blog=
s/andrei-dinu/2013/meta-security-layer-now-available</a>]<br>
<br>
--<br>
Jeff Osier-Mixon <a href=3D"http://jefro.net/blog" target=3D"_blank">http:/=
/jefro.net/blog</a><br>
Yocto Project Community Manager @Intel <a href=3D"http://yoctoproject.org" =
target=3D"_blank">http://yoctoproject.org</a><br>
<br>
<br>
------------------------------<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
End of yocto Digest, Vol 34, Issue 38<br>
*************************************</blockquote></div><div><font color=3D=
"#888888" face=3D"arial, sans-serif"><span style=3D"border-collapse:collaps=
e"><br></span></font></div>
</div></div></div>

--089e013d0f802c3d2604e1a86d1b--
