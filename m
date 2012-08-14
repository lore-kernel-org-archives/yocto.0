Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1D39E00346
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 20:52:37 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1349894eek.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 20:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=iV+x6k6OwOEJ0Al3ZIY6oQOnywGy1IP7oFOk/XFk76E=;
	b=kF9TX1hA6WO8OTl9tmfzYu7BzeiQWppwzg6RRZOH8xgYnw3k8zioegRxTGqz/CrXct
	iY4iFy8+BVBMqR2DyTMNpjDNT3OEJdtszVnNDO67eNIqxtwwh7IvchteIJjisMERhTwJ
	Z1wLnjT4ka3BXXn8afq+URBJG3yDzFHBF0E6pe8Qm4G/JWNnsyzS0M3nwS/S6DO8Airl
	nTo1yr0ljVQPUBpnusL9SuEA9DSAWFXOh2b4iqU1YXrGwwc1rLRwFFNQIDtMzwXYdbZC
	ReHTLusGTOIy8ZUDIW/jP20IQ9HOfxXc0hc2ScwndmB4CplY1V6KULadRBfpATumY8m9
	WXOg==
Received: by 10.14.4.201 with SMTP id 49mr7772783eej.0.1344916355939; Mon, 13
	Aug 2012 20:52:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.225.6 with HTTP; Mon, 13 Aug 2012 20:52:05 -0700 (PDT)
In-Reply-To: <3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
	<50739671-4885-4C82-9360-C3376960B165@gmail.com>
	<3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 13 Aug 2012 20:52:05 -0700
Message-ID: <CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Aug 2012 03:52:38 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 13, 2012 at 8:24 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
> I tried eglibc-2.13 with the current gcc-4.7 recipe, and that combination doesn't work.
>
> I do know that the Denx ELDK used eglibc-2.13 and the gcc-4.6 recipe. The ELDK
> is based off poky/denzil branch. Only the poky/master branch contains the updated
> gcc-4.7 & eglibc-2.15 & 2.16 recipes, which are right now broken for powerpc440
> soft float.

and how about gcc 4.5 + eglibc 2.16 did you try that ?
I am not yet sure if we have narrowed it down to one component.

