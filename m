Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57305E00C1D
	for <yocto@yoctoproject.org>; Mon, 31 Mar 2014 11:38:06 -0700 (PDT)
Received: by mail-ve0-f173.google.com with SMTP id oy12so8419221veb.18
	for <yocto@yoctoproject.org>; Mon, 31 Mar 2014 11:38:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=CMiod9Z5h0z/Dty8bsMbs206Rw+WhexHonV1JwPpUe4=;
	b=AV+nb28UskgOzaXOteQ3HkL1uHm7GsMkZkCYoPsib/OH9frY5E25I+AvVYdafpPd3R
	aOirte/a0xpwy600lqQMRvew1yqu0Zsx4R0gwM5gDRFVi5zoe4fJq8NxzqoI5gItlFRA
	lZdhnxdPIqfNqEXgBfIyT3i6I2iGXUpIawxAIwpM1H5TfhOW26fPh6aNvr4k5FLUgXus
	+84zgjzfNbsOTN/cOurLH4C2Y54VsPJfAkZhmXCG+Fd1qC5eWgQb/cAPK9IaeU0U1DrK
	1wXr26zmEL+/VAbKGcGS6L3Qn834ng6ew02RQCKZcW0mVUVqBQEUKZbqROsmqH36mhhz
	1EaQ==
X-Gm-Message-State: ALoCoQkdeh1u3agwr6wpeGaeaJue/yWhPBQsIaWEoykTJNS3tKeGxUwDHol3P43olBoA7InYc3dO
MIME-Version: 1.0
X-Received: by 10.59.7.102 with SMTP id db6mr8988834ved.17.1396291085904; Mon,
	31 Mar 2014 11:38:05 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Mon, 31 Mar 2014 11:38:05 -0700 (PDT)
In-Reply-To: <CAP9ODKqMiSZRRMHg24J8BOe4wizeJWcufk7DvteXsknCC4X8Gg@mail.gmail.com>
References: <CAPhnLPAJy5Lxbxfrh_RV-fOeoEyaXy8jZR6go2VdP=unHToFPw@mail.gmail.com>
	<CAP9ODKqAh9Jb2E8DyBFQuwe91ndAGF5zJr1VAHKdfK=SrRxdDQ@mail.gmail.com>
	<CAP9ODKqMiSZRRMHg24J8BOe4wizeJWcufk7DvteXsknCC4X8Gg@mail.gmail.com>
Date: Mon, 31 Mar 2014 11:38:05 -0700
Message-ID: <CAPhnLPDGY8ydV5jyRH=bLk=sAoj=c4ZP=b8Rx=1n6tfdG1Zbkg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Otavio Salvador <otavio@ossystems.com.br>
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
X-List-Received-Date: Mon, 31 Mar 2014 18:38:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Otavio

So, if I were to not publish the fsl builds, would that be an issue?

-b

On Fri, Mar 28, 2014 at 6:02 AM, Otavio Salvador
<otavio@ossystems.com.br> wrote:
> Hello Beth,
>
> On Wed, Mar 26, 2014 at 6:22 PM, Otavio Salvador
> <otavio@ossystems.com.br> wrote:
>> On Wed, Mar 26, 2014 at 6:14 PM, Flanagan, Elizabeth
>> <elizabeth.flanagan@intel.com> wrote:
>>> I'd like to start looking at reducing the number of artifacts we're
>>> releasing both for our nightly builds (which is at 250,000 artifacts
>>> and .25 TB!) and releases.
>
> I don't use any meta-fsl-arm artifacts as I usually build the images
> for testing, as does Daiane, however the autobuilder is critical for
> me as your build does spot and exercise other things which mine does
> not (plus the MUT) so I highly depend on it.
>
> --
> Otavio Salvador                             O.S. Systems
> http://www.ossystems.com.br        http://code.ossystems.com.br
> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

