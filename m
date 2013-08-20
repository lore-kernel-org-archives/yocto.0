Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED60EE00441
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 04:56:24 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id en1so300711wid.14
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 04:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=JQMgnd5xbxQ894brdsaPAS+pdeq0Hu14EYQJXBeP+RA=;
	b=s2Dob+h3kVtbnmKBGIJ7w6IoCj+/03V2fDL5IVpI+NL/CKTYPJe61jNYiaBRKBSmTt
	sreiMqkAcLMjL81WEwKYWd5YPC22VaAgcmADtQOwTDgeoiadFUftrqn7W7PKCyuSksUO
	oCazwyXWpdXzMQEOMvUrb90i4sYfP9wdNr+fUJaFOfgNlXBYGcN/Z+K7fwo2RL80dvyU
	p0n2kzL2xyjDawoe9YyxrEPOkH8klZ9QX8HQPqqVmR+T/FDEIjxRtsBuXJ+fIK6fN6vO
	bFTcGCBppRc8SVVw9XACyaoyxaMpTc1EvB2C6gzzFXxRzQOiwrwxcGkiaBNWSW+Vvc4R
	xWJA==
X-Received: by 10.180.75.16 with SMTP id y16mr12172876wiv.59.1376999783432;
	Tue, 20 Aug 2013 04:56:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Tue, 20 Aug 2013 04:56:03 -0700 (PDT)
In-Reply-To: <CAAfyv356HsJ=AmNXE+p_LvSQNEUu5B8cFKwkrXLxdDc6Js+omA@mail.gmail.com>
References: <CAAGt+t0Y-qo5Xo3s13LAf0mK+yc2ytTPmr1KWUThVDiWvFHcaw@mail.gmail.com>
	<CAAfyv356HsJ=AmNXE+p_LvSQNEUu5B8cFKwkrXLxdDc6Js+omA@mail.gmail.com>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 20 Aug 2013 13:56:03 +0200
Message-ID: <CAAGt+t2vcs0kGnx0DHDTiaxVbw3KUJxYazfPA4OH=+pKb-sKDA@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: MD5SUM recipe error.
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
X-List-Received-Date: Tue, 20 Aug 2013 11:56:27 -0000
Content-Type: multipart/alternative; boundary=f46d043c7d22f288df04e45fbe88

--f46d043c7d22f288df04e45fbe88
Content-Type: text/plain; charset=ISO-8859-1

MD5SUM error got solved.

When I build I get again this error:

ERROR: Nothing RPROVIDES 'ntp-systemd' (but
/home/zaif/yocto/poky/meta-gumstix/recipes-images/gumstix/
gumstix-console-image.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'ntp-systemd' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['ntp-systemd']
ERROR: Required build target 'gumstix-console-image' has no buildable
providers.
Missing or unbuildable dependency chain was: ['gumstix-console-image',
'ntp-systemd']

Any Ideas?


On Tue, Aug 20, 2013 at 1:43 PM, Belisko Marek <marek.belisko@gmail.com>wrote:

> Hi,
>
> On Tue, Aug 20, 2013 at 1:38 PM, Zafrullah Syed
> <zafrullahmehdi@gmail.com> wrote:
> > Hi all,
> >
> > I am facing problems while build. Trying to build gumstix-console-image.
> >
> > I downloaded GNU hello world, extracted and ran MD5SUM against COPYING,
> > added to my bitbake. Still it asks me to add MD5SUM or sha256sum.
> >
> > My hello_2.7.bb file is: http://pastebin.com/MDsCcSB9
> > Error Log file: http://pastebin.com/ibZDpMZ9
> >
> > ERROR: Fetcher failure for URL:
> > 'ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz'. No checksum specified
> for
> > /home/siguser/yocto/build/downloads/hello-2.7.tar.gz, please add at least
> > one to the recipe:
> > SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
> > SRC_URI[sha256sum] =
> > "fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"
> It's written here ^^^. Just add those 2 lines to your recipe.
> > ERROR: Function failed: Fetcher failure for URL:
> > 'ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz'. No checksum specified
> for
> > /home/siguser/yocto/build/downloads/hello-2.7.tar.gz, please add at least
> > one to the recipe:
> > SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
> > SRC_URI[sha256sum] =
> > "fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"
> > ERROR: Logfile of failure stored in:
> >
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/hello-2.7-r0/temp/log.do_fetch.3686
> > ERROR: Task 553
> > (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/hello/hello_2.7.bb,
> > do_fetch) failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 3376 tasks of which 3375 didn't need to be
> > rerun and 1 failed.
> > No currently running tasks (2494 of 3389)
> >
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>



-- 
Regards,
Zafrullah Syed

--f46d043c7d22f288df04e45fbe88
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">MD5SUM error got solved.<div><br></div><div>When I build I=
 get again this error:</div><div><br></div><div><div>ERROR: Nothing RPROVID=
ES &#39;ntp-systemd&#39; (but /home/zaif/yocto/poky/meta-gumstix/recipes-im=
ages/gumstix/<a href=3D"http://gumstix-console-image.bb">gumstix-console-im=
age.bb</a> RDEPENDS on or otherwise requires it)</div>

<div>NOTE: Runtime target &#39;ntp-systemd&#39; is unbuildable, removing...=
</div><div>Missing or unbuildable dependency chain was: [&#39;ntp-systemd&#=
39;]</div><div>ERROR: Required build target &#39;gumstix-console-image&#39;=
 has no buildable providers.</div>

<div>Missing or unbuildable dependency chain was: [&#39;gumstix-console-ima=
ge&#39;, &#39;ntp-systemd&#39;]</div></div><div><br></div><div>Any Ideas?</=
div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On =
Tue, Aug 20, 2013 at 1:43 PM, Belisko Marek <span dir=3D"ltr">&lt;<a href=
=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek.belisko@gmail.c=
om</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<div class=3D"im"><br>
On Tue, Aug 20, 2013 at 1:38 PM, Zafrullah Syed<br>
&lt;<a href=3D"mailto:zafrullahmehdi@gmail.com">zafrullahmehdi@gmail.com</a=
>&gt; wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I am facing problems while build. Trying to build gumstix-console-imag=
e.<br>
&gt;<br>
&gt; I downloaded GNU hello world, extracted and ran MD5SUM against COPYING=
,<br>
&gt; added to my bitbake. Still it asks me to add MD5SUM or sha256sum.<br>
&gt;<br>
&gt; My <a href=3D"http://hello_2.7.bb" target=3D"_blank">hello_2.7.bb</a> =
file is: <a href=3D"http://pastebin.com/MDsCcSB9" target=3D"_blank">http://=
pastebin.com/MDsCcSB9</a><br>
&gt; Error Log file: <a href=3D"http://pastebin.com/ibZDpMZ9" target=3D"_bl=
ank">http://pastebin.com/ibZDpMZ9</a><br>
&gt;<br>
&gt; ERROR: Fetcher failure for URL:<br>
&gt; &#39;<a href=3D"ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz" target=
=3D"_blank">ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz</a>&#39;. No check=
sum specified for<br>
&gt; /home/siguser/yocto/build/downloads/hello-2.7.tar.gz, please add at le=
ast<br>
&gt; one to the recipe:<br>
&gt; SRC_URI[md5sum] =3D &quot;fc01b05c7f943d3c42124942a2a9bb3a&quot;<br>
&gt; SRC_URI[sha256sum] =3D<br>
&gt; &quot;fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0=
&quot;<br>
</div>It&#39;s written here ^^^. Just add those 2 lines to your recipe.<br>
<div class=3D"im">&gt; ERROR: Function failed: Fetcher failure for URL:<br>
&gt; &#39;<a href=3D"ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz" target=
=3D"_blank">ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz</a>&#39;. No check=
sum specified for<br>
&gt; /home/siguser/yocto/build/downloads/hello-2.7.tar.gz, please add at le=
ast<br>
&gt; one to the recipe:<br>
&gt; SRC_URI[md5sum] =3D &quot;fc01b05c7f943d3c42124942a2a9bb3a&quot;<br>
&gt; SRC_URI[sha256sum] =3D<br>
&gt; &quot;fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0=
&quot;<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/=
hello-2.7-r0/temp/log.do_fetch.3686<br>
&gt; ERROR: Task 553<br>
&gt; (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/hello/<a href=3D"ht=
tp://hello_2.7.bb" target=3D"_blank">hello_2.7.bb</a>,<br>
&gt; do_fetch) failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 3376 tasks of which 3375 didn&#39;t nee=
d to be<br>
&gt; rerun and 1 failed.<br>
&gt; No currently running tasks (2494 of 3389)<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
BR,<br>
<br>
marek<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
as simple and primitive as possible<br>
-------------------------------------------------<br>
Marek Belisko - OPEN-NANDRA<br>
Freelance Developer<br>
<br>
Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
Tel: <a href=3D"tel:%2B421%20915%20052%20184" value=3D"+421915052184">+421 =
915 052 184</a><br>
skype: marekwhite<br>
twitter: #opennandra<br>
web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://open-nandr=
a.com</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><span style=3D"font-family:arial,sans-serif;font-size:13px;border-collaps=
e:collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><f=
ont color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-coll=
apse:collapse"><br>

</span></font></div>
</div>

--f46d043c7d22f288df04e45fbe88--
