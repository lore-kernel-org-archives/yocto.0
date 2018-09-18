Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67DB8E0095C; Tue, 18 Sep 2018 09:00:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
	[209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F159E00971
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 09:00:38 -0700 (PDT)
Received: by mail-pf1-f180.google.com with SMTP id j8-v6so1233105pff.6
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 09:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=w3k69PVTAB9yt1RluzzqU2fhJ3U7/RXRqZArErJ3CcA=;
	b=tvNtvUhivqpCV8K5dX/LfW4EfecKw16Qjws7F6HIuD6u6Hscon/mpvCRli2S0QWIHX
	lTQh3XsRALDXMQk1w2H/BwFF1P8D4nscMQDcNJ2BzjwNOg+uGixddlDJy/NPA9n9V8r6
	53/6wf1OWtcZ1OaEzzgrCH9Jl17JT34rstKFNzBKqeoAD61gbQBWLob6VNDIp6ScDZoa
	hmWC3Xq/PdDA6E+KLJy4YF0E16NECdwnGPSZCnWJtk4zYAeBQ31dO2cR+dApIIMI+viV
	0hmkOLUF4nhHPaq/cLEjpDVP5pluxa0Ae02cn43yZJO84/8/KPbhdqRFp+X3+ubYFXzV
	CqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=w3k69PVTAB9yt1RluzzqU2fhJ3U7/RXRqZArErJ3CcA=;
	b=a4/MyZMS/n5jn83Ku5ucSb6oS31I7wOC7bN/kuw2urqg8CZq3XzviphAVKXwKy7Zca
	zw/POuj3zMlkVygCogSyWQkLSXyk4VgcHtnTfW1RmGp6yYtZHLPbHlF5MWcv89sUCBF5
	2YDP4gISlqTy8lCf4L1XLtktxgAjdvRD8qj69JVvUdl+OCRWXYs/7mUoFjnHtyf7xax9
	tm7ftZeVsNtCciAHPV2k4Ct2vPfxfosr553G9Sghsg5zNjRk80xiSoBSGBCFZTWl8k+p
	qCrs/xzO9pVPVczsuobwii4uBGjERmZu9Fr+8jBmmGpCPT+ZCHi2cJ/hA28gXnf5paZP
	/S2Q==
X-Gm-Message-State: APzg51Bb518a+Kmtpw4GN3HcrI7yg29RL5K99AxVoL+D20Ws4ePemjgz
	u8xBSa2NHVUpottVbsje/pw8Og==
X-Google-Smtp-Source: ANB0VdbThn392Ovrj3XLm9i44ILmPWaQxpM+XYmbCnK8nCKaKTdPBsJX4/985IQ32ah6WmIEdqKN+Q==
X-Received: by 2002:a62:ce03:: with SMTP id
	y3-v6mr3783486pfg.140.1537286437834; 
	Tue, 18 Sep 2018 09:00:37 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:78f4:40e4:a9bf:d5d1?
	([2601:202:4180:c33:78f4:40e4:a9bf:d5d1])
	by smtp.gmail.com with ESMTPSA id
	b1-v6sm31421788pgi.91.2018.09.18.09.00.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Sep 2018 09:00:36 -0700 (PDT)
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Yocto list discussion <yocto@yoctoproject.org>,
	openembedded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
References: <CAP71WjzxZy4AXfRnMT6Jt6Tf18RfA6goy6qi9E6N5eR_AGM1eg@mail.gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
	Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
	mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
	aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
	mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
	C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
	Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
	7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
	dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
	FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
	IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
	FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
	vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
	ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
	IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
	g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
	rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
	FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
	wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
	t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
	aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
	oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
	Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
	37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
	0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
	IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
	0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
	0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
	ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
	UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
	Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
	AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
	mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
	ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
	vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
	JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
	EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
	dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
	/mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
	PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
	ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
	8CS2NxU=
Message-ID: <e1f5f06e-984a-90b2-3d67-27241395f380@mvista.com>
Date: Tue, 18 Sep 2018 09:00:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAP71WjzxZy4AXfRnMT6Jt6Tf18RfA6goy6qi9E6N5eR_AGM1eg@mail.gmail.com>
Subject: Re: Demos for the Yocto Project booth at ELCE in Edinburgh
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
X-List-Received-Date: Tue, 18 Sep 2018 16:00:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 09/18/2018 06:29 AM, Nicolas Dechesne wrote:
> Dear all,
>
> As usual, the Yocto Project will have a booth at the ELCE conference
> in Edinburgh next month. While the booth is a great opportunity for
> everyone to get a new sticker of your favorite project ;-) we are also
> very excited when developers from our community get a chance to show
> off the fun and cool things they build thanks to the Yocto Project!
>
> If you want to bring any of your cool demo on the YP booth, please
> send me an email so that we can plan and discuss any of the logistics!

I will be bringing a demo.. Not sure it its cool though :)

- armin
>
> Also, don't forget the YP Dev Day Europe, which is right after ELCE,
> in Edinburgh, more information can be found here:
> https://www.yoctoproject.org/yocto-project-dev-day-europe-2018/
>
> cheers
> nico


