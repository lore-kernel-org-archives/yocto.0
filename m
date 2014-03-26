Return-Path: <mahyar@boundarydevices.com>
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B44E00B84
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 10:14:09 -0700 (PDT)
Received: by mail-lb0-f169.google.com with SMTP id q8so1740065lbi.14
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 10:14:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=YKQUJ8ywmUa/cMCI0Coqeb+CfDfxpy8xZKWET+QLZxA=;
	b=fh4IqvR/XC5+bBtkataexaFY+6SEJT05lrsy4xUDpZxkF2mTbFY1p6ucKpu4Omy9LB
	EkiVQeirr64OWCZoXcuh9WqvKFGOwesN0jSSDRZ0pkFDptuRpIrKTEd4VbAO7GEgQ4kv
	ujTExYOJ8dCwkbhjj1BdNo3fNpNnblCr+CgonPytmwWUkzeFiFwXpwQpaEyfYiCx/KO6
	M2m0FkOWEPKvPhUqphXyYIEnffTisc0D1jevuY7jv9Sq7ISpp1zw5nO+bfoAb+xiwR6I
	vtWJkoXoWWR2L0Iq6rZ70buxBRIjqpnnN1zFoFVUwVQAk6qx2GM66He/D7Y63TUMoNqY
	nsGg==
X-Gm-Message-State: ALoCoQm53Ng38WSdBTr0jUweOWbvsAgCwJft7dcM/+SeCm9ShWSuVp1vwtQPoTxa+gomw7/YeHh7
MIME-Version: 1.0
X-Received: by 10.153.5.33 with SMTP id cj1mr445305lad.65.1395854048252; Wed,
	26 Mar 2014 10:14:08 -0700 (PDT)
Received: by 10.112.88.164 with HTTP; Wed, 26 Mar 2014 10:14:08 -0700 (PDT)
X-Originating-IP: [63.226.49.26]
In-Reply-To: <CAPhnLPCtc9KL6hbdwR-WCy9=_2jUEZ=BFXSFdGpw-+8nhX0L0A@mail.gmail.com>
References: <CAOJo16XX_Bu2pEcpOn73wOnDyRNTus3DxwLUjKwSraDAYPb_WQ@mail.gmail.com>
	<CAPhnLPCtc9KL6hbdwR-WCy9=_2jUEZ=BFXSFdGpw-+8nhX0L0A@mail.gmail.com>
Date: Wed, 26 Mar 2014 10:14:08 -0700
Message-ID: <CAOJo16XammEYuFtKAOHw8UY5-HbSVr-E_1cb6iKbfqvHXQLbHw@mail.gmail.com>
From: Mahyar Yaghmaee <mahyar@boundarydevices.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autobuilder setting, ACCEPT_FSL_EULA
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
X-List-Received-Date: Wed, 26 Mar 2014 17:14:13 -0000
Content-Type: multipart/alternative; boundary=001a11349628b49f9804f5859877

--001a11349628b49f9804f5859877
Content-Type: text/plain; charset=ISO-8859-1

great, Thanks Elizabeth and Ross.


On Wed, Mar 26, 2014 at 10:08 AM, Flanagan, Elizabeth <
elizabeth.flanagan@intel.com> wrote:

> You'll need a line something like this:
>
>         {'CreateAutoConf': {'machine': 'imx53qsb', 'SDKMACHINE' :
> 'x86_64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend':
> 'ACCEPT_FSL_EULA = "1"\n'}},
>
> This adds that line to auto.conf.
>
> On Wed, Mar 26, 2014 at 9:53 AM, Mahyar Yaghmaee
> <mahyar@boundarydevices.com> wrote:
> > Hello All,
> >
> > I'm trying to run autobuilder for my custom .conf file but I need to
> include
> > ACCEPT_FSL_EULA="1" in the generated local.conf file.
> >  Unfortunately I couldn't find anything related to that in the
> > CreateAutoConf.py file to set in my .conf  file.
> >
> > here's the error messege in the log file:
> >
> > recipe gpu-viv-bin-mx6q-1_3.10.17-1.0.0-hfp-r0: task do_unpack: Started
> > ERROR: To use 'gpu-viv-bin-mx6q' you need to accept the Freescale EULA at
> >
> '/home/mahyar/autobuilder/yocto-autobuilder/yocto-slave/nightly-fsl-image-gui-master/build/meta-fsl-arm/EULA'.
> > Please read it and in case you accept it, write: ACCEPT_FSL_EULA = "1" in
> > your local.conf.
> > ERROR: Function failed: do_unpack
> > ERROR: Logfile of failure stored in:
> >
> /home/mahyar/autobuilder/yocto-autobuilder/yocto-slave/nightly-fsl-image-gui-master/build/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-gnueabi/gpu-viv-bin-mx6q/1_3.10.17-1.0.0-hfp-r0/temp/log.do_unpack.10848
> > NOTE: recipe gpu-viv-bin-mx6q-1_3.10.17-1.0.0-hfp-r0: task do_unpack:
> Failed
> >
> >
> > please let me know if you have any suggestions
> >
> > Regards,
> > Mahyar
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release
>

--001a11349628b49f9804f5859877
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">great, Thanks Elizabeth and Ross.<br></div><div class=3D"g=
mail_extra"><br><br><div class=3D"gmail_quote">On Wed, Mar 26, 2014 at 10:0=
8 AM, Flanagan, Elizabeth <span dir=3D"ltr">&lt;<a href=3D"mailto:elizabeth=
.flanagan@intel.com" target=3D"_blank">elizabeth.flanagan@intel.com</a>&gt;=
</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">You&#39;ll need a line something like this:<=
br>
<br>
=A0 =A0 =A0 =A0 {&#39;CreateAutoConf&#39;: {&#39;machine&#39;: &#39;imx53qs=
b&#39;, &#39;SDKMACHINE&#39; :<br>
&#39;x86_64&#39;, &#39;distro&#39;: &#39;poky&#39;, &#39;buildhistory&#39; =
: False, &#39;atextprepend&#39;:<br>
&#39;ACCEPT_FSL_EULA =3D &quot;1&quot;\n&#39;}},<br>
<br>
This adds that line to auto.conf.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Wed, Mar 26, 2014 at 9:53 AM, Mahyar Yaghmaee<br>
&lt;<a href=3D"mailto:mahyar@boundarydevices.com">mahyar@boundarydevices.co=
m</a>&gt; wrote:<br>
&gt; Hello All,<br>
&gt;<br>
&gt; I&#39;m trying to run autobuilder for my custom .conf file but I need =
to include<br>
&gt; ACCEPT_FSL_EULA=3D&quot;1&quot; in the generated local.conf file.<br>
&gt; =A0Unfortunately I couldn&#39;t find anything related to that in the<b=
r>
&gt; CreateAutoConf.py file to set in my .conf =A0file.<br>
&gt;<br>
&gt; here&#39;s the error messege in the log file:<br>
&gt;<br>
&gt; recipe gpu-viv-bin-mx6q-1_3.10.17-1.0.0-hfp-r0: task do_unpack: Starte=
d<br>
&gt; ERROR: To use &#39;gpu-viv-bin-mx6q&#39; you need to accept the Freesc=
ale EULA at<br>
&gt; &#39;/home/mahyar/autobuilder/yocto-autobuilder/yocto-slave/nightly-fs=
l-image-gui-master/build/meta-fsl-arm/EULA&#39;.<br>
&gt; Please read it and in case you accept it, write: ACCEPT_FSL_EULA =3D &=
quot;1&quot; in<br>
&gt; your local.conf.<br>
&gt; ERROR: Function failed: do_unpack<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/mahyar/autobuilder/yocto-autobuilder/yocto-slave/nightly-fsl-ima=
ge-gui-master/build/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-gnuea=
bi/gpu-viv-bin-mx6q/1_3.10.17-1.0.0-hfp-r0/temp/log.do_unpack.10848<br>

&gt; NOTE: recipe gpu-viv-bin-mx6q-1_3.10.17-1.0.0-hfp-r0: task do_unpack: =
Failed<br>
&gt;<br>
&gt;<br>
&gt; please let me know if you have any suggestions<br>
&gt;<br>
&gt; Regards,<br>
&gt; Mahyar<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
<br>
<br>
--<br>
Elizabeth Flanagan<br>
Yocto Project<br>
Build and Release<br>
</font></span></blockquote></div><br></div>

--001a11349628b49f9804f5859877--
