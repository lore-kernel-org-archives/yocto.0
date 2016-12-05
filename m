Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6468EE00A39; Mon,  5 Dec 2016 02:09:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C67DE0097C
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 02:09:05 -0800 (PST)
Received: by mail-qt0-f182.google.com with SMTP id w33so308457911qtc.3
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 02:09:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UypZfOIK3eQMC1VTqVa8U2Og46MsZr1lhBTOE+2oZ4U=;
	b=Ci3o+cR7gPIbeoHSlzN3nHq0qaDRDQ1TXN/gCBM05XxJXFUcWgaANxJcQh6ADYzYhM
	S/eWV5TK/BL5qnHTePX+MZbta57xzFJYykSqWUyUSgVJdfYGtVsCFwZQ3j4mvjTQuYQw
	QJ3/Fkz6rl+ps8TOzrYnbNLHbxIGqyAYTiqBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UypZfOIK3eQMC1VTqVa8U2Og46MsZr1lhBTOE+2oZ4U=;
	b=i/YJr2s6PGDpyw9D9xcYwPRyPrcRKzZzMpxMQgEtSaACUJ+XTVgim+ivOTopqZ59Vc
	BRjGjPUbx5b6gi59cf1UPYv9eS1joLhhlgDACnPCshhi2o1iOmnb0vOqFcPv8ovAxlnE
	5tQZI9H/NeBgCXOx6Nmoh0CwyUnF7re3JpXd7KMIBOGGoWxJKqLYyg9rWIvk1RM9XQ3I
	ff/ZID2SFjNCifcY2Aksd44i79vN1kWOwCvyFY//8/+oC4RncYWiL2wbcTuVb3u50f/Y
	vyu+G4wjxNDrPWBoDEjjHwEhObfEOyOOHlMQgwSBHlQf7Y6nLW5S5BO7mdrHJBF9+lk0
	kzdw==
X-Gm-Message-State: AKaTC01cgmM+s3wbewljHdXs5B1uWbHsNvr7HCfap61y/icXFiyPiUsitesVLZg4rnlcdPrcYxIM2OrNzkuowy0B
X-Received: by 10.200.38.239 with SMTP id 44mr50974193qtp.91.1480932544570;
	Mon, 05 Dec 2016 02:09:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.19.72 with HTTP; Mon, 5 Dec 2016 02:08:43 -0800 (PST)
In-Reply-To: <CAJO0J4g8CfC7keGjnuu9XbmFGZYuMs9n9uoQDQAqhQC=HrjLgw@mail.gmail.com>
References: <CAJO0J4i-G+PxwaSqZzx0ovj2g-ZMR=Uy9RSnk2b=oji1sTX5gw@mail.gmail.com>
	<CAP71Wjw+L1C+5XrOYSMgHoCKnVu84uqf-s=ueUTEpZ=y0B9+Hg@mail.gmail.com>
	<CAJO0J4iCk-Zw6xLf4zu7u_aGT5n9b=wctO17tQnRhiTD0k8nGg@mail.gmail.com>
	<CAP71WjxnZhor7seO+O0=t+n=iCLMONx8midCikPgBmBzuHcVxw@mail.gmail.com>
	<CAJO0J4g8CfC7keGjnuu9XbmFGZYuMs9n9uoQDQAqhQC=HrjLgw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 5 Dec 2016 11:08:43 +0100
Message-ID: <CAP71Wjz8ZyxjiFccPOD+Lcat0C1XN8OEW1-m2fxgeqGJD43aTQ@mail.gmail.com>
To: Paulo Neves <ptsneves@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Using files from package dependencies
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
X-List-Received-Date: Mon, 05 Dec 2016 10:09:10 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 5, 2016 at 10:10 AM, Paulo Neves <ptsneves@gmail.com> wrote:
> Sorry for my ambiguity. When I mentioned binaries I meant general
> binary data, not necessarily executable. Their only need is that the
> new recipe needs to be fed these data from the other package so it can
> produce it's own output. This binary data only needs to be available
> in the host pc, in the recipe bake.

in that case, i suppose you can consider these 'binary files' as
development files like other .h or libs, and package them in the -dev
package of the dependency. You can control which files get into the
-dev package using FILES_${PN}-dev in your recipe.

