Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CA7AE00874; Mon, 22 Sep 2014 21:59:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.94 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og107.obsmtp.com (exprod8og107.obsmtp.com [64.18.3.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80195E00871
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 21:59:31 -0700 (PDT)
Received: from mail-we0-f182.google.com ([74.125.82.182]) (using TLSv1) by
	exprod8ob107.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVCD+M5kKOZCLgBWatRgKRLsu4T3eXj0F@postini.com;
	Mon, 22 Sep 2014 21:59:34 PDT
Received: by mail-we0-f182.google.com with SMTP id u57so2052922wes.41
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 21:59:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Nitx1AwI11bw+2Q2Idn/vJKpq4EWNztsbL9kc9qnuik=;
	b=EZbGeVrgKvXYPE8u7IqGpj1MS2hjzZPhBpEKlyRvMdu8aRgrnGPPc9Je1IeO1OTyZ7
	AzUlfhVvVqfnZxeL1eWhrG6BZ+1j5P40yEE7oWu4xAtRKALgED5eD6HhQKflhFug2/nf
	o9z0SXhBmILFZM9HzT671g6/eXNanXgAHUW+H9pSUfz6eobAb1zMHfQpQjck6GNA0rwx
	TuKIsHBrwruVHG3yOph2oe/C/maaP2sSmRI1HTYXq4LVW+FWSYHEXqrQiqijWr1XW8gV
	Y3urCnkxz6Q6xmS/KfvGC6UsU+D2G9/n9My2RXZkK0ZRm2JWumv6Z8G0/lXf3ohRZtNG
	Lnhw==
X-Gm-Message-State: ALoCoQkvA7RasJ2mOTfhR8K7dZuIdjXXnxhA34zUsJHJsdFW2P487l6opn8R8JePxVongd/buyKwaxNwEQmmiSsNXSF45bTnqtWzf21ANuRkX6jIZXHiDeZkK7XiL455+t1z1LmQFAZNX2W71rl2on1Esdxvp3VX1g==
X-Received: by 10.194.78.101 with SMTP id a5mr251364wjx.118.1411448369971;
	Mon, 22 Sep 2014 21:59:29 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.194.78.101 with SMTP id a5mr251359wjx.118.1411448369898;
	Mon, 22 Sep 2014 21:59:29 -0700 (PDT)
Received: by 10.27.170.66 with HTTP; Mon, 22 Sep 2014 21:59:29 -0700 (PDT)
In-Reply-To: <0BCF42B3-E535-4126-A211-041FBD780946@planar.com>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
	<CAJrRHk5wwXTHq0G3vDjp_=MKB6COWBBGd2JG9+_r-q-3yU3jrQ@mail.gmail.com>
	<0BCF42B3-E535-4126-A211-041FBD780946@planar.com>
Date: Tue, 23 Sep 2014 12:59:29 +0800
Message-ID: <CAJrRHk50_mzbFBxD3sLu14LLf6jbzM3NWx7jQ=yEj0A8OX60AA@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include static library and headers in sdk
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
X-List-Received-Date: Tue, 23 Sep 2014 04:59:36 -0000
Content-Type: multipart/alternative; boundary=047d7bf0c298b4f2360503b46e52

--047d7bf0c298b4f2360503b46e52
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Matt,

A simple example is publishing libxml-parser-perl in
meta/recipes-core/libxml/libxml2 into SDK.

1. Make sure libxml-parser.perl has a nativesdk for BBCLASSEXTEND in its
recipe.
2. Add nativesdk-libxml-parser-perl in RDEPENDS for
nativesdk-packagegroup-sdk-host
3. Then -c populate_sdk <image>

You can also try if the unit itself can be successfully installed in sdk
sysroot by: bitbake -C compile nativesdk-<your unit>.
This will save you more time.

Thanks,
Joseph

On Tue, Sep 23, 2014 at 12:31 PM, Matt Schuckmann <
Matt.Schuckmann@planar.com> wrote:

> Thanks for the response but I'm not sure that I understand.
> Where does this stuff go? In a Packagegroup file.
>
> I tried adding simple1-staticdev to IMAGE_INSTALL and I get an error that
> it doesn't exist.
>
> Can you point me at an example?
>
> Matt S.
> Sent from my pocket
>
> On Sep 22, 2014, at 7:52 PM, Joseph Andrew de la Pe=C3=B1a <
> jdelapena@lexmark.com> wrote:
>
> Good day Matt,
>
> You need to explicitly RDEPENDS your-unit-staticdev and your-unit in your
> image's packagegroup. Assuming, your FILES_${PN}-staticdev is your .a and
> FILES_${PN} contains your headers.
>
> Thanks,
> Joseph
>
> On Tue, Sep 23, 2014 at 9:57 AM, Matt Schuckmann <
> Matt.Schuckmann@planar.com> wrote:
>
>> I've got a custom image and 2 custom recipes both very simple libraries
>> that use cmake.
>> I included the libraries into my image by adding
>> EXTRA_IMAGEDEPENDS +=3D "simple1"
>> EXTRA_IMAGEDEPENDS +=3D "simple2"
>> To my image recipe.
>>
>> When I build my image (i.e. bitbake custom-image ) I can see that the
>> library header files and .a files are placed in the correct place in the
>> sysroot directory.
>>
>> However when I try to create an sdk (i.e. bitbake custom-image -c
>> populate_sdk) and then install the SDK the headers and .a files are nowh=
ere
>> to be found in the installed sysroot.
>>
>> What am I missing?
>>
>> Thanks,
>> Matt S.
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--047d7bf0c298b4f2360503b46e52
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Matt,<div><br></div><div>A simple example is publ=
ishing libxml-parser-perl in meta/recipes-core/libxml/libxml2 into SDK.</di=
v><div><br></div><div>1. Make sure libxml-parser.perl has a nativesdk for B=
BCLASSEXTEND in its recipe.</div><div>2. Add nativesdk-libxml-parser-perl i=
n RDEPENDS for nativesdk-packagegroup-sdk-host</div><div>3. Then -c populat=
e_sdk &lt;image&gt;</div><div><br></div><div>You can also try if the unit i=
tself can be successfully installed in sdk sysroot by: bitbake -C compile n=
ativesdk-&lt;your unit&gt;.</div><div>This will save you more time.</div><d=
iv><br></div><div>Thanks,</div><div>Joseph</div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Tue, Sep 23, 2014 at 12:31 PM, Matt=
 Schuckmann <span dir=3D"ltr">&lt;<a href=3D"mailto:Matt.Schuckmann@planar.=
com" target=3D"_blank">Matt.Schuckmann@planar.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"auto"><div>Thanks for the respon=
se but I&#39;m not sure that I understand.=C2=A0</div><div>Where does this =
stuff go? In a Packagegroup file.=C2=A0</div><div><br></div><div>I tried ad=
ding simple1-staticdev to IMAGE_INSTALL and I get an error that it doesn&#3=
9;t exist.=C2=A0</div><div><br></div><div>Can you point me at an example?<b=
r><br><div>Matt S.=C2=A0</div>Sent from my pocket</div><div><div class=3D"h=
5"><div><br>On Sep 22, 2014, at 7:52 PM, Joseph Andrew de la Pe=C3=B1a &lt;=
<a href=3D"mailto:jdelapena@lexmark.com" target=3D"_blank">jdelapena@lexmar=
k.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div><div dir=
=3D"ltr"><div>Good day Matt,</div><div><br></div>You need to explicitly RDE=
PENDS your-unit-staticdev and your-unit in your image&#39;s packagegroup. A=
ssuming, your FILES_${PN}-staticdev is your .a and FILES_${PN} contains you=
r headers.<div><br></div><div>Thanks,</div><div>Joseph</div></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Sep 23, 2014 at 9:=
57 AM, Matt Schuckmann <span dir=3D"ltr">&lt;<a href=3D"mailto:Matt.Schuckm=
ann@planar.com" target=3D"_blank">Matt.Schuckmann@planar.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">I&#39;ve got a custom image and 2=
 custom recipes both very simple libraries that use cmake.<br>
I included the libraries into my image by adding<br>
EXTRA_IMAGEDEPENDS +=3D &quot;simple1&quot;<br>
EXTRA_IMAGEDEPENDS +=3D &quot;simple2&quot;<br>
To my image recipe.<br>
<br>
When I build my image (i.e. bitbake custom-image ) I can see that the libra=
ry header files and .a files are placed in the correct place in the sysroot=
 directory.<br>
<br>
However when I try to create an sdk (i.e. bitbake custom-image -c populate_=
sdk) and then install the SDK the headers and .a files are nowhere to be fo=
und in the installed sysroot.<br>
<br>
What am I missing?<br>
<br>
Thanks,<br>
Matt S.<br>
<span><font color=3D"#888888"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>
</div></blockquote></div></div></div></blockquote></div><br></div>

--047d7bf0c298b4f2360503b46e52--
