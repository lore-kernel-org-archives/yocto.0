Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C97BE0175F
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 06:05:51 -0700 (PDT)
Received: by mail-wi0-f171.google.com with SMTP id h11so8958241wiv.4
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 06:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7gaPCSR6IuqJv3tb5N1CVCjl/R/e8cS7u2UDcf65Q4E=;
	b=XltHmWa721dJluTYBZMWBtn7klrDVnX2XoEl1OFwHyhOs98dMXziBBTLeHElLmH1ma
	qZAtkRA+iTZbC+G1I5mFORhVqDVfnyJkxVF+me/PgGmOOazaLY2aMzvFWZ3yCDvaomhU
	01F3TZv+doTDvLbhdv5Du2zmiXx38p8UKesELXE4DW0MCfjTtLTJW+xkfr/kDwN1wuCF
	nbbczq0CtUpOZUdBf+rm+t2fyuf6Nqy/ZjvkYY40IxSqxWMwGT3oR0f3CggrBAEiUIvu
	dnzMexUczqmp0hT+om+uH3ImsnKbYF32kZrMTG4YK9uJGc+SBZU8gwC3kLOt76tFNtGU
	Y7oQ==
MIME-Version: 1.0
X-Received: by 10.180.211.7 with SMTP id my7mr2147888wic.17.1382619949847;
	Thu, 24 Oct 2013 06:05:49 -0700 (PDT)
Received: by 10.194.179.198 with HTTP; Thu, 24 Oct 2013 06:05:49 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B8F8B240@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153B8ED06FE@pluto.melinkcorp.local>
	<CA+chaQcLnZvUXN=4qWuWgavOJ2FdfVT6uVA3NHmDr3P-XE6PEw@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B8F8B240@pluto.melinkcorp.local>
Date: Thu, 24 Oct 2013 15:05:49 +0200
Message-ID: <CA+chaQeRS6+fBt7Qh3be90shAga4ndiSnxkjJDGPB9A91vLMDg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to prevent building -dbg and -doc packages?
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
X-List-Received-Date: Thu, 24 Oct 2013 13:05:54 -0000
Content-Type: multipart/alternative; boundary=001a11c259f0f859e904e97c4ac4

--001a11c259f0f859e904e97c4ac4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

If you want to really strip down the deploy/ipk directory size to minimum
set of .ipks really installed in your rootfs, you can easily use
installed-package.txt report from buildhistory to copy only installed .ipk
files from deploy/ipk. Don't forget to re-execute package-index
(opkg-make-install) in stripped feed

Advantage of keeping both enabled and then just creating stripped feed for
on device upgrade would be to allow internal developers to access internal
feed e.g. to install -dbg package matching end-user feed and debug
something.


On Thu, Oct 24, 2013 at 2:20 PM, Bryan Evenson <bevenson@melinkcorp.com>wro=
te:

> Martin,****
>
> ** **
>
> Good question and several reasons.  Build time isn=E2=80=99t as much of a=
 factor
> as most of the packages that create the =E2=80=93dbg and =E2=80=93doc pac=
kages are core
> packages that don=E2=80=99t get rebuilt very often.  The big reason is th=
at I=E2=80=99m
> using a copy of the tmp/deploy/ipk/ directory for firmware upgrade for ou=
r
> devices and trying to reduce the clutter.  By just going through and
> deleting all the =E2=80=93dbg and =E2=80=93doc packages from the ipk/ dir=
ectory I reduced
> its size from about 300 MB to about 150 MB (side note: the 300 MB ipk/
> directory size was after some additional cleanup.  I recently reset my tm=
p/
> directory as the ipk/ directory had grown to 700 MB with different stuff =
I
> have tried).  Since one method of firmware upgrade for us is through a US=
B
> stick, the smaller that directory gets the easier it is to transfer to a
> USB stick.  So my thought was that if I=E2=80=99m building the packages f=
or a
> production setup in which the =E2=80=93dbg and =E2=80=93doc packages will=
 never be used,
> why bother even generating them in the first place?****
>
> ** **
>
> My overall goal, which this is part of, is to reduce the resulting ipk/
> directory to only the packages that are actually used by the image I
> built.  Based on my final image size, if I only include the packages that
> are used for the image I believe I could get the ipk/ directory to under =
50
> MB.  Making it that small would make some options, such as providing a
> download from our company=E2=80=99s website for our customers, more reaso=
nable.***
> *
>
> ** **
>
> Thanks,****
>
> Bryan****
>
> ** **
>
> *From:* Martin Jansa [mailto:martin.jansa@gmail.com]
> *Sent:* Wednesday, October 23, 2013 6:12 PM
> *To:* Bryan Evenson
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] How to prevent building -dbg and -doc packages?***=
*
>
> ** **
>
> Why do you want to disable them? All the files are already there, so
> packaging them in right package doesn't cost much (if your reason was bui=
ld
> time).****
>
> ** **
>
> On Wed, Oct 23, 2013 at 6:31 PM, Bryan Evenson <bevenson@melinkcorp.com>
> wrote:****
>
> I'm on poky/dylan-9.0.1.  I'm not using any of the -dbg and the -doc
> packages and I'd like to clean things up for my build by not building the=
se
> packages in the first place across the entire system.  I see references i=
n
> the documentation to these package types, but I haven't found anything
> about how to keep the system from generating them.
>
> I tried going into meta/conf/bitbake.conf and modifying the PACKAGES
> variable to look as follows:
>
> PACKAGES =3D "${PN}-staticdev ${PN}-dev ${PN}-locale ${PACKAGE_BEFORE_PN}
> ${PN}"
>
> This caused a bunch of packages to get rebuilt and seemed to be working
> until it got to the libpam package.  Then I got the following errors:
>
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch2
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_pwhistory1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access3
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix2
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_succeed_if1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_authsucceed
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch4
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_time1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix3
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_authfail
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_cracklib1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access2
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_cracklib2
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch5
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_limits1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch3
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_group1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix4
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access4
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpa=
m-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix1
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /media/sda3/poky/poky-build/tmp/work/arm926ejste-poky-linux-gnueabi/libpa=
m/1.1.6-r2/temp/log.do_package.8163
> ERROR: Task 362 (/media/sda3/poky/meta/recipes-extended/pam/
> libpam_1.1.6.bb, do_package) failed with exit code '1'
>
> So either I didn't remove enough from bitbake.conf or there is a better
> way to do this.  Does anyone know of a good way to avoid building all the
> -dbg and -doc packages?
>
> Thanks,
> Bryan
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto****
>
> ** **
>

--001a11c259f0f859e904e97c4ac4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you want to really strip down the deploy/ipk direc=
tory size to minimum set of .ipks really installed in your rootfs, you can =
easily use installed-package.txt report from buildhistory to copy only inst=
alled .ipk files from deploy/ipk. Don&#39;t forget to re-execute package-in=
dex (opkg-make-install) in stripped feed<br>
<br></div>Advantage of keeping both enabled and then just creating stripped=
 feed for on device upgrade would be to allow internal developers to access=
 internal feed e.g. to install -dbg package matching end-user feed and debu=
g something.<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu,=
 Oct 24, 2013 at 2:20 PM, Bryan Evenson <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@melinkcorp.com</a>=
&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div link=3D"blue" vlink=3D"purple" lang=3D"=
EN-US"><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Martin,<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Good question and s=
everal reasons.=C2=A0 Build time isn=E2=80=99t as much of a factor as most =
of the packages that create the =E2=80=93dbg and =E2=80=93doc packages are =
core packages that don=E2=80=99t get rebuilt very often.=C2=A0 The big reas=
on is that I=E2=80=99m using a copy of the tmp/deploy/ipk/ directory for fi=
rmware upgrade for our devices and trying to reduce the clutter. =C2=A0By j=
ust going through and deleting all the =E2=80=93dbg and =E2=80=93doc packag=
es from the ipk/ directory I reduced its size from about 300 MB to about 15=
0 MB (side note: the 300 MB ipk/ directory size was after some additional c=
leanup.=C2=A0 I recently reset my tmp/ directory as the ipk/ directory had =
grown to 700 MB with different stuff I have tried).=C2=A0 Since one method =
of firmware upgrade for us is through a USB stick, the smaller that directo=
ry gets the easier it is to transfer to a USB stick.=C2=A0 So my thought wa=
s that if I=E2=80=99m building the packages for a production setup in which=
 the =E2=80=93dbg and =E2=80=93doc packages will never be used, why bother =
even generating them in the first place?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">My overall goal, wh=
ich this is part of, is to reduce the resulting ipk/ directory to only the =
packages that are actually used by the image I built.=C2=A0 Based on my fin=
al image size, if I only include the packages that are used for the image I=
 believe I could get the ipk/ directory to under 50 MB.=C2=A0 Making it tha=
t small would make some options, such as providing a download from our comp=
any=E2=80=99s website for our customers, more reasonable.<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks,<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Bryan<u></u><u></u></span=
></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u>=
</span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt"><div><div style=3D"border:none;border-top:solid #b5c4df 1.0pt;paddin=
g:3.0pt 0in 0in 0in"><p class=3D"MsoNormal"><b><span style=3D"font-size:10.=
0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b>=
<span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-s=
erif&quot;"> Martin Jansa [mailto:<a href=3D"mailto:martin.jansa@gmail.com"=
 target=3D"_blank">martin.jansa@gmail.com</a>] <br>
<b>Sent:</b> Wednesday, October 23, 2013 6:12 PM<br><b>To:</b> Bryan Evenso=
n<br><b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br><b>Subject:</b> Re: [yocto] How to prevent b=
uilding -dbg and -doc packages?<u></u><u></u></span></p>
</div></div><div><div class=3D"h5"><p class=3D"MsoNormal"><u></u>=C2=A0<u><=
/u></p><div><p class=3D"MsoNormal">Why do you want to disable them? All the=
 files are already there, so packaging them in right package doesn&#39;t co=
st much (if your reason was build time).<u></u><u></u></p>
</div><div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><u></u>=C2=
=A0<u></u></p><div><p class=3D"MsoNormal">On Wed, Oct 23, 2013 at 6:31 PM, =
Bryan Evenson &lt;<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_bla=
nk">bevenson@melinkcorp.com</a>&gt; wrote:<u></u><u></u></p>
<p class=3D"MsoNormal">I&#39;m on poky/dylan-9.0.1. =C2=A0I&#39;m not using=
 any of the -dbg and the -doc packages and I&#39;d like to clean things up =
for my build by not building these packages in the first place across the e=
ntire system. =C2=A0I see references in the documentation to these package =
types, but I haven&#39;t found anything about how to keep the system from g=
enerating them.<br>
<br>I tried going into meta/conf/bitbake.conf and modifying the PACKAGES va=
riable to look as follows:<br><br>PACKAGES =3D &quot;${PN}-staticdev ${PN}-=
dev ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}&quot;<br><br>This caused a bunc=
h of packages to get rebuilt and seemed to be working until it got to the l=
ibpam package. =C2=A0Then I got the following errors:<br>
<br>ERROR: QA Issue: non debug package contains .debug directory: libpam-xt=
ests path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-spl=
it/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch2<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_pwhistory1<br>ERROR:=
 QA Issue: non debug package contains .debug directory: libpam-xtests path =
/work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-=
xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access3<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix2<br>ERROR: QA I=
ssue: non debug package contains .debug directory: libpam-xtests path /work=
/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtest=
s/usr/share/Linux-PAM/xtests/.debug/tst-pam_succeed_if1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_authsucceed<br>ERROR=
: QA Issue: non debug package contains .debug directory: libpam-xtests path=
 /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam=
-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch4<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access1<br>ERROR: QA=
 Issue: non debug package contains .debug directory: libpam-xtests path /wo=
rk/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xte=
sts/usr/share/Linux-PAM/xtests/.debug/tst-pam_time1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix3<br>ERROR: QA I=
ssue: non debug package contains .debug directory: libpam-xtests path /work=
/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtest=
s/usr/share/Linux-PAM/xtests/.debug/tst-pam_authfail<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_cracklib1<br>ERROR: =
QA Issue: non debug package contains .debug directory: libpam-xtests path /=
work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-x=
tests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access2<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_cracklib2<br>ERROR: =
QA Issue: non debug package contains .debug directory: libpam-xtests path /=
work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-x=
tests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch5<br>ERROR: =
QA Issue: non debug package contains .debug directory: libpam-xtests path /=
work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-x=
tests/usr/share/Linux-PAM/xtests/.debug/tst-pam_limits1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch3<br>ERROR: =
QA Issue: non debug package contains .debug directory: libpam-xtests path /=
work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-x=
tests/usr/share/Linux-PAM/xtests/.debug/tst-pam_group1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix4<br>ERROR: QA I=
ssue: non debug package contains .debug directory: libpam-xtests path /work=
/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtest=
s/usr/share/Linux-PAM/xtests/.debug/tst-pam_access4<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix1<br>ERROR: QA r=
un found fatal errors. Please consider fixing them.<br>
ERROR: Function failed: do_package_qa<br>ERROR: Logfile of failure stored i=
n: /media/sda3/poky/poky-build/tmp/work/arm926ejste-poky-linux-gnueabi/libp=
am/1.1.6-r2/temp/log.do_package.8163<br>ERROR: Task 362 (/media/sda3/poky/m=
eta/recipes-extended/pam/<a href=3D"http://libpam_1.1.6.bb" target=3D"_blan=
k">libpam_1.1.6.bb</a>, do_package) failed with exit code &#39;1&#39;<br>
<br>So either I didn&#39;t remove enough from bitbake.conf or there is a be=
tter way to do this. =C2=A0Does anyone know of a good way to avoid building=
 all the -dbg and -doc packages?<br><br>Thanks,<br>Bryan<br><br><br><br><br=
>
_______________________________________________<br>yocto mailing list<br><a=
 href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoprojec=
t.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><u></u><u></=
u></p>
</div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div></div></di=
v></div></div></blockquote></div><br></div>

--001a11c259f0f859e904e97c4ac4--
