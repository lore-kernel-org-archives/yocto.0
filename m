Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E38F8E0043F; Mon, 13 Aug 2018 06:54:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C1E7E0043F
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2018 06:54:10 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id q127-v6so12579482ljq.11
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2018 06:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XrKT0BCn+G7PvgOrXKoxo/3q5jNqdpz74lJ2t6MmlPw=;
	b=CWcAGd6NyHGl9AiywJG33wA8o0zX3nePjaLz7VMO8BVDgvpkOTz3kzMlnMucI2w5P+
	BQs4MXeSlVr/KHrNd/0rTtdrTsavRLgqYl+5Xqi1p/B0kUuvyVweUKj9Ubi42Ky1Rnd+
	TD6WmtWATK55AzQDdpOkId4tJbPq7l+J8tELn3m9ChqXMuLGreRmfJQ7CtScXyz2DD3Q
	ikgNKf8oVL2z3414V20YDZEXLRdLXlsKZOl2qQZavhmPsxYv7bYQ2oTVPrOTkciUQxRU
	qbF4MsRpRoNPFhPEo01QJJjFE1Y8PXmxG1CvrG2tkIuw1bWOsnZlGibXU7zp4rwtk1T9
	xRAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XrKT0BCn+G7PvgOrXKoxo/3q5jNqdpz74lJ2t6MmlPw=;
	b=DgSZa/ruJEYewAsTSE/9AwWhilr6hK0nbjVWlwywqMOD9F6pJAJLSN57K8xFv/86AB
	7lAHNuE6mu7KAFzkbS83MZGOtmg8oan2fkCTSmhgsH6OOfgFnIK1t8mXqc41otIz9mq4
	PYyMV2XhEnA3WnzU7FjrnBrrCnszn4l7izIK8djYCAyEgksUPGSDdGflcCU3RdVAnV6p
	5UGVzHS0T81FjPOXIG4HmRnU8e09U51TZv4gNiN0Nyc77N1MaGlEyhFISRpH5Qo5gixP
	pD5Zsu0ZWZNXoqUDj0tPMOcBbeZm3b+PGZHcd9AP539s+62olzd7qZRfv7ER/scv8Soe
	0jmQ==
X-Gm-Message-State: AOUpUlFVlzWLVqLd3eoiI0TljlR+dF6IorFDDZvEgu49+esS0/wjl34h
	nVs0Z3vW9fmGWs8WVTNQbcnCa6oNfYI0Y6rvfAU=
X-Google-Smtp-Source: AA+uWPyHvofe4mFjmTG+PXje5V1Ds66CaLlbEgL8SyGu2LyPHJtO6uEiajhu2xMAvKIfssZTPUWGZzBpj3kGyZSxRsc=
X-Received: by 2002:a2e:590e:: with SMTP id
	n14-v6mr11988966ljb.128.1534168449709; 
	Mon, 13 Aug 2018 06:54:09 -0700 (PDT)
MIME-Version: 1.0
References: <6f61f2a3-4825-2c6e-ece7-39a78e324c1c@iseg-hv.de>
	<CAJTo0LZdRG+McpEEvmwxdsQRtX-UF7V3DySuOCyH+15SzsEDew@mail.gmail.com>
In-Reply-To: <CAJTo0LZdRG+McpEEvmwxdsQRtX-UF7V3DySuOCyH+15SzsEDew@mail.gmail.com>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Mon, 13 Aug 2018 15:53:53 +0200
Message-ID: <CAPybu_2rqfLYQFN33tnytvaiUz-UCnw-x4u5Z+4wUgjtRDJ2Hg@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: custom splash screen using psplash
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
X-List-Received-Date: Mon, 13 Aug 2018 13:54:12 -0000
Content-Type: text/plain; charset="UTF-8"

And also note that if in the future you decide to use systemd, AFAIK
there is no progress bar there.
On Sun, Aug 12, 2018 at 8:32 PM Burton, Ross <ross.burton@intel.com> wrote:
>
> The easy solution would be to not use meta-poky at all, but if you
> insist then you'll have to set the layer priority so bitbake uses your
> layer instead of meta-poky
>
> Ross
>
> On 9 August 2018 at 15:43, Yuvarajesh Valleru <yv@iseg-hv.de> wrote:
> > Hallo,
> >
> > I would like to overwrite the poky psplash splash screen [1] with my custom
> > splash screen.
> >
> > I copied the psplash_git.bb recipe from
> > openembedded-core/meta/recipes-core/psplash/ to my custom layer and changed
> > psplash_poky_img.h to mycustom_image_img.h in mycustom_recipe/files/
> >
> > But during the boot the Custom splash screen displays along with a progress
> > bar from poky splash screen. (I noticed that the psplash.c source file also
> > contains progress-bar.h file included)
> >
> > Is it possible to remove or overwrite the complete poky splash screen files
> > with mycustom_splashscreen?
> >
> > Thank you,
> >
> > Best Regards;
> > Rajesh
> >
> > [1]
> > https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/psplash/psplash_git.bb
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Ricardo Ribalda

