Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7646E013D6
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 11:22:12 -0700 (PDT)
Received: by mail-ea0-f169.google.com with SMTP id h15so1951482eak.28
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 11:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=vCPImcdGUtGJojyUo9sCn+II5p2CdIpb8fKLZozcSQg=;
	b=KB1CJVNIGfoBJ2iiHKA/jUSlVr3a09PyNDdGP4Ll3lzG8ff5M7TVcSG8JVKnB2zqSx
	RqUSdtNv3xzFs7e9ePGBmLqOgBaK06xjpyW3MyMDoUPmvl6fqDj8+g92uPf7ircWb7tY
	5L5fV/XyQqJHHT5ulhi33HzBffnornItud0KSC5ismyk9GbcSOGmSwaENqgdYF7CAoyC
	UQ4pw7BGa4DExOzPYNCjyHjGNssSbvscDvBQa3qfMD7rWBIPt1CEWqTVQE/+l5A+4EHT
	L9p4PQxADOLaFYJW3vlO2+2kcCG1qKpo1D794fmC3RucINfz6GkkQOSD8dHmo7XAvh98
	01pg==
MIME-Version: 1.0
X-Received: by 10.15.31.198 with SMTP id y46mr12443303eeu.135.1374171730696;
	Thu, 18 Jul 2013 11:22:10 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Thu, 18 Jul 2013 11:22:10 -0700 (PDT)
In-Reply-To: <CANwz6nz_xGnj36ZtFkk2o_bTq1VnTJ5=3ngN_x86s8k1Dj5LTA@mail.gmail.com>
References: <CANwz6nzHiBrXscuZS2Y1xXUThiwyo4AT7bD90VfVsh=Lt_cfLQ@mail.gmail.com>
	<5727572.3nCIyqyF5R@helios>
	<CANwz6nx_=iOYF8H3nO3GbDhXU28vVew4giYOMqf=NQZPDgvg7g@mail.gmail.com>
	<14937725.rfmtP9RxhW@helios>
	<CANwz6nz_xGnj36ZtFkk2o_bTq1VnTJ5=3ngN_x86s8k1Dj5LTA@mail.gmail.com>
Date: Thu, 18 Jul 2013 12:22:10 -0600
Message-ID: <CANwz6nzz_mA5jL7iSLKtU2c4RkcNwdNx5oosjEvJHN+5gxHZUQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: zedboard & gnuradio
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
X-List-Received-Date: Thu, 18 Jul 2013 18:22:14 -0000
Content-Type: multipart/alternative; boundary=089e0160c5cede883604e1cd49eb

--089e0160c5cede883604e1cd49eb
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: Edward Vidal <vidal.develone@gmail.com>
Date: Thu, Jul 18, 2013 at 12:21 PM
Subject: Re: [yocto] zedboard & gnuradio
To: Paul Eggleton <paul.eggleton@linux.intel.com>


Hello
Any and all help is appreciated.
This is for java and core-image-sato-ex build
Adding additional packages to my build
Is this a similar problem since the new version of poky has added stricter
testing.
ERROR: QA Issue: perf: The compile log indicates that host include and/or
library paths were used.
         Please check the log
'/home/vidal/POKY/build071813_zedboard/poky/build/tmp/work/zedboard-poky-linux-gnueabi/perf/1.0-r8/temp/log.do_compile'
for more information.

ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/vidal/POKY/build071813_zedboard/poky/build/tmp/work/zedboard-poky-linux-gnueabi/perf/1.0-r8/temp/log.do_package.25012
ERROR: Task 3305
(/home/vidal/POKY/build071813_zedboard/poky/meta/recipes-kernel/perf/perf.bb,
do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 7086 tasks of which 531 didn't need to be
rerun and 1 failed.

Waiting for 0 running tasks to finish:
Summary: 1 task failed:
  /home/vidal/POKY/build071813_zedboard/poky/meta/recipes-kernel/perf/
perf.bb, do_package
Summary: There were 14 WARNING messages shown.

Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
Thanks


On Tue, Jul 16, 2013 at 5:17 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 16 July 2013 13:18:07 Edward Vidal wrote:
> > On Tue, Jul 16, 2013 at 11:50 AM, Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> > > On Tuesday 16 July 2013 08:47:03 Edward Vidal wrote:
> > > > ERROR: QA Issue: File
> '/usr/plugins/designer/libqwt_designer_plugin.so'
> > > > from qwt was already stripped, this will prevent future debugging!
> > > > ERROR: QA Issue: File '/usr/lib/libqwt.so.6.0.1' from qwt was already
> > > > stripped, this will prevent future debugging!
> > > > ERROR: QA Issue: File '/usr/lib/libqwtmathml.so.6.0.1' from qwt was
> > > > already stripped, this will prevent future debugging!
> > >
> > > poky.conf now marks this QA issue as an error instead of a warning in
> > > order to pick up on quality issues when running builds. You can either:
> > >
> > > a) Fix the recipe so that qwt gets built without stripping its output
> > > binaries, or
> > >
> > > b) set your own value for ERROR_QA and WARN_QA so that
> "already-stripped"
> > > appears in WARN_QA rather than ERROR_QA
> >
> > I opted for options b.)  modifying
> >
> /home/vidal/POKY/build071613_zedboard/poky/meta-yocto/conf/distro/poky.conf
> > mvoing already-stripped from  ERROR_QA to WARN_QA .
> > Build is currently in progress.
> > My question will option a.)  need to be done to prevent this from
> occurring
> > in future releases.
>
> The recipe in question is part of meta-oe and thus is maintained by
> OpenEmbedded rather than the Yocto Project, so ultimately someone in the
> OpenEmbedded community should fix it, yes. Fixing "already stripped" issues
> usually isn't too hard, it just depends on how the software in question is
> being built.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e0160c5cede883604e1cd49eb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote">---------- Forwarded me=
ssage ----------<br>From: <b class=3D"gmail_sendername">Edward Vidal</b> <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.devel=
one@gmail.com</a>&gt;</span><br>
Date: Thu, Jul 18, 2013 at 12:21 PM<br>Subject: Re: [yocto] zedboard &amp; =
gnuradio<br>To: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.int=
el.com">paul.eggleton@linux.intel.com</a>&gt;<br><br><br><div dir=3D"ltr"><=
div>
Hello<br>Any and all help is appreciated.<br>This is for java and core-imag=
e-sato-ex build<br>Adding additional packages to my build <br>Is this a sim=
ilar problem since the new version of poky has added stricter testing.<br>

ERROR: QA Issue: perf: The compile log indicates that host include and/or l=
ibrary paths were used.<br>=A0=A0=A0=A0=A0=A0=A0=A0 Please check the log &#=
39;/home/vidal/POKY/build071813_zedboard/poky/build/tmp/work/zedboard-poky-=
linux-gnueabi/perf/1.0-r8/temp/log.do_compile&#39; for more information.<di=
v class=3D"im">
<br>
ERROR: QA run found fatal errors. Please consider fixing them.<br>ERROR: Fu=
nction failed: do_package_qa<br></div>ERROR: Logfile of failure stored in: =
/home/vidal/POKY/build071813_zedboard/poky/build/tmp/work/zedboard-poky-lin=
ux-gnueabi/perf/1.0-r8/temp/log.do_package.25012<br>

ERROR: Task 3305 (/home/vidal/POKY/build071813_zedboard/poky/meta/recipes-k=
ernel/perf/<a href=3D"http://perf.bb" target=3D"_blank">perf.bb</a>, do_pac=
kage) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 7=
086 tasks of which 531 didn&#39;t need to be rerun and 1 failed.<div class=
=3D"im">
<br>
Waiting for 0 running tasks to finish:<br>Summary: 1 task failed:<br></div>=
=A0 /home/vidal/POKY/build071813_zedboard/poky/meta/recipes-kernel/perf/<a =
href=3D"http://perf.bb" target=3D"_blank">perf.bb</a>, do_package<br>Summar=
y: There were 14 WARNING messages shown.<div class=3D"im">
<br>
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.=
<br></div></div>Thanks<br></div><div class=3D"HOEnZb"><div class=3D"h5"><di=
v class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Jul 16, =
2013 at 5:17 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul=
.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Tuesday 16 July 2013 13:18:07 Edward=
 Vidal wrote:<br>
&gt; On Tue, Jul 16, 2013 at 11:50 AM, Paul Eggleton<br>
&gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank"=
>paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
</div><div>&gt; &gt; On Tuesday 16 July 2013 08:47:03 Edward Vidal wrote:<b=
r>
&gt; &gt; &gt; ERROR: QA Issue: File &#39;/usr/plugins/designer/libqwt_desi=
gner_plugin.so&#39;<br>
&gt; &gt; &gt; from qwt was already stripped, this will prevent future debu=
gging!<br>
&gt; &gt; &gt; ERROR: QA Issue: File &#39;/usr/lib/libqwt.so.6.0.1&#39; fro=
m qwt was already<br>
&gt; &gt; &gt; stripped, this will prevent future debugging!<br>
&gt; &gt; &gt; ERROR: QA Issue: File &#39;/usr/lib/libqwtmathml.so.6.0.1&#3=
9; from qwt was<br>
&gt; &gt; &gt; already stripped, this will prevent future debugging!<br>
&gt; &gt;<br>
&gt; &gt; poky.conf now marks this QA issue as an error instead of a warnin=
g in<br>
&gt; &gt; order to pick up on quality issues when running builds. You can e=
ither:<br>
&gt; &gt;<br>
&gt; &gt; a) Fix the recipe so that qwt gets built without stripping its ou=
tput<br>
&gt; &gt; binaries, or<br>
&gt; &gt;<br>
&gt; &gt; b) set your own value for ERROR_QA and WARN_QA so that &quot;alre=
ady-stripped&quot;<br>
&gt; &gt; appears in WARN_QA rather than ERROR_QA<br>
&gt;<br>
</div><div>&gt; I opted for options b.) =A0modifying<br>
&gt; /home/vidal/POKY/build071613_zedboard/poky/meta-yocto/conf/distro/poky=
.conf<br>
&gt; mvoing already-stripped from =A0ERROR_QA to WARN_QA .<br>
&gt; Build is currently in progress.<br>
&gt; My question will option a.) =A0need to be done to prevent this from oc=
curring<br>
&gt; in future releases.<br>
<br>
</div>The recipe in question is part of meta-oe and thus is maintained by<b=
r>
OpenEmbedded rather than the Yocto Project, so ultimately someone in the<br=
>
OpenEmbedded community should fix it, yes. Fixing &quot;already stripped&qu=
ot; issues<br>
usually isn&#39;t too hard, it just depends on how the software in question=
 is<br>
being built.<br>
<div><div><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>
</div></div></div><br></div>

--089e0160c5cede883604e1cd49eb--
