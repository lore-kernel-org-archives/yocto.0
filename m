Return-Path: <kergoth@gmail.com>
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24594E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 16:09:58 -0700 (PDT)
Received: by qatm19 with SMTP id m19so659281qat.12
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 16:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=C+OJYehdZeg6elSkLGo9/oVkx5BG0P4P0bXyAff9q9s=;
	b=jMfw2TwdH5QPRWovQ8Q25PUl04EQ4F30LZ5g72zLVOPpNG5qE8taAZMMz8CouOn0f/
	ShNQ+XISy8DlTwy3mzQvsbme4ZKx36z0S4Ma2D2nRcSOS4ClhLss/CqgW99SSbOUszjp
	sTB0tkeu9zTM2lmAWIoRnoygL6c9q0DC+GaF7/pQurv691GxiSi6V06Fn07Z35HRUekJ
	zyF2ySWZYpqLAiCfCztY72LkTWBE8XYbCRvSeGKJCnHEuECOiCYVor/MzmYtclNJmq2W
	t+QsU9BnnwFlvugbdqYhqzkJsoEq9F0WBNUjyviUeWc9PHB/WsI3swNyGKFXXnSaAaOY
	Z2hA==
Received: by 10.224.205.130 with SMTP id fq2mr840699qab.53.1333148997518; Fri,
	30 Mar 2012 16:09:57 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.158.11 with HTTP; Fri, 30 Mar 2012 16:09:37 -0700 (PDT)
In-Reply-To: <CDED78A957032E45B3239CDDA7642D15084B8EC1@ORSMSX105.amr.corp.intel.com>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<CDED78A957032E45B3239CDDA7642D15084B8EC1@ORSMSX105.amr.corp.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 30 Mar 2012 16:09:37 -0700
X-Google-Sender-Auth: Hh0N1YXy-tgQYdKvxWOxLb7SLdU
Message-ID: <CABcZANm-c9Q_S5sG-1wd-_c9iqc1ygcfzQw2MvgX7WVA2CqddA@mail.gmail.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 23:09:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 30, 2012 at 4:06 PM, Stewart, David C
<david.c.stewart@intel.com> wrote:
>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>bounces@yoctoproject.org] On Behalf Of Richard Purdie
>>Sent: Friday, March 30, 2012 2:11 PM
>>
>>The criteria I see for being part of the Yocto Project are:
>>
>>a) Sharing the project's objectives (e.g. making embedded Liunx
>> =C2=A0 development easier)
>>b) Willing to be part of the Yocto Project's governance structure
>>c) Bringing something new/beneficial to the Yocto Project (often with
>> =C2=A0 mutual benefit)
>>d) Have some kind of sustainable resource plan
>
> I would add:
> e) there should be interoperability with the other parts of the YP.
>
> Part of the benefit we're trying to create is that if someone invests in =
YP
> for their device, they should get benefit from the whole thing. =C2=A0If =
a board
> manufacturer creates a BSP for YP v1.2, there should be no doubt whatsoev=
er
> that it will work with that system. =C2=A0Can anyone assure me that such =
a BSP
> would work under Angstrom?

Given that an OE priority has *always* been that distro, machine, and
image are largely independent, orthogonal components, and generally
speaking one can combine any combination of the three and have at
least a good shot at functionality, I'd say that if such a BSP did not
work under Angstrom, that'd be a bug that we'd all agree would need to
be fixed. As far as I know, this priority and attribute of the system
still exists.
--=20
Christopher Larson

