Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C85DE0027F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 10:41:51 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 17 Sep 2012 10:41:50 -0700
Received: by obbtb18 with SMTP id tb18so12204449obb.35
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 10:41:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=i1A5eKr47VKLeWlpxDbm6zheBd16wafnJVoW77xZP0o=;
	b=ZaHMr0BbfMoGmNE4cK8fdgl/w+4Faa0eiV75m90OZAgS264Sdss2ytowjvud6VuKAB
	eG70IQJFanzyEdK016SETRafxJ+4U1vPOw74w6bEqs4UaZakFTaCgjNMY+tryP6iFDBP
	Jh86u6MpV8Aw+px27KR+WoEfCFGAySX3H6vPLq4DBvW7La2hADgdDA914tGDWOo3s7mz
	2461AnbanwZd2Ac+cMWy8xSDjbpmrar+ufs4D4lMx7hnHzh9rNvRQZTKYGQfooqB6/3s
	opMDz7iJL6XUCIdliKDPLHvSDebicTHsEbW+rTyXxEHtcQXMmM1D7TKjG8nTMAf5HQ9/
	gObA==
Received: by 10.60.171.174 with SMTP id av14mr12869118oec.61.1347903706530;
	Mon, 17 Sep 2012 10:41:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Mon, 17 Sep 2012 10:41:26 -0700 (PDT)
In-Reply-To: <FE4D5A58-146B-4F28-AF81-7A1B2A25838B@gmail.com>
References: <0937D44A-6DDB-49BD-B8E3-14873C5D8839@gmail.com>
	<CAMKF1sr9zgFJMrhBM_xdVPMM_zhnQCzjxYanub6O7NFG4w1Ohg@mail.gmail.com>
	<5055F9A6.20709@gmail.com> <2099128.G0xV8XsdZC@helios>
	<FE4D5A58-146B-4F28-AF81-7A1B2A25838B@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Sep 2012 18:41:26 +0100
Message-ID: <CAJTo0Lb8WtA8eRkrckRpexOLyn6Rd3wkdwJqHpDZR50pWExcaA@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Gm-Message-State: ALoCoQmuhR9y8IJqxIFXuAXcrW5D6BKm7n+RnuUA9dEehpj27PmD/LsdKXpRkmalV+gS4D4wskyN
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Dependency walk for busybox recipe
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
X-List-Received-Date: Mon, 17 Sep 2012 17:41:51 -0000
Content-Type: text/plain; charset=UTF-8

On 17 September 2012 17:32, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> MACHINE_FEATURES_BACKFILL_CONSIDERED = "" has not effect

Set MACHINE_FEATURES_BACKFILL_CONSIDERED = "hwclock", not "".  It's
value is a list of features that are being backfilled, and you need to
declare that you've considered adding it to the features and
explicitly are not.

Ross

