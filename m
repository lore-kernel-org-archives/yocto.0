Return-Path: <koansoftware@gmail.com>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D062BE00843
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 07:16:36 -0800 (PST)
Received: by mail-ea0-f178.google.com with SMTP id a15so4681513eae.9
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 07:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=+lQMFa753VZOj/JsYxnDjAQ0j4G2HTzZZm5JsY9H0ls=;
	b=x9RDTb1kqd7dQKYziqBYUm5HtdqjWkwA6F8EFGg40XtyrMePWzylGCXNQatynEW7NC
	c4suKFaMCsMwV78w2Nyr02EQ/dDbtURlEueoSskA3Cnai27JF4+OQylNSIXJg2wV5HKj
	QzrNL/GSQXJhnyGF4pbvmySZuaNx4hpzaQ7PRAx+8CsE+cYV8HkAFPLbC4vA7PtxuWm6
	DKHO0SwuJ+D0pImP5CZbL7IGqAl1p7dCAusexH4XZq5uRwSjf4ATUeA7briraVtpDFAX
	8NAsgX2gdwWbXfnFo+W3lNfqvBBgV5iFvnLISj3MbIacbNOC2ths6CwEXmuyD7VsY81M
	nH3Q==
X-Received: by 10.14.100.8 with SMTP id y8mr21271168eef.29.1393859795404;
	Mon, 03 Mar 2014 07:16:35 -0800 (PST)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPSA id y51sm50985375eeu.0.2014.03.03.07.16.33
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Mar 2014 07:16:34 -0800 (PST)
Message-ID: <53149CCF.70501@gmail.com>
Date: Mon, 03 Mar 2014 16:16:31 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAD78y+6bm_gdoQtU6RP9xHp_ASPD-r8SWU7Sg55SvtouzurvhQ@mail.gmail.com>	<531094E5.2050906@gmail.com>	<CAD78y+4iSnpT8itgc+qB74B+FrDWvHOYf9kpkNu5kGhGAVf+Tw@mail.gmail.com>	<5310A4ED.2050903@gmail.com>
	<CAD78y+4wpUVEtNe=fZJ8p_sJTvpc4q1sKTLsdj2e-BfWOAV5BQ@mail.gmail.com>
In-Reply-To: <CAD78y+4wpUVEtNe=fZJ8p_sJTvpc4q1sKTLsdj2e-BfWOAV5BQ@mail.gmail.com>
Subject: Re: Build qemuarm compatible with freescale i.MX6
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Mar 2014 15:16:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Il 03/03/2014 10:09, Federico Vitali ha scritto:
> Thank you Marco! What is the best pratice for application developement
> purposed?
> Should I use a qemuarm arch or a qemux86 is better for performance
> reasons debugging
> on a x86_64 machine?
>
> Thank you again
>


IMHO
Depends on what is you goal.

Just my 2 cents

-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com


