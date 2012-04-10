Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A21CE00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 17:01:11 -0700 (PDT)
Received: by vcbfl17 with SMTP id fl17so3312137vcb.35
	for <yocto@yoctoproject.org>; Mon, 09 Apr 2012 17:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0nHrgpU5Lqz2LtJTlOSUcV2/4vK9yFltLyIVYFCmkYA=;
	b=nKnh1szupCkvlZ1X+K6CGOgVIXoNzMchrVjwc+KAsszhTAmnQ1k1Jy88ySTuzeGzRP
	2xLhudbLVdJwuzANfVustyDCAWFU8nUs5txGl1X0d6iR4+8FPeeOXqA7Y9cXNYdGX9Tq
	6/aD4mkhc1w3bYgG4faIb+tTLp+ktUbmxRYC78xSXjZeVTNm0qzjXWqCJyp3FK6i1I40
	NgSfAT26+DJIi1eetxQzBHfFB2id3tjxrvk4ls8isvOVhDZsmf6v31T3DNE2TPq+t9CS
	OPcdeZoP+Vz79CzaMmaxq/AGj0Ns/a9g4JU6tA6yY6OI757orCGJxz7/DNGQRVCXIdW/
	HUNQ==
MIME-Version: 1.0
Received: by 10.52.38.167 with SMTP id h7mr3729555vdk.109.1334016070469; Mon,
	09 Apr 2012 17:01:10 -0700 (PDT)
Received: by 10.52.20.1 with HTTP; Mon, 9 Apr 2012 17:01:10 -0700 (PDT)
In-Reply-To: <4F835F6B.3010608@linux.intel.com>
References: <4F834792.20402@gmail.com>
	<4F835F6B.3010608@linux.intel.com>
Date: Mon, 9 Apr 2012 20:01:10 -0400
Message-ID: <CANFv2EmmbiTpFA2pS2iLXyxR9+0eCB0vJzvZAW2jxR9Scn6x6A@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build error on core-image-sato-sdk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Apr 2012 00:01:11 -0000
Content-Type: multipart/alternative; boundary=bcaec51d21a401470304bd47d2dd

--bcaec51d21a401470304bd47d2dd
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Apr 9, 2012 at 6:15 PM, Darren Hart <dvhart@linux.intel.com> wrote:

>
>
> On 04/09/2012 01:33 PM, jfabernathy wrote:
> > at the end of the build of core-image-sato-sdk I got the following
> > error.  I'm using the edison branch with the latest changes and also
> > building the meta-cedartrail.  I had previously built core-image-sato
> > successfully with this setup.
> >
> > Any ideas?
> >
> > ERROR: Function 'build_boot_bin' failed (see
> >
> /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810
> > for further information)
> > ERROR: Logfile of failure stored in:
> >
> /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810
> > Log data follows:
> > | mkdosfs: seek failed
>
> Interesting.
>
> Can you provide the "OE Build Configuration" blob that prints at the
> start of the build - I'm mostly interested in your commit IDs for.
>
> Also, please include the HEAD of your poky edison tree.
>
> Is there a way to retreive the OE-Build Configuration blob after it rolls
off the screen? Or should I just rerun and capture it then?


> Thanks,
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>

--bcaec51d21a401470304bd47d2dd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Mon, Apr 9, 2012 at 6:15 PM, Darren Hart <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com">dvhart@linux.in=
tel.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"im"><br><br>On 04/09/2012 01:33 PM, jfabernathy wrote:<br>&gt=
; at the end of the build of core-image-sato-sdk I got the following<br>&gt=
; error. =A0I&#39;m using the edison branch with the latest changes and als=
o<br>
&gt; building the meta-cedartrail. =A0I had previously built core-image-sat=
o<br>&gt; successfully with this setup.<br>&gt;<br>&gt; Any ideas?<br>&gt;<=
br>&gt; ERROR: Function &#39;build_boot_bin&#39; failed (see<br>&gt; /build=
/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/=
log.do_bootimg.25810<br>
&gt; for further information)<br>&gt; ERROR: Logfile of failure stored in:<=
br>&gt; /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sd=
k-1.0-r0/temp/log.do_bootimg.25810<br>&gt; Log data follows:<br>&gt; | mkdo=
sfs: seek failed<br>
<br></div>Interesting.<br><br>Can you provide the &quot;OE Build Configurat=
ion&quot; blob that prints at the<br>start of the build - I&#39;m mostly in=
terested in your commit IDs for.<br><br>Also, please include the HEAD of yo=
ur poky edison tree.<br>
<br></blockquote>
<div>Is there a way to retreive the OE-Build Configuration blob after it ro=
lls off the screen? Or should I just rerun and capture it then?</div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">Thanks,<br><span class=3D"HOEnZb"><fo=
nt color=3D"#888888"><br>--<br>Darren Hart<br>Intel Open Source Technology =
Center<br>
Yocto Project - Linux Kernel<br></font></span></blockquote></div><br>

--bcaec51d21a401470304bd47d2dd--
