Return-Path: <todd.efflam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9295E007C9; Mon, 26 Oct 2015 13:16:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (todd.efflam[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42690E006D1
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 13:16:45 -0700 (PDT)
Received: by qgbb65 with SMTP id b65so129523844qgb.2
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 13:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pgqwy6mdzwnSsDOEf8KM3OZ5ATer3dYuUyYzaW3NyC8=;
	b=dpKGf+bArC92rUrQtpINCbYYxoOk+y/Fw23UHnyJQN7dHtmUq5+L2n6h5VH7b3i4Ao
	n9fhBmuOacA6JDBWsBbHPHr8LP4rsBkbJsKgUmzvCiSQ0m9rcI5Za0MOVP3krbhBf+Bn
	gppzWGPxiBIv1PPd4n1JQsuj5LlPSlBXK8iiKcUCNLPCRblC2JH7qlPZjU3JVbAB3QZ9
	rj0805HJhlje3end8Cp1cgaJDHMdXhyEmfbNFvXZbbcsHaEhYXWRhdVJwQMkY2KnYHFu
	/cFp/iTYrSJ91R6WpO3MPTRdrXs8odmzmX8haDXMrthaJuTJxLUffd3V8QJL3rAHsjnw
	ZbJg==
MIME-Version: 1.0
X-Received: by 10.140.217.70 with SMTP id n67mr48129204qhb.96.1445890605284;
	Mon, 26 Oct 2015 13:16:45 -0700 (PDT)
Received: by 10.55.165.1 with HTTP; Mon, 26 Oct 2015 13:16:45 -0700 (PDT)
In-Reply-To: <CAJTo0LaqsGry89MGvS=7Q9kWn1Cz9ZZ=eH9vFOG=j4mPE2CP8g@mail.gmail.com>
References: <CAHWMYyDLXYt2m3qgZd1M8y09wuz0xW==uAmDbPN_8cF9vKCZmg@mail.gmail.com>
	<CAJTo0LaqsGry89MGvS=7Q9kWn1Cz9ZZ=eH9vFOG=j4mPE2CP8g@mail.gmail.com>
Date: Mon, 26 Oct 2015 13:16:45 -0700
Message-ID: <CAHWMYyDWu5k5bK=bGLwHOxZyS18peHR2PMndou5=LGm+_PLwqg@mail.gmail.com>
From: Todd Efflam <todd.efflam@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Disabling ipv6
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
X-List-Received-Date: Mon, 26 Oct 2015 20:16:47 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 23, 2015 at 4:43 PM, Burton, Ross <ross.burton@intel.com> wrote:
> In your distro configuration either define your own DISTRO_FEATURES entirely
> from scratch, or use DISTRO_FEATURES_remove = "ipv6".

Thanks for the tip.  We tried adding this to the local.conf file but
it failed with the following error:
ERROR: Nothing PROVIDES 'glibc'
ERROR: glibc was skipped: missing required distro feature 'ipv6' (not
in DISTRO_FEATURES)

I'm guessing this is because the feature hasn't actually been added to
the build yet.  We tried instead adding it to our custom layer's
layer.conf file but got the same error.  Finally, we added it to our
core-image-minimal.bbappend file and the image compiled, however ipv6
was still present in the image.  Any idea on which file we should add
this to?  I know you said in our distro config, is that the layer.conf
file?  We've been using core-image-minimal as our base image and
appending/adding our own recipes to this.  Thanks again for your help.

Best,
Todd

