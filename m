Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f53.google.com (mail-vb0-f53.google.com
	[209.85.212.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15525E005B9
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 08:45:35 -0800 (PST)
Received: by mail-vb0-f53.google.com with SMTP id g10so4990948vbg.40
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 08:45:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=2P9ye8DdWRLeSFeYXvIpjN13Em3EvdUvUiWp1RyG1oI=;
	b=LH9rTIzXZ3b4Er0B6wobKNXFeaPdjEo/EPd9y9vjB5LViMiVkg9UZoOYCNqzU1kNCt
	3Cdqa507BxVzd71qqVNXYtfP9LPeWQnnWOHpXi0pPT3wqHktbDEKR/8TgUF5PbGC4jTU
	KvFOxZudtKH3JJEp9PvgX8BKwNoUymX8L9FXG96+2WpBPp6OK78RKvCkYLBZz7oPOuxF
	Wfr+ljb/PusEruHrtIy91V2R7AjI0OcXwTqEOKLBcDKcrREmlAAR510pZrP1Q0rOb+Hu
	UU/M+JK/hmp2w+J0bBem/OLFIm3VQsuRWfsqfRiA/FTEn5UoUOFnoK3auyW48lBwb4UC
	q9/A==
X-Gm-Message-State: ALoCoQnATT8cQdAPmCLE1uoKyYioGfpOHDhldNuZ3LkBbraubzbwJxeC27MNLb+hFvyGOrdDJaPh
MIME-Version: 1.0
X-Received: by 10.220.84.65 with SMTP id i1mr61418vcl.51.1385570734564; Wed,
	27 Nov 2013 08:45:34 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Wed, 27 Nov 2013 08:45:34 -0800 (PST)
In-Reply-To: <CAPhnLPBfePCSFK8ptNDRh8vT2_4LdSzYU4vNfcB0ZiPCz92R_g@mail.gmail.com>
References: <CAPhnLPBfePCSFK8ptNDRh8vT2_4LdSzYU4vNfcB0ZiPCz92R_g@mail.gmail.com>
Date: Wed, 27 Nov 2013 16:45:34 +0000
Message-ID: <CAPhnLPBL+cPmGKpdEJmBmNbZAV-phRcNVqtuyDGc2yTKB3S1HA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Weekly Build Available
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
X-List-Received-Date: Wed, 27 Nov 2013 16:45:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

Folks,

There seems to be autobuilder related issues with this build. I'm
going to abort it, roll back the autobuilder config to the last good
state and reroll.

-b

On Wed, Nov 27, 2013 at 3:11 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> The weekly build is about the be available at:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20131127-1
>
> Please begin scheduled testing.
>
> bitbake 347b2ead091f00ee60703f6f3d17cfdd9075ac07
> eclipse-poky-juno e8342d27db60a9d1b627ddb9f8ae2f5512bfc0c9
> eclipse-poky-kepler 3dd620d9f89e297ee9e22d5ba9fe741a5f40ac82
> meta-fsl-arm 987115d6d099a5e87d9d5b3c4e6567a5e6309fd0
> meta-fsl-ppc 768c6ef13546e0f977847bc1fbb5957571fbf724
> meta-intel a649e92498d234f2d0d52f3da5a85bdc87296c23
> meta-minnow 91cff9475081a5625c1c0bb49c17c6f3130ec503
> meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
> oecore f991d2d60b74f5ebd990f77aecd3324b1a4533e9
> poky 32adaac34a614d106e6dd3e9f1130f4e94ff39ae
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

