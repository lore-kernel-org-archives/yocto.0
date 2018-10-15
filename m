Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23BCEE00A0C; Mon, 15 Oct 2018 13:24:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADAF7E003D9
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 13:23:59 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id o21so20199428otb.13
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 13:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=z6l7PjYTC60r+J196AxgAkwhnR96iX8uvc1fea9EG+A=;
	b=YM0cC5M9qLkL6egWijvXckwZAsLpV5ZvOnZmqhlva0cc6pLgy7ciGb5vGUYT23SIhC
	QyGq9H8Sl+3/x+nrjBzElTKpH1lOBLNEtZ/mM9ed6ix8i+2gWtgSUBU7KZAhXNrxwVq9
	HpQCirueIfPgQ1uBH5tG8/imlf/NdGVPrpampnoBfSsGTbQKCk/4utr0Qas+v8IOdJ9X
	R0+qK5n7olMePlyTH2irCDcKyxfviO0RfL2Z8tW/wc18SsgRvTzIcJq02eT3iCjoSt6a
	oOk7GoI+KQU/3/ojG4XHXQHCaAWeLTE3j2UvroQqccaPDxw/Dk0FAqxE9THLbxR+Nimo
	LWBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=z6l7PjYTC60r+J196AxgAkwhnR96iX8uvc1fea9EG+A=;
	b=XtbcS1SB3QLvp2fQD909TUm+xCciq8np7Y+GyQ3rFE/L2FzlxZxB//T5jyRrIi4YfY
	07LBOZ8zCSIjg6xFuNbWbdGtPgnc5pRPKS7YgDqII9ExTJgdPQmLDviF7oeOCBVHXhKj
	XhL+9vuapOuKpWV0CxnvyynTXUDNTtLsRg1axDV0oSiL3anOOW06LdQospXP4WVey23X
	dCcBTaQjCOgPGty8jQ467+bQ7mSMwVlAZvPQi9NrABXNIn+V9iG63lUHlL3WpOZk8FIO
	3S2awY0iC95EymauaG7IKRSBxsKhtvJNLIawbF+fClqXaiQz3Le3tV2YXIVwCvlRqwsp
	hnOQ==
X-Gm-Message-State: ABuFfoiEHjkl/4aKcj25tSb1+SAUd+cmaLLHhfJrNCibDIUaOdCFbsGF
	fN3Ua7pTKNg+8b1BvlQStR67f3ISuM7b1GPNQBN3vw==
X-Google-Smtp-Source: ACcGV61hl+Bt8VKDTEZmE4oubZgDg/7hCvv8wcwutuGDJSq/uyD2bvCzMgwbwwZ9C6em2m+Pk2IA3QSO19IJsOYrM+M=
X-Received: by 2002:a9d:5110:: with SMTP id c16mr2603975oth.297.1539635038785; 
	Mon, 15 Oct 2018 13:23:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=qcm1Eyy-mYABFcCdRA@mail.gmail.com>
	<CAJTo0LZ=eCkuygCcfLVaoGgLyVY2Ljf7SVOYX_gAXRvWGCDUqQ@mail.gmail.com>
	<CAEhQi8kM6sy9Gq4fkCWMeABV9ZKTak2YTQFzib3GT7t5Wm7fLw@mail.gmail.com>
In-Reply-To: <CAEhQi8kM6sy9Gq4fkCWMeABV9ZKTak2YTQFzib3GT7t5Wm7fLw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Oct 2018 21:23:46 +0100
Message-ID: <CAJTo0LYj47+tp3cfN9_9rdw-gFz8MWy2Mwq4Beqb25hwKSbAwA@mail.gmail.com>
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
X-List-Received-Date: Mon, 15 Oct 2018 20:24:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ah yes, of course.  Stripping happens *before* package splitting, so
it doesn't make sense to have it set on PN-package1.  Just set it on
PN and it should work.

Ross
On Mon, 15 Oct 2018 at 08:18, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrot=
e:
>
> Hi,
>
> Sorry I see now that there is a typo. What I mean is that in the default =
package I am not suing INSANE_SKIP but for packag1 I need already-stripped
>
> INSANE_SKIP_${PN}-package1 =3D " \
> dev-so \
> already-stripped \
> "
>
> But I continuously get the error that they are already-stripped. So is it=
 supposed to work because I don't understand  the code in the package.bbcla=
ss since it looks like it is only checking for already-stripped in ${PN} an=
d not ${PN}-package1?
>
> BR
> M=C3=A5ns Zigher
>
>
>
> Den fre 12 okt. 2018 kl 16:30 skrev Burton, Ross <ross.burton@intel.com>:
>>
>> On Thu, 11 Oct 2018 at 18:14, M=C3=A5ns Zigher <mans.zigher@gmail.com> w=
rote:
>> > I have been struggling with a problem where I need to create a package=
 in a recipe and set already-stripped for that package. The package in ques=
tion is not the the default one so I am trying to set it by using
>> >
>> > INSANE_SKIP_${PN} +=3D " \
>> > dev-so \
>> > already-stripped \
>> > "
>>
>> You say no the default one, but PN is "the default" one, so that's
>> probably why that doesn't work.
>>
>> Ross

