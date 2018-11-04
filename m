Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B2CCE00AB3; Sun,  4 Nov 2018 05:24:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
	[209.85.167.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC0EE00718
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 05:24:25 -0800 (PST)
Received: by mail-oi1-f178.google.com with SMTP id v198-v6so5269599oif.2
	for <yocto@yoctoproject.org>; Sun, 04 Nov 2018 05:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5R6iEwwEk9j1nu4Wz3ZTkauekM4VY9qseZTZZIqp+0s=;
	b=g5TuY9TRdci//c3L09Vm5g4xMh86m3PZ/9rGcPNe/jBs96AhMtDmMhzfJRKaE3zAg0
	gqUS65AirHZjsNk4T1dY9CZLpxm+jZcTl9qzGp3USrGzE6DMiwlX3On7x4fblD3B5n9j
	pv4J+o2VYjzyLUwzfUwTtdzkm+UZPSx3CkK6xE4EoHhond2svFNehU1/zuI2hHR+1nqy
	2coLbfxcs+DbcTcOLsjhETte6YXL/gZozTEF7608pBa62/0hTrtHNwbaHEllb/uEJNze
	WRgOvuddu3htKc3kuWkfwFaD9SGP9LqKqLgLyGuEB30wxw7M7N44eHbt3vokgxq6lS9Z
	nBkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5R6iEwwEk9j1nu4Wz3ZTkauekM4VY9qseZTZZIqp+0s=;
	b=pQyAbARHUi4UBDw1Z4Sc3wgEE+EXTnPfodBUcs21AGAfEow8Kohnhb0DrtQ3hFlW2Q
	ZZGdbst/CYCmSWbL2rbvBCeZpHgjthMWhTqO0lUyuhFVozGlPgnzVwrg/QYSYTUS3Rd4
	igDdycWLu1TjI6igN3Q5dhbxPOp+R081qnqf7pWOBB6kjF4UQ8m8uk3zOabZ3kUGykUF
	40r/rNrz/e0Cz3Qd8Nl4OrsX2+MpGuEUatvL/LP0o7Fdv5/YXdsBCekSse5r37zY2Hy1
	tZEONZ+5DRdeWzNDFEyfKZcwFoM8bLigwmRFP054VmXwTAIpaAtcO5ahRYx9zBN3z/e6
	He/w==
X-Gm-Message-State: AGRZ1gK8G6oO+aHVbv6r1fh58mxwfhCej4il56KCt9ETjg81Yl3c4Vx7
	+hZhh+JbQ6Q9TlHPLX/lRZa9L4htcp80rLpkfmV5mRwa
X-Google-Smtp-Source: AJdET5d7Tr3mufyCE5PwCGgojbN6G3uLwTJ+tEFA19t7M0jpR8kcDKpR60zD03wRGYIMDnAMuObTHFbABLlUxA0xMxg=
X-Received: by 2002:aca:2d16:: with SMTP id
	t22-v6mr10146001oit.148.1541337865194; 
	Sun, 04 Nov 2018 05:24:25 -0800 (PST)
MIME-Version: 1.0
References: <AM5PR0602MB2802CE6D0351FEED6E8088E1B1CC0@AM5PR0602MB2802.eurprd06.prod.outlook.com>
	<87sh0idysw.fsf@linux.suse>
In-Reply-To: <87sh0idysw.fsf@linux.suse>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Sun, 4 Nov 2018 14:24:14 +0100
Message-ID: <CACKFPN10avDBWEf4ngcSzgvtcW4r4ehxKTujopEqk9TCA8RKbA@mail.gmail.com>
To: Uwe Geuder <jrswdnan22@snkmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Kernel development using externalsrc
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
X-List-Received-Date: Sun, 04 Nov 2018 13:24:27 -0000
Content-Type: multipart/alternative; boundary="000000000000ef12b10579d6af77"

--000000000000ef12b10579d6af77
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Another thing you could do is to work with git branches and have a bbappend
file to set the branch and commit hash. You will still need to push the
changes to the remote git repo, but you don't have to merge to your master
branch.
Then if you don't like just drop the branch or cherry-pick only the commits
that are valuable to the master.

Regards,
Dimitris

On Sat, 3 Nov 2018, 15:25 Uwe Geuder <jrswdnan22@snkmail.com wrote:

> On Fri, Nov 2, 2018 at 5:47 PM CHMIELARZ Radoslaw
> radoslaw.chmielarz-at-leica-geosystems.com wrote:
>
> > The company I work for uses yocto to build an image with a custom
> > linux kernel. The documentation
> > (https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html)
> > suggests a setup where the kernel is under git and the kernel recipe
> > specifies this git repository hence the workflow is the following:
> >
> > Make changes in local kernel directory
> > Submit changes to git (and presumably push to shared space)
> > Run yocto build which fetches the changes
> >
> > However since I don=E2=80=99t want to push the changes to git server be=
fore I
> > test locally I have added the kernel sources using
> > externalsrc.
>
> Devtool is of course what they recommend, but can always change the git
> repo to a local one in a .bbappend, so you save the push step and Yocto
> build saves fetching over the network. (Making a git commit for each
> build attempt is very little overhead and I would recommend it anyway as
> a good working practice. You can clean up using "git rebase -i" once you
> are happy with your code and before you publish it.)
>
> In one of my development branches I find
>
> SRC_URI =3D "\
>
> git:///home/myname/projects/yoctobuild/pkgsrc/somerepo/;protocol=3Dfile;b=
ranch=3Ddebug/#675-v2.16.0
> \
>   file://some.patch \
>   file://other.patch \
> "
>
> SRCREV =3D "${AUTOREV}"
>
> I have not done it for the kernel, but I see no reason why it would not
> work there.
>
> (Obviously the absolute path is nothing you would be able to share
> unmodified with others. Maybe it can be made a bit more portable using
> ${THISDIR}, but I have not had any need to try it.)
>
> > Unfortunately this has the drawback that
> > linux-libc-headers runs do_configure and do_install phase which
> > invalidates glibc-initial and requires a recompilation of a couple of
> > hundreds of packages. I would like to avoid it.
> >
>
> How editing the kernel source would cause rebuilds trailing
> linux-libc-haeaders I cannot see in my build here
>
> $ bitbake-diffsigs -t linux-libc-headers configure
> NOTE: Starting bitbake server...
> ERROR: Only one matching sigdata file found for the specified task
> (linux-libc-headers do_configure)
>
> Well, maybe I have never changed the kernel in this build area, so let's
> check what it depends on:
>
> $ bitbake-dumpsig -t linux-libc-headers configure
> NOTE: Starting bitbake server...
> ERROR: Metadata does not support finding signature data files
>
> Hmm, no idea what that means. Until someone tells us what's wrong let's
> use stamp files instead
>
> $ bitbake-dumpsig
> tmp/stamps/corei7-64-poky-linux/linux-libc-headers/4.15.7-r0.do_configure=
.sigdata...
> This task depends on the checksums of files: []
> Hash for dependent task
> /home/geuder/projects/yoctobuild/meta-nel/poky/meta/recipes-kernel/linux-=
libc-headers/linux-libc-headers_4.15.7.bb.do_prepare_recipe_sysroot
> is 5ac6adcdd9edfe2705fd461a42942613
>
> $ bitbake-dumpsig
> tmp/stamps/corei7-64-poky-linux/linux-libc-headers/4.15.7-r0.do_prepare_r=
ecipe_sysroot.sigdata...
> This task depends on the checksums of files: []
> Hash for dependent task
> /home/geuder/projects/yoctobuild/meta-nel/poky/meta/recipes-kernel/linux-=
libc-headers/linux-libc-headers_4.15.7.bb.do_fetch
> is 362b694aea2202ce72ad259579d001ad
>
> $ bitbake-dumpsig
> tmp/stamps/corei7-64-poky-linux/linux-libc-headers/4.15.7-r0.do_fetch.sig=
data...
> Variable SRC_URI value is
> ${KERNELORG_MIRROR}/linux/kernel/v${HEADER_FETCH_VER}/linux-${PV}.tar.${K=
ORG_ARCHIVE_COMPRESSION}
> Tasks this task depends on: []
> This task depends on the checksums of files: []
>
> So my build gets kernel headers from kernel.org (mirror), it does not
> use the kernel source I use to build my kernel. Maybe that's different
> for you?
>
> Of course the output of the bitbake-dumpsig commands is massively
> shortened, I just picked those lines that seemed likely candidates to
> cause rebuilds.  To get the whole truth in your build call...
>
> $ bitbake-diffsigs -t linux-libc-headers configure
>
> ... after you made a small kernel edit and rebuilt.
>
> Regards,
>
> Uwe
>
> Uwe Geuder
> Neuro Event Labs Oy
> Tampere, Finland
> uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000ef12b10579d6af77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Another thing you could do is to work with git branches a=
nd have a bbappend file to set the branch and commit hash. You will still n=
eed to push the changes to the remote git repo, but you don&#39;t have to m=
erge to your master branch.<div dir=3D"auto">Then if you don&#39;t like jus=
t drop the branch or cherry-pick only the commits that are valuable to the =
master.<br><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div=
 dir=3D"auto">Dimitris</div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr">On Sat, 3 Nov 2018, 15:25 Uwe Geuder &lt;<a href=3D"mailto:jrs=
wdnan22@snkmail.com">jrswdnan22@snkmail.com</a> wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">On Fri, Nov 2, 2018 at 5:47 PM CHMIELARZ Radoslaw <a hr=
ef=3D"http://radoslaw.chmielarz-at-leica-geosystems.com" rel=3D"noreferrer =
noreferrer" target=3D"_blank">radoslaw.chmielarz-at-leica-geosystems.com</a=
> wrote:<br>
<br>
&gt; The company I work for uses yocto to build an image with a custom<br>
&gt; linux kernel. The documentation<br>
&gt; (<a href=3D"https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-=
dev.html" rel=3D"noreferrer noreferrer" target=3D"_blank">https://www.yocto=
project.org/docs/2.5.1/kernel-dev/kernel-dev.html</a>)<br>
&gt; suggests a setup where the kernel is under git and the kernel recipe<b=
r>
&gt; specifies this git repository hence the workflow is the following:<br>
&gt;<br>
&gt; Make changes in local kernel directory<br>
&gt; Submit changes to git (and presumably push to shared space)<br>
&gt; Run yocto build which fetches the changes<br>
&gt;<br>
&gt; However since I don=E2=80=99t want to push the changes to git server b=
efore I<br>
&gt; test locally I have added the kernel sources using<br>
&gt; externalsrc. <br>
<br>
Devtool is of course what they recommend, but can always change the git<br>
repo to a local one in a .bbappend, so you save the push step and Yocto<br>
build saves fetching over the network. (Making a git commit for each<br>
build attempt is very little overhead and I would recommend it anyway as<br=
>
a good working practice. You can clean up using &quot;git rebase -i&quot; o=
nce you<br>
are happy with your code and before you publish it.)<br>
<br>
In one of my development branches I find<br>
<br>
SRC_URI =3D &quot;\<br>
=C2=A0 git:///home/myname/projects/yoctobuild/pkgsrc/somerepo/;protocol=3Df=
ile;branch=3Ddebug/#675-v2.16.0 \<br>
=C2=A0 file://some.patch \<br>
=C2=A0 file://other.patch \<br>
&quot;<br>
<br>
SRCREV =3D &quot;${AUTOREV}&quot;<br>
<br>
I have not done it for the kernel, but I see no reason why it would not<br>
work there.<br>
<br>
(Obviously the absolute path is nothing you would be able to share<br>
unmodified with others. Maybe it can be made a bit more portable using<br>
${THISDIR}, but I have not had any need to try it.) <br>
<br>
&gt; Unfortunately this has the drawback that<br>
&gt; linux-libc-headers runs do_configure and do_install phase which<br>
&gt; invalidates glibc-initial and requires a recompilation of a couple of<=
br>
&gt; hundreds of packages. I would like to avoid it.<br>
&gt;<br>
<br>
How editing the kernel source would cause rebuilds trailing<br>
linux-libc-haeaders I cannot see in my build here<br>
<br>
$ bitbake-diffsigs -t linux-libc-headers configure<br>
NOTE: Starting bitbake server...<br>
ERROR: Only one matching sigdata file found for the specified task (linux-l=
ibc-headers do_configure)<br>
<br>
Well, maybe I have never changed the kernel in this build area, so let&#39;=
s<br>
check what it depends on:<br>
<br>
$ bitbake-dumpsig -t linux-libc-headers configure<br>
NOTE: Starting bitbake server...<br>
ERROR: Metadata does not support finding signature data files<br>
<br>
Hmm, no idea what that means. Until someone tells us what&#39;s wrong let&#=
39;s<br>
use stamp files instead<br>
<br>
$ bitbake-dumpsig tmp/stamps/corei7-64-poky-linux/linux-libc-headers/4.15.7=
-r0.do_configure.sigdata...<br>
This task depends on the checksums of files: []<br>
Hash for dependent task<br>
/home/geuder/projects/yoctobuild/meta-nel/poky/meta/recipes-kernel/linux-li=
bc-headers/linux-libc-headers_4.15.7.bb.do_prepare_recipe_sysroot is 5ac6ad=
cdd9edfe2705fd461a42942613<br>
<br>
$ bitbake-dumpsig tmp/stamps/corei7-64-poky-linux/linux-libc-headers/4.15.7=
-r0.do_prepare_recipe_sysroot.sigdata...<br>
This task depends on the checksums of files: []<br>
Hash for dependent task /home/geuder/projects/yoctobuild/meta-nel/poky/meta=
/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_fetch is=
 362b694aea2202ce72ad259579d001ad<br>
<br>
$ bitbake-dumpsig tmp/stamps/corei7-64-poky-linux/linux-libc-headers/4.15.7=
-r0.do_fetch.sigdata...<br>
Variable SRC_URI value is ${KERNELORG_MIRROR}/linux/kernel/v${HEADER_FETCH_=
VER}/linux-${PV}.tar.${KORG_ARCHIVE_COMPRESSION}<br>
Tasks this task depends on: []<br>
This task depends on the checksums of files: []<br>
<br>
So my build gets kernel headers from <a href=3D"http://kernel.org" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">kernel.org</a> (mirror), it does no=
t<br>
use the kernel source I use to build my kernel. Maybe that&#39;s different<=
br>
for you?<br>
<br>
Of course the output of the bitbake-dumpsig commands is massively<br>
shortened, I just picked those lines that seemed likely candidates to<br>
cause rebuilds.=C2=A0 To get the whole truth in your build call...<br>
<br>
$ bitbake-diffsigs -t linux-libc-headers configure<br>
<br>
... after you made a small kernel edit and rebuilt.<br>
<br>
Regards,<br>
<br>
Uwe<br>
<br>
Uwe Geuder<br>
Neuro Event Labs Oy<br>
Tampere, Finland<br>
uwe.gexder at <a href=3D"http://neuroeventlabs.com" rel=3D"noreferrer noref=
errer" target=3D"_blank">neuroeventlabs.com</a> (Bot check: fix one obvious=
 typo)<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div>

--000000000000ef12b10579d6af77--
