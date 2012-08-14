Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 187E2E00344
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 12:26:41 -0700 (PDT)
Received: by eabd1 with SMTP id d1so297227eab.35
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 12:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=NMhEaAF3ytR0eDgqi3HmLN8ZOx5UZyePl24gDCR9Jpw=;
	b=L71GlkpfwQjY84E1tsttdZ8TrrgvRjCEkduno6fVfmaeikqCF9huWp2hgqKa4A+Bn5
	qttU+ZY0KVTst+X0xmJX7Jx5EKO3nEf0KZBUFgJp09RDYDiX5PeAUPByizlwSXdXpTKF
	Sk1ToSkk2/vuslcc/ZbyYFrIF/OHSMfziPh94sz+Ci/YEpIxKZ/aNVnguo4S+4ZsFhQP
	cU+qgDr0c/jsw813DDhZYuz6JvuwRwJt6gJr++3YVT0pC6y/itiLhn1v1m2UGBHX8PKQ
	cCIZOwlNWFzjL9ORQxTnfkl5KtpK9xcFX+P1xHuaKb3NJZPKjIxJ38H6BXNIfgNK66o8
	8sdA==
Received: by 10.14.215.197 with SMTP id e45mr20784772eep.36.1344972400389;
	Tue, 14 Aug 2012 12:26:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.225.6 with HTTP; Tue, 14 Aug 2012 12:26:10 -0700 (PDT)
In-Reply-To: <502A0308.6080203@enea.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
	<88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
	<CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
	<502A0308.6080203@enea.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 14 Aug 2012 12:26:10 -0700
Message-ID: <CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
To: =?UTF-8?Q?David_Nystr=C3=B6m?= <david.nystrom@enea.com>
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
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
X-List-Received-Date: Tue, 14 Aug 2012 19:26:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 14, 2012 at 12:49 AM, David Nystr=C3=B6m <david.nystrom@enea.co=
m> wrote:
>
> Hi, it looks like this was merged to the denzil branch, and
> PREFERRED_PROVIDER_linux-libc-headers-nativesdk was moved back to
> distro.conf.
> Any reason for this ?

why do you want nativesdk headers to come from BSP its a fsl-ppc bsp I
dont expect it to have something special for SDK hosts which are
usually x86 ? afterall these are for
the SDK host and not for target. Moreover it means that this BSP will
not play in the multi BSP environment something you never want.

