Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4875E00CCD; Fri,  8 Sep 2017 06:15:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE247E00CC6
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 06:15:07 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id y123so5665318iod.0
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 06:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+i8gfPhmZQat80j1zg8B+5hF2Z5w7zxVikhuj32Y5MA=;
	b=fvAyfXwTf8Y5ozL3103X+mbcJCcJ1nMuE5fWvgC78ShHhXwPaSrDlAmdeN8muxnly6
	tu6UuSHvO1UfhbP/pp6rzYWw+Ct0wx/2gZM/XIILLNZ4miOCM/zr/EhgkA/sQgNlXaaA
	7Jv9XL1tuFdJXefHFz0RujeOSEGgXnBCAqcw9k9qwjNBZHBGLAJ/yIcxsMBS6QcK+4ko
	vbCkihke/oQfWV+bVvC4NdaL6tVPf7BVv60+3thfylyUujz5SheUo2BQLzLZxZGsVfge
	pSVVgrSQyMBxDMC0YluV/+FfIL4vLhP9GTSQmc/lbpjoylmiDB+S9ytqt+s7Xmye8PIG
	85rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+i8gfPhmZQat80j1zg8B+5hF2Z5w7zxVikhuj32Y5MA=;
	b=M1OjO801k2fp51WIB7GPPE99dynFykZ/lF1ud+bemkijHHYyOGFlvpKtsuXG+m+uIW
	CI5g9it2aN8bskPljC7UFEIBlco3ztqeok4i+k/Hp4DDHS98cwVDSe9JlkdSUxzDkrMd
	+YTtixua1xk/+m/j6XRHIQyRLjPYMBx4/tZpDI2vVPpqpoYmxfuA2eUKE/Use/iWo0Pn
	vjJsZforcCvFvquDE+IYEmZXhUDLzXnhpDAcK9uTtEiL5Ru4znCs2Yd9ZnirZhwX+pPc
	na1XspIz/7Cf012Aflodzj0vry4K/qOMJqVQHQTwkY9MDdyP7YyB86HzilxX7s/uFzpZ
	uzbw==
X-Gm-Message-State: AHPjjUi3q0VpxgYdFIM9XRdJNAYYzUdmc20jRYHSqQ/TbdPt+jnMTPgd
	CcWyX9MABpiekL76bqQT7D7pjAXa+w==
X-Google-Smtp-Source: AOwi7QCBA/uwVsU3ckIyhPDTDQp1YuXRXL23ZUExE98oaZe7X+IbT6mADXtnOO2p5hoV+hNrRy335gj3wVdf1JSmecg=
X-Received: by 10.107.22.65 with SMTP id 62mr3273100iow.304.1504876506734;
	Fri, 08 Sep 2017 06:15:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.22.3 with HTTP; Fri, 8 Sep 2017 06:14:46 -0700 (PDT)
In-Reply-To: <CABFXn3HRnkfc3jY0F4VTt+USW187pTqPaTA9cUtGqm72WLOtTQ@mail.gmail.com>
References: <CABFXn3HXz9ZZvg-r6joXne3gNN3=+EbzHku1Vg3NLvZrUB2kFQ@mail.gmail.com>
	<CABFXn3HRnkfc3jY0F4VTt+USW187pTqPaTA9cUtGqm72WLOtTQ@mail.gmail.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Fri, 8 Sep 2017 15:14:46 +0200
Message-ID: <CAB2nKc-NKcWJ=7LaBAVQyoa02-Vn3Xt97G8Zmu=EP-xuuGfffg@mail.gmail.com>
To: yahia farghaly <yahiafarghaly@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: how to submit a patch
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
X-List-Received-Date: Fri, 08 Sep 2017 13:15:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Usually, I follow instructions in README file found in meta-X layer.
For example, for poky, it can be found in section "Where to Send Patches" h=
ere:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/README?h=3Dpyro

BR,
Vincent

2017-09-08 14:22 GMT+02:00 yahia farghaly <yahiafarghaly@gmail.com>:
> i found it in pyro docs, never mind
>
>
>
> Sent with Mailtrack
>
> On 8 September 2017 at 14:11, yahia farghaly <yahiafarghaly@gmail.com>
> wrote:
>>
>> How to submit a patch in yocto ? i come across this link for open embedd=
ed
>> https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
>> should i follow it ? or there is something else? . more specifically, my
>> patch will be in pyro branch
>>
>> Thanks,
>>
>>
>>
>> --
>> Yahia Farghaly
>> Graduated from Faculty of Engineering - Electronics and Communications
>> Department at Cairo University.
>> Linkedin - GitHub
>>
>>
>>
>> =E2=80=8C
>
>
>
>
> --
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications
> Department at Cairo University.
> Linkedin - GitHub
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

