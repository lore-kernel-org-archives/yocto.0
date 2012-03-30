Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B437E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 10:30:04 -0700 (PDT)
Received: by werc1 with SMTP id c1so680689wer.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 10:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=2Z04lroPaKoAFECaDEg/4EK8BpaB3zz4O/1PfnenIMQ=;
	b=NMBagG06ShxhGlbaCA+lFSrkDLTvNZNZ4bd6hiRT3LV0lqcOP87BZQr4llQpn913zr
	jztzQpyds1LMhV2p99GDvMTbYFIz/l1oJ3DFjFVkRvp+yBgxSCohlzg2G1PcQZq2r6hP
	GxesQsP6RD6Q767j9KbHILatMTk6lh+AAbdvyPJIbwUmzstzdR/lCBWyeCEN71NZI/8F
	m6FVNKM81eTSOw/Gx+ON/XQmyGXKeATlsdDbu6jAgQzaprhF4InBPCBBssPr0jqKOl8E
	T0lBy/BU9USodu5+fyrTlzbXpggtLkqQQvUbgRTzPWwtYWW8RA85Xmy538TBXgN1gRKA
	H+GQ==
MIME-Version: 1.0
Received: by 10.180.102.101 with SMTP id fn5mr189964wib.6.1333128603018; Fri,
	30 Mar 2012 10:30:03 -0700 (PDT)
Received: by 10.216.38.135 with HTTP; Fri, 30 Mar 2012 10:30:02 -0700 (PDT)
In-Reply-To: <4F75ED03.3030205@mindchasers.com>
References: <CAC+thW2bpSsoHOC2feOEowp1POB2zFG4eSDiiKs6xa7xP+qwDg@mail.gmail.com>
	<4F75EB5C.3020909@windriver.com> <4F75ED03.3030205@mindchasers.com>
Date: Fri, 30 Mar 2012 13:30:02 -0400
Message-ID: <CADkTA4P19shdhAXeiG6Wx1Sn57Rj16ZSWPFvo3E=VoLFJRmCSg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: yocto@yoctoproject.org
Subject: Re: Suspicious warnings while beta testing yocto 1.2
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
X-List-Received-Date: Fri, 30 Mar 2012 17:30:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 30, 2012 at 1:27 PM, Bob Cochran <yocto@mindchasers.com> wrote:
> On 03/30/2012 01:20 PM, Bruce Ashfield wrote:
>>
>> There are a few outstanding items for 1.2 as part of M4 .. one of
>> them is squashing the remaining configuration values that are
>> causing warnings.
>
>
> I'm also seeing some kernel config errors for the MPC8315 while beta
> testing. =A0Should I ignore or pursue?

ignore for now, all the configs will be audited, so we already have a work =
item
to cover it.

Bruce

>
> BTW, when I'm not beta testing, I work from the mainline and my own confi=
g.



>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

