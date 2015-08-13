Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23789E00A3C; Thu, 13 Aug 2015 10:36:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBA73E007AE
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 10:36:50 -0700 (PDT)
Received: by iodv127 with SMTP id v127so43832292iod.3
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 10:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=T9Fno9DvSLdAkZLMpCor/e51vzziYDgPZ1IHajF89OQ=;
	b=moX+zLIQ2Q1F6J5Q1vopjCrI09q8qVgwN4gOlW/1LTJzhUehUjDm3bTC8HsghJ+XQY
	FvVYR6wXGlN/hBEPXk/FUzd3EOoS4AVZqRMz4YJLpmvqKWBTDNfNSauMXjUxQYYOVfdc
	vB3hVlaKkrSqMSOHWiQh/gYzj1L4PtLFLFKytYo4TBfXf8vD4GBkz+5EJU0mlv9jhkE6
	YJ8fXDtxeXN2JReSBbQyFRSbjWG3M+zkvG9JUO7vMapVYSJ0wOgIKe6QC8jf8H97//o+
	rA7WmWdvj1OSB4ZNPdoddSsYb2URjHb8X30iyq+y/FO7jhdbQT3eq3MP5NwYm0mGlufv
	ATYQ==
X-Received: by 10.107.14.203 with SMTP id 194mr44763314ioo.195.1439487410358; 
	Thu, 13 Aug 2015 10:36:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Thu, 13 Aug 2015 10:36:20 -0700 (PDT)
In-Reply-To: <CABc_YGCV8RAVHLNc9tE8Q+ty5ys5C5X4-SvyNuw=tU+pWVh82A@mail.gmail.com>
References: <CABc_YGCV8RAVHLNc9tE8Q+ty5ys5C5X4-SvyNuw=tU+pWVh82A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Aug 2015 10:36:20 -0700
Message-ID: <CAMKF1spm-OTtD3OtfLTJbX34xk1myvK5JVu_h5sJ=53tKCX8Tw@mail.gmail.com>
To: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: overriding install in recipe for nativesdk
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
X-List-Received-Date: Thu, 13 Aug 2015 17:36:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 14, 2015 at 9:57 PM, Marcin Krzemi=C5=84ski
<mar.krzeminski@gmail.com> wrote:
> Currently in our yocto layer there is a recipe for u-boot that also produ=
ce
> mkimage binary for host,
> I would like to have mkimage in SDK. Now, there is a separate recipe in
> yocto to do that, but I am wondering is it possible in some way to overri=
de
> install function for nativesdk. Then I could use same sources for u-boot =
and
> I won't be downloading them twice.maybe there is another way that I can t=
ry?

you could use shared-workdir model like what kernel and gcc use but
maintenance of such a setup is high
it may be appealing for components with large sourcecode and multiple
recipes uboot may not be particularly suitable

