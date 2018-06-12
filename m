Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EE07E01E1A; Mon, 11 Jun 2018 21:43:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D4CEE00AD8
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 21:43:30 -0700 (PDT)
Received: by mail-ua0-f169.google.com with SMTP id a5-v6so15074080uao.8
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 21:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=NwlUS2rMtapCTfRvRk3r8VHxfp7VNmhhxeWBLrRwgOg=;
	b=JwMhdNmCIXh92ndOxd422n96JRioGIdJcC/8ErGvGMD0k98qwRsB7hFf4XtOsH4S7g
	WKtAqJh7j7Yoo1opDlEs6M9IPy7kG6VsCSnvJ0JuEPwMPvVx6gDLJQtuR1Bttc/3GdQI
	XWqDYO/B92IZ2JrNDlfky6O6/mjjvBnN+B8rutES+qbwSYlg01UyO3JPy76o3AtEHZZK
	Vmpxlx4PiBxXVOoa1LhiiHHnK9wlZjp2xqJX1vTSsC0GoZ4ZxHWUrdWbS/iYuLCPPWc4
	riSMYmrIpeUFgNavpmFU15IPxzbnILSuiqAy53H460WHIwoh8w1V/4xIy0ISAK0ICPHj
	UoRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=NwlUS2rMtapCTfRvRk3r8VHxfp7VNmhhxeWBLrRwgOg=;
	b=rRNW71ZwNeRzaoG7Xe5DW5LR7KHzlueR6/wWU5yKQ/x00tBH1ff3gs6ffbEjNkrWJ+
	nCDCF8kv8zMHG2kaW0FC7TRUDRpLuw1sio0YY9eyz3zhVaF7OHuZSNFCM5+qU6cuEne5
	JvThULuhxK08m+oYdpA9nOH08hI/3cSF7isqr3mJ5Sxmy1m1UcJr6Gt4nshGG2wpbOGP
	IUCjOLHdoUsB2KvlDQ5QTEHgx80Sx4TuRXrsOq5h/vQLtUoBW1qcpPYjK2+laeWvF8b6
	wM8c4s4OjN69/ddJVQ5SunzTFxmcO9c6H6VuyyDPxqJimDRNVpvGgYataX5hM/enVZqh
	uRcw==
X-Gm-Message-State: APt69E2Yj+sLdLg2vybIX3jxG5lMdHKyQbbEmalggnX7idsRhTHxa42L
	gGFNp547F0tHZFGfr9pCKo9uzqjzAGZg7OyU5So=
X-Google-Smtp-Source: ADUXVKJUMHBzOGmP63E0t5SdkEtyWFkGjUwldvvxX5WJYGcnH+hQGRhYw5ITtZzOMxQSptNiwlfJeA/sF6osynTmVXs=
X-Received: by 2002:ab0:5323:: with SMTP id
	x32-v6mr1311956uax.139.1528778609248; 
	Mon, 11 Jun 2018 21:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <fbde2f2fc27041fbb13d6f9c9eb3f881@innerrange.com>
	<9178069e17354c5daa14353f7e248009@innerrange.com>
	<48aca69585934356ae110e8647a8453f@innerrange.com>
In-Reply-To: <48aca69585934356ae110e8647a8453f@innerrange.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 Jun 2018 21:43:17 -0700
Message-ID: <CAMKF1spZJZ0WCaxHKa4e5O4EJtWH=Z1bMcnjEMSSGzUKzjz5qA@mail.gmail.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"ajlennon@gmail.com" <ajlennon@gmail.com>
Subject: Re: mono-native is trying to install files into a shared area...
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
X-List-Received-Date: Tue, 12 Jun 2018 04:43:31 -0000
Content-Type: multipart/alternative; boundary="000000000000f1d063056e6a81dc"

--000000000000f1d063056e6a81dc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 11, 2018 at 8:36 PM Craig McQueen <craig.mcqueen@innerrange.com=
>
wrote:

> I wrote:
> >
> > I wrote:
> > >
> > > Lately, I'm trying to upgrade to a later version of mono, 5.4.1.6.
> > > When I try to do a build of my Yocto image, bitbake gets to the end o=
f
> > > building mono- native, and then gets an error:
> > >
> > >
> > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: The recipe mono-
> > > native is trying to install files into a shared area when those files
> already
> > exist.
> > > Those files and their manifest location are:
> > >    /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> > > linux/usr/lib/mono/lldb/mono.py
> > >  Matched in b''
> > >  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> > > linux/usr/lib/mono/4.6.1-api/System.Web.Http.SelfHost.dll
> > >  Matched in b''
> > > ...
> > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> > >
> > linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.CommonTypes.
> > > xsd
> > >  Matched in b''
> > >  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> > > linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.Core.xsd
> > >  Matched in b''
> > >  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> > >
> > linux/usr/lib/mono/xbuild/14.0/Microsoft.Common.targets/ImportAfter/Mi
> > > c
> > > rosoft.NuGet.ImportAfter.targets
> > >  Matched in b''
> > > Please verify which recipe should provide the above files.
> > > The build has stopped as continuing in this scenario WILL break
> > > things, if not now, possibly in the future (we've seen builds fail
> > > several months later). If the system knew how to recover from this
> > > automatically it would however there are several different scenarios
> > > which can result in this and we don't know which one this is. It may
> > > be you have switched providers of something like virtual/kernel (e.g.
> > > from linux-yocto to linux-yocto-dev), in that case you need to execut=
e
> the
> > clean task for both recipes and it will resolve this error.
> > > It may be you changed DISTRO_FEATURES from systemd to udev or vice
> > > versa. Cleaning those recipes should again resolve this error however
> > > switching DISTRO_FEATURES on an existing build directory is not
> > > supported, you should really clean out tmp and rebuild (reusing sstat=
e
> > > should be safe). It could be the overlapping files detected are
> > > harmless in which case adding them to SSTATE_DUPWHITELIST may be the
> > > correct solution. It could also be your buil  d is including two
> > > different conflicting versions of things (e.g. bluez
> > > 4 and bluez 5 and the correct solution for that would be to resolve
> > > the conflict. If in doubt, please ask on the mailing list, sharing th=
e
> > > error and filelist above.
> > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: If the above
> > > message is too much, the simpler version is you're advised to wipe ou=
t
> > > tmp and rebuild (reusing sstate is fine). That will likely fix things
> > > in most (but not all) cases.
> > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: Function failed:
> > > sstate_task_postfunc
> > > ERROR: Logfile of failure stored in:
> > > /home/craigm/yocto/poky/build/tmp/work/x86_64-linux/mono-
> > > native/5.4.1.6-r0/temp/log.do_populate_sysroot.108358
> > > ERROR: Task (/home/craigm/yocto/poky/build/../../meta-mono/recipes-
> > > mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot) failed with
> > exit
> > > code '1'
> > > NOTE: Tasks Summary: Attempted 670 tasks of which 662 didn't need to
> > > be rerun and 1 failed.
> > >
> > > Summary: 1 task failed:
> > >   /home/craigm/yocto/poky/build/../../meta-mono/recipes-
> > > mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot
> > > Summary: There were 3 ERROR messages shown, returning a non-zero exit
> > > code.
> > >
> > >
> > > I'm building with Yocto poky morty branch (currently commit
> > > 0e730770a9), meta-mono master (commit dced6635ca). I'm building on
> > Ubuntu 16.04.4.
> > >
> > > I have tried deleting the tmp directory, deleting all mono and
> > > mono-native from sstate, cleaning mono and meta-mono, etc, to no avai=
l.
> > >
> > > It's puzzling why I'm getting these errors, because it says "Matched
> > > in b''", so the files are not clashing with another recipe. It seems
> > > to be somehow trying to install its own files twice, or something lik=
e
> > > that. If I look under tmp/work/x86_64-linux/mono-native/5.4.1.6-r0/,
> > > then I see the files present in both:
> > >
> > > sysroot-destdir/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
> > linux
> > > / and image/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/
> > >
> > > Is that part of the problem?
> >
> >
> > I haven't had any success figuring out what is going on. I tried doing =
a
> new
> > clean build, and got the same error.
> >
> > Does anyone else have this problem? Is it an incompatibility with Yocto
> > morty, which I'm using? Any pointers on how to narrow down the cause?
>
> I tried updating from morty to rocko, and no longer got this error. So it
> seems it's somehow an issue with meta-mono in conjunction with morty.
>

That=E2=80=99s due to the fact that Rocko onwards OE switched to using reci=
pe
specific sysroots

>
> --
> Craig McQueen
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000f1d063056e6a81dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Mon=
, Jun 11, 2018 at 8:36 PM Craig McQueen &lt;<a href=3D"mailto:craig.mcqueen=
@innerrange.com">craig.mcqueen@innerrange.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">I wrote:<br>
&gt; <br>
&gt; I wrote:<br>
&gt; &gt;<br>
&gt; &gt; Lately, I&#39;m trying to upgrade to a later version of mono, 5.4=
.1.6.<br>
&gt; &gt; When I try to do a build of my Yocto image, bitbake gets to the e=
nd of<br>
&gt; &gt; building mono- native, and then gets an error:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: The recipe mon=
o-<br>
&gt; &gt; native is trying to install files into a shared area when those f=
iles already<br>
&gt; exist.<br>
&gt; &gt; Those files and their manifest location are:<br>
&gt; &gt;=C2=A0 =C2=A0 /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<b=
r>
&gt; &gt; linux/usr/lib/mono/lldb/mono.py<br>
&gt; &gt;=C2=A0 Matched in b&#39;&#39;<br>
&gt; &gt;=C2=A0 /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
&gt; &gt; linux/usr/lib/mono/4.6.1-api/System.Web.Http.SelfHost.dll<br>
&gt; &gt;=C2=A0 Matched in b&#39;&#39;<br>
&gt; &gt; ...<br>
&gt; &gt; /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
&gt; &gt;<br>
&gt; linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.CommonTypes=
.<br>
&gt; &gt; xsd<br>
&gt; &gt;=C2=A0 Matched in b&#39;&#39;<br>
&gt; &gt;=C2=A0 /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
&gt; &gt; linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.Core.x=
sd<br>
&gt; &gt;=C2=A0 Matched in b&#39;&#39;<br>
&gt; &gt;=C2=A0 /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
&gt; &gt;<br>
&gt; linux/usr/lib/mono/xbuild/14.0/Microsoft.Common.targets/ImportAfter/Mi=
<br>
&gt; &gt; c<br>
&gt; &gt; rosoft.NuGet.ImportAfter.targets<br>
&gt; &gt;=C2=A0 Matched in b&#39;&#39;<br>
&gt; &gt; Please verify which recipe should provide the above files.<br>
&gt; &gt; The build has stopped as continuing in this scenario WILL break<b=
r>
&gt; &gt; things, if not now, possibly in the future (we&#39;ve seen builds=
 fail<br>
&gt; &gt; several months later). If the system knew how to recover from thi=
s<br>
&gt; &gt; automatically it would however there are several different scenar=
ios<br>
&gt; &gt; which can result in this and we don&#39;t know which one this is.=
 It may<br>
&gt; &gt; be you have switched providers of something like virtual/kernel (=
e.g.<br>
&gt; &gt; from linux-yocto to linux-yocto-dev), in that case you need to ex=
ecute the<br>
&gt; clean task for both recipes and it will resolve this error.<br>
&gt; &gt; It may be you changed DISTRO_FEATURES from systemd to udev or vic=
e<br>
&gt; &gt; versa. Cleaning those recipes should again resolve this error how=
ever<br>
&gt; &gt; switching DISTRO_FEATURES on an existing build directory is not<b=
r>
&gt; &gt; supported, you should really clean out tmp and rebuild (reusing s=
state<br>
&gt; &gt; should be safe). It could be the overlapping files detected are<b=
r>
&gt; &gt; harmless in which case adding them to SSTATE_DUPWHITELIST may be =
the<br>
&gt; &gt; correct solution. It could also be your buil=C2=A0 d is including=
 two<br>
&gt; &gt; different conflicting versions of things (e.g. bluez<br>
&gt; &gt; 4 and bluez 5 and the correct solution for that would be to resol=
ve<br>
&gt; &gt; the conflict. If in doubt, please ask on the mailing list, sharin=
g the<br>
&gt; &gt; error and filelist above.<br>
&gt; &gt; ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: If the above<b=
r>
&gt; &gt; message is too much, the simpler version is you&#39;re advised to=
 wipe out<br>
&gt; &gt; tmp and rebuild (reusing sstate is fine). That will likely fix th=
ings<br>
&gt; &gt; in most (but not all) cases.<br>
&gt; &gt; ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: Function faile=
d:<br>
&gt; &gt; sstate_task_postfunc<br>
&gt; &gt; ERROR: Logfile of failure stored in:<br>
&gt; &gt; /home/craigm/yocto/poky/build/tmp/work/x86_64-linux/mono-<br>
&gt; &gt; native/5.4.1.6-r0/temp/log.do_populate_sysroot.108358<br>
&gt; &gt; ERROR: Task (/home/craigm/yocto/poky/build/../../meta-mono/recipe=
s-<br>
&gt; &gt; mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot) failed with=
<br>
&gt; exit<br>
&gt; &gt; code &#39;1&#39;<br>
&gt; &gt; NOTE: Tasks Summary: Attempted 670 tasks of which 662 didn&#39;t =
need to<br>
&gt; &gt; be rerun and 1 failed.<br>
&gt; &gt;<br>
&gt; &gt; Summary: 1 task failed:<br>
&gt; &gt;=C2=A0 =C2=A0/home/craigm/yocto/poky/build/../../meta-mono/recipes=
-<br>
&gt; &gt; mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot<br>
&gt; &gt; Summary: There were 3 ERROR messages shown, returning a non-zero =
exit<br>
&gt; &gt; code.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m building with Yocto poky morty branch (currently commit<b=
r>
&gt; &gt; 0e730770a9), meta-mono master (commit dced6635ca). I&#39;m buildi=
ng on<br>
&gt; Ubuntu 16.04.4.<br>
&gt; &gt;<br>
&gt; &gt; I have tried deleting the tmp directory, deleting all mono and<br=
>
&gt; &gt; mono-native from sstate, cleaning mono and meta-mono, etc, to no =
avail.<br>
&gt; &gt;<br>
&gt; &gt; It&#39;s puzzling why I&#39;m getting these errors, because it sa=
ys &quot;Matched<br>
&gt; &gt; in b&#39;&#39;&quot;, so the files are not clashing with another =
recipe. It seems<br>
&gt; &gt; to be somehow trying to install its own files twice, or something=
 like<br>
&gt; &gt; that. If I look under tmp/work/x86_64-linux/mono-native/5.4.1.6-r=
0/,<br>
&gt; &gt; then I see the files present in both:<br>
&gt; &gt;<br>
&gt; &gt; sysroot-destdir/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-=
<br>
&gt; linux<br>
&gt; &gt; / and image/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linu=
x/<br>
&gt; &gt;<br>
&gt; &gt; Is that part of the problem?<br>
&gt; <br>
&gt; <br>
&gt; I haven&#39;t had any success figuring out what is going on. I tried d=
oing a new<br>
&gt; clean build, and got the same error.<br>
&gt; <br>
&gt; Does anyone else have this problem? Is it an incompatibility with Yoct=
o<br>
&gt; morty, which I&#39;m using? Any pointers on how to narrow down the cau=
se?<br>
<br>
I tried updating from morty to rocko, and no longer got this error. So it s=
eems it&#39;s somehow an issue with meta-mono in conjunction with morty.<br=
>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">That=E2=80=99s d=
ue to the fact that Rocko onwards OE switched to using recipe specific sysr=
oots=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><br>
-- <br>
Craig McQueen<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000f1d063056e6a81dc--
