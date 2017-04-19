Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A383E00AC8; Wed, 19 Apr 2017 09:17:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4124E00995
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:17:37 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id h2so22331752uaa.1
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eDlKILLC6IhlBQE43uOosMWwswJ3tohVTEENbaEgE7E=;
	b=kRmxmfBIJmXDm6HHnaxTH/IWod84nN3UymlCQ579vAzgA+lfzkdn9Gk4WBIw7m8G7P
	sG0/QqzKzgGagJBo0+qej2yQ6/s+N44lU1ciXKV69z6SrGOpziAkP8M78CDVW/pVvZOH
	Tr1qyAStuBR2CZXUanqMj1vQ4k5YB1lFPJSj0i/Hq4yhJcvL2Ao+qfL7babN5OPaKVS1
	kaG/3IJCWMU9I2VnFCniAa8P7ghVuiYvgI4U/g66tsmWA4k8YjNr9Vq0LU8UbMi24FNh
	S09r7+GYJuB6ZJ5+j9ta54eshRsel6eroKwOEg+bXoW/X1+jjwlFaF6tUHA5C3Oh2muA
	mfYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eDlKILLC6IhlBQE43uOosMWwswJ3tohVTEENbaEgE7E=;
	b=in1g4BNfyn4te4u7z5Y+hXj7v+uQPOM11T21nIcCRySC5coWhzKAcPWoetmJ6BxtUo
	46bBQL6CjX9s955TMCCDvUJh+OAIyrDg5ku3GBw6Pj+wz4SbHI9PswSAqsns7fUaZfac
	C4vUnYGEDfN0cwocwZFL1N9UoeyPDFdTrHvgB4x5ePtrFQWv78McRS/zMMDCtHqR4Z2X
	YcWF6sw5CR640+e9c2w02vmPkeSecVyQec2h/1/Q3UqBNM7ZgRI2UjbNfWghvBA+KCqR
	fR+uXtPkOT+huFoznx8UbDYPCf+6H5kKMGBFZhWvDKsY22IuhJtxdCH1/iNbgkE6eRpA
	gJFg==
X-Gm-Message-State: AN3rC/6gseRBwdtgK3541YU8D2BpKVdlfQeQcr6JB6L6VsMYTYIy+CDS
	+Fsk0jwhDQch1eOCDy2wvAKDD35nyQ==
X-Received: by 10.159.48.209 with SMTP id k17mr1796069uab.6.1492618656735;
	Wed, 19 Apr 2017 09:17:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.30.70 with HTTP; Wed, 19 Apr 2017 09:17:36 -0700 (PDT)
In-Reply-To: <CAJTo0LZcB7++s9CZLSdnYe-UsrGd1gnHh_emaX4AZ-QtnJfozw@mail.gmail.com>
References: <CAOsmwBTkthOX6Zd9JFxEhoxMMvwNvcWJ9C-_1Xzu13UpYO_kEA@mail.gmail.com>
	<CAJTo0LZcB7++s9CZLSdnYe-UsrGd1gnHh_emaX4AZ-QtnJfozw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 19 Apr 2017 12:17:36 -0400
Message-ID: <CAHUNapQdc2a_uGDAsDdtBfkw+tg=q4rvJ9K0BFvaa58dzL+uAg@mail.gmail.com>
To: Alvaro Garcia <maxpowel@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Share recipes
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
X-List-Received-Date: Wed, 19 Apr 2017 16:17:38 -0000
Content-Type: text/plain; charset=UTF-8

> On 19 April 2017 at 15:57, Alvaro Garcia <maxpowel@gmail.com> wrote:
>> nvidia-propietary-driver

prop*r*ietary?
proprietary

