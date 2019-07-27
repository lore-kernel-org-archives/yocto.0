Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72768E00DD1; Fri, 26 Jul 2019 18:45:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E008EE00C09
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 18:45:34 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id l9so54423079qtu.6
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 18:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8qM7Hz3Vn0oYR5fjih8aBBB6mFcCfWdWbWGvrwLD3eo=;
	b=krL2uPA4H8dvIF/YHR0iuFZ3TXMAqlGJrA2BEFDvLL5vMPXvH1VIq3B0uNVBpeNKZO
	O1l9TVTUrK+SJdKDo0cgn2WcLmWHBnZSiDl+iRus1q66wgb+YtqWqNJK/8MSouoaJiRK
	BECTtLt/QtXYv3d4TfmFBqQYVq/A/xk0V4jleNSGEPlkvnQc03E31WjmtKlNX6uiZP1J
	TuRIVa3wD61LtCb4aT1ZPgfB/o9AUFzeGf+TTKI+l2pJXUZW5wXt5YscMD2Q8VK88hLM
	77S6hcazWwxkks2bNxGBBiiZJIxdvRUknD18rHp8Xg1roncCaLnd1vqw3lcNBorLF0Lc
	v0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8qM7Hz3Vn0oYR5fjih8aBBB6mFcCfWdWbWGvrwLD3eo=;
	b=iy1JNmKs+spl2v826LYtY+wtvSrUmAGCQ3SSRjxWjahr84hxKXnKf4QPcNCgBibAMO
	fcLD8x3UFUuvPs1STVI1w36tYm54ZdeAXph8YbYiI9EZe/pp4RJEPUK74sa3TApArwYP
	7Rc2k/L5Vu1GNtCE2x2EcU5JkhC2L+QSaWzNgfbnI+xn/KiCDJKySYXoPrnla97OKxLS
	uNaIXI5gDsV37CFRZIhNgVjCevMqVDZw+RLagO3cV52YEVwBoSKDkGEWX1uU6f5C4jjc
	UUtFZ9x8QjdbQx74Vy+VTJHcd1+JJX+kALAd6p9WqtWexDG/frBfhLmUHU790yS4kLqV
	9aYw==
X-Gm-Message-State: APjAAAXGbXcU6vuy7rGydD0FSFHMrO1CATtX9WF8Piq645hoOp1YnIWa
	hpze1gfTtbMXeiEUROI1/HmFVXH/eD5Xmi980QWI+4Q1
X-Google-Smtp-Source: APXvYqyrQXfEgmkhWlSYaziyripdYkS50WI/bPNeG4uLSEfImpk0fIeXjZVRIJofMgOHXxt9tXfzH+WEoLEYFNML3CQ=
X-Received: by 2002:ac8:525a:: with SMTP id y26mr68606754qtn.378.1564191933843;
	Fri, 26 Jul 2019 18:45:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAFSZm+ifrDXbzfNCqv+uremHoejuxL5C-9xhmDjduHFxO9Nivw@mail.gmail.com>
In-Reply-To: <CAFSZm+ifrDXbzfNCqv+uremHoejuxL5C-9xhmDjduHFxO9Nivw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 26 Jul 2019 18:45:17 -0700
Message-ID: <CAMKF1spRO+_sP2J-jZ1vzBFBVA+nAQZymvz2ie5uCVBjdPsDAQ@mail.gmail.com>
To: Aaron Cohen <aaron@assonance.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RDEPENDS in a containerized world
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
X-List-Received-Date: Sat, 27 Jul 2019 01:45:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 26, 2019 at 10:36 AM Aaron Cohen <aaron@assonance.org> wrote:
>
> I'm not sure if this is the proper venue, but I'll send it here hoping for any insight.
>
> I'm developing a containerized system. Ideally the host will be somewhat minimal, and most of the functionality of the system will run inside docker containers.
>
> I have most of this working to some extent now, but am beginning to run into an issue.
>
> How do I handle runtime dependencies that I "know" are provided by the host?
>
> For example, I have one particular application that requires gpsd at runtime.
>
> I know that gpsd is installed on the host, so would prefer that it not be installed again in the docker container for this application.
>
> Do I have to edit the recipe for the application and remove the RDEPENDS="gpsd" line, or is there some more clever way that I can specify that the RDEPENDS has been fulfilled for the container that is being built?
>

The build-system is constructing a platform image and therefore it
thinks as if it will run on bare-metal, rdeps are for ensuring that it
does not have those dependencies missing. In your case
the images is contained so you have to teach that to the build system.
Maybe via a bbappend remove the runtime dependency and lower the QA
guards to ignore it for given recipe.

> Thanks,
> Aaron
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

