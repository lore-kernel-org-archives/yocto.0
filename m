Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F82CE00348
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 09:01:40 -0700 (PDT)
Received: by mail-ea0-f179.google.com with SMTP id b15so1152716eae.10
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 09:01:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=t/l+GJuIISSlw+1EEQPLYtiwK4/6BDz1JCEkm+YTAIo=;
	b=b63D32KHKv/J/1owXeYN+o0VBlesTt2jzXikbZv97mE34R5533peCt6cLsr6vJlomV
	ggzB0oe39zGWUhEfJXCya9bVtYFdv//o0J5HMywmA0li7pLa0STLoVcfJh2/dWl+yCje
	AzJnQ7nZii1DeisJuQEdf6oDxRn4iyg0aL6GfXKEcMm9LCL8yLF8V2Zxf2f4CShcXEDq
	M+Qnu1UQJS8gdeCN3jT+XkcCcgV3TMkQFCzKvt/RwctUzQ9vpkK5Rn3vUXBTg8a7aaNh
	ODwjTG1s8CGAlLg9FSmoRrI/2hZU8Uj2Ypo8A2hvNYvUuLN9Q/4SbgnbUOFM+NgyrzOG
	BZCg==
MIME-Version: 1.0
X-Received: by 10.15.111.135 with SMTP id cj7mr14429138eeb.144.1372435299337; 
	Fri, 28 Jun 2013 09:01:39 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Fri, 28 Jun 2013 09:01:39 -0700 (PDT)
In-Reply-To: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
Date: Fri, 28 Jun 2013 12:01:39 -0400
Message-ID: <CALmOhgmENvPECpf-L4w8q0cTmLhuvJuYeCyFjaRN6bN=XLx_-Q@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Ross Burton <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmseahphvXGqMK5WggL/z2eU1Ffo1DkalVjKZPDVTyfkqf0YYMrGmaaK6x90Aks7Y0EQfBY
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Fri, 28 Jun 2013 16:01:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

Just out of curiosity...

On 27 June 2013 06:06, Ross Burton <ross.burton@intel.com> wrote:
>  buildset-config/nightly-arm.conf     |    2 ++
>  buildset-config/nightly-fsl-arm.conf |    2 ++
>  buildset-config/nightly-fsl-ppc.conf |    2 ++
>  buildset-config/nightly-mips.conf    |    2 ++
>  buildset-config/nightly-oecore.conf  |    2 ++
>  buildset-config/nightly-ppc.conf     |    2 ++
>  buildset-config/nightly-x86-64.conf  |    2 ++
>  buildset-config/nightly-x86.conf     |    2 ++


Against which repository do these apply?

