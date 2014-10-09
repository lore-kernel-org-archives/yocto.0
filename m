Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77387E00857; Thu,  9 Oct 2014 03:19:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2B0BE00786
	for <yocto@yoctoproject.org>; Thu,  9 Oct 2014 03:19:35 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id j107so1271573qga.30
	for <yocto@yoctoproject.org>; Thu, 09 Oct 2014 03:19:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xKIeIJCaEB3by7FUATRJWk74jLSVsy7x1yjnmYWvTRg=;
	b=Pk2CmXQ4P+q4eSg62EBdS//El3aXkXOap1T4s9mIdtWk4r0jvZg5JDI6nFT9RLBeYY
	XRQXnOOgh6UgHEJi7rNHnI2b7Y42vxd27+dj5ZRX0YSROz13SFV/W5tUEPR86TLi3QNS
	xEuE+X+wlGafpl/dmHilGUvtUnklDdVMsRKAWWJ5iTMxiaRAM3UrvF09wfJsfmpWVKkS
	9/M1k4cOHvxWFY9ktwbtqaUO7FmbLDHaRZuVzro9MvwA1lbG8vZkLBg31R4IlKB9piFa
	KOLwW8sxM/nQx3P0XZg0qpzzvDClLgtZXlwbAzeV36L1zlXtHIQr+r3z05vZy//AK7nY
	B1zQ==
X-Gm-Message-State: ALoCoQm6wHjBpxlYBfhSr9VMeShp3Uulql7qmb0P0upuXXo8KadafIb/Irf9seH7uWViuezfnrEI
X-Received: by 10.224.121.80 with SMTP id g16mr22727901qar.64.1412849975319;
	Thu, 09 Oct 2014 03:19:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.106.134 with HTTP; Thu, 9 Oct 2014 03:19:15 -0700 (PDT)
In-Reply-To: <20141008205630.GN25997@denix.org>
References: <CA+YB3rZasuoA8fysS3ZkbcRm9xidC7NA=Y1YAY=FYw278frkCQ@mail.gmail.com>
	<CAME0jBRVVXpK7pJBuRiONC2Uqsasz3TFnPgnp0h92H2n+_Wiqg@mail.gmail.com>
	<542EBBF2.3090607@linaro.org> <20141008205630.GN25997@denix.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Oct 2014 11:19:15 +0100
Message-ID: <CAJTo0LbJzCdeKmsFJiWdKPjwv1sHZnOSxy2fMbz93R4nQUEq3g@mail.gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YP documentation survey
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
X-List-Received-Date: Thu, 09 Oct 2014 10:19:37 -0000
Content-Type: text/plain; charset=UTF-8

On 8 October 2014 21:56, Denys Dmytriyenko <denis@denix.org> wrote:
> fop: command not found
>
> Trying to install fop shows me about 100 (!) Java dependencies... Is this
> expected?

Yes, FOP is implemented in Java and Java libraries are quite granular.

It's just XSLT so you can likely use a different XSLT processor if
this bothers you sufficiently (but you may need to buy a license for a
commercial processor).

Ross

