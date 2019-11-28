Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.6279.1574947538742004992
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 05:25:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8lHwbSV;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: aj.ci.01.239@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id l18so2026302lfc.1
        for <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2019 05:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yZs4Y8mf1q+dtXtNlLKGZCuoZHDpHWfyPDb58f0ochE=;
        b=V8lHwbSVmo6aJswDRhNnhQ+mDpdA9oLk/D6zfjZfN4A9HVF8jf6G1L4BWjXxx+61KJ
         ffGZ/xp9VHfkfj/8xjGLYRvcrQG9DJP2yrxNDpDwDMsTIsKgcy9vafHTPqVc7istirTH
         O2Ewrc7yAbBVDXYyn471oMQN1QMaIr32Xl6Tvl871INGzCcD3Qb0FBGZcJ16ThKwX4cx
         Tx8YNMywJ1AOuXT7owCKUGod9Hm0y8OVCs/mrrFty/tm7/jYg7Aap4Ym1CdIbNQ6jb0A
         nntCiDgHp+485upKgckDZhbaiLgvPT9ta1E6F+Uy+rwHNaFFGMVAoRXxzOShKk8QG6mY
         SVkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yZs4Y8mf1q+dtXtNlLKGZCuoZHDpHWfyPDb58f0ochE=;
        b=Br454nEIhyW1by0AbjAWZxPl2SYicf92Esr304hqN3dAjD59ob01ghN6mZC6JLJGpk
         fyvisXsw485Vtb2zQRfdwEIepg4QFKDvIFd8cPDOLLDEfZYN6hAHCQvOp/Ti6oADcKFL
         /BVtLO0a++5NF7F3lilRzSP2TdskxB0jbp4nVWaMJYSuy0rRYA8be37hS6lgC69qrY5m
         H16GPVw1KokaElQ3ewQk2zeb0nS1Jbz/7idi9/GPl8YDa4eo2DH0yu1n0X7rAW/whyio
         T4B00mIQii8l9/HrbkYzthnBm4M8114Uimb7PfKuVXZ1/jy67NtR/hDEjDq/I3OMEPC4
         4nzQ==
X-Gm-Message-State: APjAAAXDnUQGvjGTX0uzySKzs7Q0buky21NJFVD5R3RXKdRvtdvVDfrs
	8olrw8+LLXRqP327TUuKNpBbapK4hPJlk4lwcw==
X-Google-Smtp-Source: APXvYqyLTmvVwPYrvG8sjkgbdXv9FflPHGwzS6JJ0hiH30GeIIdRIRer/EzQP9imUueC0AtYnUDwA88g1pZSfWGO1K4=
X-Received: by 2002:ac2:5a48:: with SMTP id r8mr4963452lfn.179.1574947536808;
 Thu, 28 Nov 2019 05:25:36 -0800 (PST)
MIME-Version: 1.0
References: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
 <CALSaBR_YY=7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gmail.com>
 <20191128085252.ch5dmsqxdut5vsih@jholzmayr.localdomain> <CALSaBR_Z5GpPA03w0nerSzA2bR5mRDP12Zp3YNrij89y3Nbvfw@mail.gmail.com>
 <20191128090438.aih26zwmmtmzwviu@jholzmayr.localdomain> <15DB51F0D9303178.25262@lists.yoctoproject.org>
In-Reply-To: <15DB51F0D9303178.25262@lists.yoctoproject.org>
From: "Aj Cit" <aj.ci.01.239@gmail.com>
Date: Thu, 28 Nov 2019 18:55:24 +0530
Message-ID: <CALSaBR9t30K54G3LcW_wZo42JHAYghN3VOUMFsBnGuS22UzCeg@mail.gmail.com>
Subject: Re: [yocto] Yocto Image Build for NXP i.MX8M
To: aj.ci.01.239@gmail.com
Cc: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000078aec60598680c2b"

--00000000000078aec60598680c2b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm getting the following error when I have tried to simulate the image on
QEMU

adminuser@verathon:~/poky/build$ runqemu qemux86
runqemu - INFO - Running MACHINE=3Dqemux86 bitbake -e...
runqemu - ERROR - /home/adminuser/poky/build/tmp/deploy/images/qemux86 not
a directory valid DEPLOY_DIR_IMAGE
ls: cannot access
'/home/adminuser/poky/build/tmp/deploy/images/qemux86/*.qemuboot.conf': No
such file or directory
runqemu - ERROR - Command 'ls -t
/home/adminuser/poky/build/tmp/deploy/images/qemux86/*.qemuboot.conf'
returned non-zero exit status 2.
runqemu - INFO - Cleaning up


any help would be appreciated.

tnQ
On Thu, Nov 28, 2019 at 5:33 PM Aj Cit via Lists.Yoctoproject.Org
<aj.ci.01.239=3Dgmail.com@lists.yoctoproject.org> wrote:

>
> Dear Josef,
>
> I've managed to run build command to generate OS image for the target,
> which is core-image-sato by executing the following command:
>
>      $ bitbake core-image-sato
>
> Can I know how to proceed further?
>
> I'm getting the following response from the Ubuntu 18.04.1 LTS
>
> Loading cache: 100%
> |########################################################################=
#################################|
> Time: 0:00:00
> Loaded 1264 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           =3D "1.40.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "qemux86-64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "2.6.2"
> TUNE_FEATURES        =3D "m64 core2"
> TARGET_FPU           =3D ""
> meta
> meta-poky
> meta-yocto-bsp       =3D "HEAD:e7f0177ef3b6e06b8bc1722fca0241fef08a1530"
>
> Initialising tasks: 100%
> |########################################################################=
#################################|
> Time: 0:00:02
> Checking sstate mirror object availability: 100%
> |########################################################################=
##############|
> Time: 0:05:55
> Sstate summary: Wanted 1402 Found 329 Missed 2146 Current 708 (23% match,
> 49% complete)
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: sudo-1.8.23-r0 do_fetch: Failed to fetch URL
> http://ftp.sudo.ws/sudo/dist/sudo-1.8.23.tar.gz, attempting MIRRORS if
> available
> NOTE: Tasks Summary: Attempted 5774 tasks of which 2941 didn't need to be
> rerun and all succeeded.
>
> Summary: There was 1 WARNING message shown.
> adminuser@verathon:~/poky/build$ ls
> bitbake-cookerdaemon.log  cache  conf  downloads  sstate-cache  tmp
> adminuser@verathon:~/poky/build$ runqemu qemux86
> runqemu - INFO - Running MACHINE=3Dqemux86 bitbake -e...
> runqemu - ERROR - /home/adminuser/poky/build/tmp/deploy/images/qemux86 no=
t
> a directory valid DEPLOY_DIR_IMAGE
> ls: cannot access
> '/home/adminuser/poky/build/tmp/deploy/images/qemux86/*.qemuboot.conf': N=
o
> such file or directory
> runqemu - ERROR - Command 'ls -t
> /home/adminuser/poky/build/tmp/deploy/images/qemux86/*.qemuboot.conf'
> returned non-zero exit status 2.
> runqemu - INFO - Cleaning up
> adminuser@verathon:~/poky/build$
>
>
> Thanks,
>
> Ajith
>
> On Thu, Nov 28, 2019 at 2:34 PM Josef Holzmayr <
> holzmayr@rsi-elektrotechnik.de> wrote:
>
>> On Thu, Nov 28, 2019 at 02:29:08PM +0530, Aj Cit wrote:
>> > Hi Josef,
>> >
>> > Is there specific steps to be followed to build an image for iMX8M?
>>
>> You need at least a board support (BSP) layer. As I have no clue about
>> your board, I can only guess that it will probably something freescale
>> related, mabye https://git.yoctoproject.org/cgit.cgi/meta-freescale/
>>
>> But first and absolutely foremost:
>> 1) watch the introductory videos
>> 2) consult the documentation of your board vendor.
>>
>> Greetz
>>
>> >
>> > Tnx
>> > Ajith
>> >
>> > On Thu, Nov 28, 2019 at 2:23 PM Josef Holzmayr <
>> > holzmayr@rsi-elektrotechnik.de> wrote:
>> >
>> > > On Thu, Nov 28, 2019 at 02:02:29PM +0530, Aj Cit wrote:
>> > > > I've followed the instruction from the yocto project:
>> > > >
>> > >
>> https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yoctopr=
ojectqs.html
>> > >
>> > > This can not be exactly true, as this guide certainly does not inclu=
de
>> > > anything related to the imx8. So you are either still building for
>> qemu
>> > > (as it defaults to), or using seomthing additional that you're not
>> > > mentioning.
>> > >
>> > > >
>> > > >
>> > > > till the bitbake command. However, I'm getting the following error=
:
>> > > > ERROR:  OE-core's config sanity checker detected a potential
>> > > > misconfiguration.
>> > > >     Either fix the cause of this error or at your own risk disable
>> the
>> > > > checker (see sanity.conf).
>> > > >     Following is the list of potential problems / advisories:
>> > > >
>> > > >     Do not use Bitbake as root.
>> > >
>> > > Here is your answer: do not run botbake as the root user :)
>> > >
>> > > In a nutshell, I recommend watching at least the first couple of
>> videos
>> > > here:
>> > >
>> https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsf=
yj
>> > >
>> > > Greetz
>> > > >
>> > > >
>> > > > On Thu, Nov 28, 2019 at 12:29 PM Aj Cit <aj.ci.01.239@gmail.com>
>> wrote:
>> > > >
>> > > > > Hello,
>> > > > >
>> > > > > I'm trying to build a Yocto image for NXP i.MX8M (4 core 64-bit
>> A53s).
>> > > I
>> > > > > am getting some error when I execute the bitmake command.
>> > > > >
>> > > > > I'd appreciate if you could guide me with next steps. Any Guide
>> or url
>> > > > > will be helpful.
>> > > > >
>> > > > > Thanks
>> > > > > Ajith
>> > > > >
>> > >
>> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > > > Links: You receive all messages sent to this group.
>> > > >
>> > > > View/Reply Online (#47444):
>> > > https://lists.yoctoproject.org/g/yocto/message/47444
>> > > > Mute This Topic: https://lists.yoctoproject.org/mt/63894854/361826=
9
>> > > > Group Owner: yocto+owner@lists.yoctoproject.org
>> > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
>> > > holzmayr@rsi-elektrotechnik.de]
>> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > >
>> > >
>> > > --
>> > > =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>> > > Josef Holzmayr
>> > > Software Developer Embedded Systems
>> > >
>> > > Tel: +49 8444 9204-48
>> > > Fax: +49 8444 9204-50
>> > >
>> > > R-S-I Elektrotechnik GmbH & Co. KG
>> > > Woelkestrasse 11
>> > > D-85301 Schweitenkirchen
>> > > www.rsi-elektrotechnik.de
>> > > =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>> > > Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA =
170393
>> > > Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz S=
org
>> > > Ust-IdNr: DE 128592548
>> > >
>> > > _____________________________________________________________
>> > > Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
>> > > Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz S=
org
>> > > USt-IdNr.: DE 128592548
>> > >
>> > >
>>
>> --
>> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>> Josef Holzmayr
>> Software Developer Embedded Systems
>>
>> Tel: +49 8444 9204-48
>> Fax: +49 8444 9204-50
>>
>> R-S-I Elektrotechnik GmbH & Co. KG
>> Woelkestrasse 11
>> D-85301 Schweitenkirchen
>> www.rsi-elektrotechnik.de
>> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>> Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 1703=
93
>> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
>> Ust-IdNr: DE 128592548
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47455):
> https://lists.yoctoproject.org/g/yocto/message/47455
> Mute This Topic: https://lists.yoctoproject.org/mt/63894854/3738872
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> aj.ci.01.239@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--00000000000078aec60598680c2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m getting=
 the following error when I have tried to simulate the image on QEMU</div><=
div><br></div><div>adminuser@verathon:~/poky/build$ runqemu qemux86<br>runq=
emu - INFO - Running MACHINE=3Dqemux86 bitbake -e...<br>runqemu - ERROR - /=
home/adminuser/poky/build/tmp/deploy/images/qemux86 not a directory valid D=
EPLOY_DIR_IMAGE<br>ls: cannot access &#39;/home/adminuser/poky/build/tmp/de=
ploy/images/qemux86/*.qemuboot.conf&#39;: No such file or directory<br>runq=
emu - ERROR - Command &#39;ls -t /home/adminuser/poky/build/tmp/deploy/imag=
es/qemux86/*.qemuboot.conf&#39; returned non-zero exit status 2.<br>runqemu=
 - INFO - Cleaning up<br></div></div><div><br></div><div><br></div>any help=
 would be appreciated.<div><br></div><div>tnQ</div><div><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 28, 2019 at 5:33 =
PM Aj Cit via <a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject.=
Org</a> &lt;aj.ci.01.239=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.o=
rg">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br><=
div>Dear Josef,</div><div><br></div><div><p style=3D"line-height:1.5em;marg=
in-top:0em;color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif">I&#39;v=
e managed to run build command to generate OS image for the target, which i=
s=C2=A0<code style=3D"font-family:Courier,monospace">core-image-sato</code>=
=C2=A0by executing the following command:</p><pre style=3D"overflow:auto;co=
lor:rgb(51,51,51)">     $ bitbake core-image-sato</pre></div></div><div>Can=
 I know how to proceed further?</div><div><br></div><div>I&#39;m getting th=
e following response from the Ubuntu 18.04.1 LTS</div><div><br></div><div>L=
oading cache: 100% |#######################################################=
##################################################| Time: 0:00:00<br>Loaded=
 1264 entries from dependency cache.<br>NOTE: Resolving any missing task qu=
eue dependencies<br><br>Build Configuration:<br>BB_VERSION =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;1.40.0&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING =C2=
=A0 =C2=A0 =C2=A0=3D &quot;universal&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-poky-linux&quot;<br>MACHINE =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemux86-64&quot;<br>DISTRO =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>DI=
STRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D &quot;2.6.2&quot;<br>TUNE_FEATURES =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;m64 core2&quot;<br>TARGET_FPU =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<br>meta<br>meta-poky<br>meta-y=
octo-bsp =C2=A0 =C2=A0 =C2=A0 =3D &quot;HEAD:e7f0177ef3b6e06b8bc1722fca0241=
fef08a1530&quot;<br><br>Initialising tasks: 100% |#########################=
###########################################################################=
#####| Time: 0:00:02<br>Checking sstate mirror object availability: 100% |#=
###########################################################################=
##########| Time: 0:05:55<br>Sstate summary: Wanted 1402 Found 329 Missed 2=
146 Current 708 (23% match, 49% complete)<br>NOTE: Executing SetScene Tasks=
<br>NOTE: Executing RunQueue Tasks<br>WARNING: sudo-1.8.23-r0 do_fetch: Fai=
led to fetch URL <a href=3D"http://ftp.sudo.ws/sudo/dist/sudo-1.8.23.tar.gz=
" target=3D"_blank">http://ftp.sudo.ws/sudo/dist/sudo-1.8.23.tar.gz</a>, at=
tempting MIRRORS if available<br>NOTE: Tasks Summary: Attempted 5774 tasks =
of which 2941 didn&#39;t need to be rerun and all succeeded.<br><br>Summary=
: There was 1 WARNING message shown.<br>adminuser@verathon:~/poky/build$ ls=
<br>bitbake-cookerdaemon.log =C2=A0cache =C2=A0conf =C2=A0downloads =C2=A0s=
state-cache =C2=A0tmp<br>adminuser@verathon:~/poky/build$ runqemu qemux86<b=
r>runqemu - INFO - Running MACHINE=3Dqemux86 bitbake -e...<br>runqemu - ERR=
OR - /home/adminuser/poky/build/tmp/deploy/images/qemux86 not a directory v=
alid DEPLOY_DIR_IMAGE<br>ls: cannot access &#39;/home/adminuser/poky/build/=
tmp/deploy/images/qemux86/*.qemuboot.conf&#39;: No such file or directory<b=
r>runqemu - ERROR - Command &#39;ls -t /home/adminuser/poky/build/tmp/deplo=
y/images/qemux86/*.qemuboot.conf&#39; returned non-zero exit status 2.<br>r=
unqemu - INFO - Cleaning up<br>adminuser@verathon:~/poky/build$<br></div><d=
iv><br></div><div><br></div><font face=3D"verdana, sans-serif">Thanks,</fon=
t><div><font face=3D"verdana, sans-serif"><br></font><div><font face=3D"ver=
dana, sans-serif">Ajith</font></div><div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 28, 2019 at 2:34 PM Josef Ho=
lzmayr &lt;<a href=3D"mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_bla=
nk">holzmayr@rsi-elektrotechnik.de</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Thu, Nov 28, 2019 at 02:29:08PM +0530,=
 Aj Cit wrote:<br>
&gt; Hi Josef,<br>
&gt; <br>
&gt; Is there specific steps to be followed to build an image for iMX8M?<br=
>
<br>
You need at least a board support (BSP) layer. As I have no clue about<br>
your board, I can only guess that it will probably something freescale<br>
related, mabye <a href=3D"https://git.yoctoproject.org/cgit.cgi/meta-freesc=
ale/" rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/cgi=
t.cgi/meta-freescale/</a><br>
<br>
But first and absolutely foremost:<br>
1) watch the introductory videos<br>
2) consult the documentation of your board vendor.<br>
<br>
Greetz<br>
<br>
&gt; <br>
&gt; Tnx<br>
&gt; Ajith<br>
&gt; <br>
&gt; On Thu, Nov 28, 2019 at 2:23 PM Josef Holzmayr &lt;<br>
&gt; <a href=3D"mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_blank">ho=
lzmayr@rsi-elektrotechnik.de</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; On Thu, Nov 28, 2019 at 02:02:29PM +0530, Aj Cit wrote:<br>
&gt; &gt; &gt; I&#39;ve followed the instruction from the yocto project:<br=
>
&gt; &gt; &gt;<br>
&gt; &gt; <a href=3D"https://www.yoctoproject.org/docs/3.0/brief-yoctoproje=
ctqs/brief-yoctoprojectqs.html" rel=3D"noreferrer" target=3D"_blank">https:=
//www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yoctoprojectqs.h=
tml</a><br>
&gt; &gt;<br>
&gt; &gt; This can not be exactly true, as this guide certainly does not in=
clude<br>
&gt; &gt; anything related to the imx8. So you are either still building fo=
r qemu<br>
&gt; &gt; (as it defaults to), or using seomthing additional that you&#39;r=
e not<br>
&gt; &gt; mentioning.<br>
&gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; till the bitbake command. However, I&#39;m getting the follo=
wing error:<br>
&gt; &gt; &gt; ERROR:=C2=A0 OE-core&#39;s config sanity checker detected a =
potential<br>
&gt; &gt; &gt; misconfiguration.<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0Either fix the cause of this error or at =
your own risk disable the<br>
&gt; &gt; &gt; checker (see sanity.conf).<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0Following is the list of potential proble=
ms / advisories:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0Do not use Bitbake as root.<br>
&gt; &gt;<br>
&gt; &gt; Here is your answer: do not run botbake as the root user :)<br>
&gt; &gt;<br>
&gt; &gt; In a nutshell, I recommend watching at least the first couple of =
videos<br>
&gt; &gt; here:<br>
&gt; &gt; <a href=3D"https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxM=
fBFrDKfIS_GLY25Qsfyj" rel=3D"noreferrer" target=3D"_blank">https://www.yout=
ube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj</a><br>
&gt; &gt;<br>
&gt; &gt; Greetz<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Thu, Nov 28, 2019 at 12:29 PM Aj Cit &lt;<a href=3D"mailt=
o:aj.ci.01.239@gmail.com" target=3D"_blank">aj.ci.01.239@gmail.com</a>&gt; =
wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Hello,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I&#39;m trying to build a Yocto image for NXP i.MX8M (4=
 core 64-bit A53s).<br>
&gt; &gt; I<br>
&gt; &gt; &gt; &gt; am getting some error when I execute the bitmake comman=
d.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I&#39;d appreciate if you could guide me with next step=
s. Any Guide or url<br>
&gt; &gt; &gt; &gt; will be helpful.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Thanks<br>
&gt; &gt; &gt; &gt; Ajith<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; View/Reply Online (#47444):<br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/g/yocto/message/47444" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/message/47444</a><br>
&gt; &gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/m=
t/63894854/3618269" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/mt/63894854/3618269</a><br>
&gt; &gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproj=
ect.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; &gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/unsub</a>=C2=A0 [<br>
&gt; &gt; <a href=3D"mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_blan=
k">holzmayr@rsi-elektrotechnik.de</a>]<br>
&gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br=
>
&gt; &gt; Josef Holzmayr<br>
&gt; &gt; Software Developer Embedded Systems<br>
&gt; &gt;<br>
&gt; &gt; Tel: +49 8444 9204-48<br>
&gt; &gt; Fax: +49 8444 9204-50<br>
&gt; &gt;<br>
&gt; &gt; R-S-I Elektrotechnik GmbH &amp; Co. KG<br>
&gt; &gt; Woelkestrasse 11<br>
&gt; &gt; D-85301 Schweitenkirchen<br>
&gt; &gt; <a href=3D"http://www.rsi-elektrotechnik.de" rel=3D"noreferrer" t=
arget=3D"_blank">www.rsi-elektrotechnik.de</a><br>
&gt; &gt; =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br=
>
&gt; &gt; Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: H=
RA 170393<br>
&gt; &gt; Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Fran=
z Sorg<br>
&gt; &gt; Ust-IdNr: DE 128592548<br>
&gt; &gt;<br>
&gt; &gt; _____________________________________________________________<br>
&gt; &gt; Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363<br>
&gt; &gt; Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Fran=
z Sorg<br>
&gt; &gt; USt-IdNr.: DE 128592548<br>
&gt; &gt;<br>
&gt; &gt;<br>
<br>
-- <br>
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
Josef Holzmayr<br>
Software Developer Embedded Systems<br>
<br>
Tel: +49 8444 9204-48<br>
Fax: +49 8444 9204-50<br>
<br>
R-S-I Elektrotechnik GmbH &amp; Co. KG<br>
Woelkestrasse 11<br>
D-85301 Schweitenkirchen<br>
<a href=3D"http://www.rsi-elektrotechnik.de" rel=3D"noreferrer" target=3D"_=
blank">www.rsi-elektrotechnik.de</a><br>
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393<=
br>
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
Ust-IdNr: DE 128592548 <br>
<br>
</blockquote></div></div></div></div>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47455): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47455" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47455</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/63894854/3738=
872" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/63894854/3738872</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:aj.ci.01.239@gmail.com" target=3D"_blank">=
aj.ci.01.239@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div></div></div>

--00000000000078aec60598680c2b--
