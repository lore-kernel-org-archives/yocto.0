Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEBCEE0129D
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 11:31:38 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha11so2426301vcb.7
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 11:31:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=IcnZ2nCrwlpY96bor9I2ErtGA3TvSMaGmLogb5RRamg=;
	b=eBCeBJT7VanhpP4bDUyLrK0mcZkzH8PDGdFWLe9058KMptIwVdL974TNSniRnG1007
	CUhmU/wPluuJtTFav5tPD5ku7vOXq18lt5QmvGGnrCK4jfgM85dJSCmanSYQgubIQfUG
	ZBzMM/ZY/SfnOzt8wQ5XCtbbC5AQPsglETTYMc7uDKiyuh561tc0Qqt6A45stRKk5ufZ
	zDKlzuit2E1PASg8JVh9LasuR115lG9PDnSgzy8zn3ceWLIM2hG2S8QiswOxx/4B7Y8Q
	6euh+db6UTWqm2qku8pNAt0XoAlSc41GCPItUemK5k2dpVg5mg9Byxr6/w0RGZUpVBYD
	Jweg==
X-Received: by 10.220.96.76 with SMTP id g12mr6132219vcn.53.1369333898248;
	Thu, 23 May 2013 11:31:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Thu, 23 May 2013 11:31:17 -0700 (PDT)
In-Reply-To: <CAFyqS9oQmWmcZLBxYW=bYtsQMo70XzdWpP6vTme_BHkXSRtLyA@mail.gmail.com>
References: <CAFyqS9r0yUn_dNT0PH9WgFp2pyOs3M+bNdQ=YnPAa8u8fbkFzw@mail.gmail.com>
	<CAJTo0LYOqeHywd4zftCoccUpnvcB3kDA-TLtgjknkkAZh_Ec4Q@mail.gmail.com>
	<CAFyqS9oLLmdB6_qJzTuXhZ8MyhUctUXaMttSAm5LNm0RHtq-ww@mail.gmail.com>
	<CAJTo0Lbv6RmRN-dO_BRNmSRN49x5Pz8RqXOGf=kB5KcVz0MpyQ@mail.gmail.com>
	<CAFyqS9qtnGX03cD-1OmfiJEVkT0MhCuAW-=XPGRRcnCD9VorFQ@mail.gmail.com>
	<CAFyqS9oQmWmcZLBxYW=bYtsQMo70XzdWpP6vTme_BHkXSRtLyA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 May 2013 19:31:17 +0100
Message-ID: <CAJTo0LaSR_nvvkbFtTwoDgd1xcYY5fN08yoFXe4Y15_0_h_OBA@mail.gmail.com>
To: =?UTF-8?Q?Hans_Beck=C3=A9rus?= <hans.beckerus@gmail.com>
X-Gm-Message-State: ALoCoQkLEgUgrRcJbpIfoEnhQyoUWaaS1eKfAAYqFu6TWNpmvA6eQVblP0wFKTgaByjFxFsHJuFD
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .rpm packaging weirdness of dynamic libraries
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
X-List-Received-Date: Thu, 23 May 2013 18:31:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 23 May 2013 18:16, Hans Beck=C3=A9rus <hans.beckerus@gmail.com> wrote:
> Hmm. I tried the FILES trick, but either I am doing something wrong or
> FILES does not really affect whats getting into the .rpm? This is what
> I tried in our recipe
>
> FILES_${PN} +=3D " ${exec_prefix}/usr/lib/libelinx.so"
> FILES_${PN} +=3D " ${exec_prefix}/usr/lib/libepmq.so"

Use ${libdir} instead of exec_prefix/usr/lib, and I guess the default
FILES_${PN}-dev is taking the files first.  Try setting that to "".

Ross

