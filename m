Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FC8AE00B1A; Wed, 14 Mar 2018 08:55:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AD03E007E1
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 08:55:09 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id d71so4944987iog.4
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 08:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Uut6iyhSgtPltcpykeRPeYlH2QxNJQc3g+BgfEzdXhM=;
	b=NzQ/uHDoz0JSBEev4wuhVYwCaQwT2AGHyT4PAeSEK0D0DWHj/0Pfmzb4X/Y0RcZZzc
	wzooDkE/s/46uvNW7NSmhuFTsNLSkhGK/uVubfIKsQpINgIX7rEuNJb8xd3ks2Lp2E0f
	4sHHhBEcJ9Iku8jZ45r5Q1CBN2G7rFrmr2USp6f2Y916bX1DDMdqR58gmlQrfFYpPxNG
	gFoEWWaZwGtZWGOMZ2bw01QVPL5kEpfhw+90eAHrgoQ8nWKn4Upi1HUXhs91QMkwygLh
	Gz8ie4Wf1Gi0445EZck5nAfsidl93OxEgZyoY/V33DFCkwfuJtGzZiyKDFPbmNwqwvFg
	6Dyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Uut6iyhSgtPltcpykeRPeYlH2QxNJQc3g+BgfEzdXhM=;
	b=QvaZg8XfSw7W0fIKzCJixzn7v4ti8s52RqgLhv3K4azqFXQ6xEeDBEUwv2PfuN0P3W
	XSrjRmb9PXvXXh6AWwX4sKLsQDFrqlJrQN2NZYhYJIVKZhU1cykY/Vc/GrAPysQ+G+FP
	sn6m2KobfBIOPLwxi2kHW0jTujI5VQsjPICHmoTHKTz0h/Z0ZDwj3fGzPR6n5Qfuyxdo
	ti9E9tVVjdMnleEqZoVbtGIcyb21AnfQmCWbnhvGNwVMHvyf+TH/ypDfBU7j2VcQj26D
	q3ZLFc8bjqrZx58DeC/ppWQbPQWPppFN+jJ9NLzAZkGhqvZwzYPShOGROPk4zZ3HCGB6
	zRCg==
X-Gm-Message-State: AElRT7Fje4XOf1pXgNSpIShDBgaPjnMUW+9ZC0W5lVuLfBg3Zockqw1A
	yeWW/IInJxJTc8DtrV7Y3Z/jQokJzsLIcDP4PAR9uQ==
X-Google-Smtp-Source: AG47ELvwFgZ8c7ErfGjbv6+DvHD5UT9v1xTAQowk4ltPYpLXTX9PXI9gRzWUDGLv+wkyYih4gUZutxu9jhfDrP/c5/Y=
X-Received: by 10.107.6.231 with SMTP id f100mr5547940ioi.23.1521042908743;
	Wed, 14 Mar 2018 08:55:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Wed, 14 Mar 2018 08:54:48 -0700 (PDT)
In-Reply-To: <CAO80zYuPGBh0syB4s_G6nrMgD7Ac9OePa=uM=8pPM6YhVnrGsQ@mail.gmail.com>
References: <CAO80zYuPGBh0syB4s_G6nrMgD7Ac9OePa=uM=8pPM6YhVnrGsQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 Mar 2018 15:54:48 +0000
Message-ID: <CAJTo0LaHb3XVM+u3SMunuLJ02x=atB_Jw5miUkPx_7OGB15xWQ@mail.gmail.com>
To: ikjn <tiffang@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How can I check "shared-library-to-package mapping"
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
X-List-Received-Date: Wed, 14 Mar 2018 15:55:10 -0000
Content-Type: multipart/alternative; boundary="001a113f9be443a39f0567616626"

--001a113f9be443a39f0567616626
Content-Type: text/plain; charset="UTF-8"

Did you add a DEPENDS to A in B?

Ross

On 13 March 2018 at 16:28, ikjn <tiffang@gmail.com> wrote:

> Hi.
>
> My recipe 'A' installs pre-built shared libraries, but I get file_rdeps
> error on
> 'B' recipe's package_qa task, which has runtime dependency on A's so files.
>
> I believed that bitbake automatically creates RDEPENDS_B += "A" regarding
> "shared-library-to-package mapping" [1] . so I didn't declare RDEPENDS on B
> recipe.
>
> Can anybody describe the detailed process of "so/package mapping"?
> Should I look into insane.bbclass?
>
> Thanks.
>
> [1]  https://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.
> html#automatically-added-runtime-dependencies
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113f9be443a39f0567616626
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Did you add a DEPENDS to A in B?<div><br></div><div>Ross</=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 13 M=
arch 2018 at 16:28, ikjn <span dir=3D"ltr">&lt;<a href=3D"mailto:tiffang@gm=
ail.com" target=3D"_blank">tiffang@gmail.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div dir=3D"ltr">Hi.<div><br></div><div>My recipe=
 &#39;A&#39; installs pre-built shared libraries, but I get file_rdeps erro=
r on=C2=A0<div>&#39;B&#39; recipe&#39;s package_qa task, which has runtime =
dependency on A&#39;s so files.</div><div><br></div><div>I believed that bi=
tbake automatically creates RDEPENDS_B +=3D &quot;A&quot; regarding &quot;s=
hared-library-to-package mapping&quot; [1] . so I didn&#39;t declare RDEPEN=
DS on B recipe.</div><div><br></div><div>Can anybody describe the detailed =
process of &quot;so/package mapping&quot;?</div><div>Should I look into ins=
ane.bbclass?</div><div><br></div><div>Thanks.</div><div><br></div><div>[1]=
=C2=A0 <a href=3D"https://www.yoctoproject.org/docs/2.2/ref-manual/ref-manu=
al.html#automatically-added-runtime-dependencies" target=3D"_blank">https:/=
/www.yoctoproject.org/d<wbr>ocs/2.2/ref-manual/ref-manual.<wbr>html#automat=
ically-added-<wbr>runtime-dependencies</a></div></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113f9be443a39f0567616626--
