Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3A2D3E00724
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 09:10:35 -0800 (PST)
Received: by mail-vc0-f174.google.com with SMTP id n11so2434675vch.19
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2013 09:10:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=ZcWyWbzCCPHVUlziXb/DVlTuQyAgZhHWygD2Fl9bKgM=;
	b=V1KlrTZYOldLWL0KKbaSscn1tRWh7WlRPjlobZPT15Ma2vceExaimVRkQ0It+/dVmT
	H4vWzda4VpSzcieqUFxUyZb/KGhhC83Dvy2pKPe8A7fkhWnDwAEy356mIXzdF7jvldb0
	bSYMrZqYRkhODVtwlgjHUx+p5c9GqcdGpKYpKmJseH45wgw4K/nH3Y1m2z2WtsLo5+gQ
	3PJRQ+V8nfARgEK24tCs22JQjavLjthEftgK7Gt8C6o9cVyTUUxJIvPd2oFWCcMCuYdk
	AkQqA3vCYEmSdztLpneRDo2wYXRpRFuOoEADajj0YVvIDgKPNrd7/wfm7yga9Pe+zdvK
	jXYg==
X-Received: by 10.52.32.167 with SMTP id k7mr6702305vdi.31.1360343434098; Fri,
	08 Feb 2013 09:10:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.131 with HTTP; Fri, 8 Feb 2013 09:10:14 -0800 (PST)
In-Reply-To: <5115300E.50901@digi.com>
References: <5112797E.9010504@digi.com>
	<CAJTo0LYeNK8eEVX5_GV_s9AC40o9cbXdsEHh_M1h8-ZEhqBF-Q@mail.gmail.com>
	<5115300E.50901@digi.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Feb 2013 17:10:14 +0000
Message-ID: <CAJTo0LZJAD0pJL+4cHpki23F4wQOO1nRzsr8QaJEQMyKDYGx8A@mail.gmail.com>
To: Javier Viguera <javier.viguera@digi.com>
X-Gm-Message-State: ALoCoQm2JLWuHpdMgwe34bZ1jLv3Km4nC6GCPJZkGVGk1nMeBq+kb5Y8CnSIsgBPubQ343EsH/+3
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: systemtap fetch failure on 'danny' (cherry-pick fix from master)
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
X-List-Received-Date: Fri, 08 Feb 2013 17:10:35 -0000
Content-Type: text/plain; charset=UTF-8

On 8 February 2013 17:04, Javier Viguera <javier.viguera@digi.com> wrote:
> On 02/06/2013 04:48 PM, Burton, Ross wrote:
>>
>> You'll be pleased to know it's in danny-next already, so should be
>> hitting danny in the next day or so.
>
>
> Is that 'danny-next' branch private?
>
> I can't see it in the gitweb or in a local clone.
>
> # git branch -a | grep danny-next
>
> shows nothing.

The canonical danny-next is currently in openembedded-core-contrib,
although I do maintain a ross/danny-next in poky-contrib which is
periodically updated.

Ross

