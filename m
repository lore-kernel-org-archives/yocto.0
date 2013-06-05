Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qe0-f54.google.com (mail-qe0-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45C79E014F8
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 23:08:51 -0700 (PDT)
Received: by mail-qe0-f54.google.com with SMTP id ne12so792522qeb.41
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 23:08:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=Vc+zZc5L8u9zhF4TB9b2cprVfFEIbtj16rBo2LDi4uU=;
	b=RL8i23rFwC1YSsP/dNZZhQKo6BcakJFai2LYURpxfkSmnTkQpJ25TdSX8yuPCRBUgv
	tUJQ1a9YovW2ZAgNhO6CX/7Mdr3iFqEoGQT9oWPSpvgaPVNjmWI/JvvoZmi1arw2eOAL
	qwl4TJx+/zYB+SkWmR5nEhXs3ESnK26Rw41l3eaKcwbadFMP3dAhzozpvJ2qZSBzHt6D
	tecZCzjlbJDgynpt36H1ipP+AcbaFA77JCxIF89zlHMg54/HDwEE4eV6F8WOWgHRKUj9
	vY+NyBZS07kSGZR1ezpINFR3qJN8eNJOQ1mIlMhyqGXgHQE8Kp1RQdrd/5J0XEeW3ATG
	P+vw==
MIME-Version: 1.0
X-Received: by 10.229.32.66 with SMTP id b2mr6068447qcd.74.1370412530312; Tue,
	04 Jun 2013 23:08:50 -0700 (PDT)
Received: by 10.49.64.161 with HTTP; Tue, 4 Jun 2013 23:08:50 -0700 (PDT)
In-Reply-To: <CAPhnLPD8jGosiRuwqt17qXSFH3Tii1ifyFbO-wmDGXvoyPY-pw@mail.gmail.com>
References: <CAPhnLPD8jGosiRuwqt17qXSFH3Tii1ifyFbO-wmDGXvoyPY-pw@mail.gmail.com>
Date: Tue, 4 Jun 2013 23:08:50 -0700
Message-ID: <CAPhnLPD5Nw8hX=gZDZD4_t-AMeBVO8LPeXNOzYZ-euNVx=W9=w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmvWEjqQrJZDt9zvaIeoO4bx40Tzo9PylrCOmy8O4iH6Ee8nrifV4LJJ7bu9nXRNcW/jE6/
Subject: Re: 1.5_M1.rc1 availability
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
X-List-Received-Date: Wed, 05 Jun 2013 06:08:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

We have the git hash for:
eclipse-poky 	0b2dc574b1b08eab2102b37f3b64ab7bd70d9595

Things are taking a bit longer because this build was done with a clean sstate.

-b

On Tue, Jun 4, 2013 at 5:48 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> 1.5_M1.rc1 will be available soon at:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20130604-5
>
> poky                 a62aed41f2d8f874f7ae24d0e5be5dbc66ea2199
> meta-fsl-arm    be6317c244c61a62b952bbf9b5b706c239f49a78
> meta-fsl-ppc    52b906c448f275719f241c634fe6e412e917b67a
> meta-intel        24d63bd57269f3142c57c2d697c56101f73b23dc
> meta-minnow  0d428f867ffdf83dd35803c7318180751ddb096f
> meta-qt3         4c27cce6688aa39852f3cba5e7b80ec279019605
> eclipse-poky    Not known yet
>
> Please begin QA as soon as possible. Thanks!
>
> -b
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

