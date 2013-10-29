Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D5D0E0175D
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 20:57:27 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id qd12so12673483ieb.19
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 20:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=YStgxIsZE4duRR1+AUfBsO/6OWbcIINZOJT1Jd9X7EQ=;
	b=CvY3ngwwUPuA6wzfjwsMEXp++E7HMT460iVAKqqKKMMQQM7LWsuH2LF9/HbpZoOiqn
	iSf+qD10lMVlI/uHplM8HtsLYQrPrEyuIEAP1bugveHcLHZYPgZY+HrhafABb+NI6sgX
	TcaL/MbzVeAQyw3l/J/cRSGXSNwanfyhCraK4+LS2r7+kKNQXf1tDQePje8YPze+wXnH
	YDyptkgTjpozXizt6pfJNNbWxlwhepVb/yca5nhpwdJVSptw+eHibZLNChsq9g1lHjh7
	wtkvaOx027+B+KIyFlFIWnl7cOuifyeGpd5FxNWNGPJwq6LvToZFEEOiEzvq0Di93Q5O
	aBLA==
X-Received: by 10.50.26.36 with SMTP id i4mr10913818igg.33.1383019046539; Mon,
	28 Oct 2013 20:57:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Mon, 28 Oct 2013 20:56:56 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1310221715150.4934@oneiric>
References: <alpine.DEB.2.02.1310221715150.4934@oneiric>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Oct 2013 20:56:56 -0700
Message-ID: <CAMKF1spgWC4Rx9Tk3TPFs6OfEbrOkcq-R7FR-gqsJ=3xJFBheg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: what's the rule on specifying layer dependencies?
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
X-List-Received-Date: Tue, 29 Oct 2013 03:57:29 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 22, 2013 at 5:17 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   long story short, we have this:
>
> ./meta-openembedded/meta-oe/recipes-core/jpeg/libjpeg-turbo_svn.bb
> ./meta-arago/meta-arago-extras/recipes-core/jpeg/libjpeg-turbo_svn.bbappend
>
> however, the meta-arago-extras layer is not defined to depend on
> meta-openembedded. should it?

Well meta-arago-extras README says

URI: git://git.openembedded.org/meta-openembedded
branch: dylan
revision: HEAD
layers: meta-oe, toolchain-layers, meta-networking


>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

