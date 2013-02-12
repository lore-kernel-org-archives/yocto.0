Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 791F5E006AD
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 13:33:33 -0800 (PST)
Received: by mail-ve0-f180.google.com with SMTP id jx10so535796veb.11
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 13:33:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=JagHCrNM4BZkGNEbN+XwZ0djO+kQ4jJy8MlPs7EMbjQ=;
	b=XL/36P1hULMYO8NjomZfXGUrDcSWqdRgYVsSiwaZ4bZRgJoRwKLXm3bgbrc5YEQN0Y
	ZdPa+j4ZCiE21sFszjwd4+O7D7nau//YEtMayxMuBKQCtgpRRWJC3xHNr7SBwV34sv6P
	erufXFW7Ew5TaoZB9nHq1tUmCH8j437WmSYuf8ziRsRsrv3x8HF3VHUfX6JKyACCqyIP
	cjqhK+9q8u/yqH+aqm62GnadHP0AKBBlNJzrpy/W/ICDlbpWojhuqyldItKaX2mWtNUJ
	Qg1QJKhGFOQ8mFA2uHHC4tDLvqW0C6yMLNCQJdwin+Fi9lYpJnQs4moH0aa5igItkJZr
	Vsaw==
X-Received: by 10.58.18.201 with SMTP id y9mr5351457ved.36.1360704812141; Tue,
	12 Feb 2013 13:33:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.131 with HTTP; Tue, 12 Feb 2013 13:33:12 -0800 (PST)
In-Reply-To: <0EED5F91-E4E7-4B60-AD7F-B03CFAD8CD22@keylevel.com>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
	<719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A717A89@ORSMSX101.amr.corp.intel.com>
	<E89AA40D-0FA6-4BC2-99D2-9548F06BDA5D@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A718D1C@ORSMSX101.amr.corp.intel.com>
	<000001ce08e6$9b51c250$d1f546f0$@annabooks.com>
	<1360699012.1516.26.camel@empanada>
	<CAJTo0LYDu1wtoDQJopGhx9_6r7fKwRpFezn73NNm=myQu43OCQ@mail.gmail.com>
	<0EED5F91-E4E7-4B60-AD7F-B03CFAD8CD22@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Feb 2013 21:33:12 +0000
Message-ID: <CAJTo0LbA7mwVjgTrGdD33evKRSjPu9czcaJHqYFvL3i8V0ZNfg@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQk9WM6H5fkyKrrRPKZghZP3OeSInd1Ui33t9G7B9aWDAz8XcZfEzNrBI+1gEZlXprlSkBHB
Cc: Darren Hart <dvhart@linux.intel.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
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
X-List-Received-Date: Tue, 12 Feb 2013 21:33:33 -0000
Content-Type: text/plain; charset=UTF-8

On 12 February 2013 21:29, Chris Tapp <opensource@keylevel.com> wrote:
>> Alternatively there's the fully open source but non-accelerated
>> graphics drivers.  This would let the BSP survive, but is anyone
>> (Chris, I'm looking at you here!) using CDT in a situation where the
>> open 2D driver is sufficient?
>
> Not me ;-) One of the main reasons I moved 'here' was because we needed the graphics performance.

I'll do my best to keep 1.3 going until Valley View then! :)

Ross

