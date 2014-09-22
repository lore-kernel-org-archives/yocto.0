Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DED6E0086E; Mon, 22 Sep 2014 04:33:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9332CE00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 04:33:55 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id j107so1430678qga.14
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 04:33:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=s0woDfo2o/ahevOBCrw3RzHVLAKyrAY1wuv5xavHoic=;
	b=e6du8HQuq88flbNL/5RxaOa4rgOerumnl2YfM37pchLtD1LYZIFx7ufVmnb5Gq206D
	MTmj4iCdW7wpJCYEz51bwFGB6mL0t6xv6tjvSF1ZDuQdOU88lnLxvPLmBKO8nM1qHzA2
	M4KqkT0DfHjv/QbFkjnbXNBRQjFBwW9tlYIrKnt/mMPN5YVnJgShAGT0cIWHhz3mD3bk
	40dTxL1o7/uQxVScP5vx/yjEHeh904VCxsNcI0QJjrnipsrWMiUgPnVIRORppLzKPnOX
	xyr9Q/8CyQ6IERmQyILfHiGYr6QJGiLGeYM7qTVSW7foFitWb17uY32MHcrceWsPuSLP
	/IlA==
X-Gm-Message-State: ALoCoQnYouXgtuTOYqtyxA7ILp7lD6Xq7w3KYKVQjGG2Rx4Opg1TtCZxebWTBw73ILDUSQqVX6Na
X-Received: by 10.140.40.84 with SMTP id w78mr7906128qgw.87.1411385634983;
	Mon, 22 Sep 2014 04:33:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 22 Sep 2014 04:33:34 -0700 (PDT)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377982FDD658D@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377982FDD658D@AZ-US1EXMB03.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Sep 2014 12:33:34 +0100
Message-ID: <CAJTo0LZHQDW6ALvgvZZQ2snwd36TA5Ug6sKTnMWLyfUTq5GF1A@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Forcing fetch task when source changes
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
X-List-Received-Date: Mon, 22 Sep 2014 11:33:57 -0000
Content-Type: text/plain; charset=UTF-8

On 22 September 2014 12:25, Vuille, Martin (Martin) <vmartin@avaya.com> wrote:
> I have defined a class with a customized fetch task (that
>
> copies files from a local read-only directory to the ${S}
>
> directory).
>
>
>
> I am looking for a way to cause the fetch task to run
>
> again whenever the contents of the local directory
>
> change w.r.t. what was last fetched/copied to ${S}.

Why not just use local URIs in the SRC_URI:

SRC_URI="file:///home/foo/bar/flob.c"

Ross

