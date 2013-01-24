Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D01BE014F3
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 11:07:08 -0800 (PST)
Received: by mail-ve0-f177.google.com with SMTP id m1so449579ves.8
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 11:07:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=+0fsZMrb840bZyZPwVIL+eeTEStpZ69L90rXJWt53D8=;
	b=GnRD4fLoIEzjHOMtGuzZh2eyHxuycRiMf3ZIYoKtM33F6HyjAcRJO7pHmaKZGlmcqD
	wNfmYuj4MYYFvof7RyjhuoBIiEuWmFFBuSx1VyuVQWCKOUCtuh8ggNG9pOa0U0FZmpcG
	5UF3jvk1Jn0JoRGmZYqV5lPfzLBqZBiJ3XnTAy1Me3IKh4S4W0Dr+7caq3IfnxDE5Ptw
	I6pXegDKpnJW/r60zMJ4rIdcoOE/boBLIIRLYDzaqdq3FJ9s8M8mFce09l0TfcD1VqSA
	h2dGa0UPZugdBalTZ8Qq+bKw4sOZv0GQIZ0yrVZjCHW7hQFD7xt66VkEw23CDrcSKQ7X
	RWOQ==
X-Received: by 10.220.219.77 with SMTP id ht13mr3080703vcb.66.1359054427746;
	Thu, 24 Jan 2013 11:07:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.153.163 with HTTP; Thu, 24 Jan 2013 11:06:47 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAK18fxHFBP7RLotsXD50ETttAEjJn4ttiOJw6QMwCcu23C5cAA@mail.gmail.com>
References: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
	<1358094195-23815-2-git-send-email-andrei@gherzan.ro>
	<211E2BEE5356446CB425C4E2514B1285@intel.com>
	<CAK18fxEkr4fhymhMDx7CGYTX7PGe1C57pw0iGYQaYNO9a1UFhw@mail.gmail.com>
	<B2E17B5564364905A4A31F70FC62F9E0@intel.com>
	<CAK18fxHFBP7RLotsXD50ETttAEjJn4ttiOJw6QMwCcu23C5cAA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 24 Jan 2013 21:06:47 +0200
Message-ID: <CAK18fxFGEU0scchTNAA7i0MZTPdBvqQYSK8is9o1XTbkHNqD2g@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQm/Cg40bTzbWB/ahzchIY7qtlZaRILnfOZEbehk2ADvcq35DSWQabIv13oqhkN/sncCjGc4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-intel][PATCH 2/2] fri2.conf: mesa-dri was updated to 9.0.1
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
X-List-Received-Date: Thu, 24 Jan 2013 19:07:08 -0000
Content-Type: multipart/alternative; boundary=14dae9cfc8a865705304d40d8405

--14dae9cfc8a865705304d40d8405
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Jan 13, 2013 at 11:06 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> On Sun, Jan 13, 2013 at 10:03 PM, Ross Burton <ross.burton@intel.com>wrote:
>
>> On Sunday, 13 January 2013 at 19:39, Andrei Gherzan wrote:
>> > Tested with a new sato build on master. Everything seems to be OK.
>>
>> glxinfo/glxgears or something that actually uses the hardware?
>>
>
> Yes. That too.
>

Ping.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--14dae9cfc8a865705304d40d8405
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On Sun, Jan 13, 2013 at 11:06 P=
M, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro=
" target=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><div class=
=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div class=3D"h5">On S=
un, Jan 13, 2013 at 10:03 PM, Ross Burton <span dir=3D"ltr">&lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t;</span> wrote:<br>

</div></div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div><div=
 class=3D"h5">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Sunday, 13 January 2013 at 19:39, An=
drei Gherzan wrote:<br>
&gt; Tested with a new sato build on master. Everything seems to be OK.<br>
<br>
</div>glxinfo/glxgears or something that actually uses the hardware?<br></b=
lockquote><div><br></div></div></div><div>Yes. That too.=A0</div></div></di=
v></div>
</blockquote></div><br>Ping.<br clear=3D"all"><div><br></div>-- <br><div di=
r=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:c=
enter"><div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;f=
ont-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--14dae9cfc8a865705304d40d8405--
