Return-Path: <joaohf@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1ADED4C80B6B
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 12:02:11 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwj9 with SMTP id 9so259615pwj.35
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 10:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=w8GT53dZiS+HPUxfkHwxwRea44QOovnyoJGF91uTQpI=;
	b=kWPe64RJjchtrwuTeeQFD2b3hhoIUxWyaPqysbJaxVcsOQWJ6IX22iZqx6YlkY0AEu
	d2qxVFo/SWlBoI2vPtXyF1fYjBuX81rW/Za7sBLtJc7CzSH9UDovwuR6PvnUG1v+X5v+
	KFunRiwh4d3j4tpxa1lUoa6Skgji4Kn8ZiGNk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=mCl5FxB6ozJSeLanVu184+yeu8rIwCEg6k8Ma95XmrSPy4TO4r3GFbDOzYFp4Ne7yJ
	FnlWroF5E2yggn/wt/sTHm83HAIywCzloMM8FCJLzf2uTvJuzgrHSkTyW8xHkzLrV6tH
	1v4n+u4/FVOrmFyVOKnAF5Dk0hjPScuIPR/I8=
MIME-Version: 1.0
Received: by 10.42.220.138 with SMTP id hy10mr5819281icb.437.1289412129176;
	Wed, 10 Nov 2010 10:02:09 -0800 (PST)
Received: by 10.42.176.73 with HTTP; Wed, 10 Nov 2010 10:02:09 -0800 (PST)
In-Reply-To: <1289396279.1272.282.camel@rex>
References: <AANLkTimr0Vm+kdDzCiJ07nOTZLgJDDC+DvNNwpgZ72xz@mail.gmail.com>
	<1289396279.1272.282.camel@rex>
Date: Wed, 10 Nov 2010 16:02:09 -0200
Message-ID: <AANLkTi=N4MRrA6S1RdPqR5jb+Wy5K65kxKXshgScq2cy@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: two layers: hardware and distro.
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
X-List-Received-Date: Wed, 10 Nov 2010 18:02:12 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I can tell about what applications we will use and contribute with
some questions.

We are focus on Telecom applications and I am setting a BSP to a Media
Gateway and Sigtran Gateway.

Thanks.


--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

