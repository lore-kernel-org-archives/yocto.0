Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A745E0027E
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 10:00:35 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 25 Sep 2012 10:00:24 -0700
Received: by obhx4 with SMTP id x4so544363obh.35
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 10:00:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=6VQmhLn8OPenyqOdSBuFnmnnnytDsitlMp8rsqx0FfU=;
	b=iGEtko3l/EYhXczBm8sxthnAvgJnGMk7MBOJPEeHYAeffTSSPrdfxtBHD6r4cU3czE
	AUC96iYlEU0k2bVbMI7CXsZUR9DDJUnriZFFZRzNdFzuUsJ+w+ub6yYOIazwImJ+Gu3I
	/j5jtClDwf/KynZ3UhNTXGlGLjc3GAMarO4YRN7VGEQu5rx85uSMd0+pPHakwaTTXkJ/
	ds3ng+js/qzjem1q10GTBcvR88BoItyBv0U0xjfpV9lcpAZFiBjjcQvwfkYETmuhB5h6
	BfYtU0cshj5RlpnWOv92he7fy8EVrTJ2ikt8BQzSJRQpl1rYlB1JzHzYyilU2cubmzT1
	VJWw==
Received: by 10.60.28.162 with SMTP id c2mr13121454oeh.3.1348592422235; Tue,
	25 Sep 2012 10:00:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Tue, 25 Sep 2012 10:00:02 -0700 (PDT)
In-Reply-To: <1348592103.1852.5.camel@omclinuxballt.devnet.ordermatic.net>
References: <1348592103.1852.5.camel@omclinuxballt.devnet.ordermatic.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Sep 2012 18:00:02 +0100
Message-ID: <CAJTo0LYJbHkqwAyYnf3ccvKBhkBX1a+rhH6dY8SPeNqyGajcZQ@mail.gmail.com>
To: Brian Lloyd <blloyd@familyhonor.net>
X-Gm-Message-State: ALoCoQnobcHbSQrflfN4SJtVeINU885EM+tAa9hvx+ca4DAwPNawcYBnDLnRGrCm7eTWLEI23RFM
Cc: yocto@yoctoproject.org
Subject: Re: Documentation clarification
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
X-List-Received-Date: Tue, 25 Sep 2012 17:00:35 -0000
Content-Type: text/plain; charset=UTF-8

On 25 September 2012 17:55, Brian Lloyd <blloyd@familyhonor.net> wrote:
> should
> KERNEL_FEATURES_append_qemux86="cfg/sound"
> have a space between the " and c?

Yes.  Please do file a bug.

Ross

