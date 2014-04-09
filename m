Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pb0-f45.google.com (mail-pb0-f45.google.com
	[209.85.160.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2958BE00BF0
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 16:33:04 -0700 (PDT)
Received: by mail-pb0-f45.google.com with SMTP id uo5so3119365pbc.18
	for <yocto@yoctoproject.org>; Wed, 09 Apr 2014 16:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=SRXXKmU3IVqjbt0vlSsaUUu6TGMIo9XrqtX+qdg8YzQ=;
	b=T3K3rWBSA6xfHAv4BMFY0iIxqECdoDjxBwJ9Za+Es7W8Ylo/VCPXEQQd5W5P6PWHDp
	v33B+BSqv9VJ2nuEXDqO4t0MguS3tzkhHeSln1X2P4OjT2rotE92GEEl6N+TmGvzHzL6
	/Mc5waWCSgBbZSK5wT7BJbwxo8lX2VEY3cnTw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=SRXXKmU3IVqjbt0vlSsaUUu6TGMIo9XrqtX+qdg8YzQ=;
	b=AstTP6LTKbxCZbWY/UYORd208MJSBYJu6yBcq5ZyO2X2FguKn3tEOisPuEiSZKyDvR
	9boi6xulajA1ZZBQ2zL5Q8wsFmRD7JL90RpGebLYy1uVGSVsMo5ElOmFymkI6JIPlZ1C
	pEJkgKs5VvGhiq6zh8EJywdjCO7ju3wFgA16yfGH644I1rQrvJiCRk/DlFAmb8+QYfty
	LNiY1G5fML+l0rMBR5GBXAJ/3yuN/udoLpKam0z5NnmCcsDtBZ+4Bo1ruwrLNPuXlSzM
	35GloOwrObsGddfUFsi5aH1XAbfLZtfRiBK08ASoOKk1JorHefLUVqY4dI5gOWeZpd8z
	rofw==
X-Gm-Message-State: ALoCoQnhJd8emaX+Byqm9UHVKLDDSVNmvj/mJ4+VLnTDW/kVh58KNx9S55aps503xOMX5evMdQUF
MIME-Version: 1.0
X-Received: by 10.67.23.135 with SMTP id ia7mr15550957pad.5.1397086383935;
	Wed, 09 Apr 2014 16:33:03 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.68.232.229 with HTTP; Wed, 9 Apr 2014 16:33:03 -0700 (PDT)
In-Reply-To: <5345B327.5030203@balister.org>
References: <CF6AE2C6.41DF5%belen.barros.pena@intel.com>
	<5345B327.5030203@balister.org>
Date: Wed, 9 Apr 2014 16:33:03 -0700
X-Google-Sender-Auth: Wkvm1rsGED5L0KSmU0bkLAUR-Bs
Message-ID: <CA+gsK-qsb+UVcKsuE_NMAw_dVD-LkdkgOwayBHLPdM3QPPt2Bw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Belen Barros Pena <belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dogfooding and usability testing Toaster
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
X-List-Received-Date: Wed, 09 Apr 2014 23:33:05 -0000
Content-Type: multipart/alternative; boundary=001a1134519aa2a60b04f6a485d6

--001a1134519aa2a60b04f6a485d6
Content-Type: text/plain; charset=ISO-8859-1

Hi Belen,

That is exciting. I just ran with it and started a build with toaster in
the background. A couple of observations from the get-go:

   - South 0.8.4 is also needed in addition to Django. The Toaster Wiki [1]
   does not say that but the Contribute to Toaster page [2] does.
   - You need to run 'sudo pip install ...' for Django and South otherwise
   the installation fails with 'permission denied' for /usr/lib/python2.7
   - Clicking on "Show me the manual" in the Toaster UI directs to [3]
   which requires a log in
   - Is it possible to relocate/rename the toaster.sqlite database via
   configuration setting? If so, could I use the same database for different
   build environments?

Thanks,
Rudi




[1] https://wiki.yoctoproject.org/wiki/Toaster#Installation_and_Running
[2] https://wiki.yoctoproject.org/wiki/Contribute_to_Toaster
[3] https://www.yoctoproject.org/documentation/toaster-manual

--001a1134519aa2a60b04f6a485d6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Belen,<div><br></div><div>That is exciting. I just ran =
with it and started a build with toaster in the background. A couple of obs=
ervations from the get-go:</div><div><ul><li>South 0.8.4 is also needed in =
addition to Django. The Toaster Wiki [1] does not say that but the Contribu=
te to Toaster page [2] does.</li>
<li>You need to run &#39;sudo pip install ...&#39; for Django and South oth=
erwise the installation fails with &#39;permission denied&#39; for /usr/lib=
/python2.7</li><li>Clicking on &quot;Show me the manual&quot; in the Toaste=
r UI directs to [3] which requires a log in</li>
<li>Is it possible to relocate/rename the toaster.sqlite database via confi=
guration setting? If so, could I use the same database for different build =
environments?</li></ul><div>Thanks,</div><div>Rudi</div><div><br></div>
</div><div><br></div><div><br></div><div><br></div><div>[1]=A0<a href=3D"ht=
tps://wiki.yoctoproject.org/wiki/Toaster#Installation_and_Running">https://=
wiki.yoctoproject.org/wiki/Toaster#Installation_and_Running</a></div><div>[=
2]=A0<a href=3D"https://wiki.yoctoproject.org/wiki/Contribute_to_Toaster">h=
ttps://wiki.yoctoproject.org/wiki/Contribute_to_Toaster</a></div>
<div>[3]=A0<a href=3D"https://www.yoctoproject.org/documentation/toaster-ma=
nual">https://www.yoctoproject.org/documentation/toaster-manual</a></div><d=
iv class=3D"gmail_extra"><br><br><div class=3D"gmail_quote"><br></div>
</div></div>

--001a1134519aa2a60b04f6a485d6--
