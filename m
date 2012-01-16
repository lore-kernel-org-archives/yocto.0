Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B49D6E0127D
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2012 03:09:06 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbfr13 with SMTP id fr13so812778vbb.35
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2012 03:09:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Lzs6UPBaEihxvfWlCXYH/M15vPzcJCBLQKjZtg85o7M=;
	b=vLVfzBPzA2T45q1fVWDJsRmXFpQOw52Jvt0jzp0ujBR5K+CivdilJTGSCJ5lcGQyal
	LSjO7kb/m/kwyF55mGGVzECqE6KoVaG33BXFUFm4s9CihahWtIWT5/j27mtKEFkg6vua
	GsGiWhxYkg/PmvINol5WrWIByWygB1Pyq+KY0=
MIME-Version: 1.0
Received: by 10.52.20.165 with SMTP id o5mr5416143vde.79.1326712145935; Mon,
	16 Jan 2012 03:09:05 -0800 (PST)
Received: by 10.52.33.112 with HTTP; Mon, 16 Jan 2012 03:09:05 -0800 (PST)
In-Reply-To: <4F13ED64.8020308@communistcode.co.uk>
References: <4F106990.7080208@gmail.com> <4F13ED64.8020308@communistcode.co.uk>
Date: Mon, 16 Jan 2012 06:09:05 -0500
Message-ID: <CANFv2EkcVZ_EKr+UvRzUpcpWrFF6sgnYbuiWCOhU64s6m7zajg@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: question on poky and git interaction
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
X-List-Received-Date: Mon, 16 Jan 2012 11:09:07 -0000
Content-Type: multipart/alternative; boundary=20cf307c9fd02d7d4a04b6a33e4f

--20cf307c9fd02d7d4a04b6a33e4f
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jan 16, 2012 at 4:27 AM, Jack Mitchell <ml@communistcode.co.uk>wrote:

> On 13/01/12 17:27, Jim Abernathy wrote:
>
>> under the poky directory you git checkout of the branch you want to work
>> with, then you clone meta-intel and within that directory you checkout a
>> branch.  if you needed to use git for you personal project, you can't put
>> it at the same meta-intel level, right? Only one per directory??? I would
>> guess that you'd need to create your personal git clone below meta-intel;
>> something like meta-jima.
>>
>> Does this sound correct??
>>
>> Jim A
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
> Hi Jim,
>
> This is indeed how I manage my extra package files and anything else poky
> needs. Any other interesting input would be good to hear though!
>
> Slightly off-topic, with meta-intel and then checking out branches to get
> specific machines, do you do global work in master, machine specific work
> in the branches, and then merge out from master to the branches to keep
> them all in sync?
>
> At this point, I'm sticking to named releases like Edison. I have not
tried Master yet.  I need to learn a lot more before I try that. I get
enough errors using official releases.

Jim  A

Cheers,
> Jack.
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--20cf307c9fd02d7d4a04b6a33e4f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Mon, Jan 16, 2012 at 4:27 AM, Jack Mi=
tchell <span dir=3D"ltr">&lt;<a href=3D"mailto:ml@communistcode.co.uk">ml@c=
ommunistcode.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On 13/01/12 17:27, Jim Abernathy wr=
ote:<br>
</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5">
under the poky directory you git checkout of the branch you want to work wi=
th, then you clone meta-intel and within that directory you checkout a bran=
ch. =A0if you needed to use git for you personal project, you can&#39;t put=
 it at the same meta-intel level, right? Only one per directory??? I would =
guess that you&#39;d need to create your personal git clone below meta-inte=
l; something like meta-jima.<br>

<br>
Does this sound correct??<br>
<br>
Jim A<br>
<br></div></div>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote>
Hi Jim,<br>
<br>
This is indeed how I manage my extra package files and anything else poky n=
eeds. Any other interesting input would be good to hear though!<br>
<br>
Slightly off-topic, with meta-intel and then checking out branches to get s=
pecific machines, do you do global work in master, machine specific work in=
 the branches, and then merge out from master to the branches to keep them =
all in sync?<br>

<br></blockquote><div>At this point, I&#39;m sticking to named releases lik=
e Edison. I have not tried Master yet.=A0 I need to learn a lot more before=
 I try that. I get enough errors using official releases.<br><br>Jim=A0 A<b=
r>
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Cheers,<br>
Jack.<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div><br>

--20cf307c9fd02d7d4a04b6a33e4f--
