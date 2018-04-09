Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAC26E00BAD; Mon,  9 Apr 2018 14:27:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB241E009E2
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2018 14:27:51 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id w2so19249767wmw.1
	for <yocto@yoctoproject.org>; Mon, 09 Apr 2018 14:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EbH9N8YeKOUppGSlUtf3lNjcyZjMAoX0ZTNa1Aim6Q0=;
	b=YkgcHy6A/0N/GYevCmq4l74qcxUkCJtl/8QsA3LNx/mHQG1Od7NsLJm3eOIaXkb6GU
	ZUawk6CQLWxwR4XLq+8AWD84MZK2uDE0MvlSWJ7Yro9tksGJeTTasRtfdzPjk6WOj3YH
	HEcr2yj9zc6TmbCpeB9+paPbIhxJSIoZ/VbQtb2hwx+zT/ELoiKy46ynA+KazPKE2PnJ
	TVfsjqgP0ClcVFaq5E0X79NPbBdriOB2Ex++s3K+Hg5kKgNQ87JRbcMS+AJ645b6xLro
	nZrsfJfWrd9nquArV03KlTX3zIMiePwTrQJ5Wi2PIRc9OPF6BhTCzlJzgZnNoY8q6QmU
	8V9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EbH9N8YeKOUppGSlUtf3lNjcyZjMAoX0ZTNa1Aim6Q0=;
	b=ITLGb9fF91VVRnLwV+N3GsqQdmJn3qzl30rinh7db+c4k9706zXLImuaSaLCcpzCJ8
	5Vk6sMzVb//+aUj3wYeqxHor03E+wXr6LwkzA9TvPcwhlo/1c+RNdHOi976vdN1BmBza
	clHuOuM7FXl0ZIEkV89l+gwUsIg/4YHnXqWGzF6Rafy2l+IfJeuFzkFLg3XIJ8bIup6z
	qSGbQA6EUVhu5L44xU9025rCD5hSBJELhFkfMMI4NCe2nhrg/j2GmRYtdxV36W3Zzs3F
	pAdR0h+nXRIBahsVVLGW9JTv++VZArMjEYumgU4wdLfysL6a1sAvuUcATV5F6ByEI3Ea
	wLpw==
X-Gm-Message-State: ALQs6tCQXBd/6uIpQ8lu4R9RL1yyBTQT396Po1KB3it5+XfIXL6V7ByZ
	lPt6dVZaAmTYcumxQfvkbnaimhqurxVWNmTYNxA=
X-Google-Smtp-Source: AIpwx49Nz2NTfz4RY8KakVAaiaKFQOfEXvmopby12Xs0wt1Ty/tW0NDKOA4p1lpKD+fZK7h2b3giTy/ndXWL0o3Edyw=
X-Received: by 10.28.124.14 with SMTP id x14mr1055906wmc.86.1523309270961;
	Mon, 09 Apr 2018 14:27:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.163.65 with HTTP; Mon, 9 Apr 2018 14:27:50 -0700 (PDT)
In-Reply-To: <b3101c2c-8462-98fe-5c40-a0279f7d383a@iis.fraunhofer.de>
References: <b3101c2c-8462-98fe-5c40-a0279f7d383a@iis.fraunhofer.de>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 9 Apr 2018 14:27:50 -0700
Message-ID: <CAJ86T=Xd3GVTuGqYFkdB5BwR-NZAh1VznvgnEeWeDr2g81ow-A@mail.gmail.com>
To: Florian Doersch <florian.doersch@iis.fraunhofer.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pyro: missing ldconfig
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
X-List-Received-Date: Mon, 09 Apr 2018 21:27:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 5, 2018 at 11:53 PM, Florian Doersch
<florian.doersch@iis.fraunhofer.de> wrote:
>
> I recently updated from pyro 2.3.3 to latest pyro branch for my raspberry3
> and ran into the following problem
> ...
> The problem does not occur when using the latest pyro tag (yocto-2.3.3)

Unless someone else has a better answer, you might need to bisect
between 2.3.3 and the latest pyro version to find out which particular
commit caused your issue.

