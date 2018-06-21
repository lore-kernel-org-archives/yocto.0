Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD5F2E00DA4; Thu, 21 Jun 2018 11:29:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.178 listed in list.dnswl.org]
Received: from mail-ot0-f178.google.com (mail-ot0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 469FAE00942
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 11:29:16 -0700 (PDT)
Received: by mail-ot0-f178.google.com with SMTP id w13-v6so4649954ote.11
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 11:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JrY6xGJMVotn97VTs9x6tDESETtou90jcJvUI8qLZqM=;
	b=d+ZQIDZv733kiqRgZSmi9+NIC3Ur61Xla9rWENPQz88TvaR6RHc15eWGs4Np9vQqWr
	YSWbqfclOQcgX87701G9YfDitc1ia8PZiTyybE8cnSnbNtT9Klg60TA5qWX4Vg/Kwape
	zVURQwOnH6HlVp0VwvP3ZwODW6Vu7xlOtUAsngxGrD61f6+T5c22+Fi6O2mdljJ6xyuL
	WV+RVTDnFXtPH0Pg0QtcMV0cPib4B8uh3aAwYtiB7F0By42o9TCiffmu2U9Z1rriWuIS
	I77QBZUzo34cz5zEdaqIbhPjz1Q6X96Czc5WMlMWgvWUkp4Z5AnZ5CnwcbNovxSD8VGh
	tQyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JrY6xGJMVotn97VTs9x6tDESETtou90jcJvUI8qLZqM=;
	b=GJLGcRcn6Gz5AQytYV85jJ4s8ar0/zOQ6jgP9l5+y3wV2cBlzE7GydfGnHIYnrE+zB
	UB1b6POoWgJjgFPsxOPnZfeeMhI3NH/BN/8tS8ngV4kBLqPeRGvqlbeLbym+gqoEq/v6
	3pu9BOXfkc8o4Dm7vDHODbdTOD66GopWv11sT5nzOsvqREV50VOpmSkzsZVSCvu+Z53a
	aA5ordPLIG5DI1mB0FCu4rcdcg3TtfaDW1x+c+PKizTRU+g2bISCBdlQu9sCzv3jqNYj
	1na9q8dwL4bdJ1qni0Ud3XVQflk8XSBgh5KfF9ybnQxtT5m9fbhmXianhZNSu5xwau1D
	Q3NQ==
X-Gm-Message-State: APt69E2N1hm/vVW8glNNViZYKlOpFsZXJFtUR/w3BZPLC042Uq0xFgMe
	oZYHIgpPxK4lJ30hc0jqs1HTMxhenjiAxldm13jOwA==
X-Google-Smtp-Source: ADUXVKKxrAahyGEp/iJIS+3rAy7CKX3P1CqHuGPe2lvRE/J40AB72wkZkHLrUbYTeXABQtSZqnSjWwmYFVVmlEqOHTU=
X-Received: by 2002:a9d:1553:: with SMTP id
	z19-v6mr15307551otz.135.1529605755772; 
	Thu, 21 Jun 2018 11:29:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:434d:0:0:0:0:0 with HTTP; Thu, 21 Jun 2018 11:28:55
	-0700 (PDT)
In-Reply-To: <CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>
References: <CANmTPBY2kMm7w7ONKozpS6qGYOS9VDDKfLR=dSj7jkFhHgu5mA@mail.gmail.com>
	<CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Jun 2018 19:28:55 +0100
Message-ID: <CAJTo0LY8d2oVQYf4wrNv2tOvd-_fr0gCTQ3LNU-0P90L=dCdjw@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: porting gRPC into Yocto
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
X-List-Received-Date: Thu, 21 Jun 2018 18:29:16 -0000
Content-Type: text/plain; charset="UTF-8"

There's a grpc recipe in meta-oe:
http://layers.openembedded.org/layerindex/recipe/72419/

Ross

On 21 June 2018 at 19:15, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> Hi,
>
> I just started using Yocto.
>
> Is there a detailed procedure on how I can port gRPC (for C or C++) into a
> Yocto project?
>
> Thanks,
>
> S
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

