Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCB0EE00C8B
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 22:15:56 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id il7so1598116vcb.32
	for <yocto@yoctoproject.org>; Wed, 02 Apr 2014 22:15:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=DT+Z++8Z89KmAW3Mk4+94X2A5UIAkYwNZcbUoI5K//Q=;
	b=mZmhxujFSERHXypKzTo6ZICyZgkjyzUAz8H25LUDo8GCv8WnyoO1KpBghzUpkgAuhI
	7dwRC5II8ZrGkH0ejmo3fp/k1+jn8coNoBS3fevmjCdNkpNQIwy7Sutud6QrXda4Wa3n
	lL5lP1IIBqorPapku7tHlAJnQmu1ZXeXRSCOxQvpuLf77RKcDJ9sDW9n4W8VvjYUyvSn
	FyJhxBjm/HQA27giWAEAeuHvqc2l+cMsWGQmdcBk4oiI5VWza0GAl06Wnv/7rCDuxAtg
	Jzcj7YG/fUomBk0al5lMWVP6L5rTuVYL5EAjyLRa0ICXFSgRfsYUn7GXcRtBCbNi88lH
	P/RA==
X-Gm-Message-State: ALoCoQmbMba/jHlTUesQmQSN1ZOSUJaPM6/2ckAo7KzZIxF2wfrFM9ytstXQxS3JYkMN7lk+rSIJ
MIME-Version: 1.0
X-Received: by 10.220.188.10 with SMTP id cy10mr1167816vcb.36.1396502155945;
	Wed, 02 Apr 2014 22:15:55 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 2 Apr 2014 22:15:55 -0700 (PDT)
In-Reply-To: <854E8DBA9F41904AB047E03BB6963AE501A0E62E@SHSMSX101.ccr.corp.intel.com>
References: <854E8DBA9F41904AB047E03BB6963AE501A0E62E@SHSMSX101.ccr.corp.intel.com>
Date: Wed, 2 Apr 2014 22:15:55 -0700
Message-ID: <CAPhnLPD5_19gPzyez-CHKjzzE_2dzeOrEm9FPwFYg7wkQTP58A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Guo, Yejun" <yejun.guo@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to set LICENSE for llvm in .bb file
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
X-List-Received-Date: Thu, 03 Apr 2014 05:15:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

As it's not going into core, I would the license to your layer by
adding a custom license directory to your layer.conf:

# Additional license directories.
LICENSE_PATH +=3D "${LAYERDIR}/custom-licenses"

Place the license in custom-license. I'd name it NCSA-1.0. Then I
would reference that in your .bb file:

LICENSE =3D "NCSA-1.0 & ...... (llvm has a few other licenses iirc)


On Wed, Apr 2, 2014 at 7:16 PM, Guo, Yejun <yejun.guo@intel.com> wrote:
> Hi,
>
> I'm adding package llvm which has its own license: University of Illinois=
/NCSA Open Source License, see at http://llvm.org/releases/3.4/LICENSE.TXT =
.  I tried something for LICENSE in .bb file, but is not recognized by the =
system. Could you please let me know how to set this value? Thanks a lot!
>
>
> Thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

