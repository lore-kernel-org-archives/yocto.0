Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E84ABE0146E
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 03:35:36 -0700 (PDT)
Received: by mail-ve0-f175.google.com with SMTP id m1so1615672ves.34
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 03:35:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=qEvvvX/K18ZgAco6gFSg0mMD9z2+WqsnFQaXwer8kAU=;
	b=dw5F6ScoVlLbmIQcHHrv+PIPSDrZgvVC1HLGm/J3PYqrzzYfuMBJexVQ9dX9BWq2Kl
	DJBMkPd341a111QyD4dqr3i3yd1LpXhl1P1uPMTrdQz45d7K6CeAEaG8ezma0qQ1X93u
	xHVFtSvVGJkr+T7AR+vboeVQevKnis9mGyz5Tuh1Z6bT4iRFbGbPkSn1BhRAT0IdgTI2
	T8mZ2HOi51GhVjAsF3yKm6G318C87nmbwqx3Bu/oTwpzWNQItCwDLvU4XBFeuBuonrR2
	XhnK85UOq1pKZ981Qmewa31fr/9Pug5ZuHmDXVIdD5WmpoZTF73S1/e9UcUrT3gQ9Wbe
	ugXA==
X-Received: by 10.52.117.212 with SMTP id kg20mr3473071vdb.55.1368009336104;
	Wed, 08 May 2013 03:35:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.8.3 with HTTP; Wed, 8 May 2013 03:35:16 -0700 (PDT)
In-Reply-To: <CAHUNapTCr_YV+pfCJod6LcGfhGh4HEX+GmcQSFQ9frFS+HiecQ@mail.gmail.com>
References: <1367930701.27116.31.camel@ted>
	<CAHUNapT--78aOf=eCava7w9VsHAD8fL3odbreW-6EATt6mujbA@mail.gmail.com>
	<CAJTo0LaUSyekgycP37-jZnHmgy1wOM-PfJ0yZQtMrSP_bUp8hg@mail.gmail.com>
	<CAHUNapTCr_YV+pfCJod6LcGfhGh4HEX+GmcQSFQ9frFS+HiecQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 May 2013 11:35:16 +0100
Message-ID: <CAJTo0LaHKGS+FRWJX9yE29sdSSVR6R4JsykHOx9N6RpaBuEn+g@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQluoXVKKkcUnMN9jvRSOn0cFvmPafBrm/JnBsSGj0GJgxyCyi/EksMNZwcL1cmailvJ+Rpi
Cc: yocto <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: Status Update
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
X-List-Received-Date: Wed, 08 May 2013 10:35:37 -0000
Content-Type: text/plain; charset=UTF-8

On 7 May 2013 18:57, Trevor Woerner <twoerner@gmail.com> wrote:
> I've looked through the list of patches and don't seem to find
> anything that will do what my patch needs to do in order to build
> qemu-1.2.0 on openSuSE 12.3. Would you consider adding the attached
> patch for Danny? (normally I'd send it in-line but I'm behind a
> firewall at the moment that won't allow "git send-email" to succeed,
> otherwise I could submit it this evening)

Merged to my danny-next branch, after confirming that this isn't
needed in Dylan/master as qemu 1.4 has the -lrt linkages declared.

Ross

