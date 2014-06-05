Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2276AE00BE2; Wed,  4 Jun 2014 19:28:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (insop.song[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B77B2E00BDF
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 19:27:54 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id x13so336977wgg.22
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 19:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sT+uSaH/XvOcMYzXIYgmHX7w5xinaOKsXBRyytqqIMI=;
	b=UMeJAyTuiJQab9LhhGg3UwsXxqBxe+RIFJJJYbYRRRPulQw87hcWIjaeAlcQm8Uzj7
	7gL9SYVtd/DYxD5ZTk0tAGYD/aroyTAFv2CKEAYkHJNcyDr1o/bcJASSOcJwJE0ANhWl
	s6BL3mi7LRha6B+VqjBJ5qkOuwsJB/EjSEXb5NI19kV9mIDW0Y8tbtd6eP741/fybcDA
	fcDAo9esh7g91fpm1UYf5ezLpIe6FBI+kPhNEwuVG86zg0EY7BIwqrP4HuAfPA93MCUm
	Sy6Z/3jeELIejvDH2pr84rWDdmIWS3nn+ELMoQeYl7JAGXn8cjRT2zD6pQPz8ahTL4ot
	YddA==
X-Received: by 10.180.12.135 with SMTP id y7mr11051753wib.39.1401935273364;
	Wed, 04 Jun 2014 19:27:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.89.5 with HTTP; Wed, 4 Jun 2014 19:27:33 -0700 (PDT)
In-Reply-To: <CA+gsK-pQz1TeXzfbP0tMMfwdWQcHoCme4PdUM3s+vRbe3oT4EA@mail.gmail.com>
References: <CACzyEJ-WoUrc+Cvib3XHasdZPO1gk7rcyepTE1Xj5G2ndxaB+Q@mail.gmail.com>
	<CA+gsK-pQz1TeXzfbP0tMMfwdWQcHoCme4PdUM3s+vRbe3oT4EA@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Wed, 4 Jun 2014 19:27:33 -0700
Message-ID: <CACzyEJ_tfEmYhR6+p_M8xPUj+n_UYvaG+Sj1ErfAJXCXjyFZEw@mail.gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: how to specify if multiple bb files are existing
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
X-List-Received-Date: Thu, 05 Jun 2014 02:28:00 -0000
Content-Type: text/plain; charset=UTF-8

Hi Rudi,

Thank you very much for your help.
I've added PREFERRED_VERSION and started build.

Regards,

Insop

On Wed, Jun 4, 2014 at 6:37 PM, Rudolf Streif
<rstreif@linuxfoundation.org> wrote:
> Hi Insop,
>
> Technically u-boot-fw-utils_2013.01.01 should be used because it's the newer
> version. However, you can explicitly specify
>
> PREFERRED_VERSION_u-boot-fw-utils = "2013.01.01"
>
> Cheers,
> Rudi
>

