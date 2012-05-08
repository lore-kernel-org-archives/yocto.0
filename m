Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A4D0E0030B
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 08:08:26 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 08 May 2012 08:08:25 -0700
Received: by lahj13 with SMTP id j13so851127lah.25
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 08:08:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=xe0QDXUD5G8ScjZNFE+0VIKOXSxLSyuOtZZYlijg0Vw=;
	b=PsafN1d7/QnkTBArWKGRW1jLluGM3wK12D3X2KujOyhPg9Gr2hgRz5EIqmuC2TBMNB
	UwOCw0jH+grbYAsrHGKvcFnq0vTAuzlwvULlrD+mm7PFmCyOqacVrOMyZAXnmwDW08QF
	OG0pMin1ZG5Y+JxGS/JYJhJbNCV86levcxS9dz0HiVHAALjstsF0LIdE0FMPqEmLzXjL
	VDyngQZC+w7ZT9rMGpfczQkqJRzb2+ZW35DYHb5kMKtZUCrwDk4XPR9MeAbUcE6q6RKI
	8TZleciuzi5svTAdrLkI7b6TOSMa2rzs82Okrx3hp6mh8ii5UU4IUYIX8YHO01U4cQkh
	b5Ig==
MIME-Version: 1.0
Received: by 10.112.38.70 with SMTP id e6mr9103935lbk.6.1336489703545; Tue, 08
	May 2012 08:08:23 -0700 (PDT)
Received: by 10.112.107.137 with HTTP; Tue, 8 May 2012 08:08:23 -0700 (PDT)
In-Reply-To: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
References: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
Date: Tue, 8 May 2012 08:08:23 -0700
Message-ID: <CAPhnLPD1hXOUa_Zyi=OHM8a5B1CwdOCAxfuH=T1qqhTmchgi7Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
X-Gm-Message-State: ALoCoQl/sxpMvqar2wooE7kk9ULdhd+M38gLeYkMwul9oKbKK/bm6kcPjgBPmWiS/qCCwRJ+aumZ
Cc: yocto@yoctoproject.org
Subject: Re: [denzil] Licenses, source distribution etc
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
X-List-Received-Date: Tue, 08 May 2012 15:08:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, May 8, 2012 at 12:57 AM, Frans Meulenbroeks
<fransmeulenbroeks@gmail.com> wrote:
> Dear all,
>
> A next question/issue wrt my denzil experiment:
>
> I wanted to know what licenses are used in my image.
> I found tmp/deploy/licenses but this is package oriented and does not
> really give a quick overview.
>
> The manual gave me this section:
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-src-distribute
>
> I tried to inherit src_distribute and src_distribute_local, but to no avail
> Running a find on the source tree did not reveal these classes:
>
> frans@frans-desktop:~/poky-denzil-7.0$ find | grep distribute
> ./meta/classes/pkg_distribute.bbclass
> frans@frans-desktop:~/poky-denzil-7.0$
>
> Something missing?
> And what is the best way to find out what licenses are used?

tmp/deploy/${IMAGE}/license.manifest

I have a bug open to document the license infrastructure.

-b

>
> Thanks, (and keep up the good work!)
> Frans.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

