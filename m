Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F280E0091D; Mon,  1 Dec 2014 02:43:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f45.google.com (mail-yh0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B56E2E0084A
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 02:43:45 -0800 (PST)
Received: by mail-yh0-f45.google.com with SMTP id f10so4680925yha.4
	for <yocto@yoctoproject.org>; Mon, 01 Dec 2014 02:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=qJj82ZawmM4z0MFtNpsKZWcWr6TSSdwCa2G+s+4t+5M=;
	b=roFJO14Te+8PnXmBaaELKyaPc/+ZLHssv6Bdya9O/0+IOrCaKVflbGNm70u39JHjTL
	C1cEqu2iI90ie1q+mjv0Byp5LRTpwOfvXTczCSmLd3F3gMdLoFGs5WaXLSvHJ3ev71MC
	YC83ASr3CAQJSChtsQW5gZJg28ycXCXUghOrQEMWsu2MlcGt+95skVZTZCxwqanLRCYd
	I5xU2w5IY7aweQwkz7CTprHd4TOJTUHPx7TREQULELM1BUfR0hLGc096X3dYJymmwi0k
	ougWnsI+EugXIO6GCOnGSoAwE9kMjWJCgTdFH+dd9IqeyCjndQJJi5m6HGkMUW1qxPEx
	CoOw==
MIME-Version: 1.0
X-Received: by 10.236.15.9 with SMTP id e9mr40080389yhe.37.1417430625510; Mon,
	01 Dec 2014 02:43:45 -0800 (PST)
Sender: otavio.salvador@gmail.com
Received: by 10.170.142.132 with HTTP; Mon, 1 Dec 2014 02:43:45 -0800 (PST)
In-Reply-To: <1859515.Hd60QW1tn7@peggleto-mobl5.ger.corp.intel.com>
References: <1859515.Hd60QW1tn7@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 1 Dec 2014 08:43:45 -0200
X-Google-Sender-Auth: oCdvlaynt2xPavn6WxaYC4gLKWY
Message-ID: <CAP9ODKq=OThfe-EO3Xfh0HXSmFyF9M-7OSyqVx6mMGUNZy76+g@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [oe] meta-java layer maintainership - help wanted
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
X-List-Received-Date: Mon, 01 Dec 2014 10:43:51 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 1, 2014 at 8:16 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Henning would like some folks to help him maintain the meta-java layer, which
> contains OpenJDK and other open source Java-related components.
>
> An ideal candidate maintainer would:
>  * Have an interest in maintaining the Java-related recipes in the layer
>  * Be willing to review and merge patches from the community
>
> If you'd like to help out here (and responsibility can be shared by more than
> one person, it doesn't just have to be one) then please reply here or in
> private and I'll arrange for you to get access to the repository.

We offered help at O.S. Systems already (even to host a build job for
test purposes), so I am offering help again :)

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

