Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EDA7E013FF
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 13:52:53 -0700 (PDT)
Received: by eaab16 with SMTP id b16so902390eaa.35
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 13:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=bucG0VscubVM+r4aDYPAQB+NNuHnjOtiUBbrzFMdptw=;
	b=HP+izVWTRLQ2g9IRZAzAgEg6R75HfmVwjegsAj8l2I89rVNYTs9OXcOWSfXOGF4wYf
	CrCHQFmv1nw2zSUQ6rPyGuIEe1fyr6q9hbM7BiNmujGRt4v1RMX3T67Vow8Ap3Lczsj5
	hg542H8dIc+8+bm37krAjWS4bTCBAeWcKfIQ/Hus5wGKAudghir3W/Jcb1nmBEzyOXur
	TUdm/HTiokh+Y5MASWFPuSeR3/TSlXOkiAw0gjaXU4KZmi/8V6el1gN7IGk6+4nA1J99
	g7oF79i7GJ8oL3CI0sYg6gfOBLskhuTUJisw68p99jXjUVdiIXpv6zzG9+Q6gVGD5flS
	+7yg==
Received: by 10.14.127.198 with SMTP id d46mr257922eei.101.1336683172435; Thu,
	10 May 2012 13:52:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.132 with HTTP; Thu, 10 May 2012 13:52:22 -0700 (PDT)
In-Reply-To: <1336682659.27808.9.camel@elmorro>
References: <8B59D504-F8BF-4329-92F8-EEC7F96FE207@keylevel.com>
	<1336682659.27808.9.camel@elmorro>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 May 2012 13:52:22 -0700
Message-ID: <CAMKF1spgcY_ebT=Xb5i1aDSY5J-35ZUc1NRLQHYP5+At8HxhCA@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Using meta-intel with Denzil
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
X-List-Received-Date: Thu, 10 May 2012 20:52:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 10, 2012 at 1:44 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Thu, 2012-05-10 at 21:38 +0100, Chris Tapp wrote:
>> I just tried to build 'crownbay' under Denzil but I got an error saying =
that xserver-xf86-dri-lite.inc could not be found.

hold on and keep playing with qemu machines until meta-intel releases
denzil compatible BSP layer which should be anytime soon.

>>
>> It looks as if new meta is available in the git repository. Is there a p=
lan for 7.0.0 downloads to be available from the downloads page?
>>
>
> Yes, the plan these days is to release the meta-intel BSPs a few weeks
> or so following the poky release. =C2=A0We expect to have denzil BSP
> downloads available from the downloads directory in a couple weeks...
>
> Tom
>
>> Chris Tapp
>>
>> opensource@keylevel.com
>> www.keylevel.com
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

