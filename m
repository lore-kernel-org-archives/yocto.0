Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E447CE0140D
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2013 05:53:12 -0700 (PDT)
Received: by mail-ea0-f170.google.com with SMTP id h10so791731eaj.1
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2013 05:53:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=OWHYD7pCn+P3jtxl2CPST7tAT0MXrCAgDaDxVaubfA0=;
	b=dPtnCPWXf0iiaAYCtrIhirQLFHbcEIkPz/DpPcOCbyFccst41kXYvqs+NcccTjLPBw
	NNrz/4Pb10xRkavugHK1X1zgwZqI1nycuBuuwGpzge31uVdBnMU9NLP9CQwu1EREbsn9
	sgJBTPDYEMRfShKdH5jnAKDBL6+ydRTeU079LAjDd6Vp1Gl7taPiwsgX+KQ3YLpgq3+U
	gVPJcmG4y3UO+OSSJyOsDuD0eV2FV2TfBVFUDSRPFvISgUuH8IDF6eF8TEI9xfa3JMTZ
	2iXxC/fN12dPyz/Aj0bAlXm/ivmy8dBsDwQI80BU7YeuT/T29nbK5QEQCvvH9Q2QZ7ky
	1nMw==
MIME-Version: 1.0
X-Received: by 10.14.3.73 with SMTP id 49mr6618506eeg.72.1372942390677; Thu,
	04 Jul 2013 05:53:10 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Thu, 4 Jul 2013 05:53:10 -0700 (PDT)
In-Reply-To: <FA8AB326-A1B9-4F57-AF8F-E89B3B78AE01@gmail.com>
References: <CALmOhgkzZGa2YDYpkC7znMAikeJJGubUUMWnGv8gwUwaRNBoLw@mail.gmail.com>
	<FA8AB326-A1B9-4F57-AF8F-E89B3B78AE01@gmail.com>
Date: Thu, 4 Jul 2013 08:53:10 -0400
Message-ID: <CALmOhgn+KLb86XVk_uZE1sv3sNo5iksjBTAWtp8aHrLdiavA1A@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQn3Oyym73IHnS83Dqbv7mhqx78wjPlkxt1UK1c5U+RJZvoUUWWyCAIFjaKU7dLqDDteq7fM
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: sstate-cache clobbering
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
X-List-Received-Date: Thu, 04 Jul 2013 12:53:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Khem,

On 4 July 2013 01:13, Khem Raj <raj.khem@gmail.com> wrote:
> hmm you need to compare signatures( bitbake-diffsigs is your friend),
> may be there is a variable that should be added
> to ignore list which is causing unnecessary rebuilds.

Thanks for the tip, I'll take a look.

> secondly, why are you copying sstate, set up a nfssever/http on machine A
> and let it server sstate to machine B via NFS or http

I'm simulating what participants to a training session would be doing.
We're trying to provide a download of the "downloads" directory and
some "sstate-cache" directories (to be downloaded in advance) to help
speed up builds and reduce network use during the session.

