Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86F6CE00B85; Wed, 21 May 2014 11:58:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qc0-f169.google.com (unknown [209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A3E9E0077C
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 11:58:57 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id e16so3956239qcx.14
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 11:58:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=RyfKYLTwqp262BCTZxyAMQrBJTqJSyvVDeykbid+LLQ=;
	b=MR+HalIjqsKMtVGWIxem5k0jo5+gi1qvl5VwewLwBaxwJbcYDotqZH3ZDdAPJ+6Y5w
	otgo27xRZ8ns7zVnjSPgR3Ybf0Kj1+GJIOYFcsiSXXQlY8zfCLYfzZE29bl37JBs2qmH
	M9stgaPNTddrB9LhcmcSiwkRR+N0qgbe/1GG7vuXAg2n1KD30e700ZVXBaRhE0zHF8IB
	I7Qywxvenlc7saN9Ms4PpPNu4q4057K+eB9QP5FgZ0romCnZZPMT+gYzbgLPfVmcJl9e
	aLDfe8i32+XN0InAZPhUfdohDLA3c0Cg+yvNHBLyt8cLEJTzVWh/hf3JBvWO3hTqPBNk
	GLfw==
X-Gm-Message-State: ALoCoQkatEcRgtU5iAGZEodvUblo38y6sHkQoJHF/871AYCuqYJ/PRGcdXyU3EnlT8vzq7mQdSU2
X-Received: by 10.224.138.3 with SMTP id y3mr7064075qat.78.1400698736737; Wed,
	21 May 2014 11:58:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 21 May 2014 11:58:35 -0700 (PDT)
In-Reply-To: <CAPhnLPAoA+z4OfO_HXVNOmbVk9cXcbOEtMZOhzYZbfMqw_9g=Q@mail.gmail.com>
References: <CAPhnLPAoA+z4OfO_HXVNOmbVk9cXcbOEtMZOhzYZbfMqw_9g=Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 May 2014 19:58:35 +0100
Message-ID: <CAJTo0La6PT=gUpvp+Fsh1QpOx1H147HgiVT4nmCrKvLFRroiEA@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing size of the weekly build
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
X-List-Received-Date: Wed, 21 May 2014 18:58:58 -0000
Content-Type: text/plain; charset=UTF-8

Hi Beth,

On 21 May 2014 17:22, Flanagan, Elizabeth <elizabeth.flanagan@intel.com> wrote:
> In an effort to speed up release times, I'm going to remove the deb
> and rpm publishing from the weekly builds. We'll still have ipk
> publishing and we will still generate debs and rpms, but as far as I
> can tell, no one is actually utilizing the debs/rpms.

The QA scripts perform install tests, do they use the published feed,
or another local copy?  Breaking QA's ability to validate the the
package manager actually works would be a problem.

> One thing I'm thinking of and I want some feedback here is setting the
> package type on the main builds to just ipk and running a special
> deb/rpm test being to ensure those package types are functional. This
> should give us a bit of a speed increase for build times, without
> introducing too much risk. Thoughts?

The reduced coverage is something to consider, but if the other builds
were world and also built images then the reduction shouldn't be too
bad.  I wonder what the speed difference between ipk and ipkg+rpm is:
this is probably worth measuring.

Ross

