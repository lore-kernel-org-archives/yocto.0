Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55102E00A44; Thu, 22 May 2014 07:30:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f54.google.com (unknown [209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1571E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 07:30:07 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id q108so5737757qgd.27
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 07:30:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=QKrzzRoa+ndzpfDG59mJV2/ZxHlcxvsF9tnL+GwVgBE=;
	b=E9qRPR39rhYskGKuMTssYcbAIBVZXmGTFX01uJau+AxeAVCx8kBgqL1fN6O4GSzdeT
	NQNzSnPxqqBqhDJyklPmzlzW+E/KTOP7SfxNMbgWsTg40Dsd54qnMvWhqOgVeK1F+1hL
	Y5QSVCsfChq29pFwA0XouaQk0ScMeTebUL5RFp75RHZlem61jWAmiKKbLg6lU6II7kVQ
	Iwi1Y/4ahViAW6AGbikvMTWSf+t7AGOdPnxPfkEj+iHf7Hljq8SOcDxhH0iEef1KsW2D
	cT3jKOBfNLJhC7fkBdoYL1oApLV9Sm5imCDrGz+SG/LOpnyMrwXffAWZP9ystawq0rMy
	7wjw==
X-Gm-Message-State: ALoCoQm4a9p2zwDiSBBYp7lTSs507ud2cuGKQpn5XqcVJhg+2bKILfbfFy9fwxz6Df+1ZkWYuPVB
X-Received: by 10.224.121.72 with SMTP id g8mr14788715qar.79.1400769006728;
	Thu, 22 May 2014 07:30:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Thu, 22 May 2014 07:29:46 -0700 (PDT)
In-Reply-To: <CAJTo0LZE+y95EY+TJZs177+xHFxjBsvx18vVvdTN8wa4p7z9Ag@mail.gmail.com>
References: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<9159150.KsUY2KZbMf@peggleto-mobl5.ger.corp.intel.com>
	<1400763602.12423.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<1965694.z39UhZdkqB@peggleto-mobl5.ger.corp.intel.com>
	<1400765098.42556.YahooMailNeo@web122502.mail.ne1.yahoo.com>
	<CAJTo0LZE+y95EY+TJZs177+xHFxjBsvx18vVvdTN8wa4p7z9Ag@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 22 May 2014 15:29:46 +0100
Message-ID: <CAJTo0LYrz1Ass=832DVbALYfGx0Wz7u0rGMRxxd20VYFk9cPBQ@mail.gmail.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: help needed
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
X-List-Received-Date: Thu, 22 May 2014 14:30:11 -0000
Content-Type: text/plain; charset=UTF-8

FYI, I've just sent my fix to the oe-core mailing list.

Ross

On 22 May 2014 15:05, Burton, Ross <ross.burton@intel.com> wrote:
> On 22 May 2014 14:24, Alexandru Vaduva <vaduvajanalexandru@yahoo.com> wrote:
>> I attached the depends .dot file and also a small perl-ptest.info file with
>> only the perl-ptest occurences.
>
> Right, so the dependency comes from perl-modules.  This is a meta
> package that depends on all the modules, and clearly perl-ptest
> shouldn't be in that list.
>
> (I've almost got a fix sorted)
>
> Ross

