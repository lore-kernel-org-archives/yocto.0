Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1F35E0096A; Fri, 26 Jun 2015 13:33:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.46 listed in list.dnswl.org]
Received: from mail-vn0-f46.google.com (mail-vn0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93861E006C6
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 13:32:52 -0700 (PDT)
Received: by vnbg129 with SMTP id g129so17217421vnb.2
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 13:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=MGcnz1OUugqCqy1h/D3EgCC0wHgETONE2xKvbfp47cU=;
	b=adia+4oOZQSpUwOBlE3KanmHSWgj28S45asKNkZ07a/Jl7R6BriGHZQ2C27NS7Ie//
	j1zl6T3E3FJ7msMy7mTHYny2suJjTBKLPQJ/WFAwg+vpsNLToGQ4iqDpCkDBe+cP+MNj
	au922wxTq5dkOhMwZHr8YlsWOwLcBdAh0c/3t9ekm+VoOkNe57uSzpiUSblUL6+uGQON
	kZ6yaXdcCkeYORWsUjVC23vh09Ls+iCIqTIJ4TvG61+ZCqtfyIG3cO1hOoMR1VBz6yq2
	2AMCZa2ha77WDz+Mt7DamGjuMklL9ADlZCjOA+x3za1JbF7LnOyMXWBLnLIh91THvUrd
	hvtw==
MIME-Version: 1.0
X-Received: by 10.52.72.84 with SMTP id b20mr3123507vdv.6.1435350771891; Fri,
	26 Jun 2015 13:32:51 -0700 (PDT)
Received: by 10.52.176.105 with HTTP; Fri, 26 Jun 2015 13:32:51 -0700 (PDT)
In-Reply-To: <558DB5E3.5030109@mlbassoc.com>
References: <CAF3SDA76D5CjH8s0BGSovUXqgaKkGDy0YMD7No1qZujJd69yBw@mail.gmail.com>
	<558DAD7C.4060409@linux.intel.com> <558DB5E3.5030109@mlbassoc.com>
Date: Fri, 26 Jun 2015 17:32:51 -0300
Message-ID: <CAF3SDA7s+wk5Crs8YwxGQKOtKZcFS2VKV=FYaoy8GkFK=b5wdg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Avoid creation of .sdcard images.
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
X-List-Received-Date: Fri, 26 Jun 2015 20:33:00 -0000
Content-Type: multipart/alternative; boundary=0023544478f3e3050e051971a447

--0023544478f3e3050e051971a447
Content-Type: text/plain; charset=UTF-8

Hmm, this seems cleaner than setting whole IMAGE_FSTYPES, I'll try!

Thank you!

2015-06-26 17:28 GMT-03:00 Gary Thomas <gary@mlbassoc.com>:

> On 2015-06-26 13:52, Leonardo Sandoval wrote:
>
>> On 06/26/2015 02:45 PM, Daniel. wrote:
>>
>>> Does any one knows how to avoid the creation of .sdcard images? This ones
>>>
>> The variable controlling the type of output images is IMAGE_FSTYPES, so
>> you can redefine it under your local.conf. To see the current content, you
>> can do
>>
>> $bitbake -e <your image> | grep IMAGE_FSTYPES
>>
>
> Just add this line to your local.conf
>   IMAGE_FSTYPES_remove = "sdcard"
>
>
>
>>  takes a lot of diskspace and I have to delete it periodically, which
>>> gives
>>> headaches about cleaning everything every time. A have an 50GB partition
>>> and from month to month I get out of disk space. :(
>>>
>>> Thanks in advance
>>>
>>>
>>>
>>>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--0023544478f3e3050e051971a447
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hmm, this seems cleaner than setting whole IMAGE_FSTY=
PES, I&#39;ll try!<br><br></div>Thank you!<br></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">2015-06-26 17:28 GMT-03:00 Gary Thomas <=
span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank"=
>gary@mlbassoc.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span =
class=3D"">On 2015-06-26 13:52, Leonardo Sandoval wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 06/26/2015 02:45 PM, Daniel. wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Does any one knows how to avoid the creation of .sdcard images? This ones<b=
r>
</blockquote>
The variable controlling the type of output images is IMAGE_FSTYPES, so you=
 can redefine it under your local.conf. To see the current content, you can=
 do<br>
<br>
$bitbake -e &lt;your image&gt; | grep IMAGE_FSTYPES<br>
</blockquote>
<br></span>
Just add this line to your local.conf<br>
=C2=A0 IMAGE_FSTYPES_remove =3D &quot;sdcard&quot;<div class=3D"HOEnZb"><di=
v class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
takes a lot of diskspace and I have to delete it periodically, which gives<=
br>
headaches about cleaning everything every time. A have an 50GB partition<br=
>
and from month to month I get out of disk space. :(<br>
<br>
Thanks in advance<br>
<br>
<br>
<br>
</blockquote></blockquote>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not=
. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br><=
/div></div>
</div>

--0023544478f3e3050e051971a447--
