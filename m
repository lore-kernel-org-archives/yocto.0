Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A7D5E0027E
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 22:12:36 -0700 (PDT)
Received: by eabd1 with SMTP id d1so1167113eab.35
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 22:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=UHhXRharN2jqoblZ6zN0/ZfnghyEWdZB4isL/A1cfq4=;
	b=QcZ5wpabn3We5oVPSrUO6sCe1BBewmrKPmVzXnctpdwWDorTi9XHa442ZWf/pD0j3K
	iwQtui3TF3N8z6p1jir+yDcczBrGVjH9/oohbCKQWDOWE2RhWEj5rJD5rwLGNwYZwSgN
	XCxOVWa7WF8yNRv+k9FCTqOqtMbwji8XDI1XtgoOnIBtfpFXkbgBBC9eFTqjDwEmyln3
	IB+XawIzue1Z2Oz3wsHrWMoUUT5hQgDo/ebJoEqr7pESFzWOD5aAMfsWZ9fMoKMGytFK
	8KJGsDaNoUdkYKY8N4WAudIpl6FYxjoN1mtIu2+EIKx1FUqyBeNbEVmJipzLM/LUpaCt
	7+1Q==
Received: by 10.14.5.67 with SMTP id 43mr4759448eek.15.1345180355400; Thu, 16
	Aug 2012 22:12:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Thu, 16 Aug 2012 22:12:05 -0700 (PDT)
In-Reply-To: <CAEsOVNfHByXRcqY3=NQYJ2Y5a5+=sXiVqVQDF6nBcjeFbOAj5Q@mail.gmail.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
	<88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
	<CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
	<502A0308.6080203@enea.com>
	<CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
	<CAEsOVNfHByXRcqY3=NQYJ2Y5a5+=sXiVqVQDF6nBcjeFbOAj5Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Aug 2012 22:12:05 -0700
Message-ID: <CAMKF1sprsPQfJ2u+V7bJ9JGrWgaGHKkVPtEouvLAvqEBPck8Tg@mail.gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 17 Aug 2012 05:12:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 16, 2012 at 12:37 PM, McClintock Matthew-B29882
<B29882@freescale.com> wrote:
> On Tue, Aug 14, 2012 at 2:26 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Tue, Aug 14, 2012 at 12:49 AM, David Nystr=C3=B6m <david.nystrom@enea=
.com> wrote:
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
> But, I think we might need them for this warning specifically:
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: multiple providers are available for lib32-linux-libc-headers
> (lib32-linux-libc-headers, lib32-linux-libc-headers-yocto,
> lib32-linux-qoriq-sdk-headers)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match
> lib32-linux-libc-headers
> NOTE: multiple providers are available for runtime
> lib32-linux-libc-headers-dev (lib32-linux-libc-headers,
> lib32-linux-libc-headers-yocto, lib32-linux-qoriq-sdk-headers)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match
> lib32-linux-libc-headers-dev
>

This is a bug in OE-Core, it should have added appropriate defines for
multilib case as well in
tcmode-default.inc and default-providers.inc

> ?
>
> -M

