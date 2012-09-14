Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B631E00348
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2012 13:51:23 -0700 (PDT)
Received: from mail-iy0-f176.google.com ([209.85.210.176])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 14 Sep 2012 13:51:22 -0700
Received: by iagt4 with SMTP id t4so4386787iag.35
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2012 13:51:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=qhGApWD8RyuW8zHpFomQxnd5FKKYg9BAUoz1+K8hAWQ=;
	b=IsDfuI7vkeBs9GeUXVzn5g0TdPROiJd0DIEkygnW2e86/p8SYJ/Lo/vYThNfePCPLb
	Hp7ChqEf45ozna0FyyTelbw08yE1Yz+3DKmJ2o9bRdas4pQ1TVAIfRuzOk6OShfL2Npa
	K7LUY92GzxOzV4Wj5o9dXvUhfALiudZU9eirtWfj1+YDnJYUHOJSCy+dYS01U6hhv2+Z
	ydLORZ7iS4ETKLZaLuE81xaslS+Twd8U1+qAVdh8aJtX6uYLofE3t9T2pmp+wA4OyUhn
	8blb39JOiEs3X9g+WzQqDz9auI74KVfmqPsMSIKYvYtwhTU0O82ZbKEvzo0/cS2bay6b
	+WDQ==
Received: by 10.50.7.212 with SMTP id l20mr69626iga.43.1347655881247; Fri, 14
	Sep 2012 13:51:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.141.70 with HTTP; Fri, 14 Sep 2012 13:51:00 -0700 (PDT)
In-Reply-To: <e5aa858a33392e0a7569c50d308049f88cd802a4.1347650435.git.tom.zanussi@intel.com>
References: <cover.1347650435.git.tom.zanussi@intel.com>
	<e5aa858a33392e0a7569c50d308049f88cd802a4.1347650435.git.tom.zanussi@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Sep 2012 21:51:00 +0100
Message-ID: <CAJTo0LbgWdoX8GnMsKYa-y176X1YiTEd7Ucw7CNLLi6OBqaB2g@mail.gmail.com>
To: tom.zanussi@intel.com
X-Gm-Message-State: ALoCoQkIT1nWsIkKYd0vbsr5sIgooYnHIklVwO/eJ51S2yTpqcVU2hHQVeD16XHbVIAT6MUasqHm
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 1/1] meta-intel: make video acceleration choice dependent on LICENSE_FLAGS
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
X-List-Received-Date: Fri, 14 Sep 2012 20:51:23 -0000
Content-Type: text/plain; charset=UTF-8

On 14 September 2012 20:27,  <tom.zanussi@intel.com> wrote:
> The gst-ffmpeg recipe in oe-core had LICENSE_FLAGS added to make it
> "commercial", so to avoid build errors the BSPs that use it (via the
> gst-va-intel VA_FEATURE) should only include it if the user has added
> "commercial" to LICENSE_FLAGS_WHITELIST when building.

It's entirely possible to use gst-vaapi without commercial plugins,
the problem is the (mysterious to me) dependency on gst-ffmpeg.

How about making gst-ffmpeg a recommends instead of rdepends, so that
if it's blacklisted due to license flags there isn't a build failure.
gst-vaapi doesn't have license issues to making it disappear when
avoiding commercial licenses doesn't make sense.

(I'd also like to understand why gst-ffmpeg is a rdepends at all)

Ross

