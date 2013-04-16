Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52753E0140A
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 07:35:55 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id e53so282240eek.37
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 07:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=LS6Myl6tvYWOx2/2jGc9lqVyEH6tWDDkG3ns/ojI1+Q=;
	b=gX3jbeY7sxqW5rXnewXF/tUp9rvH0bH9W7VFHi0c1jR5Q9X913bbUjswhxk8sBBrGk
	H3wQKUz+/56e2HnovxBDkfgOZeUqIdE/JuusOw5UG96J7jPsj3Noa9+SlP5pEACc3jWs
	eBDlwmmkRX9V+o9y1X09FCINZCzsuhdHjm/mWCrx1sAJsi3Z9RYdVaGpLfJurQ4bn2eG
	LdKGQYx5IYHK54VjGYW5DjA5W13UFYIswmQz/i7gerAAu6Dz9LcIbMb6IG6oycqzf+rR
	LUCp1IQMkv3ZxrtcvLYAwEStaipP4uCCr5AiqoK8oYAacgxCNrii4bzPE3zxQ/H4zw9D
	L60A==
MIME-Version: 1.0
X-Received: by 10.15.24.71 with SMTP id i47mr7136626eeu.0.1366122922281; Tue,
	16 Apr 2013 07:35:22 -0700 (PDT)
Received: by 10.223.168.6 with HTTP; Tue, 16 Apr 2013 07:35:22 -0700 (PDT)
In-Reply-To: <CAJTo0LZjwYj04fw6wq6HBsT1v5UQjCKYc6he8rNudBL+B0dyng@mail.gmail.com>
References: <CANwz6nxtkVCvz5GBQwtDaL8Qx1FurZg4vMHv4eSyeP05d6ZQow@mail.gmail.com>
	<CAJTo0LZY+zTcC2dOLx0-5Y_jw1smgCvV-UGMv_J7VuDm9Bp9+g@mail.gmail.com>
	<CANwz6nxw7PK_g_RsukLbaFZYCPGEMrviFq_sm5ki6H=R_GiLDA@mail.gmail.com>
	<CAJTo0LZjwYj04fw6wq6HBsT1v5UQjCKYc6he8rNudBL+B0dyng@mail.gmail.com>
Date: Tue, 16 Apr 2013 08:35:22 -0600
Message-ID: <CANwz6nzYSqU=YT0V11Jo7dp0TX-NThe-yVXNCWNDEOXAy8-r2A@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard, qemuarm, beaglebone, and pandaboard images.
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
X-List-Received-Date: Tue, 16 Apr 2013 14:36:05 -0000
Content-Type: multipart/alternative; boundary=089e016344c880b93404da7b4732

--089e016344c880b93404da7b4732
Content-Type: text/plain; charset=ISO-8859-1

Ross,
My local.conf is the same for all builds.  The only thing is beaglebone and
pandaboard are using meta-ti which require a chg to bblayer.conf.  All
generate a different kernel
beagleboard 3.4.36
qemuarm 3.8.4
beaglebone 3.2.28
pandaboard 3.4.11
Also all are using meta-yocto        =
"master:068085f79010e3db70085d4b789f84ae721e4901"
I have seen the rpm -qa that is where I noticed the different number of
pkgs installed.
They all use EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk".in local.conf
Something within the build is deciding which pkgs get installed between
different builds.  I would expect several different RPMs but not hundreds
as was the case.
Thanks



On Tue, Apr 16, 2013 at 8:03 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 16 April 2013 15:01, Edward Vidal <vidal.develone@gmail.com> wrote:
> > I did a search for installed-pkgs.txt and complementary-pkgs.txt neither
> of
> > these files were on my system.  I am assuming this is because in my
> > local.conf I am using INHERIT += "rm_work".
> > as found on page 41 of the ref_manual.  What is the difference between
> the
> > two pkgs sets?  The does reduce the capabilities of the systems?  Can the
> > complementary-pkgs.txt be installed with a flag?
>
> Yes, rm_work will delete those files.
>
> As far as I know, "installed" is the packages explicitly installed,
> "complementary" is the set installed through features such as
> dev-pkgs.
>
> If you really want to find the differences on these images, boot each
> and dump the installed package list (rpm -qa?).
>
> Ross
>

--089e016344c880b93404da7b4732
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div>Ross,<br=
></div>My local.conf is the same for all builds.=A0 The only thing is beagl=
ebone and pandaboard are using meta-ti which require a chg to bblayer.conf.=
=A0 All generate a different kernel <br>
</div>beagleboard 3.4.36<br></div>qemuarm 3.8.4<br></div>beaglebone 3.2.28<=
br></div>pandaboard 3.4.11<br></div>Also all are using meta-yocto=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;master:068085f79010e3db70085d4b789f84ae721e4901&quot=
;<br></div>I have seen the rpm -qa that is where I noticed the different nu=
mber of pkgs installed.<br>
</div>They all use EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks tools-sdk&qu=
ot;.in local.conf<br></div>Something within the build is deciding which pkg=
s get installed between different builds.=A0 I would expect several differe=
nt RPMs but not hundreds as was the case.<br>
</div>Thanks =A0 <br><div><div><div><div><div><br></div></div></div></div><=
/div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On=
 Tue, Apr 16, 2013 at 8:03 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 16 April 2013 15:01, Ed=
ward Vidal &lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.develone@g=
mail.com</a>&gt; wrote:<br>

&gt; I did a search for installed-pkgs.txt and complementary-pkgs.txt neith=
er of<br>
&gt; these files were on my system. =A0I am assuming this is because in my<=
br>
&gt; local.conf I am using INHERIT +=3D &quot;rm_work&quot;.<br>
&gt; as found on page 41 of the ref_manual. =A0What is the difference betwe=
en the<br>
&gt; two pkgs sets? =A0The does reduce the capabilities of the systems? =A0=
Can the<br>
&gt; complementary-pkgs.txt be installed with a flag?<br>
<br>
</div>Yes, rm_work will delete those files.<br>
<br>
As far as I know, &quot;installed&quot; is the packages explicitly installe=
d,<br>
&quot;complementary&quot; is the set installed through features such as<br>
dev-pkgs.<br>
<br>
If you really want to find the differences on these images, boot each<br>
and dump the installed package list (rpm -qa?).<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--089e016344c880b93404da7b4732--
