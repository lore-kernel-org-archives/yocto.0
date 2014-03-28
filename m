Return-Path: <otavio.salvador@gmail.com>
Received: from mail-yh0-f44.google.com (mail-yh0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36FC5E00BB2
	for <yocto@yoctoproject.org>; Fri, 28 Mar 2014 06:02:29 -0700 (PDT)
Received: by mail-yh0-f44.google.com with SMTP id f10so4964780yha.31
	for <yocto@yoctoproject.org>; Fri, 28 Mar 2014 06:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=12mNqty7LPkjyr9Oku7Oq+fTpMDDcDYLZ3ZXomZ8ZQk=;
	b=031sNRpS4fuvZy6NCUBhLmQB7pJ2dEY71mh3QN9dX3DNdSF+Ix6ertoQQXNZB13rT6
	NAN1u/rtpwF1HGheTQDd77XXoQxdspR8XP8kXTLVJf6odRi7DQrtd+x8XXr5eDCYCaKg
	7vWkyhloYnoiX/L/5wU3yv6prOkJQSfmcSyQcr8LEo0Fs3u7R5iTW4KdBGSHzkYWTN5+
	qE4yAax6yK8f5by3BDSP+Myd5JTDM59AcKDRSQlF3rr2PITGqrN8vLGgmGTS9qRc9sKB
	/NUwv//Y1iT3GLiXkJZAUFRE4vD3jJabVVaHT96xGXLm3dk6J4Q8lpF+tb9dwL4d5jk2
	hdTQ==
MIME-Version: 1.0
X-Received: by 10.236.110.77 with SMTP id t53mr11119733yhg.78.1396011748687;
	Fri, 28 Mar 2014 06:02:28 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.124.72 with HTTP; Fri, 28 Mar 2014 06:02:28 -0700 (PDT)
In-Reply-To: <CAP9ODKqAh9Jb2E8DyBFQuwe91ndAGF5zJr1VAHKdfK=SrRxdDQ@mail.gmail.com>
References: <CAPhnLPAJy5Lxbxfrh_RV-fOeoEyaXy8jZR6go2VdP=unHToFPw@mail.gmail.com>
	<CAP9ODKqAh9Jb2E8DyBFQuwe91ndAGF5zJr1VAHKdfK=SrRxdDQ@mail.gmail.com>
Date: Fri, 28 Mar 2014 10:02:28 -0300
X-Google-Sender-Auth: aVakkYMrzfkDU_dhZbUmrF4ARSs
Message-ID: <CAP9ODKqMiSZRRMHg24J8BOe4wizeJWcufk7DvteXsknCC4X8Gg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing nightly/release build artifacts.
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
X-List-Received-Date: Fri, 28 Mar 2014 13:02:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello Beth,

On Wed, Mar 26, 2014 at 6:22 PM, Otavio Salvador
<otavio@ossystems.com.br> wrote:
> On Wed, Mar 26, 2014 at 6:14 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>> I'd like to start looking at reducing the number of artifacts we're
>> releasing both for our nightly builds (which is at 250,000 artifacts
>> and .25 TB!) and releases.

I don't use any meta-fsl-arm artifacts as I usually build the images
for testing, as does Daiane, however the autobuilder is critical for
me as your build does spot and exercise other things which mine does
not (plus the MUT) so I highly depend on it.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

