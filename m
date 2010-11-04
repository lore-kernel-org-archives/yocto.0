Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D49A4C810A8
	for <yocto@yoctoproject.org>; Thu,  4 Nov 2010 13:43:50 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk4 with SMTP id 4so1650772qyk.14
	for <yocto@yoctoproject.org>; Thu, 04 Nov 2010 11:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=02gSeQdYkCOuE2CaW1qAk0QTUk4TIX1MqkpNPznlccU=;
	b=CtVQlfG3sQtdCBRiT+oUvYAflTDq+LEDTOG/i0Abim99bZSJoEvBxSovlV3Zmxjshe
	CNzTRb09xhcXEPEbG2trw8VCIYy81mLMVXbYHfVHoIBa9iUO6iehGn7PbFeQa7llNfm3
	NoNkWRpVqEZBX8h+jVNmb53816MC9aKaSrHrw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=NUsxUEkUF+fBzjp/eBNEIxk/5nT5W2+MOFgXk19YuvxP1xdkAfQFnnfc+iFoAQYfA8
	O34qHREVkNZLzTnlEgtDQoflf4B7U7616YFbuPc6SsjgGblZtFl7FuDXLAjOf91oYDu+
	c4rgFDCSzxCjK1oq3Sk9UOOwCUNRPnZn/QI28=
MIME-Version: 1.0
Received: by 10.229.213.135 with SMTP id gw7mr1019525qcb.41.1288896230108;
	Thu, 04 Nov 2010 11:43:50 -0700 (PDT)
Received: by 10.229.228.147 with HTTP; Thu, 4 Nov 2010 11:43:50 -0700 (PDT)
In-Reply-To: <4CD2F8F6.3080702@windriver.com>
References: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com>
	<4CD1849F.6010303@windriver.com>
	<AANLkTinsewJh-==QbQ-LbXmNEZMSdqCKKpf-c8yi=m-a@mail.gmail.com>
	<4CD2EB61.2090502@windriver.com>
	<AANLkTimiWHMcwukn7j7aCx_KUHsp-yYdcb_G4omDQPpU@mail.gmail.com>
	<4CD2F8F6.3080702@windriver.com>
Date: Thu, 4 Nov 2010 19:43:50 +0100
Message-ID: <AANLkTi=JebFH-aF9PDsXVR0QO+RBef4CbQSBP-yS7tG-@mail.gmail.com>
From: Leon Woestenberg <leon.woestenberg@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: ppc e500v2 support?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Nov 2010 18:43:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Mark,

On Thu, Nov 4, 2010 at 7:18 PM, Mark Hatle <mark.hatle@windriver.com> wrote=
:
> On 11/4/10 1:02 PM, Leon Woestenberg wrote:
>>> and for e500v2:
>>> -mcpu=3D8548 -mfloat-gprs=3Ddouble -mspe=3Dyes -mabi=3Dspe
>>> Neither of those would be compatible with the existing "ppc" packaging
>>> arch.
>>> =A0We will need to generate at least one new packaging arch type, likel=
y 2
>>> (one for each). =A0Maybe called ppc_spe or something similar?
>>>
>> In OpenEmbedded we use the core variant as the packaging name:
>>
>> TARGET_CC_ARCH =3D "-mcpu=3D8548 -mspe=3Dyes -mabi=3Dspe -mhard-float
>> -mfloat-gprs=3Ddouble"
>> BASE_PACKAGE_ARCH =3D "ppce500v2"
>> FEED_ARCH =3D "ppce500v2"
>> PACKAGE_EXTRA_ARCHS +=3D "ppce500v2"
>>
>> Does that make sense?
>>
> I think this is an area we need to coordinate.. I'm not against calling i=
s
> ppce500v2 for right now. =A0However, I think this is a place we need to
> coordinate efforts. =A0I'm going to attempt to pull together a list of Li=
nux
> ABIs & potential optimizations in the Yocto wiki.
>
> The reason I bring this up is that over the years at Wind River, and my
> previous experience at MontaVista... and watching Emdebian and other
> projects.. _everyone_ names their package architectures differently..
> because people only have a small view on the problem. =A0We finally have
> enough history to have a chance at indicating what the actual ABIs are, a=
nd
> how the compatibility matrix may fill out. =A0(also giving us a change to
> finally give these architectures reasonable naming schemes!)
>
I don't see how we could be "final" on this, it seems a returning
topic every few years.

To bring in the OpenEmbedded arch namespace and our optimizations,
from the "master" branch at OpenEmbedded:
http://cgit.openembedded.org/cgit.cgi/openembedded/tree/conf/machine/includ=
e?h=3Dmaster

Regards,
--=20
Leon

