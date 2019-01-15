Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 435BFE00BED; Tue, 15 Jan 2019 12:16:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f173.google.com (mail-it1-f173.google.com
	[209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1881AE00872
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 12:16:23 -0800 (PST)
Received: by mail-it1-f173.google.com with SMTP id h193so6205760ita.5
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 12:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3SF65czr92ctm3subWxOgiNSDIzv6d1Yir0pu2Jzdgk=;
	b=REguBH7BATafdaMWWziZKU3XG0FSwZMwoawB6uPX369w+ysgST/lX6JJM2OZLu1upy
	MOevGUUrrDR5Ei6FXwfw723lK836aMpjWn1LLksVLCxnqw01frdGpwl6/42pLPAy8dKj
	uAP3akt8eFx7GH+v+HQTE8MtP4poebRkqzkENRQpsuF+UKGsl5CXxCRmIuyEWet3mVnn
	amWr65Y8pMgWJbZistwXu5dNC9hXsD7qW5+rV7NvcaZBuSxL1Hm+A1fg+XyaCMveUiRY
	Ey7Li/+DY/Td/o+qvwINRkbEd9IyNoLXvM3mNmUzRWtb6VrypYuJAEucireuv1T9er4d
	5RTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3SF65czr92ctm3subWxOgiNSDIzv6d1Yir0pu2Jzdgk=;
	b=AmX6VZRtLCCz0ASX8K47UdJUaSeq9b7XWMsALBa2CXOW/4CGtsv0h6PtjbJ/hsO2hf
	/K01pL8PEpHewrTvnYxA07KIJceYRFAaU18TrEjLj4wIuDzeRHKXP3idBAj0QXlGN7tb
	OC+AMyj6mYXmr6MGBjDfOiSsfMf/+Ppyg+dxbE8aChNpVtC6qJOFe3SOWIEXWX19o7Rs
	B8vXO4pstfocs6VRWzIN8HpS83gYfF6CDl/zzpS9yXxRGmvv91UI7KK10YE0n67uB72v
	+sU8yKZ75uYsqVuUDxkIUBPsiEuzxJ8W8h/OCNm21nZYn2/axryDY2zWbzOQmKAF3paM
	QyTA==
X-Gm-Message-State: AJcUukfiB4+0QuCrmV/PBBwk1Denl5Vdlg7IRO5Z/TSGT1/iDs3BPhoA
	JHvEfTi7fz2eSsatdCVa4jSMgxArStvQaPtgqWMNxInX
X-Google-Smtp-Source: ALg8bN74l57td/0/mJH45dypVQVzd9Bz4WVxVcPyLOGOr5sV0Z9zYZ0+PgP8naE5Zr64xbXZOq/lwPKv5Nyqg1FcPus=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr3289311jal.31.1547583383058; 
	Tue, 15 Jan 2019 12:16:23 -0800 (PST)
MIME-Version: 1.0
References: <CAEu+n+LWYU37CyrBFJyHPZotfJWJA6dPGa26u2MoCdxQEHFWFQ@mail.gmail.com>
In-Reply-To: <CAEu+n+LWYU37CyrBFJyHPZotfJWJA6dPGa26u2MoCdxQEHFWFQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Jan 2019 20:16:12 +0000
Message-ID: <CAJTo0LbofBKdjv22-zOAfyF0qnbS-3yd65cAU-2Qk+0WcfPDjw@mail.gmail.com>
To: Dominik Schnitzer <dominik.schnitzer@daqri.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Updated meta-darwin, OSX Toolchain
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
X-List-Received-Date: Tue, 15 Jan 2019 20:16:25 -0000
Content-Type: text/plain; charset="UTF-8"

There is definitely interest, please submit your patches to the list.
  Send enough quality patches and you could become the official
maintainer, as meta-darwin is currently missing one (which is why it
bitrotted).

Ross

On Tue, 15 Jan 2019 at 20:09, Dominik Schnitzer
<dominik.schnitzer@daqri.com> wrote:
>
> Hi All,
>
> The current meta-darwin layer is outdated and cannot be used with the current Yocto releases.
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-darwin/log/
>
> I have created a working layer for OSX toolchain support in the repository liked below. It is based upon the original layer, but most recipes needed to be adjusted. We are using it with the latest Sumo release. I have not tested it with Thud yet.
>
> https://bitbucket.org/dominikschnitzer/meta-darwin/
>
> If there is interest in upsteaming these changes, I am happy to either provide patches/work on the meta-darwin repo itself or just continue working on the bitbucket git repo.
>
> BR,
> Dominik
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

