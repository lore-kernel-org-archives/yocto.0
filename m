Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE1F9E00B90
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 14:49:59 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id rd18so2359320iec.15
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 14:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8uYB0twroHy5xyfWMoeMl90LnA/J8Q/XaoZbrEbQ9h8=;
	b=bzU72nY4tGqejyc6g9GMp5ekYIVPFytvtsFK7n1z/pH/2SCISDKAtScuhe4p3Aie0r
	ug6Swj26MQxW4u2/DGoJAonW1aJBbAYIkEHPBO+5BYNGTTe69cpLcNWRuUSNcyEwgkib
	7VYsP0o4/2FGK08FtwxG/1cUDJs7RNk28y5PCHtn/u3O5PoUkLC3ZxoLSf3dfeDIyci1
	mv64ZmkY8oD6TieCCiqVSY4YprfHINn0Yq0kNuNADCPnS2iVOYXlkW09fb+wLTa28pRn
	iL5Xnd8ShTGTqNqL/HFCgiWlLc6aLEmLK0L6m94ZNmTDoEYtQWisc51kijRRjLBKtE5c
	VErA==
X-Received: by 10.42.16.199 with SMTP id q7mr63149348ica.16.1395870598641;
	Wed, 26 Mar 2014 14:49:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Wed, 26 Mar 2014 14:49:28 -0700 (PDT)
In-Reply-To: <20140326174829.5d897f11@skate>
References: <CANyK_8e6dfzu64SRLzZdXFE3obT6Td-8UUDqfcoSAqWTjoOq3g@mail.gmail.com>
	<CAMKF1sq7QUcKypgyn8auurnqRd5ZfztdymcxquRwsRxvN4seqw@mail.gmail.com>
	<20140326174829.5d897f11@skate>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 26 Mar 2014 14:49:28 -0700
Message-ID: <CAMKF1spF7x8qnnCtBAzbf_knWSJ9roa-RkqdscBLLhKH_JqV8g@mail.gmail.com>
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OpenEmbedded and musl-libc
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
X-List-Received-Date: Wed, 26 Mar 2014 21:50:02 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 26, 2014 at 9:48 AM, Thomas Petazzoni
<thomas.petazzoni@free-electrons.com> wrote:
> Dear Khem Raj,
>
> On Fri, 21 Mar 2014 11:22:24 -0700, Khem Raj wrote:
>
>> it has been under my radar for a while. I have actually locally made
>> toolchains with
>> clang+musl and it seems to be coming along. its licensed differently thats
>> the biggest attraction for folks who do static linking. Otherwise it still
>> doesnt yet support variety of architectures that other libcs support. given
>> now we have kconfig for eglibc too may be it fills in the nommu gap much
>> like uclibc does today.
>
> The non-MMU gap? Last time I looked, musl didn't had support for any
> non-MMU architecture.

yes it does not. I meant to state the reverse that mmu-less systems is
where uclibc will have edge left.

