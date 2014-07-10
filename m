Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9949BE0059F; Thu, 10 Jul 2014 06:59:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.219.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36220E00571
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 06:59:04 -0700 (PDT)
Received: by mail-oa0-f43.google.com with SMTP id o6so9929019oag.2
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 06:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=osD8UULQTZ7JSlkLbRcNSJ0t9gb3/7vtEQ8vzlY6QtY=;
	b=eZp3D2Gnz0GSvKfbDUmHz9e99GmTtq4KQ5ljp+wm+czDCMlr2SnzHV99zr7IjYgnG8
	xARkF9KgQh3bbYtP3KhsjwpkEmKLITYpeL0Lrvuj2eUCbQiscdsZkQ6d//sksuOWLyNt
	nrC49DD5CiQEvAGc1ESS7UiWpgI3kb3WHozlBx35KAL6UY3ETAOknQpP5NE0IQlJkH+I
	D3nsIRxZ9nxCB2marPZ7bE1lMZdVKEGJ6B4FXuGOWcBqt2DGWPTgs6Y1nt14M9oYDmZm
	46noXIbTRsE6NZiZeBsCNo/DACyMYgrZ7kausPmS5FMRd8Z7ztCfYQmY9aOEofJejGPi
	/BUQ==
X-Gm-Message-State: ALoCoQnrQdr2FsVvBA5DGjw/jhqyuRQUBeVhE3HlYRQ9GhqLW4Nyx9K1LNGNOxQgvUJ7sTXPlAdI
X-Received: by 10.182.250.196 with SMTP id ze4mr55148081obc.46.1405000743490; 
	Thu, 10 Jul 2014 06:59:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Thu, 10 Jul 2014 06:58:43 -0700 (PDT)
In-Reply-To: <CAO-21LM7hApyatcYRqxgw9qAcG1zreQWnYjtUYabJfOfRfMM3A@mail.gmail.com>
References: <CAO-21LPnS-BJyZw-SEiSveK5sP=sZaDnMRd9PHVVe5WG6NQG_A@mail.gmail.com>
	<CAP71Wjw6FZ94P3c8jT+sqgqwKvvjF6ko6PGM9AP3Mo4NTpxQRg@mail.gmail.com>
	<CAO-21LM7hApyatcYRqxgw9qAcG1zreQWnYjtUYabJfOfRfMM3A@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 10 Jul 2014 15:58:43 +0200
Message-ID: <CAP71WjyovtW_yj4ckYXbAFKEc6FtiKwG1uOa9fKbvcmrtuGAeQ@mail.gmail.com>
To: "Allen Kennedy Jr." <allen@kennedystuff.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Environment Variables being unset by bitbake?
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
X-List-Received-Date: Thu, 10 Jul 2014 13:59:09 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 10, 2014 at 3:46 PM, Allen Kennedy Jr.
<allen@kennedystuff.com> wrote:
> All with no joy.  I did a bit of google-fu and came up with this one:
> on the command line: BB_ENV_EXTRAWHITE="JAVA_HOME" bitbake myRecipe

the manual says "You must set this variable in the external
environment in order for it to work.", so you really need to set it
before calling bitbake, not in the recipe.

>
> Which almost works, but not really.  my bbnote in my recipe exclaims: NOTE:
> java is here: /usr/local/java/jdk
> which is right, but then in the shell script that gets called after that,
> the first lines are:
> if [ -z "$JAVA_HOME" ]; then
>     echo "JAVA_HOME is not set"
>     exit 1
> fi
>
> Which turns out the error that JAVA_HOME is not set.
>
> again, this shell script works perfectly fine outside of the bitbake system.

you need to explicitely export the bitbake variable for the shell. in
your recipe:
export JAVA_HOME="${JAVA_HOME}"

