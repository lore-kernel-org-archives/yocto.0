Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f174.google.com (mail-ea0-f174.google.com
	[209.85.215.174]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 03520E006F0
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 09:25:11 -0800 (PST)
Received: by mail-ea0-f174.google.com with SMTP id 1so2124044eaa.33
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 09:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=l0kyppBPTbWmL6YPgrKYxBfMi+uItuejTHW7KjEGcpw=;
	b=BagOxzNxsi+LNNZ8d3UKY+v0uH20BlecblAmPDbJH3JdRHOMZI3KbV5SU4ufIh9XQ9
	S2EekfGnQFhIjf2HYOtrpTUzSf85GR+kzja5YuHekSZpcdXZ0rH7gAKt5agDXqV23X7E
	Eqr6TO7l16TfjjCQCk24NB5nmvRcDsZgE4RNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=l0kyppBPTbWmL6YPgrKYxBfMi+uItuejTHW7KjEGcpw=;
	b=gFD323hSaCj9ZQ0FDXkJZN7HfkO8hSJAXSVB8DnGetWOaNPYHux2DjGhNEZh2lEV7H
	eZ+lQpBPMFInXmhqs3XnDiZ+SHk2JBV5URJ8b6B9Qdu7NeolNaasOw8DWXZd65aiLPND
	UZOKlIFzg/w8vgb9zA7WvJTa02mDuDOOg6phCXvWUsjIBd3t9d95Yv/iO6MOsoXMYbSQ
	jK6OoQOGKwI2MlTH+W3PrmwMWlmd7o9QFYsI202ZFLkVQcTQ9iCyFv1uG4AHD/1kJ+NP
	1XWkbKQNMsNZ1JMT4aR2CM2m+6gWRF5FlAxcoDXY2xflLHOZEdky4sWiGDCZeAvnYXmB
	j9Gg==
MIME-Version: 1.0
X-Received: by 10.14.176.133 with SMTP id b5mr29581432eem.37.1360430710049;
	Sat, 09 Feb 2013 09:25:10 -0800 (PST)
Received: by 10.223.133.193 with HTTP; Sat, 9 Feb 2013 09:25:09 -0800 (PST)
Received: by 10.223.133.193 with HTTP; Sat, 9 Feb 2013 09:25:09 -0800 (PST)
In-Reply-To: <CA+gsK-qAD49kkTScEAjKWs5zvsSyskKqumFqzj2j7LfHs43VJQ@mail.gmail.com>
References: <CA+gsK-oajsnY7o0BZbXvn_Yh70o5fwUnVOU+HCr6qGqXZXPPow@mail.gmail.com>
	<2254268.7tk7KJuRaj@helios>
	<CA+gsK-qAD49kkTScEAjKWs5zvsSyskKqumFqzj2j7LfHs43VJQ@mail.gmail.com>
Date: Sat, 9 Feb 2013 09:25:09 -0800
Message-ID: <CA+gsK-rZKVkXe762QUa7mGV2Vc0owKDQiDy3zor+7YJZb-cHQg@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQloNoem5/5pqD0Vk4u1x3HTxsq/ndHIJn/lE/JSVzBQa2Gp7loydRz9Z4ZdOcqha9B9SkvH
Cc: yocto@yoctoproject.org
Subject: Re: [danny] core-image-minimal-dev is missing dev packages
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
X-List-Received-Date: Sat, 09 Feb 2013 17:25:12 -0000
Content-Type: multipart/alternative; boundary=047d7b603c0236cbc004d54df5a0

--047d7b603c0236cbc004d54df5a0
Content-Type: text/plain; charset=ISO-8859-1

I have not verified every single dev package but the linker files in
/usr/lib/<arch> and related are missing. You cannot link against a dev
image sysroot. That used to work.

:rjs
On Feb 9, 2013 9:19 AM, "Rudolf Streif" <rstreif@linuxfoundation.org> wrote:

> Thanks, Paul. Not sure however. I should have included that I used plain
> old i586 architecture. There should be no dashes/underscore issues there.
>
> :rjs
> On Feb 9, 2013 6:30 AM, "Paul Eggleton" <paul.eggleton@linux.intel.com>
> wrote:
>
>> On Friday 08 February 2013 19:17:35 Rudolf Streif wrote:
>> > This is weird and I do not have an explanation for it. For Danny:
>> >
>> > core-image-minimal-dev is missing the dev packages (pkg-dev)
>> >
>> > I build it but the packages are not there. The cause does not seem to
>> be my
>> > setup because the core-image-minimal on the ADT download site is missing
>> > them too.
>>
>> I can't tell but it could be this bug, for which I have sent a patch:
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3792
>>
>> (Although this doesn't prevent *all* dev packages from being included,
>> just
>> some.)
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>

--047d7b603c0236cbc004d54df5a0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I have not verified every single dev package but the linker =
files in /usr/lib/&lt;arch&gt; and related are missing. You cannot link aga=
inst a dev image sysroot. That used to work.</p>
<p dir=3D"ltr">:rjs</p>
<div class=3D"gmail_quote">On Feb 9, 2013 9:19 AM, &quot;Rudolf Streif&quot=
; &lt;<a href=3D"mailto:rstreif@linuxfoundation.org">rstreif@linuxfoundatio=
n.org</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>
<p dir=3D"ltr">Thanks, Paul. Not sure however. I should have included that =
I used plain old i586 architecture. There should be no dashes/underscore is=
sues there.</p>
<p dir=3D"ltr">:rjs</p>
<div class=3D"gmail_quote">On Feb 9, 2013 6:30 AM, &quot;Paul Eggleton&quot=
; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">pa=
ul.eggleton@linux.intel.com</a>&gt; wrote:<br type=3D"attribution"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">

On Friday 08 February 2013 19:17:35 Rudolf Streif wrote:<br>
&gt; This is weird and I do not have an explanation for it. For Danny:<br>
&gt;<br>
&gt; core-image-minimal-dev is missing the dev packages (pkg-dev)<br>
&gt;<br>
&gt; I build it but the packages are not there. The cause does not seem to =
be my<br>
&gt; setup because the core-image-minimal on the ADT download site is missi=
ng<br>
&gt; them too.<br>
<br>
I can&#39;t tell but it could be this bug, for which I have sent a patch:<b=
r>
<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3792" target=
=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3792</a><br=
>
<br>
(Although this doesn&#39;t prevent *all* dev packages from being included, =
just<br>
some.)<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</blockquote></div>
</blockquote></div>

--047d7b603c0236cbc004d54df5a0--
