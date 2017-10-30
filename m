Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CF04E00C59; Mon, 30 Oct 2017 16:17:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1153E009B4
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 16:17:01 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 17so12222584pfn.12
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 16:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=n63p58RSo9t5uA3x6RkdWXaJv4tUDsVJjPylFG6sDwg=;
	b=vbSeUyKK9kvCU0HV/P7tZCODikbZswz+LLqXUUH8A1clj7QdwDRD9i9msPpifB3TUb
	Ax5o5kAlAeZczRet5i/0eh0YU870JJVmjmpBB2Nn8mvcXP6/wYIoaaFKnXhiQN39KiET
	KM+u2uEaTuPQBKgbpW6mD8u6bhYFP9zLpXW6HdyyNwCzamCw1wdHZNjEPRJkYtaO0ZIK
	kGrjjUuWvsoPBYiAVdUKNFDxZPbntVbNhutWXSRGT9iLB62Dvk7ZtO/lX1YCW07Bc3xt
	FZQnzDvMRcafD09JYfLo30bR5uMcgGHbNk7KEgxYQLUiY+a46b8bLGh8edtU94E0Am5w
	AkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=n63p58RSo9t5uA3x6RkdWXaJv4tUDsVJjPylFG6sDwg=;
	b=nXy8lhVsOHWwj4x6yB/chwJ4Mniprm0Hj10GJCOGy6knq/m0B5YKb2Obn7D2+AIsCf
	RRThJXZrI78F9Ct2mTSAlcqzta98ksK+knqiJ152HWi4idd5gm4P5CFbmt6gsE8aNzNc
	d/xip0on82OfIAHmWIfzRc3bhYk+1lx5WqpGnJQ8netkw1PSJwSxF4Ajz+tjKx0BIZz0
	GvHwYQvh7Bv6YrOnqHujfPPeJsxv0q0BZRQ8y2JyfimlbOfO3qpfR2ELKkIHGK0Jkkrq
	Nh0BwlUxXMY5TdBuPiv9NAkrik2zJ11TV9kxNZyMhXfOlS8R1T8aHfS1Z/fU6QwRsebu
	3E2w==
X-Gm-Message-State: AMCzsaWvNhtXR1AJfQpckCQ4pZiU/vTwxEpbumT+axAnQ1T/zqbolrPC
	OXjM0VpkVpBIapSHYwEekPLQyLcic0cdOJf6Rs4=
X-Google-Smtp-Source: ABhQp+SrZFr/umjELOp8zS7B5gJr+fejw5/W+0gFRab2J2ys13RMSJhtS5F2Z9bcWDbcIxQqdiAy/IflLwo3h3v29QY=
X-Received: by 10.99.183.67 with SMTP id w3mr9098276pgt.329.1509405421214;
	Mon, 30 Oct 2017 16:17:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Mon, 30 Oct 2017 16:16:30 -0700 (PDT)
In-Reply-To: <CAOsp8o87Tu-jsEQts=f-kmM1mtwcMrDN0eM-Zs0w0c+iF36gFQ@mail.gmail.com>
References: <CAOsp8o87Tu-jsEQts=f-kmM1mtwcMrDN0eM-Zs0w0c+iF36gFQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 30 Oct 2017 16:16:30 -0700
Message-ID: <CAMKF1spbS2++NDZ8=mifSPP+i-TOMn1bmNQTnx+H6HdwsPkaDQ@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Using site.conf
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
X-List-Received-Date: Mon, 30 Oct 2017 23:17:02 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 27, 2017 at 11:59 AM, Michael Habibi <mikehabibi@gmail.com> wrote:
> I'm a bit confused about the usage of site.conf. I see a sample in the poky
> distro area, but I'm not sure how this actually gets copied into a site.conf
> and actually used by deployed versions of our distribution.
>
> Is there some extra step I need to take to ensure site.conf.sample from my
> own distributions conf directory gets copied and actually used by our
> engineers' environments?

yes, you need to do that as part of workspace setup.

>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

