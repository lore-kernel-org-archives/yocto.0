Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8492FE013A6
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 13:58:20 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 14 May 2012 13:58:19 -0700
Received: by lbbgh12 with SMTP id gh12so3257059lbb.25
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 13:58:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=Vh3l3I9wyjRqgRKQ7X2Z283WCNhWiL6jxqNwH38pyRY=;
	b=WAyrHQz4A8t1oB1r2eS2GMAMGmX0gzK54J3+VOPznWi5ReGNhswACb/CzN39hUUpDN
	U47jRLmJT+rSrPGY6W6PHfrR0dW0vcWvPMmZtE+oyMeU9fMbrTKRx7IDj7ghcGtLzEKQ
	0qYiN2JdGYmCl3Wrt4D/nxx66iAMjJnFXNzuYngWzLW7WrdwcEHzSeer71HuwhfZg5/7
	BkdSzCx/f1SlGSaO4HIKap6YipQ09SJM19JehpET5psboDac5AR1iljEWJjTM8PEJhMl
	CqbDRvqcSUT7AItMkXoLv5NKcJdUsUK7JdIARbfU+0F8qcnHJppR7SHKt/fhr+s6H+hT
	6JYg==
MIME-Version: 1.0
Received: by 10.152.108.38 with SMTP id hh6mr9684617lab.28.1337029097517; Mon,
	14 May 2012 13:58:17 -0700 (PDT)
Received: by 10.112.107.137 with HTTP; Mon, 14 May 2012 13:58:17 -0700 (PDT)
In-Reply-To: <20120514201154.8A627202B34@gemini.denx.de>
References: <20120514201154.8A627202B34@gemini.denx.de>
Date: Mon, 14 May 2012 13:58:17 -0700
Message-ID: <CAPhnLPDzcwr+0uMFk274KKtfbGD48-z5yQDqD=JozLO0jA9QRA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Wolfgang Denk <wd@denx.de>
X-Gm-Message-State: ALoCoQkNnzyos6XC06WvHwtsPk96IMIhQlSezyCUs2uCZJzQ0vRe6HmmQ5Kw3erVAWV9YfgBnEoy
Cc: yocto@yoctoproject.org
Subject: Re: LICENSE = "GPL" -- problem?
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
X-List-Received-Date: Mon, 14 May 2012 20:58:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, May 14, 2012 at 1:11 PM, Wolfgang Denk <wd@denx.de> wrote:
> Hi,
>
> we noticed warnings like "No generic license file exists for: GPL in
> any provider" for our own linux kernel recipe. =A0The cause wa the use
> of an entry
>
> =A0 =A0 =A0 =A0LICENSE =3D "GPL"
>
> which whould read "GPLv2" instead of "GPL". =A0A scan detected that the
> same string "GPL" is used in a number of other recipes:
>
> bitbake/lib/bb/shell.py:LICENSE =3D "GPL"
> meta/recipes-kernel/kern-tools/kern-tools-native_git.bb:LICENSE =3D "GPL"
> meta/recipes-kernel/linux/linux-dummy.bb:LICENSE =3D "GPL"
> meta/recipes-bsp/x-load/x-load.inc:LICENSE =3D "GPL"
> meta/recipes-devtools/gcc/gcc-common.inc:LICENSE =3D "GPL"
> meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb:LICENSE =3D "G=
PL"
>
> Eventually these should be fixed, too?

Yes, GPL is somewhat meaningless so these should be audited to
determine the correct GPL version and corrected.

-b

>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH, =A0 =A0 MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> Human beings were created by water to transport it uphill.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

