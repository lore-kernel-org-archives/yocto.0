Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A12B8E009B0
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 17:39:36 -0800 (PST)
Received: by mail-ie0-f177.google.com with SMTP id rl12so3688454iec.36
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 17:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LxP8zRGrGVaSycc0bHNtNziNvESLv0f4UTwaeQuqwUg=;
	b=Y0RimNqGfDvCMW3wNuNL+m9fUwKD7zX2PL1FaC26b9eUQvt8TN3lfwLDtOWqWimhX0
	wzLepjEvhoYPkFpd0GUfHNtc3FvbTOiWFeC8FUJx8xR7ji0cu/eCX3yWDH693yvxUlvp
	NyXp1XRV5JmXPNgK7t02i6M+0iP1u/lF9N3ZMmLDunm+p34MAQX2Eq3fcThSzlYXWBnC
	M3Ma+HsN+lFIoudRWGVY++VGWf56xtTbL1LHnt+U5KAUyWZiFsq1h4ReN2LvuFBZSGMB
	p4G23v9p7vWP+rGrcU38YJIXG0iyq5LFUXXh+p+Nhegr0xj96qv1t07VnzCll17UbdQS
	rpnw==
MIME-Version: 1.0
X-Received: by 10.43.75.2 with SMTP id yy2mr12918425icb.54.1394156375312; Thu,
	06 Mar 2014 17:39:35 -0800 (PST)
Received: by 10.50.224.136 with HTTP; Thu, 6 Mar 2014 17:39:35 -0800 (PST)
Received: by 10.50.224.136 with HTTP; Thu, 6 Mar 2014 17:39:35 -0800 (PST)
In-Reply-To: <CAA7h+Epd3vWbrH5eOm5SYzT7X97sJ6Y6yH61=21W7CnuTQzNjQ@mail.gmail.com>
References: <1394028560.17657.YahooMailNeo@web163103.mail.bf1.yahoo.com>
	<CAMKF1spN_KT1-PtQR22ixmQ=xTxBoAht04AY11CauCz0ba0BiQ@mail.gmail.com>
	<CAA7h+Eqr8bVtsoYoNA7EWhUJZ63L27botuvLiBhx5O5CwLF2+Q@mail.gmail.com>
	<CAMKF1srUeJ-Djk_ibR=PYW9MS3FVX20psJZMMguxYEVWdwoVJQ@mail.gmail.com>
	<CAA7h+Epd3vWbrH5eOm5SYzT7X97sJ6Y6yH61=21W7CnuTQzNjQ@mail.gmail.com>
Date: Thu, 6 Mar 2014 17:39:35 -0800
Message-ID: <CAMKF1sosDf5UJkNwjvPFVYxSo-Jt3DHnKZ0A_B_YWQ_ET7o6Rg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Adding headers to tool chain
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
X-List-Received-Date: Fri, 07 Mar 2014 01:39:38 -0000
Content-Type: multipart/alternative; boundary=001a11c30ef0830e5504f3fa53d4

--001a11c30ef0830e5504f3fa53d4
Content-Type: text/plain; charset=UTF-8

-Khem
On Mar 6, 2014 4:30 PM, "Rick Bianchi" <bianchirickkutta@gmail.com> wrote:
>
> Khem,
> I did the following, but still no headers and source in /usr/src:
>

yes its application sdk not kernel or device driver sdk

> bitbake meta-toolchain
>
> bitbake -cpopulate_sdk gumstix-console-image
>
>
>
>
> On Thu, Mar 6, 2014 at 12:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Thu, Mar 6, 2014 at 11:12 AM, Rick Bianchi
>> <bianchirickkutta@gmail.com> wrote:
>> > Khem,
>> > Is this the same process if I needed to get the kernel headers and
source
>> > onto the build?
>> >
>>
>> this is application development so kernel headers for userspace will be
there.
>>
>> >
>> > On Wed, Mar 5, 2014 at 2:15 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >> On Wed, Mar 5, 2014 at 6:09 AM, Joel Parker <joelparker27@yahoo.com>
>> >> wrote:
>> >> > $ bitbake meta-toolchain
>> >>
>> >> do bitbake -cpopulate_sdk <image-to-which-you-added-sqlite>
>> >> and install that SDK
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >
>> >
>
>

--001a11c30ef0830e5504f3fa53d4
Content-Type: text/html; charset=UTF-8

<p dir="ltr"></p>
<p dir="ltr">-Khem<br>
On Mar 6, 2014 4:30 PM, &quot;Rick Bianchi&quot; &lt;<a href="mailto:bianchirickkutta@gmail.com">bianchirickkutta@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Khem,<br>
&gt; I did the following, but still no headers and source in /usr/src:<br>
&gt;</p>
<p dir="ltr">yes its application sdk not kernel or device driver sdk</p>
<p dir="ltr">&gt; bitbake meta-toolchain<br>
&gt;<br>
&gt; bitbake -cpopulate_sdk gumstix-console-image<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Mar 6, 2014 at 12:34 PM, Khem Raj &lt;<a href="mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Mar 6, 2014 at 11:12 AM, Rick Bianchi<br>
&gt;&gt; &lt;<a href="mailto:bianchirickkutta@gmail.com">bianchirickkutta@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; Khem,<br>
&gt;&gt; &gt; Is this the same process if I needed to get the kernel headers and source<br>
&gt;&gt; &gt; onto the build?<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; this is application development so kernel headers for userspace will be there.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, Mar 5, 2014 at 2:15 PM, Khem Raj &lt;<a href="mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Wed, Mar 5, 2014 at 6:09 AM, Joel Parker &lt;<a href="mailto:joelparker27@yahoo.com">joelparker27@yahoo.com</a>&gt;<br>
&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; $ bitbake meta-toolchain<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; do bitbake -cpopulate_sdk &lt;image-to-which-you-added-sqlite&gt;<br>
&gt;&gt; &gt;&gt; and install that SDK<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</p>

--001a11c30ef0830e5504f3fa53d4--
