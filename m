Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC426E00C5F; Tue, 11 Sep 2018 00:45:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.182 listed in list.dnswl.org]
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
	[209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBF03E00B5C
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 00:45:08 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id p10-v6so20078768ljg.2
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 00:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=rpfNY5GxnM9es7kT8VDKsrz8n5u2TQB6qlSh2yaqaUA=;
	b=cGhEPN/uRpn//A7SEiGfIm02fmgHy5jqIKgGUHs3E7+0C/gYWwrMz6q+UMt7UbpTM4
	0FGpuXvxGQkEfBbTyqKbWJh3D5LFqYh6oOsiQnys3pOrKRB2BXkYIBC3B/2B1Kq/RFFQ
	s2zWh8r4r8hrM1kSsoP760UlzPsitL/AulD7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=rpfNY5GxnM9es7kT8VDKsrz8n5u2TQB6qlSh2yaqaUA=;
	b=jUBZdUJHd96z8zelq5lGxzRaDXlg5tvL+/6kzxkxih1kd35vhodg+feJA1hj0nLoGK
	MeBFJWhLEbGZIdpcWFp33GUz8zHO+APU7DOvM2h92y0qSAbYBlXlGnKnBLajzBKHYfAR
	FPX37xiNk28TNQoKheDdX81lzOOzK6dt/2pPw4ixMuBhYbH26T1WMjaxjmqw+mZM2tvt
	NNGlmn4oGUZKC1YvztRcEavw7IqRSWy7s/VvRW04VyarzvgbFhgZnsqIS04S9HQb9rjc
	1rDar/3PzaJbTxZyM2zfQVSQ1IjxMI5teLTksSTwNF5YazQjbvLwA0gwScvQgR71xgFZ
	dHyg==
X-Gm-Message-State: APzg51Ck+zYRxMl0GVHedwUtCFVJaS2zh9SZsvpL1nuTSVfKocEtqCbE
	t/+cnLFLAvUSvcEoWXcENu8IQ1F6FlA1EOuOngAMox83rmE=
X-Google-Smtp-Source: ANB0VdZ8uhW5STnban18r61MT9l2aTXDSr2ELDpyU4BIJhXoQ8C311QtN7uB9BUdvg/gDj1eTkgiN56hpHqtPyXWdWE=
X-Received: by 2002:a2e:9854:: with SMTP id
	e20-v6mr14673005ljj.143.1536651907773; 
	Tue, 11 Sep 2018 00:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR03MB43745DD71168DBF5624BB83B81050@AM6PR03MB4374.eurprd03.prod.outlook.com>
In-Reply-To: <AM6PR03MB43745DD71168DBF5624BB83B81050@AM6PR03MB4374.eurprd03.prod.outlook.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 11 Sep 2018 09:44:56 +0200
Message-ID: <CAP71WjxHtvjsq+nms7ShDGP2UEyv7T99pMAd9abnSNy_2n-LVg@mail.gmail.com>
To: Adham.Elsafty@ideainmotion.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: I can't seem to include tc in my image
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
X-List-Received-Date: Tue, 11 Sep 2018 07:45:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi,

On Tue, Sep 11, 2018 at 9:16 AM Adham ElSafty
<Adham.Elsafty@ideainmotion.org> wrote:
>
> I am trying to use traffic control in my yocto image and I want to use tc=
. I included the iproute2 package in my image and used the IMAGE_INSTALL_AP=
PEND =3D =E2=80=9C iproute2=E2=80=9D in the local.conf file.

Please use _append instead of _APPEND.

>
> When I run the core-image-minimal I can=E2=80=99t seem to find any of the=
 iproute commands installed though.
>
> Am I doing anything wrong or is anything missing?
>
>
>
> Best Regards,
>
> Adham ElSafty
>
> R&D Embedded Software Engineer
>
> Idea In Motion
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

