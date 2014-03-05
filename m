Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2317E00A9A
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 13:14:39 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id to1so1756099ieb.28
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 13:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+6n0dpRjDA+f7s8ULDZ6HZ6UTg82fu4yDnSEMKjPJ+o=;
	b=C60x+qliPSbX3xAKunoEyp3LPn5We0DNjYBcI3/CFqfJDhlyTVow23IyTsH5VzvD/r
	RYgWCrl6zm+v5ErqVVQlkuR+gF14m9mnFyFUnP1cPu7pyAhftJj/ZObe3cEQ64aNeozJ
	Rsp3vPzrSq4XQdPGZe46w9XM12XcQt5aBW5js3L2zTT94zsZRTRThD3AINDQjinfBvfl
	eaD7d8wwmnIWzIPmJIVKP1vfySZFQtZTR+5WtFCRt3CULMbuWSa1Umjav6urU2zJyEPW
	E3eHQPYKRhvjKVXZYlYH6IJZL0nVzLnK5TMlNrPvzg9d8vUGyq5aj1KKyxXp1+Rzqr3e
	vMMA==
X-Received: by 10.43.46.3 with SMTP id um3mr6440030icb.1.1394054079525; Wed,
	05 Mar 2014 13:14:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Wed, 5 Mar 2014 13:14:09 -0800 (PST)
In-Reply-To: <CALXw4G5Ti_rZ+LWVYivbqeEAyFn2fOTDtYD9kvMBcq94R0X_xg@mail.gmail.com>
References: <CALXw4G5VUNySyWoOoFbKHnMUWFjZfQKwQCu0T0cWtwGOAMQnow@mail.gmail.com>
	<126717450.ayqcFG2vtF@peggleto-mobl5.ger.corp.intel.com>
	<CALXw4G5Ti_rZ+LWVYivbqeEAyFn2fOTDtYD9kvMBcq94R0X_xg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Mar 2014 13:14:09 -0800
Message-ID: <CAMKF1sqWR9CTknPqAx=48w41kVzFm6QG4A3HEW-n+rMoUuzKMQ@mail.gmail.com>
To: Michael Gloff <mgloff@emacinc.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Toolchain
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
X-List-Received-Date: Wed, 05 Mar 2014 21:14:40 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 5, 2014 at 9:00 AM, Michael Gloff <mgloff@emacinc.com> wrote:
> | *** Error: Package name  contains illegal characters, (other than
> [a-z0-9.+-])

hmm meta-environment-PMX-090T is a package name and
thats limitation of opkg backend, if you are too tied to

