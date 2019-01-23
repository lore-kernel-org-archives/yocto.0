Return-Path: <prvs=19196a2f2c=John.Klug@multitech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACB77E00CE4; Wed, 23 Jan 2019 11:34:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,WEIRD_PORT autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.126.90.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail2.multitech.com (spx.multitech.com [65.126.90.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C4ECE00CDF
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 11:34:51 -0800 (PST)
Received: from mail2.multitech.com (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	B5B5C5AED52_C48C1DAB; Wed, 23 Jan 2019 19:34:50 +0000 (GMT)
Received: from EXCHDBPM2.dc.multitech.prv (unknown [192.168.11.7])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(Client CN "",
	Issuer "MultiTech Systems Intermediate CA 01" (verified OK))
	by mail2.multitech.com (Sophos Email Appliance) with ESMTPS id
	D98FB5AED47_C48C1D9F; Wed, 23 Jan 2019 19:34:49 +0000 (GMT)
Received: from EXCHDBPM1.dc.multitech.prv (192.168.11.6) by
	EXCHDBPM2.dc.multitech.prv (192.168.11.7) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1034.26; Wed, 23 Jan 2019 13:34:49 -0600
Received: from EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) by
	EXCHDBPM1.dc.multitech.prv ([192.168.11.6]) with mapi id 15.01.1034.033;
	Wed, 23 Jan 2019 13:34:49 -0600
From: John Klug <John.Klug@multitech.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Thread-Topic: [yocto] Exclude kernel module from image
Thread-Index: AQHUs0h9bYmGRuIO8UiYS1DchBmobaW9mwkA//+inqU=
Date: Wed, 23 Jan 2019 19:34:49 +0000
Message-ID: <8898e248701244d9bfb1c71f510b45a3@multitech.com>
References: <a4a6a347805343858a90a67242762ab5@multitech.com>,
	<CAP71WjwmGLKryxCY-ySH4=sWDuqaXqQsX8SFBRo7iSRfSTO37g@mail.gmail.com>
In-Reply-To: <CAP71WjwmGLKryxCY-ySH4=sWDuqaXqQsX8SFBRo7iSRfSTO37g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.52.122]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=multitech.com;
	h=from:to:cc:subject:date:message-id:references:in-reply-to:content-type:content-transfer-encoding:mime-version;
	s=key2; bh=hRmWMljmakks/b734Rs9XpwWwl5dEkxkr7oEZXoJCTc=;
	b=lz9nXng2A6iJITWDnYySN9ZS5gP5tnYOOKN8XzHSNGQa8GYx31eZAQu1UdSLcvu5ixyNFPHOHVklEz9VqgfRHDO34TrtHxfSJov91gqXUYUq0G1CjnXxwUUM9brAA7oLFVdE1L8k5Fvs8joJXBZ1x+wBlKzG4jYMgDfL8mYvVCc=
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Exclude kernel module from image
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
X-List-Received-Date: Wed, 23 Jan 2019 19:34:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>>
>> I would prefer not to create a list of every kernel module I wish to inc=
lude.

>right.. can't you disable these modules in the kernel recipe instead
>using some config fragment?


We would like to use the same kernel .config across multiple images, as all=
 we are changing is the removal of the modules, unless you can somehow spec=
ify which image recipe deletes certain modules in the kernel recipe.


<http://www.multitech.com/>
________________________________
________________________________
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Sent: Wednesday, January 23, 2019 1:04:48 PM
To: John Klug
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Exclude kernel module from image

On Wed, Jan 23, 2019 at 7:35 PM John Klug <John.Klug@multitech.com> wrote:
>
> I am looking for a way to create an image with an exclusion list of kerne=
l modules packages.
>
> If I use PACKAGE_EXCLUDE, I see the following:
>
>     Collected errors:
>      * calculate_dependencies_for: Cannot satisfy the following dependenc=
ies for kernel-modules:
>
> The list of modules that follows are the very kernel module packages I am=
 trying to exclude.

if you want to exclude *all* kernel modules it's simple, you can
achieve that with the following in your image recipe.

BAD_RECOMMENDATIONS =3D "kernel-modules"

This is easy because kernel-modules comes as RRECOMMENDS from
packagegroup-core-boot.. but if you exclude just some modules, then
you are breaking an RDEPENDS relationship which is a fatal error..

>
> I would prefer not to create a list of every kernel module I wish to incl=
ude.

right.. can't you disable these modules in the kernel recipe instead
using some config fragment?

>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> http://mail2.multitech.com:32224/?dmVyPTEuMDAxJiY0YmM3Zjk1YTkyYTYwMjg3ND0=
1QzQ4QkFERV8xNzcwNl8xNjMxOF8yJiZlYmI5Zjc2MGY3NjAzOTQ9MTMzMyYmdXJsPWh0dHBzJT=
NBJTJGJTJGbGlzdHMlMkV5b2N0b3Byb2plY3QlMkVvcmclMkZsaXN0aW5mbyUyRnlvY3Rv

