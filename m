Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BADDE00798; Wed, 23 Jul 2014 02:23:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og110.obsmtp.com (exprod8og110.obsmtp.com [64.18.3.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF83AE00524
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 02:23:21 -0700 (PDT)
Received: from mail-la0-f49.google.com ([209.85.215.49]) (using TLSv1) by
	exprod8ob110.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU89/CFDuQTmDCCVOlEn3iPQ/ewB5RzUt@postini.com;
	Wed, 23 Jul 2014 02:23:22 PDT
Received: by mail-la0-f49.google.com with SMTP id hz20so682837lab.22
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 02:23:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=D24NSUPqILAx765hmx2EzKOSKIzsKBGffjvn7AV52l8=;
	b=Gpdhabl9az6S2Gn0q5PWP+NkT8mKWnAgeW8Ox8MCn5sNdUtKJfMcAF3CTy9sytcANj
	RESrZ8y3qktfLRq4a8Nmxhdii/DnyKf4hU+mIAG0yH6rg7Ee35K/x+OmJsrEYxiKIhYx
	TumXr9/ACmsJAxNboDmJPm+vFy5zsf0Fa+KYWAFs6NdrTH4FQHN6dh5rUsX95CCBj/E+
	se1CoX6usHLil7cIqUQYWV0VHGb+I74A6OIRhfxRTnFWpu/1ky3bGRDYfV5zrgC7ywEN
	fKDs+XHJa091E25lrz89i97x/VXccJYeeM4q14yQrMJVklbnIAtrmPswwK7yiG9xIUIl
	jMug==
X-Gm-Message-State: ALoCoQmnHpT+WHnn3s5P3cGBYa+HdkjvFwR0F++KEHG8zSnwImpRVB6yzUqzQ5ekDs2/yh/3WdGSSk7kXPVJluOFsyO6otP3m3q9/EzTs6o8yMRuurEdz9C2YxFJuu6fM68uVBwX/RQq
X-Received: by 10.112.4.100 with SMTP id j4mr28043457lbj.39.1406107399474;
	Wed, 23 Jul 2014 02:23:19 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.112.4.100 with SMTP id j4mr28043440lbj.39.1406107399344;
	Wed, 23 Jul 2014 02:23:19 -0700 (PDT)
Received: by 10.152.36.37 with HTTP; Wed, 23 Jul 2014 02:23:19 -0700 (PDT)
In-Reply-To: <CALkREYBOB8sO2SorLLshZZGtk6f=PJpEtUi=sJnHtkGHerm7wA@mail.gmail.com>
References: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
	<CALkREYBOB8sO2SorLLshZZGtk6f=PJpEtUi=sJnHtkGHerm7wA@mail.gmail.com>
Date: Wed, 23 Jul 2014 17:23:19 +0800
Message-ID: <CAJrRHk6kFWpzUc+r4pd9xmZo+pn=f1a5R5oVtW1yLtqHurFMKg@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Anooj Gopi <anoojgopi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK not contianing archive libraries
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
X-List-Received-Date: Wed, 23 Jul 2014 09:23:25 -0000
Content-Type: multipart/alternative; boundary=14dae9473a390df2ae04fed8e400

--14dae9473a390df2ae04fed8e400
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for your reply Anooj. Apparently, based on my findings, the SDK
contains libraries that are "libtool archives", .la. For my part, I have
used .a only which is not "libtoolized". I'm finding a way how to make my
unit generate a libtool archive.

- Joseph


On Wed, Jul 23, 2014 at 3:18 PM, Anooj Gopi <anoojgopi@gmail.com> wrote:

> The package installed tmp/sysroot and your SDK sysroot are not same by
> default.
> You have to find in which package your .a files are. Adding it to
> "TOOLCHAIN_HOST_TASK" may help.
> I am not sure if this will help as I am currently through the similar
> issues.
>
>
> On Wed, Jul 23, 2014 at 5:20 AM, Joseph Andrew de la Pe=C3=B1a <
> jdelapena@lexmark.com> wrote:
>
>> Good day,
>>
>> I have bumped into a problem when compiling from my generated SDK (-c
>> populate_sdk). I have archive libraries (.a) that were not reflected in =
my
>> SDK's lib dir in sysroots. However, my shared objects (.so) are present.=
 I
>> needed both .a and .so to be present in my SDK. With the former being th=
e
>> problem, how can archive libraries be included in SDK? I've checked in m=
y
>> poky and all .a are installed successfully in tmp/sysroots.
>>
>> Thanks,
>> Joseph
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--14dae9473a390df2ae04fed8e400
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for your reply Anooj. Apparently, based on my findi=
ngs, the SDK contains libraries that are &quot;libtool archives&quot;, .la.=
 For my part, I have used .a only which is not &quot;libtoolized&quot;. I&#=
39;m finding a way how to make my unit generate a libtool archive.<div>
<br></div><div>- Joseph</div></div><div class=3D"gmail_extra"><br><br><div =
class=3D"gmail_quote">On Wed, Jul 23, 2014 at 3:18 PM, Anooj Gopi <span dir=
=3D"ltr">&lt;<a href=3D"mailto:anoojgopi@gmail.com" target=3D"_blank">anooj=
gopi@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">The package installed tmp/s=
ysroot and your SDK sysroot are not same by default.<br>You have to find in=
 which package your .a files are. Adding it to &quot;TOOLCHAIN_HOST_TASK&qu=
ot; may help.<br>
I am not sure if this will help as I am currently through the similar=C2=A0=
 issues.<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote"><div><d=
iv class=3D"h5">On Wed, Jul 23, 2014 at 5:20 AM, Joseph Andrew de la Pe=C3=
=B1a <span dir=3D"ltr">&lt;<a href=3D"mailto:jdelapena@lexmark.com" target=
=3D"_blank">jdelapena@lexmark.com</a>&gt;</span> wrote:<br>

</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div dir=
=3D"ltr">Good day,<div><br></div><div>I have bumped into a problem when com=
piling from my generated SDK (-c populate_sdk). I have archive libraries (.=
a) that were not reflected in my SDK&#39;s lib dir in sysroots. However, my=
 shared objects (.so) are present. I needed both .a and .so to be present i=
n my SDK. With the former being the problem, how can archive libraries be i=
ncluded in SDK? I&#39;ve checked in my poky and all .a are installed succes=
sfully in tmp/sysroots.</div>


<div><br></div><div>Thanks,</div><div>Joseph</div></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--14dae9473a390df2ae04fed8e400--
