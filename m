Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A074E00348
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2012 16:03:44 -0800 (PST)
Received: from mail-ee0-f72.google.com ([74.125.83.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 06 Nov 2012 16:03:10 -0800
Received: by mail-ee0-f72.google.com with SMTP id c4so908923eek.11
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2012 16:03:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:x-gm-message-state;
	bh=VOG0lVnOrGH7gSbJP7DsmOV7UZRdgnowRvCWtELneZs=;
	b=S5+4JYAetv6P3lJyRmF1qZVGfQk0oLXKQULzwAa56dplXa6ntcqWDJ5sT5URwaRkGL
	C1/QIR1RelGkGgl0cYlnlmrXn2EigUUcpi56MhCaomnY8YKRPI57LepGPoO9i9JK3Q2d
	UWgSnApXsvxdhyMIqZQNlCHE2X8Y9zr2oUA08YtgUsG4GhhXc2a1Eg2VQw6urhVnuCCF
	EJzLpFpTYIoFZ2D/KYOCgOuRucZ7jveiUrceRhpinkGfvLYip6WB0rk6VUeGXmQF++v3
	YVQ9JTte1iIGVbZekUFbwI4rkBRW3Ir5FjvWZnxo5FHEvKwoKVR2217H+ldcocD1Jp2G
	LmNw==
Received: by 10.216.214.101 with SMTP id b79mr1275636wep.1.1352246622310;
	Tue, 06 Nov 2012 16:03:42 -0800 (PST)
Received: by 10.216.214.101 with SMTP id b79mr1275629wep.1.1352246622106;
	Tue, 06 Nov 2012 16:03:42 -0800 (PST)
Received: from [192.168.1.5] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id hf10sm1336585wib.0.2012.11.06.16.03.38
	(version=SSLv3 cipher=OTHER); Tue, 06 Nov 2012 16:03:40 -0800 (PST)
Date: Wed, 7 Nov 2012 00:03:35 +0000
From: Ross Burton <ross.burton@intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Message-ID: <96327FFCDF2B4EC4BB685004F1484BD3@intel.com>
In-Reply-To: <1352244165.2408.63.camel@empanada>
References: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
	<1352119640-25949-2-git-send-email-ross.burton@intel.com>
	<1352233930.2408.44.camel@empanada> <1352244165.2408.63.camel@empanada>
X-Mailer: sparrow 1.3.2 (build 507.11)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQn/uadfp5Nhd9hMDFEWCwtawQiA7fry6PT5+L2E55oFKkYx2QdxY/bQszE2UyVSOUcBYdEdCKAozDeAiVr2w3OkhOvqb2/t9rKE6ZrSOMxDm0oO7cp6DIIwy1/Nd4KRRjpvh2wah0cfT7aBes0YENY5cfXNwQ==
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] xserver-xorg: bump PR to get the new xorg-abi- RPROVIDES
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
X-List-Received-Date: Wed, 07 Nov 2012 00:03:45 -0000
Content-Type: multipart/alternative; boundary="5099a557_74b0dc51_773"

--5099a557_74b0dc51_773
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Signed-off-by: Ross Burton <ross.burton@intel.com> 

-- 
Ross Burton
Sent with Sparrow (http://www.sparrowmailapp.com/?sig)


On Tuesday, 6 November 2012 at 23:22, Tom Zanussi wrote:

> On Tue, 2012-11-06 at 14:32 -0600, Tom Zanussi wrote:
> > Missing signed-off-by.
> 
> 
> Please just reply to this with your Signed-off-by and I can pull all
> three in, thanks...
> 
> Tom
> 
> > Tom
> > 
> > On Mon, 2012-11-05 at 12:47 +0000, Ross Burton wrote:
> > > ---
> > > common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc | 2 +-
> > > 1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
> > > index 8c7009f..1c71d7b 100644
> > > --- a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
> > > +++ b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
> > > @@ -17,4 +17,4 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3dd2bbe3563837f80ed8926b06c1c353"
> > > SRC_URI[md5sum] = "5bef6839a76d029204ab31aa2fcb5201"
> > > SRC_URI[sha256sum] = "864831f51e841ff37f2445d1c85b86b559c8860a435fb496aead4f256a2b141d"
> > > -PR = "r1"
> > > +PR = "r2"
> > > 
> > 
> > 
> 
> 
> 



--5099a557_74b0dc51_773
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


    <div id=3D=22reply-content=22>
        Signed-off-by: Ross Burton &lt;ross.burton=40intel.com&gt;
    </div>
    <div id=3D=22B9945964474E4579893D6610150DDC61=22><div><br></div>--&nb=
sp;<br>Ross Burton<br><div>Sent with <a href=3D=22http://www.sparrowmaila=
pp.com/=3Fsig=22>Sparrow</a></div><div><br></div></div>
    =20
    <p style=3D=22color: =23A0A0A8;=22>On Tuesday, 6 November 2012 at 23:=
22, Tom Zanussi wrote:</p>
    <blockquote type=3D=22cite=22 style=3D=22border-left-style:solid;bord=
er-width:1px;margin-left:0px;padding-left:10px;=22>
        <div id=3D=22quoted-message-content=22><div><div>On Tue, 2012-11-=
06 at 14:32 -0600, Tom Zanussi wrote:</div><blockquote type=3D=22cite=22>=
<div>Missing signed-off-by.</div></blockquote><div><br></div><div>Please =
just reply to this with your Signed-off-by and I can pull all</div><div>t=
hree in, thanks...</div><div><br></div><div>Tom</div><div><br></div><bloc=
kquote type=3D=22cite=22><div><div>Tom</div><div><br></div><div>On Mon, 2=
012-11-05 at 12:47 +0000, Ross Burton wrote:</div><blockquote type=3D=22c=
ite=22><div><div>---</div><div> common/recipes-graphics/xorg-xserver/xser=
ver-xorg-1.9.3.inc =7C    2 +-</div><div> 1 file changed, 1 insertion(+),=
 1 deletion(-)</div><div><br></div><div>diff --git a/common/recipes-graph=
ics/xorg-xserver/xserver-xorg-1.9.3.inc b/common/recipes-graphics/xorg-xs=
erver/xserver-xorg-1.9.3.inc</div><div>index 8c7009f..1c71d7b 100644</div=
><div>--- a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc</=
div><div>+++ b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.in=
c</div><div>=40=40 -17,4 +17,4 =40=40 LIC=5F=46ILES=5FCHKSUM =3D =22file:=
//COPYING;md5=3D3dd2bbe3563837f80ed8926b06c1c353=22</div><div> SRC=5FURI=5B=
md5sum=5D =3D =225bef6839a76d029204ab31aa2fcb5201=22</div><div> SRC=5FURI=
=5Bsha256sum=5D =3D =22864831f51e841ff37f2445d1c85b86b559c8860a435fb496ae=
ad4f256a2b141d=22</div><div>-PR =3D =22r1=22</div><div>+PR =3D =22r2=22</=
div></div></blockquote></div></blockquote></div></div>
        =20
        =20
        =20
        =20
    </blockquote>
    =20
    <div>
        <br>
    </div>

--5099a557_74b0dc51_773--
