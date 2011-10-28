Return-Path: <xiaoxianghua@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A98C5E0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 09:39:47 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk29 with SMTP id 29so2636088qyk.14
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 09:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=NO/BxaFxGpeU6sbvhffmovI6Z33crvS3FhGTy3Coufg=;
	b=Ro3HETdL/KfIv/1xrJ8vG7PecAYsw+yTIC8hn5CfKrf8/6xpUSqUduB3lzqkeSqapR
	DRcmRk1BjxYFTQn5B74qgn9Fq09nQGDwSeKCJz5jnwM54kh/QLQVtkwbT4lebjdJ/Iai
	l1QQALyy8qxIvnFB1mF43dtvyk3pexP0FnOnE=
MIME-Version: 1.0
Received: by 10.229.245.7 with SMTP id ls7mr862146qcb.268.1319819981951; Fri,
	28 Oct 2011 09:39:41 -0700 (PDT)
Received: by 10.229.188.3 with HTTP; Fri, 28 Oct 2011 09:39:41 -0700 (PDT)
In-Reply-To: <4EAAD708.5030909@windriver.com>
References: <CAP7cwtu-T9LdUy78MSG+JOanSHw6UTK5D-4zFu-bVzsRp9XwwA@mail.gmail.com>
	<4EAAC008.4050406@windriver.com>
	<CAP7cwttTXcGySrqmKvv+7saHFyF0xuUczY8h5693f232RCA_Sg@mail.gmail.com>
	<4EAAD708.5030909@windriver.com>
Date: Fri, 28 Oct 2011 11:39:41 -0500
Message-ID: <CAP7cwtvD_vM8VWa5AvAhgVBTyPUSeZ1VuHrdTgzwDkQ=C49k5A@mail.gmail.com>
From: Xianghua Xiao <xiaoxianghua@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: building and using yocto 1.1
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
X-List-Received-Date: Fri, 28 Oct 2011 16:39:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I do want to point out that:
1.1 is 12 hours while 1.0 was 8 hours, using the same machine on the
same network, not sure why.
input under sato does not work, it's showing some non-English letters
while i type.

xianghua

On Fri, Oct 28, 2011 at 11:23 AM, Mark Hatle <mark.hatle@windriver.com> wro=
te:
> On 10/28/11 11:13 AM, Xianghua Xiao wrote:
>> core2duo E7200 2.53Ghz =C2=A04GB 500GB
>>
>> 1 thread 1 parallel due to past experience I had from the
>> past(parallel make did not work well reliably)
>
> It is a goal of the Yocto Project (and Open Embedded) that parallel build=
ing is
> full supported, and any identified bugs are fixed quickly.
>
> Enable parallel builds and your performance will be significantly better.
>
> If you have hyperthreading enabled, and setup a 4/4 parallel build. =C2=
=A0I would
> expect about a 4-5 hour build time. =C2=A0(May be faster)
>
> --Mark
>
>> thanks,
>> xianghua
>>
>>
>> On Fri, Oct 28, 2011 at 9:45 AM, Mark Hatle <mark.hatle@windriver.com> w=
rote:
>>> What machine are you using (amount of ram, disk space, and cpu cores)?
>>>
>>> What configuration did you set for parallel builds?
>>>
>>> I can build 1.1 on an 8 core i7 system w/ 8 GB of ram, set with paralle=
l
>>> settings of 8 thread and 8 parallel make jobs, in about 100 minutes (or=
 less).
>>>
>>> --Mark
>>>
>>> On 10/28/11 9:20 AM, Xianghua Xiao wrote:
>>>> when I built 1.0 out of the box, it took 7 hours.
>>>> on the same machine/network, yocto 1.1 took a full 12 hours, not sure
>>>> what happened to cause this nearly doubled build time.
>>>>
>>>> after the default build(bitbake core-image-sato), I run 'runqemu
>>>> qemux86', click on 'tasks', try to add a new task, however my input is
>>>> shown non-english, or garbage on screen, which I have seen the same
>>>> issue on yocto1.0 release as well. this is a 10.04 ubuntu 64bit
>>>> machine.
>>>>
>>>> don't know what to say about it, just my OOB(out-of-box) experience
>>>>
>>>> xianghua
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>
>

