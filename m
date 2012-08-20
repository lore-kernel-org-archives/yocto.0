Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 666EEE0027F
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 09:45:48 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1984883eek.35
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 09:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=MfbXAUC/af7NeLBvWev/IaIPW2wdNyG+VDcXOLo++Ko=;
	b=SdIsPTMooMnLRXgaVkYgDuIYLb5bLmZCXa0vU9qqR5C7Sc9N6dPmfWqIhaM46TygFQ
	lHeZtwuym97/8AxbMxAemVL1jUGf23xOXil/c2FMJy4tIeL2PAUA2kMPjIGHeRpdkp8a
	EmZIJylmgveMcwfnlotUlMXdJwNb8vRBu/j5UeqLARnIrEy32Dx9D2qwAEJeETYBJdFA
	74FadjdyQjZDrqAj6QifbddgN30UD3AYiqkgmmbjtZOffZut65mVPUM4WOPk4q3GhDsX
	Ut+1kkGeZtLyuFtQkHNwkeOqj4HokFGgYdE/afyEYU6cNsyzkp1gPVy71gCefCK8PCVc
	wx/w==
Received: by 10.14.218.134 with SMTP id k6mr9582289eep.14.1345481146555; Mon,
	20 Aug 2012 09:45:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Mon, 20 Aug 2012 09:45:16 -0700 (PDT)
In-Reply-To: <5031E600.8030208@enea.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
	<88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
	<CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
	<502A0308.6080203@enea.com>
	<CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
	<5031E600.8030208@enea.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Aug 2012 09:45:16 -0700
Message-ID: <CAMKF1spkpnDye4NxNpTSKsC6CVebTfm1_1roW5viO=xMZz50ug@mail.gmail.com>
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
X-List-Received-Date: Mon, 20 Aug 2012 16:45:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 20, 2012 at 12:23 AM, David Nystr=C3=B6m <david.nystrom@enea.co=
m> wrote:
> On 08/14/2012 09:26 PM, Khem Raj wrote:
>>
>> On Tue, Aug 14, 2012 at 12:49 AM, David Nystr=C3=B6m <david.nystrom@enea=
.com>
>> wrote:
>>>
>>> Hi, it looks like this was merged to the denzil branch, and
>>> PREFERRED_PROVIDER_linux-libc-headers-nativesdk was moved back to
>>> distro.conf.
>>> Any reason for this ?
>>
>> why do you want nativesdk headers to come from BSP its a fsl-ppc bsp I
>> dont expect it to have something special for SDK hosts which are
>> usually x86 ? afterall these are for
>> the SDK host and not for target. Moreover it means that this BSP will
>> not play in the multi BSP environment something you never want.
>
>
> My main concern is that meta-toolchain uses linux-libc-headers-nativesdk =
for
> the meta-toolchain
> tarball build, i.e. the meta-toolchain API may differ from the on-target =
API
> in regards to kernel-headers, no ?
>
> This might very well be true if kernel version of
> linux-libc-headers-nativesdk !=3D linux-libc-headers

whats the point of keeping header versions same across two entirely
different systems.
can you point to some instances where this API difference if any is in
conflict ?

