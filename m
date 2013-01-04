Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB7C0E0045D
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 13:08:27 -0800 (PST)
Received: by mail-la0-f46.google.com with SMTP id fq13so10456802lab.33
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2013 13:08:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=rWcLsmFvK2cBctcM9hz6W9KTO6nurcyq0u6hW+cH8dQ=;
	b=dhpDTKCgbd+mzsZrSbXxAZzm393lCyWKEeE184P58PKyU3K9+GvmrsdZ2D30ZsvW8l
	D8SfDEWZrNE+3488LtOZykATPD67YaVPqdMtNH3U5d2qB4MSnHYFgpRraWo0SonR9qF9
	sMETGB5vOUZmFqbQ500dZFg+2CoDFllCKstv0zQoBoouKEBIE26cJtdhREifw6ckp4D9
	8vKF9uzuFpnGMgSEThtfZDnIR9XbUonR6GgS/cYN4jvGBqZtQ/97Q8vaHRlQug7mBpp2
	6J7xPtw5al8NARW5aFVHPtDWCENclKE9DTARTpLEtnD0veTS9FFbMQFHkuqBpjGrmb4J
	XSWg==
Received: by 10.152.124.68 with SMTP id mg4mr50269261lab.51.1357333706498;
	Fri, 04 Jan 2013 13:08:26 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.34.10 with HTTP; Fri, 4 Jan 2013 13:08:06 -0800 (PST)
In-Reply-To: <50E741F0.50303@dynamicdevices.co.uk>
References: <CD0B6407.1EB06%belen.barros.pena@intel.com>
	<50E741F0.50303@dynamicdevices.co.uk>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 4 Jan 2013 14:08:06 -0700
X-Google-Sender-Auth: rea7Eb_X6jm_qsSfazwUJVcVk2Y
Message-ID: <CABcZANndjkYoRecpoeUQcUzCevoVqCPWO-EpFCMKSaxh6QFoew@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Bitbake and task offloading onto multiple cloud-based servers
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
X-List-Received-Date: Fri, 04 Jan 2013 21:08:28 -0000
Content-Type: multipart/alternative; boundary=f46d043bd8fe6ae3b604d27ce171

--f46d043bd8fe6ae3b604d27ce171
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 4, 2013 at 1:56 PM, Alex J Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

> Can anybody advise on whether bitbake currently supports offloading of
> build tasks onto multiple systems? Perhaps cloud based?
>
> I'm thinking that it would be more efficient for me if I could bring up
> a number of Amazon EC2 servers (or similar) then have bitbake
> parallelise the build onto those servers to significantly reduce my
> build times?
>
> I see bitbake supports a level of task parallelisation on a single box.
>
> Can parallelisation of build onto multiple systems be achieved?
>
> Is it something that should even be a goal?
>

It's not supported today. It could be implemented, but nobody has made it a
priority and done so.
-- 
Christopher Larson

--f46d043bd8fe6ae3b604d27ce171
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quo=
te">On Fri, Jan 4, 2013 at 1:56 PM, Alex J Lennon <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dy=
namicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":ca">Can anybody advise on whethe=
r bitbake currently supports offloading of<br>
build tasks onto multiple systems? Perhaps cloud based?<br>
<br>
I&#39;m thinking that it would be more efficient for me if I could bring up=
<br>
a number of Amazon EC2 servers (or similar) then have bitbake<br>
parallelise the build onto those servers to significantly reduce my<br>
build times?<br>
<br>
I see bitbake supports a level of task parallelisation on a single box.<br>
<br>
Can parallelisation of build onto multiple systems be achieved?<br>
<br>
Is it something that should even be a goal?</div></blockquote></div><br>It&=
#39;s not supported today. It could be implemented, but nobody has made it =
a priority and done so.<br>-- <br>Christopher Larson</div></div>

--f46d043bd8fe6ae3b604d27ce171--
