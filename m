Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B1F2E00739
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 14:29:38 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1830800eek.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 14:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=+VwynYvOMShjjWQEqEk1+ONNhUE1ACZ9lqiqJONn1Ao=;
	b=UeR3ikUVrq0V8x+ZTVkbMeY6Ujshm1wCCPaO9Sbx7Kfi8gSrMJFx/lElZGrjlfSaoC
	ki+lN+lx5JorGQqh/gkyAp6HHrBwSLSSq848lYz9TNT3fhz4MfGo7yNm+6BmJgHQ07Gr
	ffi77GBBtgHY4kUb7l8/vVfaBAjOtw01FHFb/bCyZtr0XnwNYFss4BYSRUWQD45zKoHu
	Y8NYa8zYRX5FZJBddRrig59glFkEtj+cHRqT7EU/19flJ+9DlhvYrot/tlQ7LwpnEyjU
	3H7APS92z0etDulNdAk0O6V6Dh6852UbRkOU8gC+yv7TDQZkTgsgTwaGIiPDJ4ooKtZS
	Nncg==
Received: by 10.14.53.4 with SMTP id f4mr2740077eec.93.1340659778214; Mon, 25
	Jun 2012 14:29:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Mon, 25 Jun 2012 14:29:07 -0700 (PDT)
In-Reply-To: <68462E41-30CB-44B1-92CF-C178AC9844DF@keylevel.com>
References: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
	<CAMKF1sqfGsPs_2rvsnwBcqYCha1dp47WvaDv2-WNPubpjWbnQw@mail.gmail.com>
	<68462E41-30CB-44B1-92CF-C178AC9844DF@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jun 2012 14:29:07 -0700
Message-ID: <CAMKF1spcBzJFt0qrLgCc2MpUj7r0t5W3Ng=5XZAFgvHOxEr0xQ@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Selecting gcc version
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
X-List-Received-Date: Mon, 25 Jun 2012 21:29:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 25, 2012 at 2:24 PM, Chris Tapp <opensource@keylevel.com> wrote=
:
>
> On 25 Jun 2012, at 22:16, Khem Raj wrote:
>
>> On Mon, Jun 25, 2012 at 12:56 PM, Chris Tapp <opensource@keylevel.com> w=
rote:
>>> I'm having some issues building a working kernel for the RPi under Denz=
il, which is using gcc 4.6.3. The 'official' kernel uses gcc 4.5.1.
>>
>> Do you have issues building it with 4.6.3 ?
>
>
> Not sure. All I know is some of the kernel SRVREVs run with 4.6.3, some d=
on't. The ones that don't will run if I build them will run using the downl=
oad of the corresponding kernel image from the repository - these were buil=
t from the same source under 4.5.1. I thought it would be worth trying with=
 another version.
>
> 4.5.1 would be the best bet, but that's not in Denzil. The BSP doesn't wo=
rk with Edison, which does have 4.5.1. Not sure if the best bet is to modif=
y the BSP or migrate 4.5.1 to Denzil (unfortunately not as easy as just cop=
ying the files).

well either way you have work to do. I think making kernel work with
4.6+ is forward looking and will be beneficial in future too. It would
be nice to know
whats the gcc 4.5 dependency, which version of kernel are we talking about =
?

