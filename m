Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA044E00529; Fri, 13 Apr 2018 08:26:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f174.google.com (mail-ot0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B647AE00843
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 08:26:07 -0700 (PDT)
Received: by mail-ot0-f174.google.com with SMTP id a14-v6so10291376otf.6
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 08:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ITeIMOaZRxTmgvpTGvYlpRPFIQxVaff940IAuZX/12s=;
	b=mSdlnK+lcKzYfpmkpVYEPMfT18IKN6gXFsvseN/cvIVjKQAbb256tcO00kjw2o+4Vz
	+W7JPfySVtzy7IB0SvdhE3e9RK2azknTxDaic7+/Rj5LQbs3Ch1rFRJHnYKO0Z+3kO1R
	VIjbXYmC6a4+EaWx4F9f3xmywUE0k9nFHWPEDwWxj6/+ukkshCg+P80hWW8mV6oVX4lf
	I1d+/UHvrwNe7br4cFTwDRWwdqe1QA2/56DT9dCSYXdLgC3Q6gw/TbP44sqxFg7udAkY
	VECrdZWgrvs1TydwPZp+YNk3kI8VByruCqICyqwlkr0lRKO98NsJ7kEMx88vSeWOj8aU
	hYyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ITeIMOaZRxTmgvpTGvYlpRPFIQxVaff940IAuZX/12s=;
	b=g5WLLd0lsR72MDhhwwvhbkY3UdHrwxX0dYvyJU9afA6a+8ys8aaAtemE2DCxJRaUdM
	ReQX9m+RF2pUgZ9Xguf5GCpEEww/hEDcH0D26rfwoLnuDVV5oxSVel91PJ39fvmua0Mx
	jiKGSMX/PiNZbNE5R/X1HdBY9qQxPai+mYVF/xDZ8hC4Ki6gJImhkeBC62kpoBxzCKaw
	Ybq5Cugm0DZrk3Z6tJI4vU6QEIX+U66wcUW1DDMx3qj3M2YZwIBIqOLpzYPE7Aj7obbl
	afpV8jrLY6pg780rAh70MpJkHbde3iAwOtjC4+BVAkFAFHtkbs7K+cWECRCOMu96LT6b
	GaNA==
X-Gm-Message-State: ALQs6tBD1ynRfd9PRFnoKI/iTojN+VBdGAHcBUq9zSEZpP93KUuTKrN9
	g2Yj9jsaWovZgpAUq2mt9rJt1dmh+L3F189NHNXUpA==
X-Google-Smtp-Source: AIpwx49o3p9RMH8JUvmnfGJBZrc/StSd+y6EUwE1zolTnUqfjGPsYz1gGEMEVBGWLXM6cnst+YtkD79g6GfDtQKreYk=
X-Received: by 2002:a9d:2ce2:: with SMTP id
	e31-v6mr3692374otd.135.1523633167009; 
	Fri, 13 Apr 2018 08:26:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Fri, 13 Apr 2018 08:25:46 -0700 (PDT)
In-Reply-To: <A5CF21C0A85F3B4FBBF15BA8E7A39E2C4522BE90@COLO-EX10-MB1.arl.psu.edu>
References: <A5CF21C0A85F3B4FBBF15BA8E7A39E2C4522BE90@COLO-EX10-MB1.arl.psu.edu>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 13 Apr 2018 16:25:46 +0100
Message-ID: <CAJTo0LZ-yT1ve1SL2fHKjVoSJbNi2JT1pd1HrphLSKSWuHUROw@mail.gmail.com>
To: "Aaron M. Biver" <amb58@arl.psu.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about automatic dependencies when native packages are used
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
X-List-Received-Date: Fri, 13 Apr 2018 15:26:13 -0000
Content-Type: text/plain; charset="UTF-8"

On 10 April 2018 at 18:49, Aaron M. Biver <amb58@arl.psu.edu> wrote:
> The problem that myapp-native is trying to include mymodule-native.  This
> complains:

Just make the dependency on mymodule target-specific.  Lots of ways
depending on what the dependencies are.

Either clear the native depends:

DEPENDS = "myapp-native mymodule"
DEPENDS_class-native = ""

Or add only to the target depends:

DEPENDS = "myapp-native"
DEPENDS_class-target = "mymodule"

I'm assuming that mymodule is installing headers that you need, and
you're not using DEPENDS instead of RDEPENDS.

Ross

