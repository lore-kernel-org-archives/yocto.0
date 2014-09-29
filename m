Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61BB5E0079E; Mon, 29 Sep 2014 15:00:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED8D3E006DB
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 15:00:10 -0700 (PDT)
Received: by mail-qg0-f42.google.com with SMTP id z60so11500006qgd.29
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 15:00:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=CVQeQ3njUstqGTdKF4T7azaZp1gyghkwx07BU7b4W9o=;
	b=Euet3iqFbOiJKJ+fhLqTLgKmTRU5gWom2bP9QE/BuDRamEBJ3HIgqQQYBsltJo92pI
	+6+u14WKagLdX64Z2xyz3Vrtodcvb/vfMHWeBYJ+a4+W5KEfZzJOOMFmL4YPmAdfHD4R
	4gyFbg1qnECsxMh0f0r5pj4TdAKUx/r1qGYuwM4ideCqmjkPfGLDMNocICKS8Vud6erc
	TZVDGJleBqkdO5HQuJ07w86YJ2Pi5MFH1CLXcb/5s31HjBUTuWQJB2bDKQXF7+PFMwb1
	vEd+EwOJXbG/EsfNWdBPOqLKCDJQCPy2Hm4WR+CxKJgGmwoa2jZnTG+jdJt1pLevyiyu
	CNig==
X-Gm-Message-State: ALoCoQn1iZqblHqOiL0ygYebGcogtI3IaBy5HdE7ZbWoGiRFzgvswnRK8+Y6fjzMc2eUcLEwMIn8
X-Received: by 10.224.63.140 with SMTP id b12mr38872705qai.22.1412028009581;
	Mon, 29 Sep 2014 15:00:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 29 Sep 2014 14:59:49 -0700 (PDT)
In-Reply-To: <221FE6F5-8350-467B-9744-402B89707FAF@keylevel.com>
References: <221FE6F5-8350-467B-9744-402B89707FAF@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Sep 2014 22:59:49 +0100
Message-ID: <CAJTo0LY=A-dj2VZU3iP_R=SVSHYsV+fXgrPUnfFz62FPEFgaOA@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Fetcher question
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
X-List-Received-Date: Mon, 29 Sep 2014 22:00:12 -0000
Content-Type: text/plain; charset=UTF-8

On 29 September 2014 22:36, Chris Tapp <opensource@keylevel.com> wrote:
> How would the fetcher handle the file changing after it had already been downloaded and passed a checksum test? Would the change have been detected?

The checksum comparison is only done at fetch.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5571 talks about
extending that to verify the checksums at do_unpack() to catch
situations like this.

Ross

