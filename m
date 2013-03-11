Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD476E00709;
	Mon, 11 Mar 2013 10:03:12 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id l12so3321026lbo.19
	for <multiple recipients>; Mon, 11 Mar 2013 10:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=BF0EzlzxnRu5tBaii5+N6gXLm63ykZcmd+zX/0b8an4=;
	b=ni9+k+0HuHkEuLfVndmptseL7ZY1ddFk3ED0mR+eg/zlIW0kYd0lejnP0pbRS/NYf1
	X25FO4MXJQRHuCZen7scLJ8ha+8flvhNKMxOyAvlaRZ2fde7LXnQ2cTxMivrtaeiO9Vz
	RPdcnWzyS7p9J+t5k7DE3ZKe7QrFbKM+Lyi+Frx3AAKNKEvlQID2YI1xXOAUKuOCDgHf
	pvpqyPjiZ2L1j40GiERxvz3+MqcAvQqNrMK6VS9tWO05d1GFuGinvoKdzEuqZ4rV5N9O
	ppvmQq3mXpXWaP/qUfgCItzi+VGH1vQ6giH7jbOMeLEELOGyQ20lOQg9hwQeXru3TRhV
	73Lg==
MIME-Version: 1.0
X-Received: by 10.152.134.164 with SMTP id pl4mr10938261lab.54.1363021391397; 
	Mon, 11 Mar 2013 10:03:11 -0700 (PDT)
Received: by 10.112.61.3 with HTTP; Mon, 11 Mar 2013 10:03:11 -0700 (PDT)
In-Reply-To: <CACzyEJ8cw3Ve8LdUVEqFse0yBuUC6_9-2brB4c4ZUYitqCVSeQ@mail.gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<513A195A.5040505@linux.intel.com> <513A75CB.3050308@windriver.com>
	<CACzyEJ9MHVD8GyVEwXkdndmQy7DQ_Tt-M0n6-0dWG7LOHgVR5w@mail.gmail.com>
	<513D4F78.9010307@windriver.com>
	<CACzyEJ-YObwTGoOcLGXGiXeoLia+RdtcLmSt9gDLXJG5hBHeoA@mail.gmail.com>
	<513DEB6C.7050903@windriver.com>
	<CACzyEJ8cw3Ve8LdUVEqFse0yBuUC6_9-2brB4c4ZUYitqCVSeQ@mail.gmail.com>
Date: Mon, 11 Mar 2013 13:03:11 -0400
Message-ID: <CADkTA4Np=SJitdsDh=K8VApgoZGR8E6d-bPO-DxkS7oPw+mMaw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Insop Song <insop.song@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Mon, 11 Mar 2013 17:03:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Mar 11, 2013 at 12:07 PM, Insop Song <insop.song@gmail.com> wrote:
> On Mon, Mar 11, 2013 at 7:34 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>>
>> As an example, I have a schedtool recipe that uses the
>> git://gitorious.org/sched_deadline/schedtool-dl.git
>> repository with a 4 patch series to enable full sched_deadline/EDF
>> support versus the custom repository that you created on github.
>> We'll work to unify the edf and other -rt support in the upstream
>> projects, so we want to reference those trees whenever possible (unless
>> we get so much development, that a tracking tree makes sense).
>>
>
> Agree, It's better to unify. I will look into and will update you more on this.
>
>
>> Also, don't be concerned that I show up as the only maintainer in the
>> meta-realtime layer, as I merge parts from your existing layer, credit
>> will be given and if it is ok with you, I'll have you down as a maintainer
>> or co-maintainer where it makes sense.
>>
>> Since I'm going to be out of the office for the next few days, I may
>> push out my initial merges without much testing, so if you have a
>> chance to test, and send patches .. that would be a great help.
>>
>
> Could you tell me how to get the access to the git.yoctoproject?
> If you are busy due to OOO, don't worry on this. I should be able to
> manage in local git until you come back.

If you are looking for push access, we'll wait on that for a bit. I'd like
to throttle changes into the new layer by sending them to the linux-yocto
mailing list first, have some review and then we can do a pull request
and merge model.

Once the things are stable and predictable, we can work on getting merge
access for various maintainers.

Cheers,

Bruce

>
> Thank you.
>
> Insop
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

