Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FE0DE005A9; Wed, 25 Apr 2018 13:58:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 123FBE005A9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 13:58:14 -0700 (PDT)
Received: by mail-qt0-f177.google.com with SMTP id f16-v6so24919525qth.0
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 13:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=u+fc3jhW5IkowFz0dc8bebTiGo+pHXiXQewSqRkScjs=;
	b=JmECtp8AbTvR60IRc8WMn1rnFFh/8XoM3RECFl3ohr2y8Y0lQ/wLWX5tcF627fqQVs
	uXaa1yhzO/vImFyMjJzYXeyFiMDdY1ScsXBQ8OGBVOdQ77HnKEASm7opbUQrRvELMAp4
	Z43cISrjYvsT3ObVkAOAOkukmbM02lwy53ya6RAB8pfyVmqE+hK6dfGBt0Wfv3n0Ni/5
	Q8mCYHV5yFzuwcVI3qCI0xkd8/NxKZHHkyTftNiw28YUtbsK3wzwIZS5EY4Ii8NIQXCx
	7C7P2tUVAi3TvcDjpSaovoO+xzneWYueYNyOhmEYHIVjnYiTuO7T1YCs1egPbpOwZ26D
	B+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=u+fc3jhW5IkowFz0dc8bebTiGo+pHXiXQewSqRkScjs=;
	b=Q2+qfIlhi4trMbVsxI5tJ06nd/uTDFLQGb0swrjODtx4snPOfL2n14HbbewIeIF8EW
	3zGWRmhEzdd+kCJFAJBhjscfUUP1nqkIkdrNs7OTMvPjufSUhuSckItPUTnRUnouysAv
	CY9r2xZommN6KeWzx2G9z/DqReVSr5uF/95VbDeWgx/VZIgIFebb1m14TvA8T+F7je1w
	hv0grJocPXx6GNHhCuLz572T0ZsBgPCdGOczpc121QdKZQZKtgUXMkZ9AG4ZA04EaXsb
	O8cqWIQ33VgLb6ZNBVZgFNOTVlOsR6Lko6JvVN7iB7t+u91TrBXKwBoGvU+elLaeoo/d
	fCXA==
X-Gm-Message-State: ALQs6tA0VZXPWA60AJGbv+pgRY4RpoQnKqmu37xdUJKw3e4BhHjYc6fP
	2zm8jBvhbOSKKpv09lbNS3dM+QkhJNMOAIWUsCI=
X-Google-Smtp-Source: AIpwx48vJyiT1A4xdWCZUoOdnJXb46Usub8TLUlwhlQiu/nRm3t4EMmiNokI9yWurdTNr56qvwEMoC8NO0xlYANCpWo=
X-Received: by 2002:aed:222b:: with SMTP id
	n40-v6mr33323492qtc.146.1524689894217; 
	Wed, 25 Apr 2018 13:58:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Wed, 25 Apr 2018 13:58:13 -0700 (PDT)
In-Reply-To: <CAGAf8LziVYUN6ZK622JURBer5CUHGTKQvx9t53Ut7NX9JO9-wA@mail.gmail.com>
References: <20180425150333.GA9349@graute-opti>
	<CAGAf8LzpCD-SC54z88pE_=iYQ2ANg+4pzhYNRH_Qk1L6i-V-8A@mail.gmail.com>
	<5ae0d8b5.3bb5500a.22ed7.1ad6@mx.google.com>
	<CAJTo0LZ5Cf5zqLVJf+Jjd60KLLKJ2q-01B3QdpuVDGx4tCxKAg@mail.gmail.com>
	<CAGAf8LziVYUN6ZK622JURBer5CUHGTKQvx9t53Ut7NX9JO9-wA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 25 Apr 2018 22:58:13 +0200
Message-ID: <CAGAf8Lx6=p_TBGHcU29obY8tmJd4mFE2ADa26n6UnyH1OwkdBA@mail.gmail.com>
To: oliver.graute@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Wed, 25 Apr 2018 20:58:16 -0000
Content-Type: text/plain; charset="UTF-8"

Oliver,

Sorry for stealing your show... Did not want to. :-(

Floor all yours.

Zoran
_______

On Wed, Apr 25, 2018 at 10:55 PM, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>> Jethro doesn't support Yocto 16.* because it is very old (released 2015...)...
>
> Now, I must admit, I have learned something new. Never gave any
> consideration to these releases: example: Pyro 17.0.3.
>
> But now I understand: it has direct link with Ubuntu 17... Even, YOCTO
> Pyro, as given example, can be substituted with Ubuntu 17.04?! Wow...
>
> Every day in every way, I'm progressing more and more! ;-)
>
>> If you want to use Jethro despite the known serious security problems
>> then you'll need to dig out the relevant fixes from the newer releases.
>
> My question here is: how hard it is? Either to move/rebase complex
> application and some system packages to Rocko (and rebase/revisit
> APIs), either to back-port additional (security) packages from the
> newer releases?!
>
> Seems lot of hard work, considering both cases.
>
> Zoran
>
> On Wed, Apr 25, 2018 at 9:50 PM, Burton, Ross <ross.burton@intel.com> wrote:
>> Jethro doesn't support Yocto 16.* because it is very old (released
>> 2015, it's been unmaintained for six months now).  If you want to use
>> Jethro despite the known serious security problems then you'll need to
>> dig out the relevant fixes from the newer releases.
>>
>> Ross
>>
>> On 25 April 2018 at 20:36, Oliver Graute <oliver.graute@gmail.com> wrote:
>>> On 25/04/18, Zoran Stojsavljevic wrote:
>>>> > I try to compile yocto jethro environment which is working
>>>> > on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04 .
>>>>
>>>> What would be the benefit for the successful compiling of YOCTO Jethro on
>>>> Kubuntu 16.04 over Ubuntu 14.04???
>>>
>>> I tried to get my Yocto compiled on a PC of a colleague and his
>>> installation was a Kubuntu 16.04. I've made the experience that often
>>> only additional packages needs to be installed to step over these
>>> compile issues. Sometimes its clear from the debug output but in this
>>> case I have no Idea which packages is missing. On my develop PC and our
>>> Buildserver with Ubuntu 14.04 everything is fine. But I'am afraid that I
>>> can get similar trouble if I update to a newer ubuntu release there too.
>>>
>>> Best regards,
>>>
>>> Oliver
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto

