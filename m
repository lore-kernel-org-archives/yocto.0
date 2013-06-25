Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3859BE01530
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 06:20:20 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id i3so9445336vbh.1
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 06:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=rwuBNurK5l7tkNzKrnFYk4P2/JZvZWWHQwdanh5MwLc=;
	b=Nmct+/vYmopPlx6Kr5GKyVozyrtXJqKcYFyzHYvUrHVUyJq9GAXD8f9n5n/QsMqyhw
	tImlPZIqt+GUVtEekN9xY6xh74pZ3HyjqCZtEkprjzySrafR+1yflUpnz08whfrLai7o
	1tbit85M26aHWE8sq3xk727127ALxau4S41RJQagpUnlQZZmegCmxJaLHkjZ2Pf9PxKA
	PbWZhh4Da3WhaWauNlEqQ9v/Yu8zEzh7xUDba7JF0AbOUadQttoV8SFCUlZnxevW6qIg
	i/MuCBfYarcE0avPVczbilnRvkcmdBcwpyJ1dwbZPrWRrkI8DCEt7gg6fPr5DLmNRE9w
	83kA==
MIME-Version: 1.0
X-Received: by 10.58.97.199 with SMTP id ec7mr14250530veb.72.1372166419488;
	Tue, 25 Jun 2013 06:20:19 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.94.241 with HTTP; Tue, 25 Jun 2013 06:20:19 -0700 (PDT)
In-Reply-To: <2169568.OdCe6aKEne@helios>
References: <CAFMfyzLWjR6s7B_XYqU-5QJZTv3dMf0KeZgvGsfAPUisdiwXKg@mail.gmail.com>
	<2169568.OdCe6aKEne@helios>
Date: Tue, 25 Jun 2013 15:20:19 +0200
X-Google-Sender-Auth: xrPtguU_tNcbKU2KhpusnQsht40
Message-ID: <CAFMfyz+y6yEJqQao26EJ3beQhjFZmv7DiJ_BA9EKrQKrGt5+RQ@mail.gmail.com>
From: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing .deb file in Build
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
X-List-Received-Date: Tue, 25 Jun 2013 13:20:23 -0000
Content-Type: multipart/alternative; boundary=089e013a069601a4fa04dffa6459

--089e013a069601a4fa04dffa6459
Content-Type: text/plain; charset=ISO-8859-1

Hi Guys,

I am trying to install .deb file and the recipe is as follows... may I ask
you what is the mistake that is not allowing it to build it into the
rootfilesystem....

*UMMARY = "Bootstrapper from Skidata"*
*DESCRIPTION = "For the moment it just installs the .deb file"*
*LICENSE = "CLOSED"*
*
*
*SRC_URI[md5sum] = "7835334732d1704765e52168994b09a6"*
*SRC_URI[sha256sum] =
"11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2f3a0dc740"*
*
*
*
*
*SRC_URI =
"file:///home/damarla/openYocto/downloads/skidata-bootstraploader-1.0.0.14.deb"
*
*
*
*inherit bin_package*
*
*
*INITSCRIPT_PACKAGES = "${PN}-bsd"*
*INITSCRIPT_NAME_${PN}-bsp = "bootstraploader"*
*INITSCRIPT_PARAMS_${PN}-bsp = "defaults 90"*
*
*
*PACKAGES =+ "${PN} ${PN}-bsd"*
*
*
*FILES_${PN}-bsd = "${sysconfdir}/init.d/bootstraploader"*
*FILES_${PN} = "${D}/usr/skidata/bootstraploader/*.sh
${D}/usr/skidata/bootstraploader/*.pm"*

and the error I get is

*ERROR: Function failed: do_rootfs (log file is located at
/home/damarla/openYocto/poky/buildSmartCPU/tmp/work/smartcpu-untersberg-linux-gnueabi/rootfs-smartcpu/1.0-r0/temp/log.do_rootfs.30357)
*
*ERROR: Logfile of failure stored in:
/home/damarla/openYocto/poky/buildSmartCPU/tmp/work/smartcpu-untersberg-linux-gnueabi/rootfs-smartcpu/1.0-r0/temp/log.do_rootfs.30357
*
*Log data follows:*
*| DEBUG: Executing shell function do_rootfs*
*| dpkg-scanpackages: info: Wrote 33 entries to output Packages file.*
*| dpkg-scanpackages: info: Wrote 5352 entries to output Packages file.*
*| dpkg-scanpackages: info: Wrote 157 entries to output Packages file.*
*| dpkg-scanpackages: info: Wrote 33 entries to output Packages file.*
*| Ign file: ./ InRelease*
*| Ign file: ./ InRelease*
*| Ign file: ./ InRelease*
*| Ign file: ./ Release.gpg*
*| Ign file: ./ Release.gpg*
*| Ign file: ./ Release.gpg*
*| Get:1 file: ./ Release [16 B]*
*| Get:2 file: ./ Release [29 B]*
*| Get:3 file: ./ Release [11 B]*
*| Ign file: ./ Translation-en*
*| Ign file: ./ Translation-en*
*| Ign file: ./ Translation-en*
*| Reading package lists...*
*| Reading package lists...*
*| Building dependency tree...*
*| Reading state information...*
*| The following extra packages will be installed:*
*|   eglibc-binary-localedata-en-us*
*| The following NEW packages will be installed:*
*|   eglibc-binary-localedata-en-us locale-base-en-us*
*| 0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.*
*| Need to get 0 B/327 kB of archives.*
*| After this operation, 0 B of additional disk space will be used.*
*| WARNING: The following packages cannot be authenticated!*
*|   eglibc-binary-localedata-en-us locale-base-en-us*
*| Authentication warning overridden.*
*| dpkg: warning: overriding problem because --force enabled:*
*|  package architecture (armel) does not match system (amd64)*
*| Selecting previously unselected package eglibc-binary-localedata-en-us.*
*| (Reading database ... 0 files and directories currently installed.)*
*| Unpacking eglibc-binary-localedata-en-us (from
.../eglibc-binary-localedata-en-us_2.17-r0_armel.deb) ...*
*| dpkg: warning: overriding problem because --force enabled:*
*|  package architecture (armel) does not match system (amd64)*
*| Selecting previously unselected package locale-base-en-us.*
*| Unpacking locale-base-en-us (from
.../locale-base-en-us_2.17-r0_armel.deb) ...*
*| Reading package lists...*
*| Building dependency tree...*
*| Reading state information...*
*| The following extra packages will be installed:*
*|   eglibc-binary-localedata-en-gb*
*| The following NEW packages will be installed:*
*|   eglibc-binary-localedata-en-gb locale-base-en-gb*
*| 0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.*
*| 2 not fully installed or removed.*
*| Need to get 0 B/327 kB of archives.*
*| After this operation, 0 B of additional disk space will be used.*
*| WARNING: The following packages cannot be authenticated!*
*|   eglibc-binary-localedata-en-gb locale-base-en-gb*
*| Authentication warning overridden.*
*| dpkg: warning: overriding problem because --force enabled:*
*|  package architecture (armel) does not match system (amd64)*
*| Selecting previously unselected package eglibc-binary-localedata-en-gb.*
*| (Reading database ... 18 files and directories currently installed.)*
*| Unpacking eglibc-binary-localedata-en-gb (from
.../eglibc-binary-localedata-en-gb_2.17-r0_armel.deb) ...*
*| dpkg: warning: overriding problem because --force enabled:*
*|  package architecture (armel) does not match system (amd64)*
*| Selecting previously unselected package locale-base-en-gb.*
*| Unpacking locale-base-en-gb (from
.../locale-base-en-gb_2.17-r0_armel.deb) ...*
*| Reading package lists...*
*| Building dependency tree...*
*| Reading state information...*
*| Package bootstrapper is not available, but is referred to by another
package.*
*| This may mean that the package is missing, has been obsoleted, or*
*| is only available from another source*
*| *
*| E: Package 'bootstrapper' has no installation candidate*
*| E: Unable to locate package bootstrapper-bsd*
*| ERROR: Function failed: do_rootfs (log file is located at
/home/damarla/openYocto/poky/buildSmartCPU/tmp/work/smartcpu-untersberg-linux-gnueabi/rootfs-smartcpu/1.0-r0/temp/log.do_rootfs.30357)
*
*ERROR: Task 7
(/home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
rootfs-smartcpu.bb, do_rootfs) failed with exit code '1'*
*NOTE: Tasks Summary: Attempted 5162 tasks of which 5160 didn't need to be
rerun and 1 failed.*
*No currently running tasks (5161 of 5163)*
*
*
*Summary: 1 task failed:*
*  /home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
rootfs-smartcpu.bb, do_rootfs*
*Summary: There was 1 ERROR message shown, returning a non-zero exit code.*

Where did I make the error. I created two packages here and I put those
packages in my rootfs...
Suggestions please,

Greets,
Satya


On Thu, Jun 20, 2013 at 12:09 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Wednesday 19 June 2013 09:10:20 DAMARLA Satya Swaroop wrote:
> > I have a .deb file which has to be installed. It installs properly on the
> > target image but I want to install it at the build itself by creating a
> > bitbake recipe.. Is it possible to install .deb files or not? If
> possible,
> > please suggest me so that I can make it..
>
> I think the bin_package class is designed explicitly to help with this.
> Have a
> look at classes/bin_package.bbclass.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e013a069601a4fa04dffa6459
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,=A0<div><br></div><div>I am trying to install .deb=
 file and the recipe is as follows... may I ask you what is the mistake tha=
t is not allowing it to build it into the rootfilesystem....</div><div><br>=
</div>
<div><div><i>UMMARY =3D &quot;Bootstrapper from Skidata&quot;</i></div><div=
><i>DESCRIPTION =3D &quot;For the moment it just installs the .deb file&quo=
t;</i></div><div><i>LICENSE =3D &quot;CLOSED&quot;</i></div><div><i><br></i=
></div>
<div><i>SRC_URI[md5sum] =3D &quot;7835334732d1704765e52168994b09a6&quot;</i=
></div><div><i>SRC_URI[sha256sum] =3D &quot;11bda24a487da08ef6d3133cc0bf558=
62e6ae75891c7d08433341f2f3a0dc740&quot;</i></div><div><i><br></i></div><div=
>
<i><br></i></div><div><i>SRC_URI =3D &quot;file:///home/damarla/openYocto/d=
ownloads/skidata-bootstraploader-1.0.0.14.deb&quot;</i></div><div><i><br></=
i></div><div><i>inherit bin_package</i></div><div><i><br></i></div><div><i>=
INITSCRIPT_PACKAGES =3D &quot;${PN}-bsd&quot;</i></div>
<div><i>INITSCRIPT_NAME_${PN}-bsp =3D &quot;bootstraploader&quot;</i></div>=
<div><i>INITSCRIPT_PARAMS_${PN}-bsp =3D &quot;defaults 90&quot;</i></div><d=
iv><i><br></i></div><div><i>PACKAGES =3D+ &quot;${PN} ${PN}-bsd&quot;</i></=
div>
<div><i><br></i></div><div><i>FILES_${PN}-bsd =3D &quot;${sysconfdir}/init.=
d/bootstraploader&quot;</i></div><div><i>FILES_${PN} =3D &quot;${D}/usr/ski=
data/bootstraploader/*.sh ${D}/usr/skidata/bootstraploader/*.pm&quot;</i></=
div>
</div><div><br></div><div>and the error I get is</div><div><br></div><div><=
div><i>ERROR: Function failed: do_rootfs (log file is located at /home/dama=
rla/openYocto/poky/buildSmartCPU/tmp/work/smartcpu-untersberg-linux-gnueabi=
/rootfs-smartcpu/1.0-r0/temp/log.do_rootfs.30357)</i></div>
<div><i>ERROR: Logfile of failure stored in: /home/damarla/openYocto/poky/b=
uildSmartCPU/tmp/work/smartcpu-untersberg-linux-gnueabi/rootfs-smartcpu/1.0=
-r0/temp/log.do_rootfs.30357</i></div><div><i>Log data follows:</i></div>
<div><i>| DEBUG: Executing shell function do_rootfs</i></div><div><i>| dpkg=
-scanpackages: info: Wrote 33 entries to output Packages file.</i></div><di=
v><i>| dpkg-scanpackages: info: Wrote 5352 entries to output Packages file.=
</i></div>
<div><i>| dpkg-scanpackages: info: Wrote 157 entries to output Packages fil=
e.</i></div><div><i>| dpkg-scanpackages: info: Wrote 33 entries to output P=
ackages file.</i></div><div><i>| Ign file: ./ InRelease</i></div><div><i>| =
Ign file: ./ InRelease</i></div>
<div><i>| Ign file: ./ InRelease</i></div><div><i>| Ign file: ./ Release.gp=
g</i></div><div><i>| Ign file: ./ Release.gpg</i></div><div><i>| Ign file: =
./ Release.gpg</i></div><div><i>| Get:1 file: ./ Release [16 B]</i></div>
<div><i>| Get:2 file: ./ Release [29 B]</i></div><div><i>| Get:3 file: ./ R=
elease [11 B]</i></div><div><i>| Ign file: ./ Translation-en</i></div><div>=
<i>| Ign file: ./ Translation-en</i></div><div><i>| Ign file: ./ Translatio=
n-en</i></div>
<div><i>| Reading package lists...</i></div><div><i>| Reading package lists=
...</i></div><div><i>| Building dependency tree...</i></div><div><i>| Readi=
ng state information...</i></div><div><i>| The following extra packages wil=
l be installed:</i></div>
<div><i>| =A0 eglibc-binary-localedata-en-us</i></div><div><i>| The followi=
ng NEW packages will be installed:</i></div><div><i>| =A0 eglibc-binary-loc=
aledata-en-us locale-base-en-us</i></div><div><i>| 0 upgraded, 2 newly inst=
alled, 0 to remove and 0 not upgraded.</i></div>
<div><i>| Need to get 0 B/327 kB of archives.</i></div><div><i>| After this=
 operation, 0 B of additional disk space will be used.</i></div><div><i>| W=
ARNING: The following packages cannot be authenticated!</i></div><div><i>| =
=A0 eglibc-binary-localedata-en-us locale-base-en-us</i></div>
<div><i>| Authentication warning overridden.</i></div><div><i>| dpkg: warni=
ng: overriding problem because --force enabled:</i></div><div><i>| =A0packa=
ge architecture (armel) does not match system (amd64)</i></div><div><i>| Se=
lecting previously unselected package eglibc-binary-localedata-en-us.</i></=
div>
<div><i>| (Reading database ... 0 files and directories currently installed=
.)</i></div><div><i>| Unpacking eglibc-binary-localedata-en-us (from .../eg=
libc-binary-localedata-en-us_2.17-r0_armel.deb) ...</i></div><div><i>| dpkg=
: warning: overriding problem because --force enabled:</i></div>
<div><i>| =A0package architecture (armel) does not match system (amd64)</i>=
</div><div><i>| Selecting previously unselected package locale-base-en-us.<=
/i></div><div><i>| Unpacking locale-base-en-us (from .../locale-base-en-us_=
2.17-r0_armel.deb) ...</i></div>
<div><i>| Reading package lists...</i></div><div><i>| Building dependency t=
ree...</i></div><div><i>| Reading state information...</i></div><div><i>| T=
he following extra packages will be installed:</i></div><div><i>| =A0 eglib=
c-binary-localedata-en-gb</i></div>
<div><i>| The following NEW packages will be installed:</i></div><div><i>| =
=A0 eglibc-binary-localedata-en-gb locale-base-en-gb</i></div><div><i>| 0 u=
pgraded, 2 newly installed, 0 to remove and 0 not upgraded.</i></div><div>
<i>| 2 not fully installed or removed.</i></div><div><i>| Need to get 0 B/3=
27 kB of archives.</i></div><div><i>| After this operation, 0 B of addition=
al disk space will be used.</i></div><div><i>| WARNING: The following packa=
ges cannot be authenticated!</i></div>
<div><i>| =A0 eglibc-binary-localedata-en-gb locale-base-en-gb</i></div><di=
v><i>| Authentication warning overridden.</i></div><div><i>| dpkg: warning:=
 overriding problem because --force enabled:</i></div><div><i>| =A0package =
architecture (armel) does not match system (amd64)</i></div>
<div><i>| Selecting previously unselected package eglibc-binary-localedata-=
en-gb.</i></div><div><i>| (Reading database ... 18 files and directories cu=
rrently installed.)</i></div><div><i>| Unpacking eglibc-binary-localedata-e=
n-gb (from .../eglibc-binary-localedata-en-gb_2.17-r0_armel.deb) ...</i></d=
iv>
<div><i>| dpkg: warning: overriding problem because --force enabled:</i></d=
iv><div><i>| =A0package architecture (armel) does not match system (amd64)<=
/i></div><div><i>| Selecting previously unselected package locale-base-en-g=
b.</i></div>
<div><i>| Unpacking locale-base-en-gb (from .../locale-base-en-gb_2.17-r0_a=
rmel.deb) ...</i></div><div><i>| Reading package lists...</i></div><div><i>=
| Building dependency tree...</i></div><div><i>| Reading state information.=
..</i></div>
<div><i>| Package bootstrapper is not available, but is referred to by anot=
her package.</i></div><div><i>| This may mean that the package is missing, =
has been obsoleted, or</i></div><div><i>| is only available from another so=
urce</i></div>
<div><i>|=A0</i></div><div><i>| E: Package &#39;bootstrapper&#39; has no in=
stallation candidate</i></div><div><i>| E: Unable to locate package bootstr=
apper-bsd</i></div><div><i>| ERROR: Function failed: do_rootfs (log file is=
 located at /home/damarla/openYocto/poky/buildSmartCPU/tmp/work/smartcpu-un=
tersberg-linux-gnueabi/rootfs-smartcpu/1.0-r0/temp/log.do_rootfs.30357)</i>=
</div>
<div><i>ERROR: Task 7 (/home/damarla/openYocto/poky/meta-skidata/recipes-sm=
artcpu/images/<a href=3D"http://rootfs-smartcpu.bb">rootfs-smartcpu.bb</a>,=
 do_rootfs) failed with exit code &#39;1&#39;</i></div><div><i>NOTE: Tasks =
Summary: Attempted 5162 tasks of which 5160 didn&#39;t need to be rerun and=
 1 failed.</i></div>
<div><i>No currently running tasks (5161 of 5163)</i></div><div><i><br></i>=
</div><div><i>Summary: 1 task failed:</i></div><div><i>=A0 /home/damarla/op=
enYocto/poky/meta-skidata/recipes-smartcpu/images/<a href=3D"http://rootfs-=
smartcpu.bb">rootfs-smartcpu.bb</a>, do_rootfs</i></div>
<div><i>Summary: There was 1 ERROR message shown, returning a non-zero exit=
 code.</i></div></div><div><br></div><div>Where did I make the error. I cre=
ated two packages here and I put those packages in my rootfs...=A0</div><di=
v>
Suggestions please,</div><div><br></div><div>Greets,</div><div>Satya</div><=
/div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, =
Jun 20, 2013 at 12:09 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.i=
ntel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On W=
ednesday 19 June 2013 09:10:20 DAMARLA Satya Swaroop wrote:<br>
&gt; I have a .deb file which has to be installed. It installs properly on =
the<br>
&gt; target image but I want to install it at the build itself by creating =
a<br>
&gt; bitbake recipe.. Is it possible to install .deb files or not? If possi=
ble,<br>
&gt; please suggest me so that I can make it..<br>
<br>
</div></div>I think the bin_package class is designed explicitly to help wi=
th this. Have a<br>
look at classes/bin_package.bbclass.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--089e013a069601a4fa04dffa6459--
