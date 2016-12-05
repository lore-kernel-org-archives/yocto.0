Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8281E00A39; Mon,  5 Dec 2016 00:58:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.169 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A725E0086E
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 00:58:37 -0800 (PST)
Received: by mail-qk0-f169.google.com with SMTP id x190so339280835qkb.0
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 00:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kZdNv4LsVIWLTmInQfsEpoWoVd9pZJogP5B+y1CJM6U=;
	b=QHgDDKYO4FrEP5n/SPfSZvZR1MIaEceohJodAHnuJakGfkRm4lTKAmwQQdN69zNI9d
	YYrEP1mvpJYBFLVNrIVBe9LLHOALN0mbEvVoJ4/FEIdZiuGhQP36LHhh7T0+4FsKLPnM
	YLJnpslZtioQtMNm2xlYkDwMiJM3wksuB3c94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kZdNv4LsVIWLTmInQfsEpoWoVd9pZJogP5B+y1CJM6U=;
	b=ASwpbB3aoNkx+Y3OrMtUrNqF0FTZw5ycVDA/yTRRTHl8bL+boUK3XY4irR5fblmIls
	ALSzH2O5qFs220UrNZr+Zu+Kk0RCkJDP2ym8nTfi7C2yUojMaOzyRjJkYYgl9PQZLnrj
	klihr/72zC9pDnrXibXj4Txy5hwS1Lp5/uedNdsojbxhsfjdBe4uc7G+VEYbPtqbEEE3
	fw4xx+Peb9gGvzGhjyiPrdHjWEdRD2bdA5bSye1mM3WNzcWJWY5OG2Qp+2X3ScmKdb7p
	4ORHvg78goUkquIMeOcSdDF8DHGrpQevalnv5gwGWnva1nSGrC6k4sG/DtW9brIF/cvV
	Slzw==
X-Gm-Message-State: AKaTC00SrV8SmQRH3I0sZ9LoJv5ODciymzwyonTl/thpABS8IpXnOVUEHWl9NAKz5LiKNu2zavfHP6udo3/nZ0B1
X-Received: by 10.55.200.75 with SMTP id c72mr54907016qkj.169.1480928317037;
	Mon, 05 Dec 2016 00:58:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.19.72 with HTTP; Mon, 5 Dec 2016 00:58:16 -0800 (PST)
In-Reply-To: <CAJO0J4iCk-Zw6xLf4zu7u_aGT5n9b=wctO17tQnRhiTD0k8nGg@mail.gmail.com>
References: <CAJO0J4i-G+PxwaSqZzx0ovj2g-ZMR=Uy9RSnk2b=oji1sTX5gw@mail.gmail.com>
	<CAP71Wjw+L1C+5XrOYSMgHoCKnVu84uqf-s=ueUTEpZ=y0B9+Hg@mail.gmail.com>
	<CAJO0J4iCk-Zw6xLf4zu7u_aGT5n9b=wctO17tQnRhiTD0k8nGg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 5 Dec 2016 09:58:16 +0100
Message-ID: <CAP71WjxnZhor7seO+O0=t+n=iCLMONx8midCikPgBmBzuHcVxw@mail.gmail.com>
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
X-List-Received-Date: Mon, 05 Dec 2016 08:58:38 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 5, 2016 at 9:54 AM, Paulo Neves <ptsneves@gmail.com> wrote:
> The files form this other package are mostly binaries in a directory
> structure. I have to create an additional package which works with the
> other package's(the dependency) installed directory structure.
> Also you hinted at something I didn't know before, which was that
> packages need to be additionally exported to the sysroot and this was
> typically done through the -dev package. Can you point me at where
> this is documented? I am having a huge difficulty trying to find these
> conventions in the manual or by googling.


are the binaries "native" binaries (eg. that are intended to run on
the host PC) or target binaries (libraries) that would want to link
against to build your new package?

