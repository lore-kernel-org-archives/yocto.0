Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C923E009A0; Fri,  2 Jun 2017 14:14:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BF26E0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 14:14:54 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id m7so14187078wmg.0
	for <yocto@yoctoproject.org>; Fri, 02 Jun 2017 14:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RmFZ2xkfphIIUHt+yC7zBqdB5ctfy9VtGhL78vg68Wc=;
	b=XkX4oDA82HF1jKqX934aLrg9NJRU3jVjA2K5rO+xjctTKlldkMKxYza6OgGmASEYJz
	/kFQnfsweZlRBBhai0isC/1iUh30MFafkDW9i1L+oE/4x4IOXGiEe2PW/Jp8vOSSgNm+
	3GLWMUhsrjtd9Z4ih6rcTbRJbZJCF1cQNB1sqX7oQ8wX/UxUeb/Etr5aL70GocM9CXG0
	A/zafoRWYGBAPwgFGg+ybqkcan2X5XghgSve+mjrTTZJNuskUvVCszvc3BcgaCKV6Eqy
	Oif451ZSLMynXknyVlx/jscSu17nw3DvQZpKw2L06wwIhLH6Ciq8xr/Lnooyick3m67l
	DxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RmFZ2xkfphIIUHt+yC7zBqdB5ctfy9VtGhL78vg68Wc=;
	b=bOxB7BBX7Crg9Szdj/fCPDi0a+50sMzkdrNZdNQZI7wfqsK6+z0QAFoHnXG1BCcyjg
	9vfpLdhog8fyfld+9fSKZ0wc+CEmTPrFrK/Fo696lqM+vXSmbglTDT1eMZI84Ht+rt65
	NBzg9pqzS72jM/Wi+wGZS52Sq10V6e9e8LurMlnKQjCsyQYPvd1enPb1FupUeuynqAmF
	mIVekV08fOBj/rO+Zjye/Zxpy6Z4Fx05zShqnVe1utcwUKEArhRkWmnBAUS3jdUEz5iY
	K5goCPN84R7iKE1pEAFGgPp9CM6AXG3VNgI6rznP97tIx+TU//RWROgLn1pYWrfxsxet
	QYZg==
X-Gm-Message-State: AODbwcCqHVIdSbRtzQ3NqDxspY8HPlvVR6bLdjWU+dYgK8cdgdbuajz2
	EGqrfNtLm5LWm+wJp8oTqvGmdMRhYw==
X-Received: by 10.80.151.29 with SMTP id c29mr7531018edb.30.1496438094032;
	Fri, 02 Jun 2017 14:14:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Fri, 2 Jun 2017 14:14:23 -0700 (PDT)
In-Reply-To: <CACgq_DpBjavUgXrG9XazuGT8a7td2EyaosQCaqjcwXxkdh5pLw@mail.gmail.com>
References: <CACgq_DpBjavUgXrG9XazuGT8a7td2EyaosQCaqjcwXxkdh5pLw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 Jun 2017 14:14:23 -0700
Message-ID: <CAMKF1sq-LT+R6HhjjaRdjkpkqsc9+7RVaz9VO7khDahH0Pzf1Q@mail.gmail.com>
To: Ian Welch <ian_welch@trimble.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: File permissions on package_ipk.bbclass
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
X-List-Received-Date: Fri, 02 Jun 2017 21:14:56 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 2, 2017 at 1:57 PM, Ian Welch <ian_welch@trimble.com> wrote:
> Hello,
>      We are using the package_ipk.bbclass to create packages for opkg that
> will be installed on our embedded hardware (target). We are also using
> Jenkins as a CI server to run bitbake. We have discovered that when we
> install packages built on Jenkins we get all kinds of file permissions
> errors after installing the ipks on our target system. I have tracked the
> issue down to bitbake being run by a user called "jenkins" on our Jenkins
> system. The permissions of the files are all "jenkins:jenkins" prior to the
> do_package task running which results in these permissions getting packaged
> into the .ipk files.
>
> Is there a way to change the ownership of the files prior to being packaged?
> I'm thinking of something like a package_ipk.bbappend file or environment
> variable?
>

pseudo should have taken care of this.
what release are you on ?

> Cheers,
>
> --
>
> Ian Welch
> Trimble Navigation
> 10368 Westmoor Drive | Westminster, CO 80021
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

