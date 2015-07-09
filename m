Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17733E00A45; Thu,  9 Jul 2015 13:20:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB54EE009D7
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 13:19:56 -0700 (PDT)
Received: by lbnk3 with SMTP id k3so81413218lbn.1
	for <yocto@yoctoproject.org>; Thu, 09 Jul 2015 13:19:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=o3I+pXD9X9QLUDB2POXKPvoSyyzkJf4jhbYwsSP0DIo=;
	b=UVnBBN7XEgic0mDE/OTnsuyynidN1t4GhUsSSOmk/oNmU+4JxXnzQVkwC9rTy1ZPHn
	hrXMrF72GKlu/FBlZ+CQaESoOadoLZl2KtBVh8MN8Vp8Q8FLq04V/eZaEyfR2feuAYZt
	23GRi+eQCkdyle6dvSGox2PbhioPiJJ0AUcBWgQM440WOVYVHvjFH4EzE5g0vwcDxtOe
	SxIvDhN8uo/RtiU8A5cVpHEV89f6XVsUF+J0DjwfOpjeGOFm1xc+atZn8whOFKNl9RuW
	gV03hRfisek5LUL7gaSJHXgt3H8cviwdAUdAPNy0F6IWqE5kcsF7UHeQD8P3bP7678Xa
	NDwg==
X-Gm-Message-State: ALoCoQktje4VQuPn9hEMp4MDmnhZaJR7mgzWKulmJIRT7lZOD4qVai9wftmlNXJQBe0tfX3yvch6
X-Received: by 10.112.161.197 with SMTP id xu5mr16429868lbb.69.1436473194257; 
	Thu, 09 Jul 2015 13:19:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.147.232 with HTTP; Thu, 9 Jul 2015 13:19:14 -0700 (PDT)
X-Originating-IP: [81.108.63.159]
In-Reply-To: <559AB3FB.2090302@mail.bg>
References: <1435981717-29443-1-git-send-email-net147@gmail.com>
	<55976F44.5070106@mail.bg> <559A8572.6020203@gmail.com>
	<559AAA59.9090007@mail.bg>
	<CAJTo0La_FqBveOEv90+ofCq2gAj4hiNfSA72dc40mEjrFv8aJg@mail.gmail.com>
	<CAJTo0LYoqTs3o7di3rvwcsX5Q4iruAqFZePAJRXdw8eHWqW7HA@mail.gmail.com>
	<559AB3A4.7010206@mail.bg> <559AB3FB.2090302@mail.bg>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 9 Jul 2015 22:19:14 +0200
Message-ID: <CAK18fxEc8njxqD7Opzrw_mh_NXp8w3igD6YVREBh6qPeWizDPg@mail.gmail.com>
To: Nikolay Dimitrov <picmaster@mail.bg>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Thu, 09 Jul 2015 20:20:00 -0000
Content-Type: multipart/alternative; boundary=001a11c3bfe6794061051a76fa24

--001a11c3bfe6794061051a76fa24
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 6, 2015 at 6:59 PM, Nikolay Dimitrov <picmaster@mail.bg> wrote:

> Hi Ross,
>
> On 07/06/2015 07:58 PM, Nikolay Dimitrov wrote:
>
>> Hi Ross,
>>
>> On 07/06/2015 07:26 PM, Burton, Ross wrote:
>>
>>>
>>> On 6 July 2015 at 17:23, Burton, Ross <ross.burton@intel.com
>>> <mailto:ross.burton@intel.com>> wrote:
>>>
>>>     How latest, remembering that oe-core supports LTS distros which are
>>>     likely to have old releases of git.
>>>
>>>
>>> Assuming I'm driving it correctly:
>>>
>>> [git init, git remote add origin ...]
>>> $ git fetch  --depth=1 origin beeafee030a38380c65a9a664003ba50f87aefbf
>>> error: no such remote ref beeafee030a38380c65a9a664003ba50f87aefbf
>>> $ git --version
>>> git version 2.1.4
>>>
>>> That's with the latest Debian release.
>>>
>>> Ross
>>>
>>
>> Well, the commits that add this feature are from May-June.2015. I fully
>> agree with you that LTS is a factor that can't be ignored.
>>
>> Kind regards,
>> Nikolay
>>
>
> Forgot to answer you question - the expected versions to include this
> feature are 2.5.0/2.5.1.
>
>
So there is no support for depth clones until 2.5.0? I didn't really
understand.

--
Andrei Gherzan

--001a11c3bfe6794061051a76fa24
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, Jul 6, 2015 at 6:59 PM, Nikolay Dimitrov <span dir=3D"ltr">&lt;<a href=
=3D"mailto:picmaster@mail.bg" target=3D"_blank">picmaster@mail.bg</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex">Hi Ross,<span class=3D""><br>
<br>
On 07/06/2015 07:58 PM, Nikolay Dimitrov wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
Hi Ross,<br>
<br>
On 07/06/2015 07:26 PM, Burton, Ross wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
On 6 July 2015 at 17:23, Burton, Ross &lt;<a href=3D"mailto:ross.burton@int=
el.com" target=3D"_blank">ross.burton@intel.com</a><br>
&lt;mailto:<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.=
burton@intel.com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 How latest, remembering that oe-core supports LTS distros whi=
ch are<br>
=C2=A0 =C2=A0 likely to have old releases of git.<br>
<br>
<br>
Assuming I&#39;m driving it correctly:<br>
<br>
[git init, git remote add origin ...]<br>
$ git fetch=C2=A0 --depth=3D1 origin beeafee030a38380c65a9a664003ba50f87aef=
bf<br>
error: no such remote ref beeafee030a38380c65a9a664003ba50f87aefbf<br>
$ git --version<br>
git version 2.1.4<br>
<br>
That&#39;s with the latest Debian release.<br>
<br>
Ross<br>
</blockquote>
<br>
Well, the commits that add this feature are from May-June.2015. I fully<br>
agree with you that LTS is a factor that can&#39;t be ignored.<br>
<br>
Kind regards,<br>
Nikolay<br>
</blockquote>
<br></span>
Forgot to answer you question - the expected versions to include this featu=
re are 2.5.0/<a href=3D"http://2.5.1." rel=3D"noreferrer" target=3D"_blank"=
>2.5.1.</a><div class=3D""><div class=3D"h5"><br></div></div></blockquote><=
div><br></div><div>So there is no support for depth clones until 2.5.0? I d=
idn&#39;t really understand.</div><div><div><br class=3D"">--</div>Andrei G=
herzan<br></div></div></div></div>

--001a11c3bfe6794061051a76fa24--
