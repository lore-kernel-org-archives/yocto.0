Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A53C8E00950; Tue, 16 Oct 2018 06:48:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F0FEE006AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 06:47:59 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id p23so22542271otf.11
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 06:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=gxsUSplMC97n3wZr+Ig2qudTHtwghfw0c/X3VLcEug0=;
	b=x9Oa1N+6qH3/Mk8CCq8Yc8NdDodaiXPcUdyzEUGSb3PV5Byhxn+6pXg9HqmIYeVgW9
	ZfMtiv6YbMkll7jPY/NgjLEBME6IaW7iPGgoW+/P8SGjdehG5Ej9736G/8kNXHCbXvHq
	9NnenMcAJXC2rw8fk9mcc/gttNDDI1yeG6DxZaXHhI4D3kU0wapM/yek67Z8dRDSXob9
	asGPYzIkKv53YlB7twmKwZRLZenC78zLzIy/dPZxr8rlNwmqSAPwmMlqUU3qjfJjhSn3
	srb4LCfeVol7vSKpKQGYfW5FSPPh6VEn6/jK7XmS9Jd2xZuHtK9DcHdKpQnrjRFYA8DX
	jIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=gxsUSplMC97n3wZr+Ig2qudTHtwghfw0c/X3VLcEug0=;
	b=brYRfcVmty7dcgr6R0w/85a3YOuMc7wfv3VO6O9AasiDfjaUGUkgNQpeDKjXtQiIl6
	ZJWSmqF7/6mEK2/LQRdcM3TSprvbj8qZREmZFQHQ0j87xVYo6Is7lZvkSKfWKiEyIxmf
	BGzefBh5TVJVdfeaXn4MVnQaYoyDI1B3j5QNSSV40w5iQYtw6sr2Q1F3N0DTfwXOhtRk
	Dldk0K1sLZo19DpocYXiYpDU2vNYuhWuh+cSWk0QxFcjf97ISW9D73LclAdEXL025I++
	MtE0le52g/MW82ugSPw1WkzFx26q+ocGbcdr9QbyLImNmi7mRA4EsKla3zARRZk1a3JV
	h6qg==
X-Gm-Message-State: ABuFfohC4rJfaM0kSekp5qAXtpwv8mMVqYPGHkVJA3QKFGOKSiaScZGD
	s58bhn0EaE9AFOiyOt1hQ+BiyiVY38pOgN/J1LPcTg==
X-Google-Smtp-Source: ACcGV62Zi4ANKG6CNwbr0HZovMvxc1apR37hcbPjlJJCc6Nqqh/7tBfsR94BCqtPxhCVaKavSkmc7AmnRJE+LdPjJyM=
X-Received: by 2002:a9d:3d44:: with SMTP id a62mr11364704otc.133.1539697678756;
	Tue, 16 Oct 2018 06:47:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=qcm1Eyy-mYABFcCdRA@mail.gmail.com>
	<CAJTo0LZ=eCkuygCcfLVaoGgLyVY2Ljf7SVOYX_gAXRvWGCDUqQ@mail.gmail.com>
	<CAEhQi8kM6sy9Gq4fkCWMeABV9ZKTak2YTQFzib3GT7t5Wm7fLw@mail.gmail.com>
	<CAJTo0LYj47+tp3cfN9_9rdw-gFz8MWy2Mwq4Beqb25hwKSbAwA@mail.gmail.com>
	<CAEhQi8m5Vs9dyoFkGefqU5NHcvJzf_nMmzWEOk6fdxRznDSGfw@mail.gmail.com>
In-Reply-To: <CAEhQi8m5Vs9dyoFkGefqU5NHcvJzf_nMmzWEOk6fdxRznDSGfw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Oct 2018 14:47:47 +0100
Message-ID: <CAJTo0LZoR4ywkGpaCBZfJHWZP_UdtsdYqqzoeA4XyiFS3f3Q8A@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [poky][meta] already-stripped ignore if set for any other package then INSANE_SKIP_${PN}
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
X-List-Received-Date: Tue, 16 Oct 2018 13:48:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It's only already-stripped that needs to be on PN, because the
stripping happens before packaging.  When already-stripped files,
there are no packages yet.

Ross
On Tue, 16 Oct 2018 at 14:22, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrot=
e:
>
> Ok so it is not supported to have the already-stripped on a package level=
? I cannot set it on PN because I have some so-files that is already stripp=
ed and others that is not so that was why I wanted to create a package for =
the already-stripped so-files and use the already-stripped on that package.=
 Anyway thanks for the help I ended up creating a new recipe for the alread=
y-stripped so-files. But is all the INSANE_SKIP flags only supported for PN=
? I think I have seen dev-so used on an package level?
>
> BR
> M=C3=A5ns Zigher
>
> Den m=C3=A5n 15 okt. 2018 kl 22:23 skrev Burton, Ross <ross.burton@intel.=
com>:
>>
>> Ah yes, of course.  Stripping happens *before* package splitting, so
>> it doesn't make sense to have it set on PN-package1.  Just set it on
>> PN and it should work.
>>
>> Ross
>> On Mon, 15 Oct 2018 at 08:18, M=C3=A5ns Zigher <mans.zigher@gmail.com> w=
rote:
>> >
>> > Hi,
>> >
>> > Sorry I see now that there is a typo. What I mean is that in the defau=
lt package I am not suing INSANE_SKIP but for packag1 I need already-stripp=
ed
>> >
>> > INSANE_SKIP_${PN}-package1 =3D " \
>> > dev-so \
>> > already-stripped \
>> > "
>> >
>> > But I continuously get the error that they are already-stripped. So is=
 it supposed to work because I don't understand  the code in the package.bb=
class since it looks like it is only checking for already-stripped in ${PN}=
 and not ${PN}-package1?
>> >
>> > BR
>> > M=C3=A5ns Zigher
>> >
>> >
>> >
>> > Den fre 12 okt. 2018 kl 16:30 skrev Burton, Ross <ross.burton@intel.co=
m>:
>> >>
>> >> On Thu, 11 Oct 2018 at 18:14, M=C3=A5ns Zigher <mans.zigher@gmail.com=
> wrote:
>> >> > I have been struggling with a problem where I need to create a pack=
age in a recipe and set already-stripped for that package. The package in q=
uestion is not the the default one so I am trying to set it by using
>> >> >
>> >> > INSANE_SKIP_${PN} +=3D " \
>> >> > dev-so \
>> >> > already-stripped \
>> >> > "
>> >>
>> >> You say no the default one, but PN is "the default" one, so that's
>> >> probably why that doesn't work.
>> >>
>> >> Ross

