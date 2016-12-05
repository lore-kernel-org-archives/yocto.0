Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16817E00A1A; Mon,  5 Dec 2016 00:54:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE18FE0086E
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 00:54:41 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id a197so85954236wmd.0
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 00:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XMRuH9+B5iJNA6lZ6x7Qr1Vq8tFf+crVTb+Lrf94bKw=;
	b=GNcbp+6HnOmWvXtwBc1eKxZuRH9532wf0OgojFYrA2wuIqgLbjBLEw1M1UayPncaj/
	75k4pe8rseNDXdYLV/mRywCvtfso9ctTxaiXkG5tZpPYyLPzTM+2DXZLKYNHVM0eRwlW
	AOfmy5cp1TvNiK3/aw4mHodDaOupppHJarFGULNG/UCdR2q1QYM6LuDFWZ6vvUd8+qtC
	/Gv3aIo3Jg2QsuuDhdR3WjDps6OSOKKU0EkaIzD9qzQnG2s+EQNsUGrBEthjCWt5Fg7A
	dqJpPMCv7Y4U4o8e/7avCES9MFBKsCqO4JX602+ZITxlJiw+EsbOL25IBt4WF226iVP7
	QMqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XMRuH9+B5iJNA6lZ6x7Qr1Vq8tFf+crVTb+Lrf94bKw=;
	b=h6NZD/XpzXg8iqAhdy5TQk6j9kXUxnLWluivTP4Qg60+5jtGjmh6c/i9ucBW03e2Cm
	6gx6AnQ7xtVyMlo8t6wu47+9U9ynQtTPeOd8Q46uf7F/aNz4mE5Xi3UPoo3l5eF+fkQq
	1D4OoCEXqmITvhwZfGaqKuxhkLEQFV403Kv5p6MJ8MguTCO5k/quoM4/2XXG61iWGe6A
	13SApKrmE0cHgFFA0aKs93uyxFhpKNV1QOIfPMwJyskULRa+zV1LEA7qrndzPXUXwYwk
	lrbS8M+8x2mxW0c1Iw3+z8JMk3qVv1xb92z5HPKIv8Pw0B/yan5q6OLQ/cm/r+/vSKTG
	4LAQ==
X-Gm-Message-State: AKaTC00CeaqswTxrHojic1V7oHhVHJg8Qf9Xx/1EvWLGZk+ua0bDbkuS2hCldawqQcvKaG0Gh5j/fZoz7BICzw==
X-Received: by 10.46.76.1 with SMTP id z1mr3790038lja.41.1480928080215; Mon,
	05 Dec 2016 00:54:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.19.164 with HTTP; Mon, 5 Dec 2016 00:54:39 -0800 (PST)
In-Reply-To: <CAP71Wjw+L1C+5XrOYSMgHoCKnVu84uqf-s=ueUTEpZ=y0B9+Hg@mail.gmail.com>
References: <CAJO0J4i-G+PxwaSqZzx0ovj2g-ZMR=Uy9RSnk2b=oji1sTX5gw@mail.gmail.com>
	<CAP71Wjw+L1C+5XrOYSMgHoCKnVu84uqf-s=ueUTEpZ=y0B9+Hg@mail.gmail.com>
From: Paulo Neves <ptsneves@gmail.com>
Date: Mon, 5 Dec 2016 08:54:39 +0000
Message-ID: <CAJO0J4iCk-Zw6xLf4zu7u_aGT5n9b=wctO17tQnRhiTD0k8nGg@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
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
X-List-Received-Date: Mon, 05 Dec 2016 08:54:45 -0000
Content-Type: text/plain; charset=UTF-8

Hi Nicolas,

The files form this other package are mostly binaries in a directory
structure. I have to create an additional package which works with the
other package's(the dependency) installed directory structure.
Also you hinted at something I didn't know before, which was that
packages need to be additionally exported to the sysroot and this was
typically done through the -dev package. Can you point me at where
this is documented? I am having a huge difficulty trying to find these
conventions in the manual or by googling.

Thanks
Paulo Neves

On Mon, Dec 5, 2016 at 8:42 AM, Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
> On Mon, Dec 5, 2016 at 7:59 AM, Paulo Neves <ptsneves@gmail.com> wrote:
>> I have a recipe which depends on another package's file to do it's
>> job. How can I arbitrarily access a file from another package which my
>> recipe depends on?
>>
>> I searched for this kind of problem but did not find it
>
> you can't access (reliably) temporary files from another package. Each
> package is built independently in their own 'sandbox'. If files from
> one package are needed for other packages they need to be exported in
> the sysroot (through the -dev package typically).
>
> you don't say much about what 'files' you need, but if you need source
> code to recompile them into another package, you might need to fetch
> the source code directly.

