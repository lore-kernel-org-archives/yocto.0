Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09F21E0086B; Mon, 22 Sep 2014 04:45:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0F85E00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 04:45:47 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id e89so2232217qgf.12
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 04:45:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=J1dKX/OAnclAUyZ/DYYzMDqiWzz473W7g56JH4PlTIo=;
	b=eDVINe3gW8MjNvwp4VyKtznhLtM4Wpwx5oXfIR+8KRK4ovLcMKzJO+2aDV/IRcuGcG
	984q0dZEJu2TunIJSBL9Tf1FhouaPWNAsx9a/vxk1mHfEWvVTVQCUzcyMz8ZVBmqwnS0
	DLQwwwq/sRwvfjTSzNWmGd1NNhrxB/BK9STqr4y5MYDRGB0HUc7TPsJOucGBJD40JjQF
	XgHRuuFp6rt21ivk3CMCBBO8NJj+bW6afNyxKGsWGILXrzZ5RU+FxeuunW5pp9zOieDz
	rBtqzCBFHg7cVwTY50In40WHAs08UqOGlkTYuPBjhj+CipvKrpECXc3ZDjSoGJvvZemM
	kO3Q==
X-Gm-Message-State: ALoCoQnrsELwmY/47ztGhvxav+qioA/mxfqESyRwhY7Mu/b6wX4/E0CK5WwNbMtVD0jqzxEb0R2t
X-Received: by 10.224.79.139 with SMTP id p11mr2056826qak.93.1411386346929;
	Mon, 22 Sep 2014 04:45:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 22 Sep 2014 04:45:26 -0700 (PDT)
In-Reply-To: <CAJrRHk4pjaLTwO8ggUoQKs4ALVY565rU2SvcTyAYsSmm=jHvTQ@mail.gmail.com>
References: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
	<CAJTo0LZFP0i+LSYdE35cDNS3ZN4GEkFinoyQ6bTEA0E8gLvnFQ@mail.gmail.com>
	<CAJrRHk4pjaLTwO8ggUoQKs4ALVY565rU2SvcTyAYsSmm=jHvTQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Sep 2014 12:45:26 +0100
Message-ID: <CAJTo0LZVPdNsbrnqgSfdarqi0bjiJDNOAmb5wgvRhOOy7qkYyg@mail.gmail.com>
To: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES nativesdk-krb5
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
X-List-Received-Date: Mon, 22 Sep 2014 11:45:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 22 September 2014 12:41, Joseph Andrew de la Pe=C3=B1a
<jdelapena@lexmark.com> wrote:
> What poky version are you referring to? I'm using dora poky HEAD. Haven't
> seen any krb5 recipe.
> Please enlighten me.

Well krb5 is in meta-oe/meta-connectivity.  But the point is that
something is adding a dependency to curl for krb5, and as far as I
can't tell it's not oe-core or meta-connectivity.  Using bitbake -e
will tell you where it came from.

Ross

