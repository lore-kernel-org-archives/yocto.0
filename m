Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58270E007D1; Tue,  7 Aug 2018 02:10:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90D51E006F3
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2018 02:10:34 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id j205-v6so27223420oib.4
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2018 02:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=q+k4JXC5xQ+nSc9J/dqj3rc8YsZGBCLgtjdFivqrdnM=;
	b=TUuclZ9/cO5r2j60GX0y0rd+1XHVG4hANKvZE6y+9ilySehVWJGwfOMQdt1bSl8Lob
	2NMg3Q3jRXdDWQIa7PUEyZrAAJNCIcPJyyP5ibaplMCnVCGSdLA/oop0dWbHLGqgSAA5
	Nv+sXPwk5MHKex5C5A/EDE9cVZ4xn12++leo1VeXnqASHKA36uAepdzs8fOKlalWGFFu
	kNVnheak8GNqhZnEeJNvkUt9UJsX0P+6OkfVY2FLO6RC5EXx5pylEqfVDJ0/XxphvcjY
	1ZoLpHjn7BKiOZJiYtRncObvXvyVkKf0xyzr+n7mUlZHL2fgkwMB++xJQlzk4M5ITONu
	Cp2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=q+k4JXC5xQ+nSc9J/dqj3rc8YsZGBCLgtjdFivqrdnM=;
	b=Qx+MxNCGO1KfELVSzBi7Fdn/UCYVeVLlm9gIBiF4Wz45s99y7wz3iHRaPaB7QXm3PE
	5YH9+zMBM+dDJifHCMiNlF45XYVvCnG9ebVcSEBxLWlxRRxcGe2YcJd+R72/sqP2E7Bg
	GrCMVMERegndNMSB4j1Z5J3/JfsHGdYQe42lrnrmfU4QbiR3WiohzoygeJVWeQdw97SM
	hFva5IUO+ejrY87m+1HzKF4pppyjGw3DCj/NzyvzrlaEWwZTfvd47Twyt5TihKF0HPAc
	epgx1QhYdLKd8pxy0Be9l0yjshR0xE4GQjszmo6T7RgT1YUY2hJ0CXYUtf1NJQ65tVSX
	gwQA==
X-Gm-Message-State: AOUpUlGMWVTFrXGd4ImEsgJhM+hjWI28kI9TVJO5vXRZygc0wfNFbBnh
	+Zk85gs1sTqd7Lf/q0pqOOfZymv3kH7PaGB6FIcrf7V0
X-Google-Smtp-Source: AA+uWPzJzY80SXnUv058th6d52HW8kMckLE755ZD2dj0bGYVhJHy5aeb44qitVsCKmCohLCtFP0/GtWaxGxLMudEelY=
X-Received: by 2002:aca:e185:: with SMTP id
	y127-v6mr19477615oig.245.1533633033716; 
	Tue, 07 Aug 2018 02:10:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP;
	Tue, 7 Aug 2018 02:10:13 -0700 (PDT)
In-Reply-To: <1533630587.8352.1.camel@collabora.co.uk>
References: <1533630587.8352.1.camel@collabora.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Aug 2018 10:10:13 +0100
Message-ID: <CAJTo0La6RFY0VKfbsUoPGcV1MB_Z0DuhHKQSAs=a74q0+qRERA@mail.gmail.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: Extract GPL sources
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
X-List-Received-Date: Tue, 07 Aug 2018 09:10:36 -0000
Content-Type: text/plain; charset="UTF-8"

Have a look at the archiver class.

Ross

On 7 August 2018 at 09:29, Fabien Lahoudere
<fabien.lahoudere@collabora.co.uk> wrote:
> Hello
>
> I need to extract all *GPL* sources patched related to an image in order to publish them.
> I want to do it automatically, ie 'bitbake myimage -c extract-gpl-sources'
> Is there a mechanism to do that?
> If not do you have any idea how I can implement it?
>
> Thanks
>
> --
> Fabien
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

