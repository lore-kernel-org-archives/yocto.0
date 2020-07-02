Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com [209.85.222.65])
 by mx.groups.io with SMTP id smtpd.web10.3186.1593684000577083877
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 03:00:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m5k3P/it;
 spf=pass (domain: gmail.com, ip: 209.85.222.65, mailfrom: mabnhdev@gmail.com)
Received: by mail-ua1-f65.google.com with SMTP id c7so7240691uap.0
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 03:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3kIScjiX+kX0fDbuigsKx3Qif8szFCzrICgOE96JxEM=;
        b=m5k3P/itBD7jKF9hcoXyrFBSqKVg2feg2Wn1gD0vPgQSmJ7KgS9QFkMr/J9ThIFDrb
         inpYHmzbnOKQkCDgK2MpyTgnszPagEHq2TgJickSG2snZ0LCKODr1q3v9zRgr5Ata9WQ
         YS/lRRzdLWWFnubXtX21tfZiYEMoXQQ9FX57wCFyj6eL7q59bxgJ8qt3SRk6Um7oVQaq
         4RdI0xkGHfBdyuAaL6Y9AyzYiuBgrRH2o3ohgH8IsMccHkhQnGrSAOAmoKNqVXhQTvZ9
         Jr+w2wHmOWLh+dUAnUANTCnoj/xUEO5L8UU9JuiYAQpuSMbOEv8caQX4cmXJTz5AUd3Q
         XutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3kIScjiX+kX0fDbuigsKx3Qif8szFCzrICgOE96JxEM=;
        b=uYsHN2hwLUNmZ25vuJiu9BTTHvub2B1UMA5Nnz+Z4sWoqskTmbOxthyrDgX4eHjbTR
         alBjRJyrOQ44SrR5PDHUyj6/yVaWR4+vczclyE/uIZ5yDW7uHF0hMSrQditDSy9inx+m
         cEtIBbO3KosKFCopcva09vBATbX6jjSwonqfN1oLHhvuzTI8+yhd0jmBeDfJFgIwlgIy
         XUhdOkjweXb8w7pS3iGoRxmhl9/hz0rFWEh9EouhZWFWS5z9WYFlQy6I3LRm9+3fnuxz
         GJQ9sZvH+p8tTXSu//8VxgdlLnml8LprvPu3JnSNJeC/O+gpqPnMCHxm6opSi5tGXGau
         BddA==
X-Gm-Message-State: AOAM530D2Hib8BjAsjIfpjWI/SuE1VwpNCHio493ASgu3SVkzEGTCkSh
	S/FyEXjLM/o3Z1F+/hs4ka7ITHmiWO+tabZ4V6M=
X-Google-Smtp-Source: ABdhPJytKDhw3Hn+GHO5tZM4w8I7ChgxL1z1vb5FLEukjZt8jXkhxPR7FiPtq7FOD/4+5Pk0RdYvaWPEx49R4PrzPTM=
X-Received: by 2002:ab0:45ea:: with SMTP id u97mr21053703uau.54.1593683999706;
 Thu, 02 Jul 2020 02:59:59 -0700 (PDT)
MIME-Version: 1.0
References: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org>
 <CAJdd5GYmGrZk3B5+2H9Ud=A+YWXJe_j4EN+AEM=e+QXxcmJGKw@mail.gmail.com>
 <CAJdd5GZ1ZEmA1CG2q4Q6Z94TF8wSCHhQf4hF0F9hA=ye6eJS5g@mail.gmail.com>
 <161D821F3054189B.29179@lists.yoctoproject.org> <CAOSpxdaGpkGBmTeH_pqmZ=g=pMhYDND3PGnzJ3bOj11nU=+Rqw@mail.gmail.com>
 <CAAuRgKCcgccNcPd3rggY5xhUgePi54FFPER6oQ02aep8Uj_eqg@mail.gmail.com>
 <CAAuRgKCn_wyZW6KCe2xQZPk+vN0MYZotY96XAfa83-w1tTGJZg@mail.gmail.com> <CAJdd5GZhMf5nxu_dYLLc0F4ux_x_qZQb6WMEM4VjMMjBuQhcEA@mail.gmail.com>
In-Reply-To: <CAJdd5GZhMf5nxu_dYLLc0F4ux_x_qZQb6WMEM4VjMMjBuQhcEA@mail.gmail.com>
From: "MikeB" <mabnhdev@gmail.com>
Date: Thu, 2 Jul 2020 05:59:48 -0400
Message-ID: <CAAuRgKCr7ZOAT+jT7EoMAVp5anY6G=tDs=S1N_QxZw+OEo7ZUg@mail.gmail.com>
Subject: Re: [yocto] Dunfell 3.1.1 gcc-sanitizers build failure
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Steve Sakoman <steve@sakoman.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000afd09805a97278f6"

--000000000000afd09805a97278f6
Content-Type: text/plain; charset="UTF-8"

Yes, I am using the archiver.bbclass.  However, I'm using the one in
poky/meta.  I applied your patch (manually) to that one.

diff --git a/meta/classes/archiver.bbclass b/meta/classes/archiver.bbclass
index a8d3afcbe9..bf275f4543 100644
--- a/meta/classes/archiver.bbclass
+++ b/meta/classes/archiver.bbclass
@@ -583,8 +583,8 @@ do_deploy_archives[sstate-outputdirs] =
"${DEPLOY_DIR_SRC}"
 addtask do_deploy_archives_setscene

 addtask do_ar_original after do_unpack
-addtask do_unpack_and_patch after do_patch
-addtask do_ar_patched after do_unpack_and_patch before do_preconfigure
do_configure
+addtask do_unpack_and_patch after do_patch do_preconfigure
+addtask do_ar_patched after do_unpack_and_patch before do_configure
 addtask do_ar_configured after do_unpack_and_patch
 addtask do_ar_mirror after do_fetch
 addtask do_dumpdata

I should also point out that the failure is not limited to gcc-sanitizers.
On different architectures, the  same failure has occurred in
gcc-cross-canadian_9.3.bb:do_configure and gcc-crosssdk_9.3.bb:do_configure.
So there are multiple recipes that
reference work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h but it is
missing.

On all architectures (that I use), executing a 'bitbake -c cleanall
gcc-source-9.3.0' and rebuilding works around the issue and the build
succeeds.

Please note that it is not the image build that is failing; it is the
populate_sdk command that fails.

Regards, Mike

On Wed, Jul 1, 2020 at 10:52 AM Joshua Watt <jpewhacker@gmail.com> wrote:

> On Wed, Jul 1, 2020 at 9:47 AM MikeB <mabnhdev@gmail.com> wrote:
> >
> > The rumors of my success were exaggerated.  If performing a fresh build
> from scratch, the image build succeeds, but the populate_sdk still fails as
> in the original post.  If I then do a 'bitbake -ccleansstate on
> gcc-source-9.3.0', the populate_sdk succeeds.
>
> Ok. Are you using archiver.bbclass?
>
> >
> > Mike
> >
> > On Wed, Jul 1, 2020 at 6:45 AM MikeB <mabnhdev@gmail.com> wrote:
> >>
> >> The combination of the
> https://lists.openembedded.org/g/openembedded-core/message/140161 and a
> 'bitbake -ccleansstate on gcc-source-9.3.0' has gotten me back on track.
> >>
> >> Thank you all for the help!
> >>
> >> On Tue, Jun 30, 2020 at 11:10 PM Steve Sakoman <steve@sakoman.com>
> wrote:
> >>>
> >>> On Tue, Jun 30, 2020 at 5:08 PM Steve Sakoman via
> >>> lists.yoctoproject.org <steve=sakoman.com@lists.yoctoproject.org>
> >>> wrote:
> >>> >
> >>> > On Tue, Jun 30, 2020 at 4:53 PM Joshua Watt <JPEWhacker@gmail.com>
> wrote:
> >>> > >
> >>> > > On Tue, Jun 30, 2020 at 8:08 PM Joshua Watt <jpewhacker@gmail.com>
> wrote:
> >>> > > >
> >>> > > > On Tue, Jun 30, 2020 at 4:56 PM MikeB <mabnhdev@gmail.com>
> wrote:
> >>> > > > >
> >>> > > > > I recently tried upgrading from 3.1.0 to 3.1.1.  I'm not sure
> if this is a bug or just my problem.  I maintain five different
> architectures and all five have the same failure in gcc-sanitizers as I'm
> trying to build the SDK.
> >>> > > > >
> >>> > > > > | cat:
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h:
> No such file or directory
> >>> > > > > | WARNING:
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1
> exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" >
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
> >>> > > > > | ERROR: Execution of
> '/data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505'
> failed with exit code 1:
> >>> > > > > | cat:
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h:
> No such file or directory
> >>> > > > > | WARNING:
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1
> exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" >
> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
> >>> > > > >
> >>> > > > > At first, I thought this may be a dependency issue because I
> inherit "rm_work" to tidy up; but I tried a build without it - i.e. keeping
> all work around - and got the same failure.
> >>> > > >
> >>> > > > I've encountered a similar error just today when switching
> SDKMACHINE.
> >>> > > > Are you using archive.bbclass by any chance (INHERIT +=
> "archive")? I
> >>> > > > just recently fixed a bug in archive.bbclass
> >>> > > > (7a57e777597d7f66d065582cfb83cd8f9468f4af) where the archiving of
> >>> > > > gcc-source raced with do_preconfigure and I'm wondering if it's
> >>> > > > related
> >>> > >
> >>> > > I believe I have fixed this in
> >>> > > https://lists.openembedded.org/g/openembedded-core/message/140161,
> >>> > > please try it out to make sure it solves your issue as well.
> >>> >
> >>> > That patch came in after the 3.1.1 release, but it is present in the
> >>> > dunfell branch so it will make it into 3.1.2
> >>>
> >>> Doh, I'm getting ahead of myself! I was thinking of another
> >>> classes/archiver patch that Joshua sent :-)
> >>>
> >>> Steve
>

--000000000000afd09805a97278f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small"><div class=3D"gmail_default">Yes, I am using the=
 archiver.bbclass.=C2=A0 However, I&#39;m using the one in poky/meta.=C2=A0=
 I applied your patch (manually) to that one.</div><div class=3D"gmail_defa=
ult"><br></div><div class=3D"gmail_default">diff --git a/meta/classes/archi=
ver.bbclass b/meta/classes/archiver.bbclass<br>index a8d3afcbe9..bf275f4543=
 100644<br>--- a/meta/classes/archiver.bbclass<br>+++ b/meta/classes/archiv=
er.bbclass<br>@@ -583,8 +583,8 @@ do_deploy_archives[sstate-outputdirs] =3D=
 &quot;${DEPLOY_DIR_SRC}&quot;<br>=C2=A0addtask do_deploy_archives_setscene=
<br>=C2=A0<br>=C2=A0addtask do_ar_original after do_unpack<br>-addtask do_u=
npack_and_patch after do_patch<br>-addtask do_ar_patched after do_unpack_an=
d_patch before do_preconfigure do_configure<br>+addtask do_unpack_and_patch=
 after do_patch do_preconfigure<br>+addtask do_ar_patched after do_unpack_a=
nd_patch before do_configure<br>=C2=A0addtask do_ar_configured after do_unp=
ack_and_patch<br>=C2=A0addtask do_ar_mirror after do_fetch<br>=C2=A0addtask=
 do_dumpdata<br></div><div class=3D"gmail_default"><br></div><div class=3D"=
gmail_default">I should also point out that the failure is not limited to g=
cc-sanitizers.=C2=A0 On different architectures, the=C2=A0 same failure has=
 occurred in gcc-cross-canadian_9.3.bb:do_configure and gcc-crosssdk_9.3.bb=
:do_configure.=C2=A0 So there are multiple recipes that reference=C2=A0work=
-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h but it is missing.</div><div =
class=3D"gmail_default"><br></div><div class=3D"gmail_default">On all archi=
tectures (that I=C2=A0use), executing a &#39;bitbake -c cleanall gcc-source=
-9.3.0&#39; and rebuilding works around the issue and the build succeeds.</=
div><div class=3D"gmail_default"><br></div><div class=3D"gmail_default">Ple=
ase note that it is not the image build that is failing; it is the populate=
_sdk command that fails.</div><div class=3D"gmail_default"><br></div><div c=
lass=3D"gmail_default">Regards, Mike</div></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 1, 2020 at 10:5=
2 AM Joshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewhacker@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">On Wed, Jul 1, 2020 at 9:47 AM MikeB &lt;<a href=3D"mailto:mabnhdev@g=
mail.com" target=3D"_blank">mabnhdev@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; The rumors of my success were exaggerated.=C2=A0 If performing a fresh=
 build from scratch, the image build succeeds, but the populate_sdk still f=
ails as in the original post.=C2=A0 If I then do a &#39;bitbake -ccleanssta=
te on gcc-source-9.3.0&#39;, the populate_sdk succeeds.<br>
<br>
Ok. Are you using archiver.bbclass?<br>
<br>
&gt;<br>
&gt; Mike<br>
&gt;<br>
&gt; On Wed, Jul 1, 2020 at 6:45 AM MikeB &lt;<a href=3D"mailto:mabnhdev@gm=
ail.com" target=3D"_blank">mabnhdev@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; The combination of the <a href=3D"https://lists.openembedded.org/g=
/openembedded-core/message/140161" rel=3D"noreferrer" target=3D"_blank">htt=
ps://lists.openembedded.org/g/openembedded-core/message/140161</a> and a &#=
39;bitbake -ccleansstate on gcc-source-9.3.0&#39; has gotten me back on tra=
ck.<br>
&gt;&gt;<br>
&gt;&gt; Thank you all for the help!<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jun 30, 2020 at 11:10 PM Steve Sakoman &lt;<a href=3D"mail=
to:steve@sakoman.com" target=3D"_blank">steve@sakoman.com</a>&gt; wrote:<br=
>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Jun 30, 2020 at 5:08 PM Steve Sakoman via<br>
&gt;&gt;&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" t=
arget=3D"_blank">lists.yoctoproject.org</a> &lt;steve=3D<a href=3D"mailto:s=
akoman.com@lists.yoctoproject.org" target=3D"_blank">sakoman.com@lists.yoct=
oproject.org</a>&gt;<br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; On Tue, Jun 30, 2020 at 4:53 PM Joshua Watt &lt;<a href=
=3D"mailto:JPEWhacker@gmail.com" target=3D"_blank">JPEWhacker@gmail.com</a>=
&gt; wrote:<br>
&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; On Tue, Jun 30, 2020 at 8:08 PM Joshua Watt &lt;<a h=
ref=3D"mailto:jpewhacker@gmail.com" target=3D"_blank">jpewhacker@gmail.com<=
/a>&gt; wrote:<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; On Tue, Jun 30, 2020 at 4:56 PM MikeB &lt;<a hr=
ef=3D"mailto:mabnhdev@gmail.com" target=3D"_blank">mabnhdev@gmail.com</a>&g=
t; wrote:<br>
&gt;&gt;&gt; &gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; &gt; I recently tried upgrading from 3.1.0 to 3=
.1.1.=C2=A0 I&#39;m not sure if this is a bug or just my problem.=C2=A0 I m=
aintain five different architectures and all five have the same failure in =
gcc-sanitizers as I&#39;m trying to build the SDK.<br>
&gt;&gt;&gt; &gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; &gt; | cat: /data/mabnhdev/exos-yocto-dunfell/b=
uild/exos-arm64/tmp/work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No s=
uch file or directory<br>
&gt;&gt;&gt; &gt; &gt; &gt; &gt; | WARNING: /data/mabnhdev/exos-yocto-dunfe=
ll/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/tem=
p/run.do_configure.31505:1 exit 1 from &#39;grep -v &quot;\#endif.*GCC_DEFA=
ULTS_H&quot; &gt; /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/wo=
rk/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/gcc-9.3.0/build.aarch64-poky-=
linux.aarch64-poky-linux/gcc/defaults.h.new&#39;<br>
&gt;&gt;&gt; &gt; &gt; &gt; &gt; | ERROR: Execution of &#39;/data/mabnhdev/=
exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitiz=
ers/9.3.0-r0/temp/run.do_configure.31505&#39; failed with exit code 1:<br>
&gt;&gt;&gt; &gt; &gt; &gt; &gt; | cat: /data/mabnhdev/exos-yocto-dunfell/b=
uild/exos-arm64/tmp/work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No s=
uch file or directory<br>
&gt;&gt;&gt; &gt; &gt; &gt; &gt; | WARNING: /data/mabnhdev/exos-yocto-dunfe=
ll/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/tem=
p/run.do_configure.31505:1 exit 1 from &#39;grep -v &quot;\#endif.*GCC_DEFA=
ULTS_H&quot; &gt; /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/wo=
rk/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/gcc-9.3.0/build.aarch64-poky-=
linux.aarch64-poky-linux/gcc/defaults.h.new&#39;<br>
&gt;&gt;&gt; &gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; &gt; At first, I thought this may be a dependen=
cy issue because I inherit &quot;rm_work&quot; to tidy up; but I tried a bu=
ild without it - i.e. keeping all work around - and got the same failure.<b=
r>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; I&#39;ve encountered a similar error just today=
 when switching SDKMACHINE.<br>
&gt;&gt;&gt; &gt; &gt; &gt; Are you using archive.bbclass by any chance (IN=
HERIT +=3D &quot;archive&quot;)? I<br>
&gt;&gt;&gt; &gt; &gt; &gt; just recently fixed a bug in archive.bbclass<br=
>
&gt;&gt;&gt; &gt; &gt; &gt; (7a57e777597d7f66d065582cfb83cd8f9468f4af) wher=
e the archiving of<br>
&gt;&gt;&gt; &gt; &gt; &gt; gcc-source raced with do_preconfigure and I&#39=
;m wondering if it&#39;s<br>
&gt;&gt;&gt; &gt; &gt; &gt; related<br>
&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; I believe I have fixed this in<br>
&gt;&gt;&gt; &gt; &gt; <a href=3D"https://lists.openembedded.org/g/openembe=
dded-core/message/140161" rel=3D"noreferrer" target=3D"_blank">https://list=
s.openembedded.org/g/openembedded-core/message/140161</a>,<br>
&gt;&gt;&gt; &gt; &gt; please try it out to make sure it solves your issue =
as well.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; That patch came in after the 3.1.1 release, but it is pre=
sent in the<br>
&gt;&gt;&gt; &gt; dunfell branch so it will make it into 3.1.2<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Doh, I&#39;m getting ahead of myself! I was thinking of anothe=
r<br>
&gt;&gt;&gt; classes/archiver patch that Joshua sent :-)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Steve<br>
</blockquote></div>

--000000000000afd09805a97278f6--
