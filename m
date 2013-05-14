Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A176E014F5
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 02:58:45 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ib11so297623vcb.7
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 02:58:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=b3Og9cNtmKL2NjTHr0sFoQE1t9LHQrKbfrAehv495Yc=;
	b=LIWdryFEN8SSongR6rGwOEmQ9ZzGzZbLy7ByLWQtaRBuQFENy0lmCo2yOQqu1PSsoo
	YScrEOIS8zGn1FQc4JAmm2ZCFODL7f9s1BlJootk3JJNkPrtkLsQ3ze31RfOPpK3zZzz
	0UoJiDy6sMdT52RR2iiDxKCa7pvmxU1UBTrLKN1fVWTPJxRyLeDA2KDwZvcNh1ElhI7q
	C0FerQGwb4OkPrk7WXVrYVQ+sWhO6hbp4HOpb7JuXs5YzLZXHmfLmgX/KH8ugLbHF+jR
	GA6rHNH8FGa2NISwbDypIxwYU4A11OyLEU8kMzUyCrKd9TbcYHXY/U3ZA1+UhgJSjECa
	VDeA==
X-Received: by 10.220.96.76 with SMTP id g12mr20834423vcn.53.1368525525440;
	Tue, 14 May 2013 02:58:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.8.3 with HTTP; Tue, 14 May 2013 02:58:25 -0700 (PDT)
In-Reply-To: <CAFMfyzKYd7JWyzrKLBigCuZLtQeioyjhs2DAM8GvnXq9xGBanA@mail.gmail.com>
References: <CAFMfyzKYd7JWyzrKLBigCuZLtQeioyjhs2DAM8GvnXq9xGBanA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 May 2013 10:58:25 +0100
Message-ID: <CAJTo0La8xdpJXOgsjowff4mrib23r1GYz7RFrPPU=WvYTTxVdg@mail.gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQmMWvqVDMphfoSZAfNrDWV55udvNDdGetZxxflFcrWJup+82eBFqYQqGwO5zoyFN4sH70Xo
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: lmsensors
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
X-List-Received-Date: Tue, 14 May 2013 09:58:46 -0000
Content-Type: text/plain; charset=UTF-8

On 14 May 2013 10:21, Satya Swaroop Damarla <swaroop.damarla@gmail.com> wrote:
> bitbake lmsensors  works perfectly but when I add the package into the
> rootfs I get the following error
>
>  Package lmsensors-config is not available, but is referred to by another
> package.
> | This may mean that the package is missing, has been obsoleted, or
> | is only available from another source
> |
> | Package lmsensors is not available, but is referred to by another package.
> | This may mean that the package is missing, has been obsoleted, or
> | is only available from another source
> |
> | E: Package 'lmsensors-config' has no installation candidate
> | E: Package 'lmsensors' has no installation candidate

Presumably it's your image recipe that is referring to "lmsensors" and
"lmsensors-config".  This is saying that those packages don't exist.
Have a look in the work directory for lmsensors
(tmp/work/[machine]/lmsensors/[version]/deploy-*) and you'll see the
list of packages that have been built.

Ross

