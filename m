Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.13523.1593517092754436302
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 04:38:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ssfivy-com.20150623.gappssmtp.com header.s=20150623 header.b=iBHuNSKN;
 spf=softfail (domain: irving-st.id.au, ip: 140.211.169.56, mailfrom: irving@irving-st.id.au)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 516B2E01DBD; Tue, 30 Jun 2020 04:38:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED615E01D75
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2020 04:38:10 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id r12so19716480wrj.13
        for <yocto@yoctoproject.org>; Tue, 30 Jun 2020 04:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ssfivy-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=YACO16A8+MrPStnUFBiAwkw5Oo/RQrN7xRLzGrCth08=;
        b=iBHuNSKN+n7ImNGu/SpuAdxml2IjxmR0zM7UKIk8wA4CusnIYSprJjfey12zqWA4LR
         pbt0wewH9Rq2hYOOE02giQjTW5iIJdLC3W4NgRLTdlYILjI4FUpO64WU2awxrU0Ezhl5
         5wCcPdyD+jAZxkU8zXLCry6IceDlwg/PrbplZ2BTetciwLq1LKD4VIPDJflOqpH7sEsq
         4JziMmzqIMeEsGpxRsEPFVwrjKTEzxZ+O8f7CwgNz+uV4Bs5bL8tL+3od25Uy9rG16kV
         rgyNVfCpuq4dhfxNy1GLJo+3WaOYp8M93jY+TgL13lht4q1U1zUXlLkLWY/gE39RoLE6
         SlZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=YACO16A8+MrPStnUFBiAwkw5Oo/RQrN7xRLzGrCth08=;
        b=LYed3DiZ+/HxP/86CX5wwkBAEtMR+QW/DlIdajwAvDmXsKfbVpn/FVtouOqmIsvpVG
         ANYtSQ7cvn2gt/zPtQCSyD70jZ61oi8y9eVTyV2S3mU7SVK3va02zJsnztESexpD3YMb
         FN4kUmYxKmiweJc0tk0K+edW9DbDlmX83PtUpSh7g3uQljWCyr0aozVYptUjTHqj0EwQ
         93cxcVRx26OeA0dyvcI/HAwrHBYWk+Z7iJU6KH9mp99XMD9ogOwqYHdk9l7Y96ibgxpV
         pfSmEK9gl995Mm0tV7RHp4rHMAQKW+Yd5MP3Y1AuHwOLXXtIpyYWUHfbMRYft83U+H+J
         zf/Q==
X-Gm-Message-State: AOAM532khq5LrDVvo/OlDPyBhn3DYF5us66UWNCoGbnxa+pVGsWvnPAi
	G++pl7RoZLbnFZtEZbEmhxM+B65w/V5jUOwrMH3skQ==
X-Google-Smtp-Source: ABdhPJwUlRK3fuNOk5sYes/HEIQ4U3kZDBM14GnYoNvMw18uSZjyPso0NSj81MzpAZn48zOzeRAAlhatOMb3lXaVfcs=
X-Received: by 2002:a5d:6288:: with SMTP id k8mr20921077wru.373.1593517089116;
 Tue, 30 Jun 2020 04:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAN--ZaUr1C_rKY05_yWuD=A-S7deSvd5gFSYc2ZE-V7vDTkZxw@mail.gmail.com>
 <4bafc350-fa80-c4e9-a13f-579484cc389e@gmail.com>
In-Reply-To: <4bafc350-fa80-c4e9-a13f-579484cc389e@gmail.com>
From: "Irving ST" <irving@ssfivy.com>
Date: Tue, 30 Jun 2020 21:37:58 +1000
Message-ID: <CAN--ZaWd5MTbFxG73A11ws+PNj+nrwEJVdfYEhy4=4jG38T7vw@mail.gmail.com>
Subject: Re: [yocto] License reporting for golang (and rust)
To: robert.berger.yocto.user@gmail.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

For anyone else having the same problem, here's what I eventually did
for my go stuff:

I created a bbclass containing a task that gets inherited by all
packages, but the task only does some work when it detects that it is
inherited by a golang recipe.
The task basically sets up GOPATH and calls
https://github.com/rancher/trash - this tool populates all the source
dependencies and generate a trash.lock file in the repository.
Then I used https://github.com/pivotal/LicenseFinder to generate a
json report that can be postprocessed with python.

To me it seems that Go used the vendor directory approach in the past,
and there are multiple tools that can be used for this; and nowadays
go seems to have switched to a different approach called go modules.
With this multiple tools and methods of managing dependencies, I am
not sure whether it is feasible to integrate this in Yocto at all -
though I think I have seen mailing list posts on meta-virtualization
adding vendor information to their recipes, so maybe some progress is
happening there.

Best regards,
Irving Tjiptowarsono

On Tue, Jun 30, 2020 at 7:32 AM Robert Berger@yocto.user
<robert.berger.yocto.user@gmail.com> wrote:
>
> Hi,
>
> My comments are in-line
>
> On 22/06/2020 11:53, Irving ST wrote:
> > Hello,
> >
> > I am building a device that uses some Go (and Rust) dependencies. This
> > is on Yocto 2.7 / Warrior.
> >
> > I noticed that after building an image, the generated license.manifest
> > and package.manifest (in tmp/deploy/licenses/) does not contain any
> > mention of go packages or rust crates. The go packages seem to
> > generate directories in tmp/deploy/licenses/ but they do not seem to
> > be reported in the final image.
>
> On dunfell 3.1.1 I see this:
>
> licenses/
> =E2=94=94=E2=94=80=E2=94=80 github.com-influxdata-influxdb
>      =E2=94=9C=E2=94=80=E2=94=80 generic_MIT
>      =E2=94=9C=E2=94=80=E2=94=80 LICENSE
>      =E2=94=94=E2=94=80=E2=94=80 recipeinfo
>
> which is wrong, since I would need to add all the licenses of all the
> dependencies golang pulls in as well to the recipe. It's shows only the
> top level license.
>
> In my license manifest I do have the influxdb:
>
> tmp/deploy/licenses/image-influxdb-from-source-container-x86-64-202006292=
05620/license.manifest
>
> PACKAGE NAME: github.com-influxdata-influxdb
> PACKAGE VERSION: 1.8.0
> RECIPE NAME: github.com-influxdata-influxdb
> LICENSE: MIT
>
> Regards,
>
> Robert
>
>
>
