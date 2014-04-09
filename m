Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5739E00B88
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 01:54:05 -0700 (PDT)
Received: by mail-qc0-f173.google.com with SMTP id r5so2415318qcx.32
	for <yocto@yoctoproject.org>; Wed, 09 Apr 2014 01:54:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=kJLfJFvFu1ontgCtWhRvzSmjHnx6Sy0pYbhkVnSp1Yo=;
	b=HhOF5EM3k+839+DULnOXdmAxf9hXXXwDW42GeariRAirXVhvH7YOTfQAOzJVAY4CAP
	tdPmsvkAfhPiMRMjEGv/nTlcA9NgxJChSlj15MUv8eEA9xETvbONmHRHJGHAUxJi07ty
	pGn01wD5Hvf6XRirfLG/LGp5M6F98LX2O31PU5rHoyrJn2YDh2BHEBcVJlkjjK0r2JEm
	f8efWs9F7tAemA5FX/Z5yE0fdLnwYYsp5vavVmM0roiV27ILkRW3sxRv4GdHKUUokFOB
	akPzo1sNQJsNQy0zPwRzeUBs2jjTXUNJMppg3j8PhouR7ZKp2Q0Xwc41YQPWulvtwEKu
	lkzA==
X-Gm-Message-State: ALoCoQnp3fd8IB5bvg5kwtbFavC3BvnLPPL42QSSZZvSi13Pr9OHSgsUBDR8E6HqdCbag2vSBvjH
X-Received: by 10.224.127.129 with SMTP id g1mr10800095qas.22.1397033644422;
	Wed, 09 Apr 2014 01:54:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Wed, 9 Apr 2014 01:53:44 -0700 (PDT)
In-Reply-To: <CAF_dkJBmwwiaC0Kna5rrZ2J_WnKYz9gvTU55xBXCkEyxoZ88yQ@mail.gmail.com>
References: <CAF_dkJBmwwiaC0Kna5rrZ2J_WnKYz9gvTU55xBXCkEyxoZ88yQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 9 Apr 2014 09:53:44 +0100
Message-ID: <CAJTo0LbrFHPfQ5kD9XfaSTc2YM_1x=AzdC4CYJecc_w6FM7n9A@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	gstreamer-devel <gstreamer-devel@lists.freedesktop.org>,
	gstreamer-embedded@lists.freedesktop.org
Subject: Re: Squeezing a gstreamer video pipeline into the smallest footprint possible
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
X-List-Received-Date: Wed, 09 Apr 2014 08:54:09 -0000
Content-Type: text/plain; charset=UTF-8

On 9 April 2014 00:03, Patrick Doyle <wpdster@gmail.com> wrote:
> I have a ridiculously pinhole sized memory footprint into which I
> would like to squeeze a gstreamer based video pipeline.  I am looking
> for tips on what I can do to minimize the footprint as much as
> possible for my Yocto based system.

The GStreamer plugins and libraries are all packaged independently in
Yocto, so you can do some heavy size reduction by just installing the
packages you need, and double-checking that nothing unexpected gets
pulled in via dependencies.

Ross

