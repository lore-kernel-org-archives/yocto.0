Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76FECE00C71; Thu, 14 Feb 2019 15:06:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (max.oss.09[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.45 listed in list.dnswl.org]
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03CE0E00BB7
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 15:06:27 -0800 (PST)
Received: by mail-ed1-f45.google.com with SMTP id b20so6442083edw.11
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 15:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=8RcIAvfyVklNLRvCiMUlKSAsIjo73LAwhtsJLmMP6gI=;
	b=O2u9VEBB02FIYL/TYQpjw4l/xPGMYubQR8hoihOPR+ibrRiFaPnHmQna+g8HRSfVBr
	fJfCi9l/URj6mC0lXvHafEW4Sb6zurt6udE30fdoRRrOxjoxIZEZZ9TfNksm9++7wZv9
	2T2pL5RdYHp9HZEAKYI6k8ny0MLS1li2m7SJah7Ztg3T4GLDqos8xVHqpoWXt/0d6OcG
	b23/NuxzESKFqzE5G9KGKzpGSPjogyyEo+UXnx8b0wiS79meXGzxukA5tW3bI7LvYqI2
	l63kev9CZ2hZzlH1NhjVhrJr8iUYsuboOqaYdpYbfY0hLp+xeH94LHbBD3Qw5LIYce1q
	S64g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=8RcIAvfyVklNLRvCiMUlKSAsIjo73LAwhtsJLmMP6gI=;
	b=oI2kkOxXPlFnpBjvIq4oUeJGKIV9GWzDemr6VsK3m6ANyaZWwMxIl/GfzYpEQoq6bb
	MEBQbbYVkbKNe/NE43OuDUlyjGpsV8XRGBmU6kiKuwfanLynJE22yFwzUvol7Anw4QnU
	sJzyWmo/r86Jtp4eOPLYoFp0wWRfINJnFTEZ7O3xjtVnvfacMwCbovpYBqMyY3DNGGc7
	JWGq6zsnOuJqsHkPBobxrs5BGZU+4ApZG245fqeRulIa7EHu+Gn0kUtIt/GnNEqfD8E7
	QeCcJAQTesV6uKSe13MgEWtyrnoZAWN6os0W3hCMoi/O+GjH0vcMxLgQ+1Qht6TViwaH
	kfZA==
X-Gm-Message-State: AHQUAubw9WyZ8YlpaWY0cjMSViGkV6azjohSqAoMe9KGOf12uDtFYNHQ
	lIffRODEFIrZIVF4Jzu8hcs=
X-Google-Smtp-Source: AHgI3Ibw4iBtqRMXwkXpP8DA0I5UqiV92mQXg8Evwm8PjyDCTYX1KoUXKCrsGLM9GKplYtUjwJQryQ==
X-Received: by 2002:a05:6402:1295:: with SMTP id
	w21mr4964797edv.293.1550185587155; 
	Thu, 14 Feb 2019 15:06:27 -0800 (PST)
Received: from Saturn.local.all ([194.191.255.80])
	by smtp.gmail.com with ESMTPSA id
	z60sm1014267ede.82.2019.02.14.15.06.24
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 14 Feb 2019 15:06:25 -0800 (PST)
Message-ID: <1550185584.8199.2.camel@gmail.com>
From: Max Krummenacher <max.oss.09@gmail.com>
To: Chuck Wolber <chuckwolber@gmail.com>, Leonardo Jose Duarte MendesJunior
	<leodmendesjr@gmail.com>
Date: Fri, 15 Feb 2019 00:06:24 +0100
In-Reply-To: <CAB=6tBQ_dM=wv9ML_capz3qSp7Zn-1s71A3DtCQbM6PmEoUCMA@mail.gmail.com>
References: <CAA3Hs=ffrGTgWXBkzi0FQejoaFaWp+LSqgr=Q8_ZMnJLpi-LHw@mail.gmail.com>
	<CAB=6tBQ_dM=wv9ML_capz3qSp7Zn-1s71A3DtCQbM6PmEoUCMA@mail.gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: icecast
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
X-List-Received-Date: Thu, 14 Feb 2019 23:06:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi

Have a look here:
http://www.toradex.com/community/answers/33369/view.html

Max
Am Donnerstag, den 14.02.2019, 12:35 -0800 schrieb Chuck Wolber:
> You have to refactor xslt-config out of the autotools macros and use
> pkg-config instead.
> 
> This recipe is an example:
> 
> meta/recipes-devtools/swig/swig/0001-configure-use-pkg-config
> -for-pcre-detection.patch
> 
> ..Ch:W..
> 
> On Thu, Feb 14, 2019 at 05:57 Leonardo Jose Duarte MendesJunior <
> leodmendesjr@gmail.com> wrote:
> 
> > I'm trying to compile the package icecast. The package icecast is old. The
> > package depends on xslt.
> > When I compile this package, I had the issue with xslt.
> > How to use pkgconfig if the own source code use him ?
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> > 

