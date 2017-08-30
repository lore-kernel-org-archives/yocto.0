Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD690E00C77; Wed, 30 Aug 2017 05:00:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.54 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 170FCE00C14
	for <yocto@yoctoproject.org>; Wed, 30 Aug 2017 05:00:50 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id k77so49199612oib.2
	for <yocto@yoctoproject.org>; Wed, 30 Aug 2017 05:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GsyYcu8mnyq2Z0gbnuCUVAPczq/07O3F0s2RQt0o+qk=;
	b=CDtEs1m+Dctr9+V7u0sXvJm6ZByxbElPkYUr5AYRkWDjIsuqzf7jqDVP2IDnigFlxG
	2Svh76QZTIwIFBmOUXeRvGC+GRiSg0U+ixPvbR6+Nwp8FNLfLylHGos+a9XqoVljmXaL
	NW2DQQMKa8G2JblBJ3XHOpGNnIgoWH313UaIAMjwChbGhtCij5iJ/GxPKZi4JLXD+H6d
	SRSN2I7WMjKUV8pxFl0CiwPlNlMNNQ7BNyQpituyoUMJJXY77PWGQ+9qlZ3W8WwhlEG0
	1KZDBjL7klQoXwXtGTHKSLiPtJvlWC/XnHslu8IP0uWlwjH26yuw0V+XxCbUt2FSpHa8
	plSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GsyYcu8mnyq2Z0gbnuCUVAPczq/07O3F0s2RQt0o+qk=;
	b=X+0Ixa3IXxnoUj94ALq9UGhXzlI5A3CyKO2I3slxpAjuBDNzzDyZacarmbfieTtUq3
	/BUGD6T5XuyiP7lx5JITJNtiL4EbQpeTycmBxuk2aWaMVvo9bhQzgntU68qTRDAualJm
	mOvP2fSPdkT+TVULeIpZlSYYKRDk2VexNAqE0QN40CZ7S21U/0mue9Mwp5AwGLkrtRZU
	GBfcPRE9iSxmVVbQ43OVXxJG7V3ld8wA1fGAr1t+nRQsI5SBORxeWqZmLdrS+mK/OU5q
	oJ4UcikFLCo0PK/TR87irRCSBvzacRKBVFHSm6hvbwKY4wd4uweaj/QB3pibvHPrtDEh
	eeMg==
X-Gm-Message-State: AHYfb5jkVjR+kos65GjTcCVY6YwDVDTO41WliDm6Os1fAWtANHomiuWJ
	H/C13Mk4kbfeogFT7sq1NdGvhcjj5Q==
X-Received: by 10.202.245.4 with SMTP id t4mr1293511oih.41.1504094448443; Wed,
	30 Aug 2017 05:00:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.131 with HTTP; Wed, 30 Aug 2017 05:00:48 -0700 (PDT)
In-Reply-To: <b5eadc98-1990-55f5-161e-89ece153bb04@linux.intel.com>
References: <CABFXn3GQ4-MXfmgBVmi0OwhP0YjJb_2UHf51f_oUTGbzS_b16A@mail.gmail.com>
	<b5eadc98-1990-55f5-161e-89ece153bb04@linux.intel.com>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 30 Aug 2017 14:00:48 +0200
Message-ID: <CABFXn3HWYW4tw2SxmupF3O5DNr4fsXT4WZSdyhJRoo7+XmXECg@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: error in apt-key add
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
X-List-Received-Date: Wed, 30 Aug 2017 12:00:51 -0000
Content-Type: multipart/alternative; boundary="001a113de0fe4ee9800557f74767"

--001a113de0fe4ee9800557f74767
Content-Type: text/plain; charset="UTF-8"

I fixed it by adding coreutils recipe with the gnupg since gnupg depends on
it.
I will try to patch it soon.

Yahia

On 30 August 2017 at 10:42, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 08/29/2017 08:38 PM, yahia farghaly wrote:
>
>> I am building a linux image using yocto which support deb package
>> manager(apt-get). I created the repo with packages and i want to authorize
>> this repo to my target machine. i followed these steps <
>> https://help.ubuntu.com/community/CreateAuthenticatedRepository> for
>> that purpose. I created the keyFile successfully for the server (host). and
>> when transfer this keyFile to my target and execute apt-key add keyFile, it
>> promotes me the error
>>
>>     /usr/bin/apt-key: line 352: comm: command not found
>> i use yocto pyro 17.0.1 and i built for core-image-sato plus adding the
>> recipe gnupg which exist in meta/recipes-support/gnupg
>>
>> Why this error ? and possible ways to fix it ?
>>
>
> Signing and authenticating .deb repositories is not supported or tested in
> Yocto. Do not take Ubuntu instructions for it, they are not relevant and
> not likely to work.
>
> You can use .deb repostories without having them signed, or you can switch
> to rpm packaging (and master branch) where signing should work. Or you can
> figure out where that error comes from and fix it and create a patchset,
> but it's up to you to do the investigation and fixing.
>
> Alex
>



-- 
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113de0fe4ee9800557f74767
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/4ea3d49=
10ac77cf5a62b538f41419f60ba159c44.png?u=3D1822760"><br>I fixed it by adding=
=C2=A0coreutils recipe with the gnupg since gnupg depends on it.=C2=A0<br><=
div style=3D"display:inline">
            </div><div>I will try to patch it soon.</div><div><br></div><di=
v>Yahia</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On 30 August 2017 at 10:42, Alexander Kanavin <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">alexander=
.kanavin@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">On 08/29/2017 08:38 PM, yahia farghaly wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I am building a linux image using yocto which support deb package manager(a=
pt-get). I created the repo with packages and i want to authorize this repo=
 to my target machine. i followed these steps &lt;<a href=3D"https://help.u=
buntu.com/community/CreateAuthenticatedRepository" rel=3D"noreferrer" targe=
t=3D"_blank">https://help.ubuntu.com/commu<wbr>nity/CreateAuthenticatedRepo=
si<wbr>tory</a>&gt; for that purpose. I created the keyFile successfully fo=
r the server (host). and when transfer this keyFile to my target and execut=
e apt-key add keyFile, it promotes me the error<span class=3D""><br>
<br>
=C2=A0 =C2=A0 /usr/bin/apt-key: line 352: comm: command not found <br>
i use yocto pyro 17.0.1 and i built for core-image-sato plus adding the rec=
ipe gnupg which exist in meta/recipes-support/gnupg<br>
<br>
Why this error ? and possible ways to fix it ?<br>
</span></blockquote>
<br>
Signing and authenticating .deb repositories is not supported or tested in =
Yocto. Do not take Ubuntu instructions for it, they are not relevant and no=
t likely to work.<br>
<br>
You can use .deb repostories without having them signed, or you can switch =
to rpm packaging (and master branch) where signing should work. Or you can =
figure out where that error comes from and fix it and create a patchset, bu=
t it&#39;s up to you to do the investigation and fixing.<br>
<br>
Alex<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"font-family=
:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Ya=
hia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font-family=
:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></span>=
<div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, serif, Emoj=
iFont"><span style=3D"font-size:13px">Graduated from Faculty of Engineering=
 - Electronics and Communications Department at Cairo University.</span></f=
ont><br></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helv=
etica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"https://li=
nkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_blank">=
<font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFo=
nt"><span style=3D"font-size:13px">Linkedin</span></font></a><font size=3D"=
1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emo=
jiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a href=
=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" target=3D=
"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a></div><=
/div></div></div></div></div>
</div>

--001a113de0fe4ee9800557f74767--
