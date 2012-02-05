Return-Path: <rudolf.streif@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 873D8E01217
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 15:49:29 -0800 (PST)
Received: by wgbdq12 with SMTP id dq12so5266190wgb.11
	for <yocto@yoctoproject.org>; Sun, 05 Feb 2012 15:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=yX6ZeGLn/s0C1hQfhO6q/TlW/Sq01FBz47C7gNpFbTk=;
	b=KxsHQr18Ck3oxkVoy2Kv549JM2BgI8QyJ90sH+ldYHOgUMndnmR+GVsqWx+n7wm9rH
	IOWjP4MM5PsD2GTnOveFDiN8pSTdeUawyyjGC3Xb9k3ez50+CFyCPZXqTI8Du12nkNqN
	f7Lj+mKzgxCQ98ijv5sKV3xcs2KvLCBjKeblk=
MIME-Version: 1.0
Received: by 10.180.101.161 with SMTP id fh1mr23985003wib.0.1328485767103;
	Sun, 05 Feb 2012 15:49:27 -0800 (PST)
Received: by 10.216.184.17 with HTTP; Sun, 5 Feb 2012 15:49:27 -0800 (PST)
In-Reply-To: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
References: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
Date: Sun, 5 Feb 2012 15:49:27 -0800
Message-ID: <CAEKp-aZZXm0wjqod-F5ph7Af2R7jUZAaCn_hA85yCc0GrUGjGQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
To: Sean Liming <sean_liming@sjjmicro.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build Error
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
X-List-Received-Date: Sun, 05 Feb 2012 23:49:30 -0000
Content-Type: multipart/alternative; boundary=f46d04462e7e3cc38b04b840325c

--f46d04462e7e3cc38b04b840325c
Content-Type: text/plain; charset=ISO-8859-1

Hi Sean,

icon-naming-utils fails because the download site does not have the source
archive available. You can download it from h
ttp://downloads.yoctoproject.org/mirror/sources/icon-naming-utils-0.8.7.tar.gz<http://downloads.yoctoproject.org/mirror/sources/icon-naming-utils-0.8.7.tar.gz>

For the other two you are lacking lib-xml-parser for intltool. This was a
bug a while ago  because of a missing dependency. But has been resolved:
http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/7989.

You are supposed to be using bash. Ubuntu uses dash by default but if you
were then the sanity checker would flag it the moment you run Bitbake from
you build environment. Just in case: sudo dpkg-reconfigure bash

Rudi


On Sun, Feb 5, 2012 at 2:27 PM, Sean Liming <sean_liming@sjjmicro.com>wrote:

> I am new developer to Yocto and embedded Linux in general****
>
> ** **
>
> Host machine: i3 with 4GB RAM****
>
> OS: Ubuntu 11.10 64-bit****
>
> ** **
>
> I am following the online quick start guide, and looks like the end of
> bitbake runs into several errors:****
>
> ** **
>
> ERROR: Task 1136 (/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/
> contacts_git.bb, do_configure) failed with exit code '1'****
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-devtools/icon-naming-utils/
> icon-naming-utils-native_0.8.7.bb' failed****
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-graphics/xorg-lib/
> xkeyboard-config_2.1.bb' failed****
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-support/libfm/
> libfm_0.1.14.bb' failed****
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-gnome/gnome/
> gnome-vfs_2.24.4.bb' failed****
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-support/vte/vte_0.24.3.bb'
> failed****
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-sato/puzzles/
> oh-puzzles_git.bb' failed****
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-connectivity/connman/
> connman-gnome_0.5.bb' failed****
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/tasks_0.19.bb'
> failed****
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/dates_git.bb'
> failed****
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/
> contacts_git.bb' failed****
>
> ** **
>
> Looking back at the build process, one error calls out a package that
> cannot be downloaded:
> http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz****
>
> ** **
>
> I have attached errors some of the log files. The common error appears to
> be oe_runconf failed.****
>
> ** **
>
> Did I miss configure something? Wrong python version?****
>
> There was a post about the dash vs. bash shell. I am not sure what shell
> is supposed to be using:****
>
> ** **
>
> The instructions say run sudo dpkg-reconfigure dash and say no. Nothing in
> the message popup says what is the shell.****
>
> ** **
>
> Thanks for any help.****
>
> ** **
>
> Regards,****
>
> ** **
>
> Sean****
>
> ** **
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
*Rudolf J. Streif*

--f46d04462e7e3cc38b04b840325c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Sean,<div><br></div><div>icon-naming-utils fails because the download si=
te does not have the source archive available. You can download it from=A0<=
font face=3D"arial, helvetica, sans-serif">h<a rel=3D"nofollow" href=3D"htt=
p://downloads.yoctoproject.org/mirror/sources/icon-naming-utils-0.8.7.tar.g=
z" target=3D"_top" style=3D"background-color:rgb(255,255,255);line-height:1=
9px;text-align:justify;color:rgb(0,51,102);text-decoration:none">ttp://down=
loads.yoctoproject.org/mirror/sources/icon-naming-utils-0.8.7.tar.gz</a><br=
>
</font><br>For the other two you are lacking lib-xml-parser for intltool. T=
his was a bug a while ago =A0because of a missing dependency. But has been =
resolved:=A0
<a href=3D"http://comments.gmane.org/gmane.comp.handhelds.openembedded.core=
/7989">http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/798=
9</a>.</div><div><br></div><div>You are supposed to be using bash. Ubuntu u=
ses dash by default but if you were then the sanity checker would flag it t=
he moment you run Bitbake from you build environment. Just in case: sudo dp=
kg-reconfigure bash</div>
<div><br></div><div>Rudi<br><br><br><div class=3D"gmail_quote">On Sun, Feb =
5, 2012 at 2:27 PM, Sean Liming <span dir=3D"ltr">&lt;<a href=3D"mailto:sea=
n_liming@sjjmicro.com">sean_liming@sjjmicro.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">
<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div><p class=3D"MsoNorm=
al">I am new developer to Yocto and embedded Linux in general<u></u><u></u>=
</p><p class=3D"MsoNormal"><u></u>=A0<u></u></p><p class=3D"MsoNormal">Host=
 machine: i3 with 4GB RAM<u></u><u></u></p>
<p class=3D"MsoNormal">OS: Ubuntu 11.10 64-bit<u></u><u></u></p><p class=3D=
"MsoNormal"><u></u>=A0<u></u></p><p class=3D"MsoNormal">I am following the =
online quick start guide, and looks like the end of bitbake runs into sever=
al errors:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p><p class=3D"MsoNormal">ERROR: T=
ask 1136 (/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/<a href=3D"h=
ttp://contacts_git.bb" target=3D"_blank">contacts_git.bb</a>, do_configure)=
 failed with exit code &#39;1&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: &#39;/home/sean/poky-edison-6.0/meta/recipes-=
devtools/icon-naming-utils/<a href=3D"http://icon-naming-utils-native_0.8.7=
.bb" target=3D"_blank">icon-naming-utils-native_0.8.7.bb</a>&#39; failed<u>=
</u><u></u></p>
<p class=3D"MsoNormal">ERROR: &#39;/home/sean/poky-edison-6.0/meta/recipes-=
graphics/xorg-lib/<a href=3D"http://xkeyboard-config_2.1.bb" target=3D"_bla=
nk">xkeyboard-config_2.1.bb</a>&#39; failed<u></u><u></u></p><p class=3D"Ms=
oNormal">
ERROR: &#39;/home/sean/poky-edison-6.0/meta/recipes-support/libfm/<a href=
=3D"http://libfm_0.1.14.bb" target=3D"_blank">libfm_0.1.14.bb</a>&#39; fail=
ed<u></u><u></u></p><p class=3D"MsoNormal">ERROR: &#39;/home/sean/poky-edis=
on-6.0/meta/recipes-gnome/gnome/<a href=3D"http://gnome-vfs_2.24.4.bb" targ=
et=3D"_blank">gnome-vfs_2.24.4.bb</a>&#39; failed<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: &#39;/home/sean/poky-edison-6.0/meta/recipes-=
support/vte/<a href=3D"http://vte_0.24.3.bb" target=3D"_blank">vte_0.24.3.b=
b</a>&#39; failed<u></u><u></u></p><p class=3D"MsoNormal">ERROR: &#39;/home=
/sean/poky-edison-6.0/meta/recipes-sato/puzzles/<a href=3D"http://oh-puzzle=
s_git.bb" target=3D"_blank">oh-puzzles_git.bb</a>&#39; failed<u></u><u></u>=
</p>
<p class=3D"MsoNormal">ERROR: &#39;/home/sean/poky-edison-6.0/meta/recipes-=
connectivity/connman/<a href=3D"http://connman-gnome_0.5.bb" target=3D"_bla=
nk">connman-gnome_0.5.bb</a>&#39; failed<u></u><u></u></p><p class=3D"MsoNo=
rmal">
ERROR: &#39;/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/<a href=3D=
"http://tasks_0.19.bb" target=3D"_blank">tasks_0.19.bb</a>&#39; failed<u></=
u><u></u></p><p class=3D"MsoNormal">ERROR: &#39;/home/sean/poky-edison-6.0/=
meta/recipes-sato/pimlico/<a href=3D"http://dates_git.bb" target=3D"_blank"=
>dates_git.bb</a>&#39; failed<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: &#39;/home/sean/poky-edison-6.0/meta/recipes-=
sato/pimlico/<a href=3D"http://contacts_git.bb" target=3D"_blank">contacts_=
git.bb</a>&#39; failed<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=A0<u=
></u></p>
<p class=3D"MsoNormal">Looking back at the build process, one error calls o=
ut a package that cannot be downloaded: <a href=3D"http://tango.freedesktop=
.org/releases/icon-naming-utils-0.8.7.tar.gz" target=3D"_blank">http://tang=
o.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz</a><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p><p class=3D"MsoNormal">I have a=
ttached errors some of the log files. The common error appears to be oe_run=
conf failed.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=A0<u></u></p><=
p class=3D"MsoNormal">
Did I miss configure something? Wrong python version?<u></u><u></u></p><p c=
lass=3D"MsoNormal">There was a post about the dash vs. bash shell. I am not=
 sure what shell is supposed to be using:<u></u><u></u></p><p class=3D"MsoN=
ormal">
<u></u>=A0<u></u></p><p class=3D"MsoNormal">The instructions say run sudo d=
pkg-reconfigure dash and say no. Nothing in the message popup says what is =
the shell.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=A0<u></u></p><p =
class=3D"MsoNormal">
Thanks for any help.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=A0<u><=
/u></p><p class=3D"MsoNormal">Regards,<u></u><u></u></p><p class=3D"MsoNorm=
al"><u></u>=A0<u></u></p><p class=3D"MsoNormal">Sean<u></u><u></u></p><p cl=
ass=3D"MsoNormal">
<u></u>=A0<u></u></p></div></div><br>______________________________________=
_________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><font fa=
ce=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font><div><fon=
t face=3D"garamond, serif"><br></font></div><br>
</div>

--f46d04462e7e3cc38b04b840325c--
