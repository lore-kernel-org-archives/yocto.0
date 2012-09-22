Return-Path: <andrei@gherzan.ro>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AC4CE013DB
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2012 14:24:41 -0700 (PDT)
Received: by ieak12 with SMTP id k12so7498461iea.35
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2012 14:24:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=r7M085ejRzHY7xUwOAxu+YG1diTIzwzyKW/fN8h1i4c=;
	b=Hun7zQtGk7TbrjTIYNra6b3SZbMvAMSok8L3/nWA8usI8Pana80DZoiWUvDCuWT9fM
	8PcrAio8KGKokR9lj7PcaK8vj/nSnlNbUM6U6fcpG3E6ZO2QEu0/jbF77beJupgLAKfO
	DH06h1xVP/n0RCUbyPjl7Xx149AAMxJ93WJHZsuswCVvbpuDvRjC+PGXiy3gUTcjtEgn
	L+qAlHg+oneXrGEjtIOZzcLa5NfYxZZsvlP4WGf21rK7qw1Kd/fNX0Dj53BFdYWyejFG
	Nuge7qABcNVyr3JxybKwOz4yoAiNSDlsIf7cCBrRh+mZ8cLH7wol/+ozWrxKtKzZnQTI
	VD7g==
MIME-Version: 1.0
Received: by 10.50.187.194 with SMTP id fu2mr1793884igc.63.1348349079534; Sat,
	22 Sep 2012 14:24:39 -0700 (PDT)
Received: by 10.64.52.8 with HTTP; Sat, 22 Sep 2012 14:24:39 -0700 (PDT)
X-Originating-IP: [92.86.21.113]
Received: by 10.64.52.8 with HTTP; Sat, 22 Sep 2012 14:24:39 -0700 (PDT)
In-Reply-To: <CAMAb8ZN9a7Dtn6evFZ-zQn47EBLnR4y=RZ8KNtX=ooMUpHM2uw@mail.gmail.com>
References: <CAMAb8ZN9a7Dtn6evFZ-zQn47EBLnR4y=RZ8KNtX=ooMUpHM2uw@mail.gmail.com>
Date: Sun, 23 Sep 2012 00:24:39 +0300
Message-ID: <CAK18fxFmBw4Y4LXkogKrMysAfVv1kfXcJe23dZY3fZv4=TJ0jQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Evade Flow <evadeflow@gmail.com>
X-Gm-Message-State: ALoCoQkYSJ2FyzrBANH1vrMUjYe1Dn1KH3uTb/VtSBfyLUc6BrrCR0b7qWoGbPk40IV9NaexQjCd
Cc: yocto@yoctoproject.org
Subject: Re: IPK Package name contains illegal characters?
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
X-List-Received-Date: Sat, 22 Sep 2012 21:24:41 -0000
Content-Type: multipart/alternative; boundary=14dae9340de3eb3d0004ca50fb48

--14dae9340de3eb3d0004ca50fb48
Content-Type: text/plain; charset=ISO-8859-1

We will fix this next week. Thanks.
On Sep 22, 2012 9:37 PM, "Evade Flow" <evadeflow@gmail.com> wrote:

> After (finally!) getting all the required sources pre-mirrorred, I was
> able to the build the 'discovery-image' in the meta-ivi layer in 2 hours
> + 17 minutes:
>
>   http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/
>
> This was using package_rpm, though, so I thought I could do better by
> changing conf/local.conf to contain:
>
>   PACKAGE_CLASSES ?= "package_ipk"
>
> It appears that this was going to be quite a bit faster, but after 1
> hour it generated the error:
>
>   *** Error: Package name  contains illegal characters, (other than
> [a-z0-9.+-])
>
>
> The extra space between 'name' and 'contains' seems *very* suspicious,
> but I don't know what to make of it. (The package name is an empty
> string? Why?)  Any suggestions as to how I can debug this? The log file
> doesn't show what command was attempted, so I really don't know where to
> begin.
>
> In case it's helpful, the tail-end of the output from running 'bitbake
> -DD DLT-daemon' is appended below.  (NOTE: The exact same problem exists
> for the AudioManager component of the meta-ivi layer...)
>
>
> DEBUG: Stampfile
>
> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_compile
> not available
> NOTE: Running task 716 of 722 (ID: 8,
> /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_compile)
> NOTE: package DLT-daemon-2.5.2-r0: task do_compile: Started
> NOTE: package DLT-daemon-2.5.2-r0: task do_compile: Succeeded
> DEBUG: Marking task 2
> (/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_install) as buildable
> DEBUG: Stampfile
>
> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_install
> not available
> NOTE: Running task 717 of 722 (ID: 2,
> /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_install)
> DEBUG: Running
> /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb:
> do_install
> under fakeroot, fakedirs:
>
> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/pseudo/
> NOTE: package DLT-daemon-2.5.2-r0: task do_install: Started
> NOTE: package DLT-daemon-2.5.2-r0: task do_install: Succeeded
> DEBUG: Marking task 10
> (/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_package) as buildable
> DEBUG: Marking task 3
> (/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_populate_sysroot) as buildable
> DEBUG: Stampfile
>
> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_package.vexpressa9
> not available
> NOTE: Running task 718 of 722 (ID: 10,
> /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_package)
> DEBUG: Running
> /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb:
> do_package
> under fakeroot, fakedirs:
>
> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/pseudo/
> DEBUG: Stampfile
>
> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_populate_sysroot.vexpressa9
> not available
> NOTE: Running task 719 of 722 (ID: 3,
> /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_populate_sysroot)
> NOTE: package DLT-daemon-2.5.2-r0: task do_populate_sysroot: Started
> NOTE: package DLT-daemon-2.5.2-r0: task do_package: Started
> NOTE: package DLT-daemon-2.5.2-r0: task do_populate_sysroot: Succeeded
> NOTE: package DLT-daemon-2.5.2-r0: task do_package: Succeeded
> DEBUG: Marking task 12
> (/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_package_write_ipk) as buildable
> DEBUG: Stampfile
>
> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_package_write_ipk
> not available
> NOTE: Running task 720 of 722 (ID: 12,
> /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_package_write_ipk)
> DEBUG: Running
> /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb:
> do_package_write_ipk
> under fakeroot, fakedirs:
>
> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/pseudo/
> NOTE: package DLT-daemon-2.5.2-r0: task do_package_write_ipk: Started
> ERROR: Function failed: opkg-build execution failed
> ERROR: Logfile of failure stored in:
>
> /home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/temp/log.do_package_write_ipk.27610
> Log data follows:
> | DLT-daemon-systemd
> | *** Error: Package name  contains illegal characters, (other than
> [a-z0-9.+-])
> |
> | opkg-build: Please fix the above errors and try again.
> | ERROR: Function failed: opkg-build execution failed
> NOTE: package DLT-daemon-2.5.2-r0: task do_package_write_ipk: Failed
> ERROR: Task 12
> (/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_package_write_ipk) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 720 tasks of which 709 didn't need to
> be rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/
> DLT-daemon_2.5.2.bb,
> do_package_write_ipk
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--14dae9340de3eb3d0004ca50fb48
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">We will fix this next week. Thanks.</p>
<div class=3D"gmail_quote">On Sep 22, 2012 9:37 PM, &quot;Evade Flow&quot; =
&lt;<a href=3D"mailto:evadeflow@gmail.com">evadeflow@gmail.com</a>&gt; wrot=
e:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
After (finally!) getting all the required sources pre-mirrorred, I was<br>
able to the build the &#39;discovery-image&#39; in the meta-ivi layer in 2 =
hours<br>
+ 17 minutes:<br>
<br>
=A0 <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/" target=
=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/</a><br>
<br>
This was using package_rpm, though, so I thought I could do better by<br>
changing conf/local.conf to contain:<br>
<br>
=A0 PACKAGE_CLASSES ?=3D &quot;package_ipk&quot;<br>
<br>
It appears that this was going to be quite a bit faster, but after 1<br>
hour it generated the error:<br>
<br>
=A0 *** Error: Package name =A0contains illegal characters, (other than [a-=
z0-9.+-])<br>
<br>
<br>
The extra space between &#39;name&#39; and &#39;contains&#39; seems *very* =
suspicious,<br>
but I don&#39;t know what to make of it. (The package name is an empty<br>
string? Why?) =A0Any suggestions as to how I can debug this? The log file<b=
r>
doesn&#39;t show what command was attempted, so I really don&#39;t know whe=
re to<br>
begin.<br>
<br>
In case it&#39;s helpful, the tail-end of the output from running &#39;bitb=
ake<br>
-DD DLT-daemon&#39; is appended below. =A0(NOTE: The exact same problem exi=
sts<br>
for the AudioManager component of the meta-ivi layer...)<br>
<br>
<br>
DEBUG: Stampfile<br>
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp=
-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_compile<br>
not available<br>
NOTE: Running task 716 of 722 (ID: 8,<br>
/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/<a h=
ref=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-daemon_2.5.2.bb</a=
>,<br>
do_compile)<br>
NOTE: package DLT-daemon-2.5.2-r0: task do_compile: Started<br>
NOTE: package DLT-daemon-2.5.2-r0: task do_compile: Succeeded<br>
DEBUG: Marking task 2<br>
(/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/<a =
href=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-daemon_2.5.2.bb</=
a>,<br>
do_install) as buildable<br>
DEBUG: Stampfile<br>
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp=
-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_install<br>
not available<br>
NOTE: Running task 717 of 722 (ID: 2,<br>
/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/<a h=
ref=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-daemon_2.5.2.bb</a=
>,<br>
do_install)<br>
DEBUG: Running /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/=
DLT-daemon/DLT-daemon_2.5.2.bb:do_install<br>
under fakeroot, fakedirs:<br>
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-n=
eon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/pseudo/<br>
NOTE: package DLT-daemon-2.5.2-r0: task do_install: Started<br>
NOTE: package DLT-daemon-2.5.2-r0: task do_install: Succeeded<br>
DEBUG: Marking task 10<br>
(/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/<a =
href=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-daemon_2.5.2.bb</=
a>,<br>
do_package) as buildable<br>
DEBUG: Marking task 3<br>
(/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/<a =
href=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-daemon_2.5.2.bb</=
a>,<br>
do_populate_sysroot) as buildable<br>
DEBUG: Stampfile<br>
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp=
-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_package.vexpressa9<br>
not available<br>
NOTE: Running task 718 of 722 (ID: 10,<br>
/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/<a h=
ref=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-daemon_2.5.2.bb</a=
>,<br>
do_package)<br>
DEBUG: Running /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/=
DLT-daemon/DLT-daemon_2.5.2.bb:do_package<br>
under fakeroot, fakedirs:<br>
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-n=
eon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/pseudo/<br>
DEBUG: Stampfile<br>
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp=
-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_populate_sysroot.vexpressa9<b=
r>
not available<br>
NOTE: Running task 719 of 722 (ID: 3,<br>
/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/<a h=
ref=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-daemon_2.5.2.bb</a=
>,<br>
do_populate_sysroot)<br>
NOTE: package DLT-daemon-2.5.2-r0: task do_populate_sysroot: Started<br>
NOTE: package DLT-daemon-2.5.2-r0: task do_package: Started<br>
NOTE: package DLT-daemon-2.5.2-r0: task do_populate_sysroot: Succeeded<br>
NOTE: package DLT-daemon-2.5.2-r0: task do_package: Succeeded<br>
DEBUG: Marking task 12<br>
(/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/<a =
href=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-daemon_2.5.2.bb</=
a>,<br>
do_package_write_ipk) as buildable<br>
DEBUG: Stampfile<br>
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp=
-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_package_write_ipk<br>
not available<br>
NOTE: Running task 720 of 722 (ID: 12,<br>
/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/<a h=
ref=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-daemon_2.5.2.bb</a=
>,<br>
do_package_write_ipk)<br>
DEBUG: Running /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/=
DLT-daemon/DLT-daemon_2.5.2.bb:do_package_write_ipk<br>
under fakeroot, fakedirs:<br>
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-n=
eon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/pseudo/<br>
NOTE: package DLT-daemon-2.5.2-r0: task do_package_write_ipk: Started<br>
ERROR: Function failed: opkg-build execution failed<br>
ERROR: Logfile of failure stored in:<br>
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-n=
eon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/temp/log.do_package_write_ipk.2761=
0<br>
Log data follows:<br>
| DLT-daemon-systemd<br>
| *** Error: Package name =A0contains illegal characters, (other than [a-z0=
-9.+-])<br>
|<br>
| opkg-build: Please fix the above errors and try again.<br>
| ERROR: Function failed: opkg-build execution failed<br>
NOTE: package DLT-daemon-2.5.2-r0: task do_package_write_ipk: Failed<br>
ERROR: Task 12 (/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended=
/DLT-daemon/<a href=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-da=
emon_2.5.2.bb</a>,<br>
do_package_write_ipk) failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 720 tasks of which 709 didn&#39;t need to<br=
>
be rerun and 1 failed.<br>
<br>
Summary: 1 task failed:<br>
=A0 /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/=
<a href=3D"http://DLT-daemon_2.5.2.bb" target=3D"_blank">DLT-daemon_2.5.2.b=
b</a>,<br>
do_package_write_ipk<br>
Summary: There was 1 WARNING message shown.<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--14dae9340de3eb3d0004ca50fb48--
