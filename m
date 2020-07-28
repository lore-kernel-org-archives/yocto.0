Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.12758.1595945100631765206
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 07:05:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ipw/CADC;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA2A4E01E9B; Tue, 28 Jul 2020 07:04:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00F9AE01E8D
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2020 07:04:58 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id j187so18668236qke.11
        for <yocto@yoctoproject.org>; Tue, 28 Jul 2020 07:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5RIJyqaBw54/Q9ZD/Qi5Ib39kSRiGdovggRiF4wviFM=;
        b=Ipw/CADC8cjJSCRSAoLcdZw5EaPc8zsloB9FgrTtjY+LZvxWcN/4awCAK3wR4wsbc4
         GEhmOkVbR1NTSHDnfoWcoE+QIhGjSO1Sa+6Z8hB7+Lez9VXGtpP25Z/wTvCOo7Jbbi5c
         /F1DguLqGp1myH7/h++USs6H1Fe3hYWH5CVlQ0PevpBwofCWIfboShfP0HSHte/W/aJC
         MVhXIG2QA+FsyLgG6NJNgl2gwy5azW1Q1BSh/G8cMEAcJHQuoeC1t9WNLKpicRdU0q7V
         +zAu9Cb8n0Eg3snZbMayBavLh/KfzFn5N8UIEdZbjAfv/LXex92tt6CRDamniwnWlYLj
         FwKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5RIJyqaBw54/Q9ZD/Qi5Ib39kSRiGdovggRiF4wviFM=;
        b=iw1gPhVlWCdfsUdo7u8qkzdPph1PkbZLXh1SDuq7Un7UetowOCrGNHn5ZHa2N4QCqo
         D0CCwuaX7JsETJztrJgwyVt2CPz3+/tHXF/bcs/TdHE4aJuTBpATwVPGdxSoRoamySiK
         x7CYfdwLQI3eU7ULuB8n3PB1q+Ukmtm0/e205HzVSbe+VxjSGTkDTIMB4RvnwmMbb7ri
         T+HteCrWHD75+adFfmzFtE3iuzzUuQUTCm6JX9FCnvQImW/vLFQsf9seUczmXCztvCBi
         s7Eay3t3J1vvtPYCaz/rBMkaZ6TbaGg3Onk5yNkg+9C471HeafkVoQyymaWnF5Mnwzk2
         /iOQ==
X-Gm-Message-State: AOAM530JxhOniZq47w+BVtwtnaC8rgJ5VFa5yl+cRzcc7gCZT/FWhpAt
	GRWMvRaoZLtbUYW9zF3F98lhPFQUD9qmw/A+YKY=
X-Google-Smtp-Source: ABdhPJwoJJZwHEUpLfOk/NTkrbgsYm4jgQRuIRXvl3eT1nGrs3lIZUJ9yOFUKRWaIf9RrmUBsKPvCOebOudGeo95Waw=
X-Received: by 2002:a05:620a:1315:: with SMTP id o21mr28612764qkj.227.1595945098060;
 Tue, 28 Jul 2020 07:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720@MN2PR17MB3024.namprd17.prod.outlook.com>
 <CADkTA4MBSrRjgQQbnN=4XMhxVTB=b0RdH74zNPCb8pEwhg2GsA@mail.gmail.com> <MN2PR17MB30248E9C96341B99C68CC4BBD6730@MN2PR17MB3024.namprd17.prod.outlook.com>
In-Reply-To: <MN2PR17MB30248E9C96341B99C68CC4BBD6730@MN2PR17MB3024.namprd17.prod.outlook.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 28 Jul 2020 16:04:47 +0200
Message-ID: <CAGAf8LzT4EMXEmdbOLzNvoGA4_jE1J2-DOQB6UbXh=ZJdOPNeA@mail.gmail.com>
Subject: Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior?
To: Scott Whitney <sdw@inea.com>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Scott,

I have a bit of a different idea about the whole YOCTO process.

Let me suggest something else, actually a hybrid combination of the
YOCTO build system.

You can do the whole process of YOCTO, but why do you not use
components out of the YOCTO building process?

For example, you can use rootfs built by YOCTO, and U-Boot and
rt-kernel built out of the YOCTO, for the beginning?

Then, as an option, if you are satisfied with the reached
architecture, you can write your own recipe for the rt-kernel (you
need to incorporate a bunch of patches into the rt-kernel proprietary
recipe).

Zoran
_______


On Tue, Jul 28, 2020 at 2:45 PM Scott Whitney <sdw@inea.com> wrote:
>
> Hi Bruce,
>
>
>
> Yes, we are using Linux built by Yocto, but where is the preferred provi=
der for the kernel set to linux-yocto-rt?
>
>
>
> Thanks for your help
>
>
>
> Scott D. Whitney
>
> sdw@inea.com    |     T: 781-801-1152    |     F: 781-801-1108    |     =
www.inea.com
>
>
>
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
> Sent: Monday, July 27, 2020 10:04 PM
> To: Scott Whitney <sdw@inea.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior?
>
>
>
>
>
>
>
> On Mon, Jul 27, 2020 at 3:51 PM Scott Whitney <sdw@inea.com> wrote:
>
> Hi Yocto group,
>
>
>
> I=E2=80=99m working with a newly-released copy of Yocto Zeus from Varisc=
ite for the i.MX8MM Mini, although the same option seems to apply to the pr=
evious Yocto Warrior.
>
>
>
> I understand that a Linux real-time kernel can be enabled by setting LIN=
UX_KERNEL_TYPE =3D =E2=80=9Cpreempt-rt=E2=80=9D.  Where does this option ne=
ed to be set so that when I bitbake fsl-image-qt5, I get the Linux =E2=80=
=9Cpreempt-rt=E2=80=9D kernel instead of the =E2=80=9Cstandard=E2=80=9D ke=
rnel?
>
>
>
> Is there a specific configuration file that needs to be modified, or a n=
ew recipe in a layer?  I am confused and hoping that you can help.
>
>
>
> If you aren't using linux-yocto, you'll need to arrange for the preempt-=
rt patch(es) to be applied to whatever kernel you are using. Which means yo=
u are creating a new recipe, bbappending an existing one, or if you are luc=
ky the kernel provider already has a -rt recipe available.
>
>
>
> If you are using linux-yocto, it's as simple as setting the preferred pr=
ovider of the kernel as linux-yocto-rt  and building.
>
>
>
> Bruce
>
>
>
>
>
>
>
> Best regards,
>
>
>
> Scott D. Whitney
>
> Principal Software Engineer
>
>
> Intertech Engineering Associates, Inc.
> 100 Lowder Brook Drive, Suite 2500
> Westwood, MA  02090
> sdw@inea.com    |     T: 781-801-1152    |     F: 781-801-1108    |     =
www.inea.com
>
>
>
>
>
>
> --
>
> - Thou shalt not follow the NULL pointer, for chaos and madness await th=
ee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
>=20
