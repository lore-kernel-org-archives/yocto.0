Return-Path: <kergoth@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 586E2E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 17:15:49 -0700 (PDT)
Received: by obbuo19 with SMTP id uo19so9018613obb.35
	for <yocto@yoctoproject.org>; Mon, 09 Apr 2012 17:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type;
	bh=CM6x9b9fVCtHHPe69LH6YU2rcM8hRqE/ez1xKercbTA=;
	b=n2+/NHjwXEGKJOwMkZRwSlA5ETC7JTbx31LQG36yqBbaHgeadw+ZhtEVsriR4pp2eb
	E2gToBaMECvwuA2Ty2gk9K278Igweqp37dc3EBfT6ZTiX8A/5WeQYllDGYIOA4Mm1cTA
	KMLByfRt7yECciEAFhd7hUKYeU2MXySzIDAgCsBkkwdyRSNCXOe8MKl5TRjDsn2H2euL
	wbnkmiCWysBVIqkrlm2JDFRmxQZxacYJqXi7jZ8Akg8EKakVLk8RLya24+8FB2O3z8eO
	Wous/tK5VZ6lGGScxew5uKYzQpDh+/2Y7rr760FRnTC69QOI9oCAQqDbdt/6rUKBswg+
	4c9w==
Received: by 10.182.127.20 with SMTP id nc20mr13067895obb.66.1334016948962;
	Mon, 09 Apr 2012 17:15:48 -0700 (PDT)
Received: from frey (ip68-110-79-242.ph.ph.cox.net. [68.110.79.242])
	by mx.google.com with ESMTPS id h2sm5372475obn.20.2012.04.09.17.15.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 Apr 2012 17:15:47 -0700 (PDT)
Date: Mon, 9 Apr 2012 17:15:46 -0700
From: Christopher Larson <kergoth@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Message-ID: <5E9E5F9E6BA84D039829890FF93FC118@gmail.com>
In-Reply-To: <CANFv2EmmbiTpFA2pS2iLXyxR9+0eCB0vJzvZAW2jxR9Scn6x6A@mail.gmail.com>
References: <4F834792.20402@gmail.com> <4F835F6B.3010608@linux.intel.com>
	<CANFv2EmmbiTpFA2pS2iLXyxR9+0eCB0vJzvZAW2jxR9Scn6x6A@mail.gmail.com>
X-Mailer: sparrow 1.5 (build 1043.1)
MIME-Version: 1.0
Cc: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Tue, 10 Apr 2012 00:15:49 -0000
Content-Type: multipart/alternative; boundary="4f837bb2_238e1f29_ee6b"

--4f837bb2_238e1f29_ee6b
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

See the cooker.log.* files in the tmp (or build) directory.

-- 
Christopher Larson


On Monday, April 9, 2012 at 5:01 PM, James Abernathy wrote:

> 
> 
> On Mon, Apr 9, 2012 at 6:15 PM, Darren Hart <dvhart@linux.intel.com (mailto:dvhart@linux.intel.com)> wrote:
> > 
> > 
> > On 04/09/2012 01:33 PM, jfabernathy wrote:
> > > at the end of the build of core-image-sato-sdk I got the following
> > > error.  I'm using the edison branch with the latest changes and also
> > > building the meta-cedartrail.  I had previously built core-image-sato
> > > successfully with this setup.
> > >
> > > Any ideas?
> > >
> > > ERROR: Function 'build_boot_bin' failed (see
> > > /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810
> > > for further information)
> > > ERROR: Logfile of failure stored in:
> > > /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810
> > > Log data follows:
> > > | mkdosfs: seek failed
> > 
> > Interesting.
> > 
> > Can you provide the "OE Build Configuration" blob that prints at the
> > start of the build - I'm mostly interested in your commit IDs for.
> > 
> > Also, please include the HEAD of your poky edison tree.
> > 
> Is there a way to retreive the OE-Build Configuration blob after it rolls off the screen? Or should I just rerun and capture it then? 
>  
> > Thanks,
> > 
> > --
> > Darren Hart
> > Intel Open Source Technology Center
> > Yocto Project - Linux Kernel
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org (mailto:yocto@yoctoproject.org)
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 



--4f837bb2_238e1f29_ee6b
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


                <div style=3D=22font-family: Helvetica; font-size: 13px; =
=22>See the cooker.log.* files in the tmp (or build) directory.<br></div>=

                <div><div><br></div><div>--&nbsp;</div><div>Christopher L=
arson</div><div><br></div></div>
                =20
                <p style=3D=22color: =23A0A0A8;=22>On Monday, April 9, 20=
12 at 5:01 PM, James Abernathy wrote:</p>
                <blockquote type=3D=22cite=22 style=3D=22border-left-styl=
e:solid;border-width:1px;margin-left:0px;padding-left:10px;=22>
                    <span><div><div><br><br>
<div>On Mon, Apr 9, 2012 at 6:15 PM, Darren Hart <span dir=3D=22ltr=22>&l=
t;<a href=3D=22mailto:dvhart=40linux.intel.com=22>dvhart=40linux.intel.co=
m</a>&gt;</span> wrote:<br><blockquote type=3D=22cite=22><div>
<div><br><br>On 04/09/2012 01:33 PM, jfabernathy wrote:<br>&gt; at the en=
d of the build of core-image-sato-sdk I got the following<br>&gt; error. =
&nbsp;I'm using the edison branch with the latest changes and also<br>
&gt; building the meta-cedartrail. &nbsp;I had previously built core-imag=
e-sato<br>&gt; successfully with this setup.<br>&gt;<br>&gt; Any ideas=3F=
<br>&gt;<br>&gt; ERROR: =46unction 'build=5Fboot=5Fbin' failed (see<br>&g=
t; /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1=
.0-r0/temp/log.do=5Fbootimg.25810<br>
&gt; for further information)<br>&gt; ERROR: Logfile of failure stored in=
:<br>&gt; /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sat=
o-sdk-1.0-r0/temp/log.do=5Fbootimg.25810<br>&gt; Log data follows:<br>&gt=
; =7C mkdosfs: seek failed<br>
<br></div>Interesting.<br><br>Can you provide the =22OE Build Configurati=
on=22 blob that prints at the<br>start of the build - I'm mostly interest=
ed in your commit IDs for.<br><br>Also, please include the HEAD of your p=
oky edison tree.<br>
<br></div></blockquote><div>Is there a way to retreive the OE-Build Confi=
guration blob after it rolls off the screen=3F Or should I just rerun and=
 capture it then=3F</div>
<div>&nbsp;</div><blockquote type=3D=22cite=22><div>Thanks,<br><span><fon=
t color=3D=22=23888888=22><br>--<br>Darren Hart<br>Intel Open Source Tech=
nology Center<br>
Yocto Project - Linux Kernel<br></font></span></div></blockquote></div><b=
r>
</div><div><div>=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F</div><div>yocto mailing list</div><div><a href=3D=22mailto:yoct=
o=40yoctoproject.org=22>yocto=40yoctoproject.org</a></div><div><a href=3D=
=22https://lists.yoctoproject.org/listinfo/yocto=22>https://lists.yoctopr=
oject.org/listinfo/yocto</a></div></div></div></span>
                =20
                =20
                =20
                =20
                </blockquote>
                =20
                <div>
                    <br>
                </div>
            

--4f837bb2_238e1f29_ee6b--
