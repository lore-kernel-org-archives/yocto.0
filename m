Return-Path: <b.hutchman@gmail.com>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A05C4E01775
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 14:26:54 -0700 (PDT)
Received: by mail-ea0-f179.google.com with SMTP id b10so947603eae.24
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 14:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=h2KGwsGgUxdoFCBSNgTXI14Ak17chIdmJC8qXJp9P9A=;
	b=H6bltbZ0jQlPECohy5sD3gOF1YlKsHLRl33eJghVJ+y3yl96eBdNrdyGwW7qRUCJwj
	ZcP+htjRaJ1M+icUfq8jKufwylHhIPU/j6HPRck7xs96GquyupITtPoMq7W5b6PyrJau
	A3PWyd8i/mRweMZIZfhamM9+ZNURCUAfYiXNKsDLwUCY7G6sUpRqv9jPCIuq2ZLm+E5j
	2FjZEifN2TPUrlOXdPZlGZExl2zJedTT4cOD/y1v1YPq26XZ+upanjCKrPbVPPuM/Nnw
	QQkOa5rZbZdPCgbNrV+cy9ZDvC2cE+YoWtiVBJIsqOjd7t870Z//UmEccgCPVIy6BGVV
	zrpQ==
MIME-Version: 1.0
X-Received: by 10.15.23.1 with SMTP id g1mr4347564eeu.63.1383168413686; Wed,
	30 Oct 2013 14:26:53 -0700 (PDT)
Received: by 10.223.170.195 with HTTP; Wed, 30 Oct 2013 14:26:53 -0700 (PDT)
Received: by 10.223.170.195 with HTTP; Wed, 30 Oct 2013 14:26:53 -0700 (PDT)
In-Reply-To: <CAFZh4h8G1MAbr45-gU1cs=FgrgJdyiGDAYzCU5AsprNFqeE6hw@mail.gmail.com>
References: <CAFZh4h8aKoop0wdU7THaBD6+5FnEgfPKW0zM_-wqpOOcLgXdsg@mail.gmail.com>
	<CAFZh4h-ULci3FhdeNJDE1zEFRqAQpwVJyLY95-PVW0z2sQFGHQ@mail.gmail.com>
	<20131030054112.GA23839@lpalcu-linux>
	<CAFZh4h_oN02R_Z2ymVd6Df0RRnyWichQAD0dtvarUefd4k_eSQ@mail.gmail.com>
	<20131030133451.GA25490@lpalcu-linux>
	<CAFZh4h_fdSXqN5KoacQn9FfTjLNAC4UijS3eM2HPd+eHXMXdew@mail.gmail.com>
	<20131030144108.GA1061@lpalcu-linux>
	<CAFZh4h8G1MAbr45-gU1cs=FgrgJdyiGDAYzCU5AsprNFqeE6hw@mail.gmail.com>
Date: Wed, 30 Oct 2013 17:26:53 -0400
Message-ID: <CAFZh4h9puvv_hvxOtyrx6F+ohsQYb-GbN-DxgncQZ0yacH88Ug@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Getting a relocate_sdk.py issue when installing a sdk on Centos
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
X-List-Received-Date: Wed, 30 Oct 2013 21:26:56 -0000
Content-Type: multipart/alternative; boundary=089e01681db0f6662404e9fbfd48

--089e01681db0f6662404e9fbfd48
Content-Type: text/plain; charset=ISO-8859-1

On Oct 30, 2013 10:45 AM, "Brian Hutchinson" <b.hutchman@gmail.com> wrote:
>
> On Wed, Oct 30, 2013 at 10:41 AM, Laurentiu Palcu <
laurentiu.palcu@intel.com> wrote:
>>
>>
>> > Helps to read the release notes ... I wonder if I shouldn't also make
folks
>> > with these older Centos boxes also install buildtools-tarball so
everyone has
>> > the same rev of Python etc.  That might make the SDK install go better
too.
>> If those folks are just users of the SDK then I don't think this is
>> necessary, provided that the one that generated the SDK tarball had the
fix
>> installed.
>>
>
> Yes, they are just using the generated SDK.
>
> Thanks for putting me onto this patch, I'm looking at it now.
>
> Regards,
>
> Brian
>
>

Thanks!  That patch fixed both the i686 and x86_64 versions of my SDK!

You are the man!

Regards,

Brian

--089e01681db0f6662404e9fbfd48
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Oct 30, 2013 10:45 AM, &quot;Brian Hutchinson&quot; &lt;<a href=3D"mailt=
o:b.hutchman@gmail.com">b.hutchman@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, Oct 30, 2013 at 10:41 AM, Laurentiu Palcu &lt;<a href=3D"mailt=
o:laurentiu.palcu@intel.com">laurentiu.palcu@intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Helps to read the release notes ... I wonder if I shouldn&#39=
;t also make folks<br>
&gt;&gt; &gt; with these older Centos boxes also install buildtools-tarball=
 so everyone has<br>
&gt;&gt; &gt; the same rev of Python etc. =A0That might make the SDK instal=
l go better too.<br>
&gt;&gt; If those folks are just users of the SDK then I don&#39;t think th=
is is<br>
&gt;&gt; necessary, provided that the one that generated the SDK tarball ha=
d the fix<br>
&gt;&gt; installed.<br>
&gt;&gt;<br>
&gt;<br>
&gt; Yes, they are just using the generated SDK.<br>
&gt;<br>
&gt; Thanks for putting me onto this patch, I&#39;m looking at it now.<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Brian<br>
&gt; =A0<br>
&gt;</p>
<p dir=3D"ltr">Thanks!=A0 That patch fixed both the i686 and x86_64 version=
s of my SDK!</p>
<p dir=3D"ltr">You are the man!</p>
<p dir=3D"ltr">Regards,</p>
<p dir=3D"ltr">Brian</p>

--089e01681db0f6662404e9fbfd48--
