Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95773E009C8; Wed,  3 Jun 2015 22:54:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FF37E0095D
	for <yocto@yoctoproject.org>; Wed,  3 Jun 2015 22:54:20 -0700 (PDT)
Received: by lbcmx3 with SMTP id mx3so20464384lbc.1
	for <yocto@yoctoproject.org>; Wed, 03 Jun 2015 22:54:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=4FZcx52Tb1m2IuE39oMFm2kIHbgiKDlpqKYrLilaGwE=;
	b=QPv62IZiqt1cIJtcJszJhpzQe110dsas4xAxAQk5oyJBmjeyHamNDEdr0sbdhHOFYg
	CKgqhISeH1dFTSU28hoSqggJY4imNr2r0Vh/EXCiL9ymxLVOdnFoSmfIEXtkgYKFnoUh
	LbndXSjZFdzu5qkmLAES01B2RuIJabvYtFuZL0ftMFZQHNddclK+XRgvMKiCdOdo3Uqi
	eFfeNLAPSKi6YOjpScoIgWL46b8SFhttNCrXCx380yoKvTF4+EFsA2HXg8ZhJ9eSbA6p
	gpzWo63Ad2GHlxI2jq1KzAp+lYluNBAk5aRDlO+OEwA1/q6ujmRIkIeqA6EexWizD4ZC
	2svA==
X-Gm-Message-State: ALoCoQlItIGe6HRVToEID3DOfygt6U8tOHlBz9ggSTur3zVl+1zlVfTVH8OYR8nxWFvQEbsSIJQH
MIME-Version: 1.0
X-Received: by 10.152.120.106 with SMTP id lb10mr25302765lab.92.1433397258320; 
	Wed, 03 Jun 2015 22:54:18 -0700 (PDT)
Received: by 10.25.156.1 with HTTP; Wed, 3 Jun 2015 22:54:18 -0700 (PDT)
In-Reply-To: <556F8111.2030201@gmail.com>
References: <556F8111.2030201@gmail.com>
Date: Thu, 4 Jun 2015 15:54:18 +1000
Message-ID: <CA+aJhH2wjWZR1M_H+uMAL1r1Xd7k_qJRp7=mgD-U-JYYE=p7PA@mail.gmail.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: layerindex
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
X-List-Received-Date: Thu, 04 Jun 2015 05:54:25 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 4, 2015 at 8:34 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> Hi,
>
> Does the layer index provide a REST api?

http://layers.openembedded.org/layerindex/api/

It is self documented to some degree :).

>
> -or-
>
> Would (could) it be possible to somehow grab/access the data that drives
> the layer index (preferably without scraping)?

The "bitbake-layers" tool might also be of interest as accesses this api:
http://git.openembedded.org/bitbake/tree/bin/bitbake-layers#n261

Regards,
Nathan

>
> Best regards,
>     Trevor
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

