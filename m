Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 236D5E00D3F; Mon,  9 Oct 2017 04:17:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A66D4E00D1B
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 04:17:54 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id f4so22429232wme.0
	for <yocto@yoctoproject.org>; Mon, 09 Oct 2017 04:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fdQhIrtrGE+W6zxCQi4Mo1tgGOAqnsZUyaFrilFfKf4=;
	b=YiCEOpe2C1heUk7caFf/rpMJtIgBtm3E8UVKxgrqxaWratKyuum7kPZXKEHDNqKcXM
	EUT5UX09s8LK/5sUEGglZhBbRyLIFGmR9xKDe+/fiuAMZAqx5LnJlfYfXJvM0ux1gAVt
	S8C6X7kQSQ07D4kjqal+/gtfN2vsXbyl9Z36hntTyuwIu89LTlFxHHDrbXfOpD7SrvDv
	U74zKzfE/9j8Xrnm71ol2spxZjiLRyjloRb/D9LFfVXByA1q3nas0EtkvuokOUQNA4mr
	970a0FqiS1Kiw4Lpvg/WqdW6MwQHJWFx9U9VLQ5hpbKogTEr49FYAxb7dpLOZarjywEH
	oHwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fdQhIrtrGE+W6zxCQi4Mo1tgGOAqnsZUyaFrilFfKf4=;
	b=G1pPNFmjV9elnZWjQcHZvMf7Xrnwm6Uw9lVbWgcqGXAmd4gF5/bLdOkp3fROzkrwlc
	XmO3V1A8BxyO51H8WzdtHBsoaAsCrSv1rFh3GdfhVDqWws+2jQ0H3lxlzHLc17uRSiF0
	iheT78O9GXpZGFDJtwxvMGlCrvtMWGkWTg23WbM+8ALi4OOffhyTZChnDiAMGYMR/QoE
	Fxm2s6k9TGkxKuwj+ywG2eKl6fvXRJzNQbqe8pX6gKOIRuCJrlgRGzjARcuFiQbx4LQ6
	DYySrd0ja34OqE+6/Ejxi18ezDek1WM+dsxQHwaA9urh2Yu1tqbVolyXgjlxuFg/S/ue
	PmvQ==
X-Gm-Message-State: AMCzsaWx2Nqm4wAb4so3uZurNZFKR6clrzUp4ruCqgtPGyTJAzXoZiXX
	nLd2ouD3Av+laAWu2M4sTMeIEJDs++HWQYUAqOY=
X-Google-Smtp-Source: AOwi7QBubuNFSqm6qXT41GdFrN49lqSCL/t8MUjBTeHILngst9P+NPgA89zYWUXosatxb4MQV4vnFLbboAHAyIBTDmM=
X-Received: by 10.223.158.208 with SMTP id b16mr715497wrf.99.1507547873753;
	Mon, 09 Oct 2017 04:17:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.183.212 with HTTP; Mon, 9 Oct 2017 04:17:52 -0700 (PDT)
In-Reply-To: <CAJTo0LZT_hfFH4e+9gQi6e4+FLPQh2Q-U8jdx=8aKHj-k4WK2g@mail.gmail.com>
References: <1e416606941630df1aab3c738aab7c66@sw-optimization.com>
	<CAJTo0LY6iJ=OYvxbMb-Bt_z3ahfsy0eGiCpvxvjSnEGNGiKGrw@mail.gmail.com>
	<68a10b257f64bd9c808c96de999e19f0@sw-optimization.com>
	<CAJTo0LZT_hfFH4e+9gQi6e4+FLPQh2Q-U8jdx=8aKHj-k4WK2g@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 9 Oct 2017 13:17:52 +0200
Message-ID: <CA+chaQc2jWTCLnQHzkqtGa0Ccg+z7Bt=jA7v=X7dL60M4PZfCA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: u-boot recipe: Missing dependencies
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
X-List-Received-Date: Mon, 09 Oct 2017 11:17:55 -0000
Content-Type: multipart/alternative; boundary="089e0821062c7f4048055b1b5781"

--089e0821062c7f4048055b1b5781
Content-Type: text/plain; charset="UTF-8"

Be aware that when you provide python-native, it's more likely that
swig-native will be detected in sysroot as well and then u-boot will fail
to build libfdt python library.

To prevent this autodetection you can use something like this:

do_compile_prepend () {
    sed 's@\(^always += $(if $(shell which swig 2>
/dev/null),_libfdt.so)$\)@# do not autodetect swig, there is no swig-native
dependency \1@g' -i ${S}/tools/Makefile
}

which isn't needed in Yocto 2.3 Pyro and newer thanks to RSS and HOSTTOOLs
filtering.


On Mon, Oct 9, 2017 at 12:30 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 8 October 2017 at 18:04, Eric Schwarz <eas@sw-optimization.com> wrote:
>
>> Don't _append when you can just extend the assignment above.
>>>
>>
>> I just did it that way for the moment since I wanted to circumvent merge
>> conflicts when I upgrade the underlying recipes from openembedded.
>
>
> Well it's ugly, so if you want a patch in oe-core then don't introduce
> ugly for your convenience.
>
>
>> Depending on python-native does nothing as the binary isn't in $PATH
>>> still.
>>>
>>
>> I thought any Yocto native binaries built are in the PATH automatically.
>> - How
>> to fix this/do it correctly?
>>
>
> You need to inherit python3native, as python (and some others) are opt-in.
>
>
>> Can you provide a configuration to make U-Boot build on x86 for testing?
>>>
>>
>> I put now some patches in ordered manner on top of the original recipes
>> from
>> openembedded.
>> However, before sending I would like to fix two issues so the recipes can
>> go
>> into mainline immediately.
>>
>> 1.) I am working w/ -morty Yocto branch at the moment. The 'u-boot.inc'
>> from
>>     openembedded does not work w/ -morty.
>>     I get the following error "AttributeError: module 'bb.utils' has no
>>     attribute 'filter'". Building w/ the original -morty 'u-boot.inc'
>> works.
>>
>
> Yes, bb.utils.filter() is a new function that isn't in morty.
>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e0821062c7f4048055b1b5781
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Be aware that when you provide python-native, it&#39;s mor=
e likely that swig-native will be detected in sysroot as well and then u-bo=
ot will fail to build libfdt python library.<div><br></div><div>To prevent =
this autodetection you can use something like this:</div><div><br></div><di=
v><div>do_compile_prepend () {</div><div>=C2=A0 =C2=A0 sed &#39;s@\(^always=
 +=3D $(if $(shell which swig 2&gt; /dev/null),_libfdt.so)$\)@# do not auto=
detect swig, there is no swig-native dependency \1@g&#39; -i ${S}/tools/Mak=
efile</div><div>}</div></div><div><br></div><div>which isn&#39;t needed in =
Yocto 2.3 Pyro and newer thanks to RSS and HOSTTOOLs filtering.</div><div><=
br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Mon, Oct 9, 2017 at 12:30 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">On =
8 October 2017 at 18:04, Eric Schwarz <span dir=3D"ltr">&lt;<a href=3D"mail=
to:eas@sw-optimization.com" target=3D"_blank">eas@sw-optimization.com</a>&g=
t;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><span><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Don&#39;=
t _append when you can just extend the assignment above.<br>
</blockquote>
<br></span>
I just did it that way for the moment since I wanted to circumvent merge<br=
>
conflicts when I upgrade the underlying recipes from openembedded.</blockqu=
ote><div><br></div><div>Well it&#39;s ugly, so if you want a patch in oe-co=
re then don&#39;t introduce ugly for your convenience.</div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><span>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Depending on python-native does nothing as the binary isn&#39;t in $PATH st=
ill.<br>
</blockquote>
<br></span>
I thought any Yocto native binaries built are in the PATH automatically. - =
How<br>
to fix this/do it correctly?<br></blockquote><div><br></div><div>You need t=
o inherit python3native, as python (and some others) are opt-in.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Can you provide a configuration to make U-Boot build on x86 for testing?<br=
>
</blockquote>
<br>
I put now some patches in ordered manner on top of the original recipes fro=
m<br>
openembedded.<br>
However, before sending I would like to fix two issues so the recipes can g=
o<br>
into mainline immediately.<br>
<br>
1.) I am working w/ -morty Yocto branch at the moment. The &#39;u-boot.inc&=
#39; from<br>
=C2=A0 =C2=A0 openembedded does not work w/ -morty.<br>
=C2=A0 =C2=A0 I get the following error &quot;AttributeError: module &#39;b=
b.utils&#39; has no<br>
=C2=A0 =C2=A0 attribute &#39;filter&#39;&quot;. Building w/ the original -m=
orty &#39;u-boot.inc&#39; works.<br></blockquote><div><br></div><div>Yes, b=
b.utils.filter() is a new function that isn&#39;t in morty.</div><span clas=
s=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross</div></font><=
/span></div></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--089e0821062c7f4048055b1b5781--
