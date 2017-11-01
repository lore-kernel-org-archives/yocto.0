Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A44FE00C44; Wed,  1 Nov 2017 14:26:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.yh.lee[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.170 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 285D4E00AAF
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 14:26:52 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id y75so3053940ywg.0
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 14:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kaAJg/heGedQ2vLhWYb5ZxRNNR111oAqV0pbTQpUoDo=;
	b=iOSk5PuE5xDQMoPJcj/t4n8LobPdc5CUvHMxaCmlEHXZ2ZLgBtV4vZX+0pHgDMaK1i
	8xinldgahhR+EyR+hZGCAxLjCN0cLW+DRyrEGWwuA83F+qiREaIysj4T0xFW9rDRjbtf
	J1Xm2O9zUljykoKmzNnvHp6lFrjrmQXCWqGUx6HwMLeYC+3KDsk1QuaFfPKgzqaAHbCF
	hh7TjIuFFOaCL5+kBT5RvWzIcgmnk94tnYzSaxWzFHC/wwAAT3C5xbiHQdJFbXYDNlg7
	qiogI5rUiejDb/9qNdk3/MGeMIlK46rpO1rzTXTvkm3pmT4zQdhc/4N6VEYy3cPj13aX
	d1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kaAJg/heGedQ2vLhWYb5ZxRNNR111oAqV0pbTQpUoDo=;
	b=BtTVHAUB3Himk2xL1flcWub+6aDAKckBMuCB2Ft1WxPom69jeJc2sd5KGrKZ0YJub9
	RINnTXo/vrn4YajT9V/sjKSJgiqwtIL93dBqMrL4rLE8f3vDUmaPl4aUWQXBVZE8qWZU
	ewsMg4eXN+pYbqLnEJ9SVGGC0RMxynYMS4EXgMuiYiXGgcuKvAhgSatsHep5AZ6ttrv1
	2IV/NDpe4lKP7aGUTmu2XJ8UsR/lENSTv+wNfE+dLhV+jzfluW7SgHR3psAnEp6DJwrL
	SyZ9fFMj3BRhoZepLjgBl2l/G1ucGuCAyt8XlcvPjhFNt0Bcs2/+zanyj9F6Fs56JwvF
	Kcig==
X-Gm-Message-State: AMCzsaV+xHCnFIkVpJRGNXIkVGZY70ADwmf4+6AceDgsI5S4LWyPQc36
	iJVIoBwSuXmq5IFqpFsiOt1Blv37Iljo+8yk02U=
X-Google-Smtp-Source: ABhQp+QWPjRo0h3LCSfwBeDcc1nALkpo81AoT8OTD9I5etiXsMqda/xVb8Ca4/ZKL+SvIgEA/FCf4Xeykxh0hE/dBaU=
X-Received: by 10.37.95.77 with SMTP id h13mr865420ybm.85.1509571612123; Wed,
	01 Nov 2017 14:26:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAFeBWL7V1TNoGj4gpc5QkQ4mraFwUmvt77sAAxyGTmrivTQ-Mw@mail.gmail.com>
	<1509546479.13007.35.camel@collabora.co.uk>
	<CAFeBWL79uCL0tci-9YDTeUYLFZGoND1t7yx5rMi3rPJFNt9iOg@mail.gmail.com>
	<CAJTo0LbcS5eG2SxZpWiEXvw0+Nh5DPBJ9gxjb50S9ZfnNAKnwg@mail.gmail.com>
	<CAFeBWL7EzxmSUHpgb80rwB+cpkKuiZa7gKC0MHVgm5Y9QJ76eA@mail.gmail.com>
	<CAMKF1spqqN32T6kXHwCDzG3tXFFA3YE8u_rPMgQxZZ9br7P_Tg@mail.gmail.com>
In-Reply-To: <CAMKF1spqqN32T6kXHwCDzG3tXFFA3YE8u_rPMgQxZZ9br7P_Tg@mail.gmail.com>
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Wed, 01 Nov 2017 21:26:41 +0000
Message-ID: <CAFeBWL61A_fKa+6eQ-K4W0OdicFGNjwGDjtYrY1c0Cg0UxtC2g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Checking for xwayland
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
X-List-Received-Date: Wed, 01 Nov 2017 21:26:54 -0000
Content-Type: multipart/alternative; boundary="089e082678c0b427e9055cf287f6"

--089e082678c0b427e9055cf287f6
Content-Type: text/plain; charset="UTF-8"

Hi Raj,

These are my DISTRO_FEATURES:

DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia usbgadget
usbhost wifi xattr nfs zeroconf pci 3g nfc *x11 *ipv4 ipv6 libc-backtrace
libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets
libc-crypt                                         libc-crypt-ufc
libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse
                                libc-getlogin libc-idn libc-inet-anl
libc-libm libc-locales libc-locale-code
libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn
libc-streams libc-sunrpc                               libc-utmp libc-utmpx
libc-wordexp libc-posix-clang-wchar libc-posix-regexp
libc-posix-regexp-glibc
 libc-posix-wchar-io *x11 wayland* pam *opengl *systemd pulseaudio sysvinit
bluez5 gobject-introspection-data"

Should I remove the first occurrence of x11?

Thanks for your help

Adam

On Wed, Nov 1, 2017 at 5:19 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Nov 1, 2017 at 2:03 PM, Adam Lee <adam.yh.lee@gmail.com> wrote:
> > I believe something is incorrect in my distro level configuration. Apart
> > from including x11 and wayland in DISTRO_FEATURES, what else can I check
> to
> > build core-image-weston?
> >
> > build@6e35408e8fa5:~/tisdk/build$ bitbake core-image-weston
> > NOTE: Started PRServer with DBfile:
> > /home/build/tisdk/build/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 42704,
> > PID: 13401
> > Loading cache: 100%
> >
> |###########################################################################################################|
> > Time: 0:00:02
> > Loaded 3286 entries from dependency cache.
> > Parsing recipes: 100%
> >
> |#########################################################################################################|
> > Time: 0:00:01
> > Parsing of 2538 .bb files complete (2537 cached, 1 parsed). 3286 targets,
> > 272 skipped, 0 masked, 0 errors.
> > WARNING: No recipes available for:
> >
> >
> /home/build/tisdk/sources/meta-openamp/recipes-bsp/device-tree/device-tree-generation_%.bbappend
> > NOTE: Resolving any missing task queue dependencies
> > ERROR: Nothing RPROVIDES 'weston-xwayland' (but
> > /home/build/tisdk/sources/oe-core/meta/recipes-graphics/images/
> core-image-weston.bb
> > RDEPENDS on or otherwise requires it)
> > NOTE: Runtime target 'weston-xwayland' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['weston-xwayland']
> > ERROR: Required build target 'core-image-weston' has no buildable
> providers.
> > Missing or unbuildable dependency chain was: ['core-image-weston',
> > 'weston-xwayland']
> >
> > Summary: There was 1 WARNING message shown.
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> >
> >
> >
> > On Wed, Nov 1, 2017 at 12:53 PM Burton, Ross <ross.burton@intel.com>
> wrote:
> >>
> >> On 1 November 2017 at 15:58, Adam Lee <adam.yh.lee@gmail.com> wrote:
> >>>
> >>> Thanks Fabien, I definitely don't have Xwayland in my rootfs. My
> manifest
> >>> is missing xserver-xorg-xwayland as well.
> >>>
> >>> Which image are you using? I thought including of  "x11 wayland" was
> >>> sufficient. Perhaps not..?
> >>>
> >>
> >> Are you refering to DISTRO_FEATURES?  That just controls what is
> >> *available*, not what goes into a particular image.  As Fabien said,
> >> core-image-weston is the classic example of an image that has Weston.
> >>
>
> you need opengl in DISTRO_FEATURES as well. additionally
> weston-xwayland would need wayland and x11 in DISTRO_FEATURES
>
> >> Ross
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--089e082678c0b427e9055cf287f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Raj,<div><br></div><div>These are my DISTRO_FEATURES:</=
div><div><br></div><div><div>DISTRO_FEATURES=3D&quot;alsa argp bluetooth ex=
t2 irda largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g n=
fc <b>x11 </b>ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-te=
sts libc-catgets libc-charsets libc-crypt=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libc-crypt-ufc libc-db-aliases libc-e=
nvz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 libc-getlogin libc-idn libc-inet-anl libc-libm libc-lo=
cales libc-locale-code=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 l=
ibc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn li=
bc-streams libc-sunrpc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libc-utmp libc-u=
tmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regex=
p-glibc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0li=
bc-posix-wchar-io <b>x11 wayland</b> pam <b>opengl </b>systemd pulseaudio s=
ysvinit bluez5 gobject-introspection-data&quot;</div></div><div><br></div><=
div>Should I remove the first occurrence of x11?</div><div><br></div><div>T=
hanks for your help</div><div><br></div><div>Adam</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Wed, Nov 1, 2017 at 5:19 PM Khem Raj &=
lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">On Wed, Nov 1, 2017 at 2:03 PM, Ada=
m Lee &lt;<a href=3D"mailto:adam.yh.lee@gmail.com" target=3D"_blank">adam.y=
h.lee@gmail.com</a>&gt; wrote:<br>
&gt; I believe something is incorrect in my distro level configuration. Apa=
rt<br>
&gt; from including x11 and wayland in DISTRO_FEATURES, what else can I che=
ck to<br>
&gt; build core-image-weston?<br>
&gt;<br>
&gt; build@6e35408e8fa5:~/tisdk/build$ bitbake core-image-weston<br>
&gt; NOTE: Started PRServer with DBfile:<br>
&gt; /home/build/tisdk/build/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 427=
04,<br>
&gt; PID: 13401<br>
&gt; Loading cache: 100%<br>
&gt; |#####################################################################=
######################################|<br>
&gt; Time: 0:00:02<br>
&gt; Loaded 3286 entries from dependency cache.<br>
&gt; Parsing recipes: 100%<br>
&gt; |#####################################################################=
####################################|<br>
&gt; Time: 0:00:01<br>
&gt; Parsing of 2538 .bb files complete (2537 cached, 1 parsed). 3286 targe=
ts,<br>
&gt; 272 skipped, 0 masked, 0 errors.<br>
&gt; WARNING: No recipes available for:<br>
&gt;<br>
&gt; /home/build/tisdk/sources/meta-openamp/recipes-bsp/device-tree/device-=
tree-generation_%.bbappend<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; ERROR: Nothing RPROVIDES &#39;weston-xwayland&#39; (but<br>
&gt; /home/build/tisdk/sources/oe-core/meta/recipes-graphics/images/<a href=
=3D"http://core-image-weston.bb" rel=3D"noreferrer" target=3D"_blank">core-=
image-weston.bb</a><br>
&gt; RDEPENDS on or otherwise requires it)<br>
&gt; NOTE: Runtime target &#39;weston-xwayland&#39; is unbuildable, removin=
g...<br>
&gt; Missing or unbuildable dependency chain was: [&#39;weston-xwayland&#39=
;]<br>
&gt; ERROR: Required build target &#39;core-image-weston&#39; has no builda=
ble providers.<br>
&gt; Missing or unbuildable dependency chain was: [&#39;core-image-weston&#=
39;,<br>
&gt; &#39;weston-xwayland&#39;]<br>
&gt;<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Nov 1, 2017 at 12:53 PM Burton, Ross &lt;<a href=3D"mailto:ros=
s.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; On 1 November 2017 at 15:58, Adam Lee &lt;<a href=3D"mailto:adam.y=
h.lee@gmail.com" target=3D"_blank">adam.yh.lee@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks Fabien, I definitely don&#39;t have Xwayland in my root=
fs. My manifest<br>
&gt;&gt;&gt; is missing xserver-xorg-xwayland as well.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Which image are you using? I thought including of=C2=A0 &quot;=
x11 wayland&quot; was<br>
&gt;&gt;&gt; sufficient. Perhaps not..?<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Are you refering to DISTRO_FEATURES?=C2=A0 That just controls what=
 is<br>
&gt;&gt; *available*, not what goes into a particular image.=C2=A0 As Fabie=
n said,<br>
&gt;&gt; core-image-weston is the classic example of an image that has West=
on.<br>
&gt;&gt;<br>
<br>
you need opengl in DISTRO_FEATURES as well. additionally<br>
weston-xwayland would need wayland and x11 in DISTRO_FEATURES<br>
<br>
&gt;&gt; Ross<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</blockquote></div>

--089e082678c0b427e9055cf287f6--
