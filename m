Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.6116.1615279947444850677
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 00:52:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=Ct+h+wwN;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd15176.aruba.it (smtpcmd15176.aruba.it [62.149.156.176])
	by mail.yoctoproject.org (Postfix) with ESMTP id A93C038C06B0
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 08:52:24 +0000 (UTC)
Received: from p50 ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id JY6HlanQcMqeYJY6IlZBpR; Tue, 09 Mar 2021 09:52:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1615279943; bh=KJIetItzJIba9fENCsBjt/NedDZFw9ABtNUgNFiYz1Q=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=Ct+h+wwNZpbEUBq2TsJmzjrGxF4Cg7keZXBrQEH5m3/lo1SUdjNuX+umeui/2+9QG
	 n7Yw+mcd48Een+SI+RGBQosuQFv0XzWnZ4Gu3NUb5tOv66M9jToHAiRuM31ozNzD2Y
	 RcnCCitemtYJAofJKf0iv8siruEi+gX0w/qPrNCX58o9CRFRa815j5x/DWDgP+RMpx
	 CevATs3xuJL8doTfC/DJ7vuJCmi4t+gmYp1tyXLWF56LdWigHuFuVMx5knxMOCC2XB
	 EwTnFioffrle30DaVVnpl+56fk3FAD2es0QonWJt9lchfzzVkcaYrSZ/qFuGxShKSV
	 Gn0cDJ/GZ1C7w==
Date: Tue, 9 Mar 2021 09:52:21 +0100
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: Khem Raj <raj.khem@gmail.com>
Cc: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <B4166BA9-1E10-4CCF-91ED-377FC52A38DE@getmailspring.com>
In-Reply-To: <4f4c9223-d912-ebce-b194-27a770391ff2@gmail.com>
References: <4f4c9223-d912-ebce-b194-27a770391ff2@gmail.com>
Subject: Re: [yocto] Remove *-dev packages from final image
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfP6DiEB2/S212Ihilgumg1PL5xhRrnKJaCLdQHx0EhhBKz7uyTAaZzHRZlmEDu3411dgBSv+XmowVY/dbv1dOiajPpsc/s81rzWaFWZCkUXL0J4RL0n9
 Ikf9bRqVshxM66ST9bbxX4Z3NfcsZj2e7CpyO8JMlSCqxNo1uK/v6euBSnTc9JQJ9/Y5Pd/LhMoSBA==
Content-Type: multipart/alternative; boundary="60473745_5d344c07_16c6"

--60473745_5d344c07_16c6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Thanks a lot.
I'll do it

MZ
On mar 8 2021, at 7:39 pm, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On 3/8/21 3:59 AM, Mauro Ziliani wrote:
> > Hi all.
> > I'm in trouble to remove the *-dev packages from final image.
> >
> > I remove dev-pkgs and dbg-pkgs from EXTRA_IMAGE_FEATURES and
> > IMAGE_FEATURES with lines
> >
> > IMAGE_FEATURES_remove = " \
> > dbg-pkgs \
> > dev-pkgs \
> > "
> >
> > EXTRA_IMAGE_FEATURES_remove = " \
> > dbg-pkgs \
> > dev-pkgs \
> > "
> >
> > But *-dev persists.
> >
> > I suppose there is some package-group which installs *-dev
> >
> > In the image recipe I includes
> >
> > require recipes-sato/images/core-image-sato.bb
> > require recipes-fsl/images/fsl-image-multimedia-full.bb
> >
> > and I force a remove with
> >
> > IMAGE_INSTALL_remove = " \
> > packagegroup-fsl-tools-gpu \
> > imx-gpu-sdk \
> > packagegroup-core-x11-sato-games \
> > attr-dev \
> > alsa-lib-dev \
> > base-file-dev \
> > connman \
> > "
> >
> > Even if I remove alsa-lib-dev I find it in the manifest.
> >
> > I'm working with a Krogoth
> >
> > Any idea?
>
> you might find the dependency with bitbake -g <your-image> and
> insepcting the generated dependecy files.
>
> >
> > Thanks all
> > MZ
> >
> >
> >
> >
> > 
> >
>


--60473745_5d344c07_16c6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Thanks a lot.</div><div>I'll do it</div><br><div>MZ</div><br><div clas=
s=3D"gmail_quote_attribution">On mar 8 2021, at 7:39 pm, Khem Raj &lt;raj.k=
hem@gmail.com&gt; wrote:</div><blockquote><div><br><br><div>On 3/8/21 3:59 =
AM, Mauro Ziliani wrote:</div><div>&gt; Hi all.</div><div>&gt; I'm in troub=
le to remove the *-dev packages from final image.</div><div>&gt;</div><div>=
&gt; I remove dev-pkgs and dbg-pkgs from EXTRA_IMAGE_FEATURES and</div><div=
>&gt; IMAGE_FEATURES with lines</div><div>&gt;</div><div>&gt; IMAGE_FEATURE=
S_remove =3D " \</div><div>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dbg-pk=
gs \</div><div>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev-pkgs \</div><d=
iv>&gt; "</div><div>&gt;</div><div>&gt; EXTRA_IMAGE_FEATURES_remove =3D " \=
</div><div>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dbg-pkgs \</div><div>&=
gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev-pkgs \</div><div>&gt; "</div><=
div>&gt;</div><div>&gt; But *-dev persists.</div><div>&gt;</div><div>&gt; I=
 suppose there is some package-group which installs *-dev</div><div>&gt;</d=
iv><div>&gt; In the image recipe I includes</div><div>&gt;</div><div>&gt; r=
equire recipes-sato/images/core-image-sato.bb</div><div>&gt; require recipe=
s-fsl/images/fsl-image-multimedia-full.bb</div><div>&gt;</div><div>&gt; and=
 I force a remove with</div><div>&gt;</div><div>&gt; IMAGE_INSTALL_remove =
=3D " \</div><div>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; packageg=
roup-fsl-tools-gpu \</div><div>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; imx-gpu-sdk \</div><div>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 packagegroup-core-x11-sato-games \</div><div>&gt; &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; attr-dev \</div><div>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; alsa-lib-dev \</div><div>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; base-file-dev \</div><div>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; connman \</div><div>&gt; "</div><div>&gt;</div><div>&gt; Even if =
I remove alsa-lib-dev&nbsp; I find it in the manifest.</div><div>&gt;</div>=
<div>&gt; I'm working with a Krogoth</div><div>&gt;</div><div>&gt; Any idea=
?</div><br><div>you might find the dependency with bitbake -g &lt;your-imag=
e&gt; and</div><div>insepcting the generated dependecy files.</div><br><div=
>&gt;</div><div>&gt; Thanks all</div><div>&gt; &nbsp;&nbsp; MZ</div><div>&g=
t;</div><div>&gt;</div><div>&gt;</div><div>&gt;</div><div>&gt; </div><div>&=
gt;</div></div></blockquote>

--60473745_5d344c07_16c6--
