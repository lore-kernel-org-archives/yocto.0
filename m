Return-Path: <mikko.ylinen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB620E00AE4; Mon,  3 Jul 2017 11:23:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5BC3E009C2
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 11:23:02 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id c73so103641131pfk.2
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 11:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7iu6seSDhBm290PYqm3ApVVPgRQ1MSULZoMpuiiqpLk=;
	b=A/HJKAD+9IeVpda8UtvjpBOEXWojQxzWz65IyoD/u5q99MUS4q6GECzd3oh+vHvWIr
	CPR1r7S/SjBDFRQVX52pDvBA/x+vDK+/1VphK0Gs2rDGLZrOFUmLTjUhJmc0LstEjDjq
	VQ0HWAHSs+1Pw70xUcoEq5x2cwiSNrmwsfqKFWiZlrlNZ8uH6A6MuX9p4wfp+R5t6mfj
	6e00pUPY3XNXkQVtnCnPf4hGmf2+lbnC80ArjW/neAXDL8ez64DHlxfV2rze00jtGn9k
	eUN0s4aBfoUcb1Hze7jsPaD+r40U489KusMTBrjSB+eFl302Oo+jFOcklflyN3McBfvl
	lP1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7iu6seSDhBm290PYqm3ApVVPgRQ1MSULZoMpuiiqpLk=;
	b=mNqTN8B7t1O8c8cv1H/7juSi7bjR2E3tyzushTh0JbUkAs7jTkXST4ysCJaN6MaQTV
	4HvVAixX/huEpvqy6Xk1hL1F5migcPedgFBQyQx7Ts6E81dNV+uBn6CmgBF1nhniFD1Y
	8Zs6gEA3tJ8SkQWxmmLAKLPO0mFMQ9TduRZAjzycpOoZToSYzxQur2GWsDek9ydtyXpk
	hfevtNUZKOoxCZCui7kkPnaf0/xTFmIh3Iy66DK91Qe7XobbEu/ZCFDWxSmGooTdDyY3
	B11VwMwv1Ra/Q+xPGGCXY88kSVfMSBYJdR/3VNhdpn2fKRj7kCO4egZtlZYb9B2AaXnk
	29Hw==
X-Gm-Message-State: AIVw110pLtlv4sEucX4M1OTbXH7aagDdBkwZOWyquwragKUUWeP4fQGq
	/p8uxOiDuzyMnoULTUcTSBvWCoiFnWtL
X-Received: by 10.84.133.7 with SMTP id 7mr6959792plf.32.1499106181885; Mon,
	03 Jul 2017 11:23:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.138.151 with HTTP; Mon, 3 Jul 2017 11:23:01 -0700 (PDT)
In-Reply-To: <8a43df63-839f-055d-56d9-c5d424cbd6c2@linux.intel.com>
References: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
	<1496764011-3595-4-git-send-email-anibal.limon@linux.intel.com>
	<1499090600.3470.12.camel@linux.intel.com>
	<8a43df63-839f-055d-56d9-c5d424cbd6c2@linux.intel.com>
From: "Ylinen, Mikko" <mikko.ylinen@intel.com>
Date: Mon, 3 Jul 2017 21:23:01 +0300
Message-ID: <CAHZ0fbGqpQMiapKmAL2maUSJL=tmRxRvHsjQwcM1uaA+jaO-cQ@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
X-Mailman-Approved-At: Wed, 05 Jul 2017 08:09:23 -0700
Cc: yocto@yoctoproject.org, monserratx.sedeno.bustos@intel.com
Subject: Re: [yocto-autobuilder][PATCHv2 4/5] autobuilder/buildsteps: Add DAFTFlash buildstep
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
X-List-Received-Date: Mon, 03 Jul 2017 18:23:03 -0000
Content-Type: multipart/alternative; boundary="94eb2c12f92273c97e05536ddb9b"

--94eb2c12f92273c97e05536ddb9b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 3, 2017 at 7:37 PM, An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.=
intel.com>
wrote:

>
>
> On 07/03/2017 09:03 AM, Joshua Lock wrote:
> > On Tue, 2017-06-06 at 10:46 -0500, An=C3=ADbal Lim=C3=B3n wrote:
> >> This will execute daft flash cycle without reboot and prepare the dut
> >> for sanity tests.
> >>
> >> [YOCTO #10604]
> >>
> >> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> >> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos.intel.com>
> >
> > Typo in the email address here.
> >
> >> Signed-off-by: Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>
> >> ---
> >>  config/autobuilder.conf.example                    |  1 +
> >>  .../autobuilder/buildsteps/DaftFlash.py            | 42
> >> ++++++++++++++++++++++
> >>  lib/python2.7/site-packages/autobuilder/config.py  |  1 +
> >>  3 files changed, 44 insertions(+)
> >>  create mode 100644 lib/python2.7/site-
> >> packages/autobuilder/buildsteps/DaftFlash.py
> >>
> >> diff --git a/config/autobuilder.conf.example
> >> b/config/autobuilder.conf.example
> >> index e5ec16b..2e992cf 100644
> >> --- a/config/autobuilder.conf.example
> >> +++ b/config/autobuilder.conf.example
> >> @@ -98,3 +98,4 @@ PERFORMANCE_MAIL_SIG =3D "Multiline\nSig\nLine"
> >>
> >>  [Daft]
> >>  DAFT_WORKER_DEVICES_CFG =3D "/etc/daft/devices.cfg"
> >> +DAFT_WORKER_WORKSPACE =3D "/home/ab/workspace"
> >> diff --git a/lib/python2.7/site-
> >> packages/autobuilder/buildsteps/DaftFlash.py b/lib/python2.7/site-
> >> packages/autobuilder/buildsteps/DaftFlash.py
> >> new file mode 100644
> >> index 0000000..d5f6de8
> >> --- /dev/null
> >> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/DaftFlash.py
> >> @@ -0,0 +1,42 @@
> >> +import os
> >> +
> >> +from autobuilder.config import DAFT_WORKER_WORKSPACE
> >> +from buildbot.steps.shell import ShellCommand
> >> +
> >> +class DaftFlash(ShellCommand):
> >> +    haltOnFailure =3D True
> >> +
> >> +    name =3D "DaftFlash"
> >> +
> >> +    def __init__(self, factory, argdict=3DNone, **kwargs):
> >> +        self.tests =3D None
> >> +        self.factory =3D factory
> >> +        for k, v in argdict.iteritems():
> >> +            setattr(self, k, v)
> >> +        self.description =3D "DUT Flashing"
> >> +        self.timeout =3D 100000
> >> +        kwargs['timeout']=3Dself.timeout
> >> +        ShellCommand.__init__(self, **kwargs)
> >> +
> >> +    def start(self):
> >> +        workspace_dir =3D DAFT_WORKER_WORKSPACE
> >> +
> >> +        dut_name =3D self.getProperty('dut_name')
> >> +        workdir =3D self.getProperty('workdir')
> >> +        image =3D self.getProperty('BUILDIMAGES')
> >
> > Remember to fix this when you rename the property.
> >
> >> +        machine =3D self.getProperty('MACHINE')
> >> +
> >> +        image_path =3D os.path.join(workdir, 'build', 'build', 'tmp',
> >> 'deploy',
> >> +                'images', machine, '%s-%s.hddimg' % (image,
> >> machine))
> >> +        image_name =3D os.path.basename(image_path)
> >> +
> >> +        # XXX: DAFT needs to have the image in a shared workspace
> >> +        self.command =3D "cp %s %s; " % (image_path, workspace_dir)
> >> +
> >> +        self.command +=3D "cd %s; " % (workspace_dir)
> >> +
> >> +        # XXX: DAFT needs to be executed by root user
> >
> > Why's that? Is that an intrinsic requirement of DAFT or is it because
> > DAFT wants to use certain devices that are typically owned by root? Can
> > we instead make the requirement that the user running daft has
> > permissions and groups correctly configured to access these devices?
>
> I don't have too much insight about this security issue, i think there
> is because the deployment resources files are on /root directory, so i
> agree that this needs to be changed but i don't know how much effort
> will require.
>
>
DAFT is not run as root (by Refkit CI at least).

-- Mikko

--94eb2c12f92273c97e05536ddb9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Jul 3, 2017 at 7:37 PM, An=C3=ADbal Lim=C3=B3n <span dir=3D"ltr=
">&lt;<a href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">ani=
bal.limon@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><br>
<br>
On 07/03/2017 09:03 AM, Joshua Lock wrote:<br>
&gt; On Tue, 2017-06-06 at 10:46 -0500, An=C3=ADbal Lim=C3=B3n wrote:<br>
&gt;&gt; This will execute daft flash cycle without reboot and prepare the =
dut<br>
&gt;&gt; for sanity tests.<br>
&gt;&gt;<br>
&gt;&gt; [YOCTO #10604]<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal=
.limon@linux.intel.com">anibal.limon@linux.intel.com</a>&gt;<br>
&gt;&gt; Signed-off-by: Monserrat Sedeno &lt;<a href=3D"http://monserratx.s=
edeno.bustos.intel.com" rel=3D"noreferrer" target=3D"_blank">monserratx.sed=
eno.bustos.<wbr>intel.com</a>&gt;<br>
&gt;<br>
&gt; Typo in the email address here.<br>
&gt;<br>
&gt;&gt; Signed-off-by: Edwin Plauchu &lt;<a href=3D"mailto:edwin.plauchu.c=
amacho@linux.intel.com">edwin.plauchu.camacho@linux.<wbr>intel.com</a>&gt;<=
br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 config/autobuilder.conf.<wbr>example=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
&gt;&gt;=C2=A0 .../autobuilder/buildsteps/<wbr>DaftFlash.py=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 42<br>
&gt;&gt; ++++++++++++++++++++++<br>
&gt;&gt;=C2=A0 lib/python2.7/site-packages/<wbr>autobuilder/config.py=C2=A0=
 |=C2=A0 1 +<br>
&gt;&gt;=C2=A0 3 files changed, 44 insertions(+)<br>
&gt;&gt;=C2=A0 create mode 100644 lib/python2.7/site-<br>
&gt;&gt; packages/autobuilder/<wbr>buildsteps/DaftFlash.py<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/config/autobuilder.conf.<wbr>example<br>
&gt;&gt; b/config/autobuilder.conf.<wbr>example<br>
&gt;&gt; index e5ec16b..2e992cf 100644<br>
&gt;&gt; --- a/config/autobuilder.conf.<wbr>example<br>
&gt;&gt; +++ b/config/autobuilder.conf.<wbr>example<br>
&gt;&gt; @@ -98,3 +98,4 @@ PERFORMANCE_MAIL_SIG =3D &quot;Multiline\nSig\nL=
ine&quot;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 [Daft]<br>
&gt;&gt;=C2=A0 DAFT_WORKER_DEVICES_CFG =3D &quot;/etc/daft/devices.cfg&quot=
;<br>
&gt;&gt; +DAFT_WORKER_WORKSPACE =3D &quot;/home/ab/workspace&quot;<br>
&gt;&gt; diff --git a/lib/python2.7/site-<br>
&gt;&gt; packages/autobuilder/<wbr>buildsteps/DaftFlash.py b/lib/python2.7/=
site-<br>
&gt;&gt; packages/autobuilder/<wbr>buildsteps/DaftFlash.py<br>
&gt;&gt; new file mode 100644<br>
&gt;&gt; index 0000000..d5f6de8<br>
&gt;&gt; --- /dev/null<br>
&gt;&gt; +++ b/lib/python2.7/site-packages/<wbr>autobuilder/buildsteps/<wbr=
>DaftFlash.py<br>
&gt;&gt; @@ -0,0 +1,42 @@<br>
&gt;&gt; +import os<br>
&gt;&gt; +<br>
&gt;&gt; +from autobuilder.config import DAFT_WORKER_WORKSPACE<br>
&gt;&gt; +from buildbot.steps.shell import ShellCommand<br>
&gt;&gt; +<br>
&gt;&gt; +class DaftFlash(ShellCommand):<br>
&gt;&gt; +=C2=A0 =C2=A0 haltOnFailure =3D True<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 name =3D &quot;DaftFlash&quot;<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 def __init__(self, factory, argdict=3DNone, **kwarg=
s):<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.tests =3D None<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.factory =3D factory<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 for k, v in argdict.iteritems():<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 setattr(self, k, v)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.description =3D &quot;DUT Flashi=
ng&quot;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.timeout =3D 100000<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 kwargs[&#39;timeout&#39;]=3Dself.time=
out<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ShellCommand.__init__(self, **kwargs)=
<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 def start(self):<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 workspace_dir =3D DAFT_WORKER_WORKSPA=
CE<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 dut_name =3D self.getProperty(&#39;du=
t_name&#39;)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 workdir =3D self.getProperty(&#39;wor=
kdir&#39;)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 image =3D self.getProperty(&#39;BUILD=
IMAGES&#39;<wbr>)<br>
&gt;<br>
&gt; Remember to fix this when you rename the property.<br>
&gt;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 machine =3D self.getProperty(&#39;MAC=
HINE&#39;)<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 image_path =3D os.path.join(workdir, =
&#39;build&#39;, &#39;build&#39;, &#39;tmp&#39;,<br>
&gt;&gt; &#39;deploy&#39;,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;imag=
es&#39;, machine, &#39;%s-%s.hddimg&#39; % (image,<br>
&gt;&gt; machine))<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 image_name =3D os.path.basename(image=
_path)<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 # XXX: DAFT needs to have the image i=
n a shared workspace<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command =3D &quot;cp %s %s; &quo=
t; % (image_path, workspace_dir)<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D &quot;cd %s; &quot;=
 % (workspace_dir)<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 # XXX: DAFT needs to be executed by r=
oot user<br>
&gt;<br>
&gt; Why&#39;s that? Is that an intrinsic requirement of DAFT or is it beca=
use<br>
&gt; DAFT wants to use certain devices that are typically owned by root? Ca=
n<br>
&gt; we instead make the requirement that the user running daft has<br>
&gt; permissions and groups correctly configured to access these devices?<b=
r>
<br>
I don&#39;t have too much insight about this security issue, i think there<=
br>
is because the deployment resources files are on /root directory, so i<br>
agree that this needs to be changed but i don&#39;t know how much effort<br=
>
will require.<br>
<br></blockquote><div><br></div><div>DAFT is not run as root (by Refkit CI =
at least).</div><div><br></div><div>-- Mikko=C2=A0</div></div></div></div>

--94eb2c12f92273c97e05536ddb9b--
