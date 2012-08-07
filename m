Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D5CE013B2
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 13:38:01 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so253382pbb.35
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2012 13:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=K3I1zC+6SfJ6N/y/Us7eYu5FrAR7hgnHKKqlvAXAsNQ=;
	b=JfxYrInfVjpeY9ZxrpmSdUJRJxZhwsl4W5dcQsVWH+Wu3utrMVLMHrAAg/A/sKbca+
	bAWyDkHgv/1APFyU332dfUNHlEkjLCWrObzsqAA6ZzeoUiUJlhvNey03azdDSkYsUlBT
	i8iaCtcjSyOn8Ca6mYwv28Tcegbx5grAbuLBqYC7spqu3dTDCM6vR94f3aWkP9ifaGJk
	gbdkRPy+52iJqWEOP6N0Ie4vVPupfL8zsnb5FsMFkSJIHWe9gWhTsG9Q+xBAOavRyNSa
	smzTaT2W6GNy9IrhH5Tka714BJa412tcU41T8jCUNNmT2dx/4T0DIDwaPIoDB4RXCrAi
	8IAA==
Received: by 10.68.239.103 with SMTP id vr7mr31116210pbc.0.1344371881458;
	Tue, 07 Aug 2012 13:38:01 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.108.162])
	by mx.google.com with ESMTPS id oj8sm8381856pbb.54.2012.08.07.13.37.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 07 Aug 2012 13:37:59 -0700 (PDT)
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
	<CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
	<C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
	<CAMKF1sqiFrHqg6HNvRwX_1Wg=Nfq8_141-XaJ=E2qFQyUsSJEA@mail.gmail.com>
	<931ADA5B-6471-40DB-8943-D7D6CA564C35@gmail.com>
	<CAMKF1sr-=FLVGMZnW_X63YRnT=ms8eCLhhUkcoHujubM_1f5Ow@mail.gmail.com>
	<AB2E7680-C057-47B0-91FD-62BD6BAC8170@gmail.com>
	<CAMKF1sowWjF4DYUyWus7A1p5qQbJ3qPhRDEGfeZBOeohG6012g@mail.gmail.com>
In-Reply-To: <CAMKF1sowWjF4DYUyWus7A1p5qQbJ3qPhRDEGfeZBOeohG6012g@mail.gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <D7F9D339-CE6F-4F5B-81BC-C6F55C315012@gmail.com>
X-Mailer: iPhone Mail (9B206)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 8 Aug 2012 00:33:27 +0400
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Tue, 07 Aug 2012 20:38:01 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 8, 2012, at 0:30, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Aug 7, 2012 at 1:24 PM, Elvis Dowson <elvis.dowson@gmail.com> wrot=
e:
>>=20
>> Is there something that I can disable to get static bash to run to the
>> prompt, with the core-image-minimal image?
>=20
> well compile bash or dash as static and copy it manually into the
> rootfile system
> nfs root works well for such experiments. Do you have that option ?

I tired manually copying the static bash binary 8mb, over to the ramdisk roo=
t folder. The problem still manifests, if there is no other file other than t=
he static bash file, it displays the prompt. If the core-minimal-console ima=
ge exists, along with the static bash binary in the root location, it gives t=
he kernel panic, as shown above.

Best regards,

Elvis=

