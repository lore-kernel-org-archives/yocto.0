Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F6E5E009DF; Fri, 26 Jun 2015 17:30:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vn0-f50.google.com (mail-vn0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EC64E00947
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 17:30:19 -0700 (PDT)
Received: by vnbf129 with SMTP id f129so3135124vnb.5
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 17:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=d00vwOsOEj86L5G6S3wS7zto9pEsol969/Yfke9ILTI=;
	b=dP6XSwBRyx46RgP2sqqd9hOeWbq/L7Kyj39BjOWtTQvWy/GJqIIXPrK76STz5eLdV6
	FzK5zaRra1Nxxuo4bzEiEwb27EVsbHJpvQ4rCRG+ShLZ+HGJwMHZJAFDbnOgDcebPjPr
	whN15p9ksZXs5+cA9ovArusbGXRyZ1Uitv0E/AjWFj0OMVl6VjCyucA+YHy71NLbzz51
	rjEkwcqeE+flzWJKccc0QeC/5mjYQDsVmHDGMdC0xx43oscHxuC4WHJGoF7ZOzUVlb+y
	+UUGd43VgebYzVJ+ydGNTVo8joVjbXOqaN5GuEYec2znxKIsRaFlZuaS8LwgIi918p+4
	RgVA==
MIME-Version: 1.0
X-Received: by 10.52.30.201 with SMTP id u9mr3824496vdh.95.1435365018900; Fri,
	26 Jun 2015 17:30:18 -0700 (PDT)
Received: by 10.52.176.105 with HTTP; Fri, 26 Jun 2015 17:30:18 -0700 (PDT)
Received: by 10.52.176.105 with HTTP; Fri, 26 Jun 2015 17:30:18 -0700 (PDT)
In-Reply-To: <558DED8E.4060705@mail.bg>
References: <CAF3SDA76D5CjH8s0BGSovUXqgaKkGDy0YMD7No1qZujJd69yBw@mail.gmail.com>
	<558DAD7C.4060409@linux.intel.com> <558DB5E3.5030109@mlbassoc.com>
	<CAF3SDA7s+wk5Crs8YwxGQKOtKZcFS2VKV=FYaoy8GkFK=b5wdg@mail.gmail.com>
	<558DED8E.4060705@mail.bg>
Date: Fri, 26 Jun 2015 21:30:18 -0300
Message-ID: <CAF3SDA4jb+dLGCuDpLB32AqiFtTE=m9L6Rp+VGfrg3YZ9DFJwA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Nikolay Dimitrov <picmaster@mail.bg>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Sat, 27 Jun 2015 00:30:21 -0000
Content-Type: multipart/alternative; boundary=bcaec51ba3ab1320ae051974f6bf

--bcaec51ba3ab1320ae051974f6bf
Content-Type: text/plain; charset=UTF-8

What you mean about deployed? They are compiled but doesnt go to tmp/deploy
folder?!

Im building to imx6 :/
Em 26/06/2015 21:25, "Nikolay Dimitrov" <picmaster@mail.bg> escreveu:

> Hi guys,
>
> On 06/26/2015 11:32 PM, Daniel. wrote:
>
>> Hmm, this seems cleaner than setting whole IMAGE_FSTYPES, I'll try!
>>
>> Thank you!
>>
>> 2015-06-26 17:28 GMT-03:00 Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com>>:
>>
>>     On 2015-06-26 13:52, Leonardo Sandoval wrote:
>>
>>         On 06/26/2015 02:45 PM, Daniel. wrote:
>>
>>             Does any one knows how to avoid the creation of .sdcard
>>             images? This ones
>>
>>         The variable controlling the type of output images is
>>         IMAGE_FSTYPES, so you can redefine it under your local.conf. To
>>         see the current content, you can do
>>
>>         $bitbake -e <your image> | grep IMAGE_FSTYPES
>>
>>
>>     Just add this line to your local.conf
>>        IMAGE_FSTYPES_remove = "sdcard"
>>
>>
>>
>>             takes a lot of diskspace and I have to delete it
>>             periodically, which gives
>>             headaches about cleaning everything every time. A have an
>>             50GB partition
>>             and from month to month I get out of disk space. :(
>>
>>             Thanks in advance
>>
>>
>>
>>
>>     --
>>     ------------------------------------------------------------
>>     Gary Thomas                 |  Consulting for the
>>     MLB Associates              |    Embedded world
>>     ------------------------------------------------------------
>>     --
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> --
>> /"Do or do not. There is no try"/
>> ///*Yoda Master*/
>>
>>
>>
> Removing "sdcard" from IMAGE_FSTYPES will prevent virtual/kernel and
> virtual/bootloader from being deployed, and most of the time we need
> them, so be warned. At least this is how things work on imx6 builds :D.
>
> Regards,
> Nikolay
>

--bcaec51ba3ab1320ae051974f6bf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">What you mean about deployed? They are compiled but doesnt g=
o to tmp/deploy folder?!</p>
<p dir=3D"ltr">Im building to imx6 :/</p>
<div class=3D"gmail_quote">Em 26/06/2015 21:25, &quot;Nikolay Dimitrov&quot=
; &lt;<a href=3D"mailto:picmaster@mail.bg">picmaster@mail.bg</a>&gt; escrev=
eu:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi guys,<br>
<br>
On 06/26/2015 11:32 PM, Daniel. wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hmm, this seems cleaner than setting whole IMAGE_FSTYPES, I&#39;ll try!<br>
<br>
Thank you!<br>
<br>
2015-06-26 17:28 GMT-03:00 Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.=
com" target=3D"_blank">gary@mlbassoc.com</a><br>
&lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlba=
ssoc.com</a>&gt;&gt;:<br>
<br>
=C2=A0 =C2=A0 On 2015-06-26 13:52, Leonardo Sandoval wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 On 06/26/2015 02:45 PM, Daniel. wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Does any one knows how to avoid t=
he creation of .sdcard<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 images? This ones<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The variable controlling the type of output ima=
ges is<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 IMAGE_FSTYPES, so you can redefine it under you=
r local.conf. To<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 see the current content, you can do<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $bitbake -e &lt;your image&gt; | grep IMAGE_FST=
YPES<br>
<br>
<br>
=C2=A0 =C2=A0 Just add this line to your local.conf<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0IMAGE_FSTYPES_remove =3D &quot;sdcard&quot;<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 takes a lot of diskspace and I ha=
ve to delete it<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 periodically, which gives<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 headaches about cleaning everythi=
ng every time. A have an<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 50GB partition<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and from month to month I get out=
 of disk space. :(<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Thanks in advance<br>
<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 ------------------------------------------------------------<=
br>
=C2=A0 =C2=A0 Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 Consulting for the<br>
=C2=A0 =C2=A0 MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A0 Embedded world<br>
=C2=A0 =C2=A0 ------------------------------------------------------------<=
br>
=C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 _______________________________________________<br>
=C2=A0 =C2=A0 yocto mailing list<br>
=C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
<br>
<br>
<br>
<br>
--<br>
/&quot;Do or do not. There is no try&quot;/<br>
///*Yoda Master*/<br>
<br>
<br>
</blockquote>
<br>
Removing &quot;sdcard&quot; from IMAGE_FSTYPES will prevent virtual/kernel =
and<br>
virtual/bootloader from being deployed, and most of the time we need<br>
them, so be warned. At least this is how things work on imx6 builds :D.<br>
<br>
Regards,<br>
Nikolay<br>
</blockquote></div>

--bcaec51ba3ab1320ae051974f6bf--
