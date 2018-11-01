Return-Path: <jdmason@kudzu.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D2C2E00A10; Thu,  1 Nov 2018 12:56:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C700FE00994
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 12:56:55 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id y22-v6so13100868ioj.13
	for <yocto@yoctoproject.org>; Thu, 01 Nov 2018 12:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kudzu-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LV/RIKMhPBRillueuRgVvLhJzvFhFrM6hLMhkWAgRgg=;
	b=UdACixr7CWrFhn+yBE0I+lTsXlW/nQTKoxFkxtdWVOXXg2bW/0wyYxMAhXNuDxCmqx
	mYAYs6TUQjsRgKdnlpmgl94BoxMEbAcri60WsV7WIweTvzDNfctxx4vohNu9H1EdOyXF
	BrHlUUJs7jyOx7/BNXvDGd3OXtg/5KaIMUvqL+hJogRGGy6e3VFyBnYI7Gapcyt8wkuj
	tjeq+wMfPGnBi7mKdpH+mM8U2W4GBykF+i3M87sqCkfNobF7/0scUQVO4MYUzvaCoT9R
	sKesVxANo7OUN/Xeig9pXCZxOn7p/V/J0CasC4AFbEVDibceFTNqe/MHxdRNgze/UQT4
	g9ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LV/RIKMhPBRillueuRgVvLhJzvFhFrM6hLMhkWAgRgg=;
	b=QtR3nKK8tctADOcaZ/L966w1JAlrkp1JF/+NnJ4RL36NfJ/I4hUV59mwTcVDrte5kS
	0aRPCs0K6StyySc0ucdlsjiBeHNS98nNyazgWeB/O26ES0UMkh0drEJj4Le7vwOu8pf6
	FEXuYuo+TTm6wl88Tf+6AV+t8BZ4tS7wCd6WMVQSJc2PpasrinC0RbQRt5PGD2AcxIW7
	+047s04162bmOvAt+WHlcvFqPdBxxJiqIQoWFsTDNBppU61liRiZ1B+9ZD9oR+rEYx07
	ZRW8gr7KX7dxbTCJclNh7JPY8boeKs0wQqSUp7pxccgFfk/3GjGT2XCdYA1d54PBl/Df
	UsyQ==
X-Gm-Message-State: AGRZ1gKTivlNDCfu77viqrU+vKOLXYUPq3t9Y7dIlkUbcLPaRD2JH11C
	UdiSBuxeTvTUOBlTA3Zl0nM8UnsC1aCZ1tLrQfadf6QpgzY=
X-Google-Smtp-Source: AJdET5dmySSv97HrUV50QVwMQJgewBEMp0Arky8ucSGRMSgfn591YF0CBJePpce3JdYWyaP1Yq1k9jQvhRfNTcohLYw=
X-Received: by 2002:a6b:216:: with SMTP id 22-v6mr6629663ioc.118.1541102214882;
	Thu, 01 Nov 2018 12:56:54 -0700 (PDT)
MIME-Version: 1.0
References: <20181101140417.GA12376@linux-uys3>
In-Reply-To: <20181101140417.GA12376@linux-uys3>
From: Jon Mason <jdmason@kudzu.us>
Date: Thu, 1 Nov 2018 15:56:43 -0400
Message-ID: <CAPoiz9y_prstnR5dsxHNwSk81ShLmkybEXySEESTgZrpgKXMcA@mail.gmail.com>
To: twoerner@gmail.com
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	yocto-advocacy@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] OEDAM @ SCaLE 2019
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
X-List-Received-Date: Thu, 01 Nov 2018 19:56:56 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 1, 2018 at 10:04 AM Trevor Woerner <twoerner@gmail.com> wrote:
>
> Hello Fellow YP/OE Enthusiasts!
>
> There were discussions at our recent OEDEM regarding:
> - our next developers meeting
> - SCaLE 2019
> - expanding/adding to the YP/OE presence at conferences (i.e. our own
>   miniconf?)
>
> Please see time indices: 12:13 and 16:45
> https://docs.google.com/document/d/1YDAHjIOXCIgvSZVOKCYLxa8h26dkruX8zspoge7zCpk
>
> Unfortunately, although lots of opinions were expressed, nothing concrete was
> decided. Many people pointed out that their travel budgets are already
> strained or maxed out, so adding another conference would be difficult if not
> impossible. It's unclear how many "core" YP/OE people might show up at next
> year's SCaLE. Also, given that this year's ELC scheduling hiccup is a one-off,
> maybe it doesn't make as much sense to put in all the work required to run an
> OEDAM at SCaLE if it's only ever going to happen once. Therefore I think I can
> safely say the organizing committee for YP/OE Things at SCaLE 2019 is leaning
> towards not running an OEDAM.
>
> It's not too late to change our plans. If a large number of core people reply
> to this email saying they want and OEDAM in March and will be available in
> Pasadena, then we could accommodate it. It's just that we didn't leave
> Edinburgh with the feeling that an OEDAM at SCaLE was feasible. Also, at this
> point SCaLE isn't on the radars of many of the core YP/OE people, and
> currently the conference tends to attract users rather than developers (or so
> is my impression).
>
> Thoughts?

I am planning on being at SCaLE (assuming the OEDEM happens there).

Many corporate travel budgets are tied to presenting at conferences.
So, if we could somehow get a track there (which might be too late in
the game to do now), then we might be able to get enough people
present to make it happen and pull in others whose budget is more
flexible.

Thanks,
Jon

>
> Best regards,
>         Trevor
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

