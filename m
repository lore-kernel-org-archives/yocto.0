Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6197E0049B; Mon, 20 Jun 2016 09:15:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8989E003D9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 09:15:25 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id p10so168493829qke.3
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 09:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=L7+9xiywSP8FrAQiJxSoD6eAbntCn8m9rnbYsmfLyS4=;
	b=Y4lm9EV96/x7BK2aLqpd9BOHfJInqwq2KNMh/ncrYZtNSvakwSF3yP6WMhc7fnqv3V
	MrKsnVGs4wTmp/41H5HYML3OKmGHcMXxH6pJtbIAEMY4TWw2+BbH9Uf1NtN4VldbmP/q
	F4QVmB5gC5BJJFSLovt0M1WatyNAMg7hBdPpTkfX31ZDgiqhKvDymC/UoO+nAMam4Vnl
	Ssd5nlEOkst4mD9KlKC+QfpZzprir+3FaL8wBATqUMna1BwJRH0u4xHhOxNCyGIWdlWB
	/TZsm2IJefaqwXQr75CpZtQb3u31dCoWRXdX+ELsSZbbkZqhRDUeBiKkUVNoacYmjjBK
	l9eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=L7+9xiywSP8FrAQiJxSoD6eAbntCn8m9rnbYsmfLyS4=;
	b=WoFOTjeryN6u8M3Vp8NK5tahdJh/hEbCKmIKhhFgj8ehTmkW1Rq3mpiM/M3LJK57s+
	3LfKlbCTRI5YINlk0W6Jn0xZof+E+dRQ4vl2xmavRPT7mxEhFHBMeyT0b2PNTYw3ANGF
	sGPAx0ouow08kO2saJ8f67p0V5t797hK+XaJUU4hfUrv/1bz+6DeXX1we2bdei7l+rXx
	2PfgS7LHH4nMrqaUDp2vqjpLkLv9W9eO6yi1YcQEcVluUOP2YSDKd+8VPvtfJINHudHs
	q2uE2RFg88SZJv9yO4GP90/lnSi0m5K38m+Qyje/ZWV08QXs5F/cOPQwqhP0Dbsdn1xV
	Rbmw==
X-Gm-Message-State: ALyK8tJ3jOBf913i4lOTo+VAqDCWUXDgshDLP68ycZgxrEQNDmH1JfpQE7AipuOs7nePjLm0bmxnsCC+uuqYFw==
X-Received: by 10.55.141.134 with SMTP id p128mr20693881qkd.102.1466439325099; 
	Mon, 20 Jun 2016 09:15:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.8.133 with HTTP; Mon, 20 Jun 2016 09:14:55 -0700 (PDT)
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA600703@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<88768378-90A2-41F2-A8A3-64BC892145B6@gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA6005D6@RCHEXMBP1.fnc.net.local>
	<19818178.f818cBogRg@peggleto-mobl.ger.corp.intel.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600703@RCHEXMBP1.fnc.net.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Jun 2016 09:14:55 -0700
Message-ID: <CAMKF1sr5ej_Ot0XN8VgZMAGeexCMoEpeYi7+z2SqzffbzYu0oA@mail.gmail.com>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autoreconf
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
X-List-Received-Date: Mon, 20 Jun 2016 16:15:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 20, 2016 at 9:12 AM, Rajasekaran, Monica
<Monica.Rajasekaran@us.fujitsu.com> wrote:
> Thanks Paul and Khem, that worked!
>
> I also tried adding libcap-ng but it gives me the following error:

where did you add it to ? it is a package so you have to add it to IMAGE_IN=
STALL

>
> ERROR: Nothing RPROVIDES 'libcap-ng' (but /data/users/mrajase/l100_label_=
based_r100poc/repo/poky/meta-fss-product/recipes-core/images/fss-image-full=
.bb RDEPENDS on or otherwise requires it)
>
> But, I see it present at http://git.yoctoproject.org/cgit.cgi/poky/plain/=
meta/recipes-support/libcap-ng/.....??
>
> Thanks,
> Monica
>
> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Sunday, June 19, 2016 5:14 PM
> To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
> Cc: Khem Raj <raj.khem@gmail.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] autoreconf
>
> Hi Monica,
>
> As shown in Khem's original example you need to add this through EXTRA_IM=
AGE_FEATURES, not IMAGE_INSTALL (since tools-sdk is a feature name, not a p=
ackage name).
>
> Cheers,
> Paul
>
> On Sun, 19 Jun 2016 20:23:53 Rajasekaran, Monica wrote:
>> I added the following line to my recipe file,
>>
>> IMAGE_INSTALL +=3D "tools-sdk"
>>
>> But there was the following error with the build:
>>
>> ERROR: Nothing RPROVIDES 'tools-sdk' (but
>> /data/users/mrajase/l100_label_based_r100poc/repo/poky/meta-fss-produc
>> t/rec ipes-core/images/fss-image-full.bb RDEPENDS on or otherwise
>> requires it)
>> NOTE: Runtime target 'tools-sdk' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['tools-sdk']
>> ERROR: Required build target 'fss-image-full' has no buildable providers=
.
>> Missing or unbuildable dependency chain was: ['fss-image-full',
>> 'tools-sdk']
>
>> Any idea on this?
>>
>> Thanks,
>> Monica
>>
>> -----Original Message-----
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>> Sent: Wednesday, June 15, 2016 3:48 PM
>> To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
>> Cc: Paul Eggleton <paul.eggleton@linux.intel.com>;
>> yocto@yoctoproject.org
>> Subject: Re: [yocto] autoreconf
>>
>> That might work, however you might need more packages, so adding
>> tools-sdk will cover all of them in one go
>
>>
>> > On Jun 15, 2016, at 1:47 PM, Rajasekaran, Monica
>> > <Monica.Rajasekaran@us.fujitsu.com> wrote:
>
>> > Hi Raj,
>> >
>> > Will adding a line in the image's recipe file like this work ?
>> >
>> > IMAGE_INSTALL =3D =E2=80=9Dautoconf=E2=80=9D
>> >
>> > I installed "git" and "resolvconf" in the same way. Just not sure
>> > about the package name this time.
>
>> > Thanks,
>> > Monica
>> >
>> >
>> > -----Original Message-----
>> > From: Khem Raj [mailto:raj.khem@gmail.com]
>> > Sent: Wednesday, June 15, 2016 3:42 PM
>> > To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
>> > Cc: Paul Eggleton <paul.eggleton@linux.intel.com>;
>> > yocto@yoctoproject.org
>> > Subject: Re: [yocto] autoreconf
>> >
>> > You need to add autoconf to your target image, if you do not use
>> > Online package management
>
>> > EXTRA_IMAGE_FEATURES_append =3D =E2=80=9C tools-sdk=E2=80=9D
>> >
>> > in local.conf might help
>> >
>> >
>> >
>> >> On Jun 15, 2016, at 1:35 PM, Rajasekaran, Monica
>> >> <Monica.Rajasekaran@us.fujitsu.com> wrote:
>
>> >> Hi Paul,
>> >>
>> >> Thank you. This is in the target.
>> >>
>> >> Thanks,
>> >> Monica
>> >>
>> >> -----Original Message-----
>> >> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>> >> Sent: Wednesday, June 15, 2016 3:25 PM
>> >> To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
>> >> Cc: yocto@yoctoproject.org
>> >> Subject: Re: [yocto] autoreconf
>> >>
>> >> Hi Monica,
>> >>
>> >> On Wed, 15 Jun 2016 20:17:16 Rajasekaran, Monica wrote:
>> >>
>> >>> What is the package to install autoreconf ? (Ubuntu equivalent:
>> >>> apt-get install dh-autoreconf )
>> >>>
>> >>> I am getting the following error for one of my applications:
>> >>> "autoreconf: command not found"
>> >>
>> >>
>> >> autoreconf is part of autoconf.
>> >>
>> >> Where is this? On the target or within the build system?
>> >>
>> >> Cheers,
>> >> Paul
>> >>
>> >> --
>> >>
>> >> Paul Eggleton
>> >> Intel Open Source Technology Centre
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >
>> >
>>
>>
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

