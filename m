Return-Path: <thieldev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07385E00B03; Wed, 26 Apr 2017 01:56:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (thieldev[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C985E00867
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 01:56:07 -0700 (PDT)
Received: by mail-lf0-f41.google.com with SMTP id c80so103935027lfh.3
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 01:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0v/F0JENFKw7/9tmmzi9y7t4jVbDEGQQiPTbpElfwYo=;
	b=YnzNmiZTsxzf78F4CdVterEWPDKxG7wDZZ/u1WflnXjhkVxGYC8pAWDhBfJsVALyXd
	y3Sb/y52qJQcnu8dVKdoac3oy2ACcyA0QNKnCncXlCpzqSZQTLLp1FO/joYVvlNbZON5
	xbCvtrNbVpzRmis4kcon4qmXVQSpHv6FLLWonVxmK7KqOgbjpSr4N4P9EKf3mecv4yT1
	JJf33O07b/Z76LDg2yKhl8BZMMaDEjUm8wxaWaT5/nuT0AqgYPjEjG9qzDvLphSNxkRy
	jPGDjocGwZBdmpBRTo7Nt7rPSQ5yFWhFmVFr8kg/PSgcV9nJFY/J94mcvMp0Q3JRiulH
	vS6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0v/F0JENFKw7/9tmmzi9y7t4jVbDEGQQiPTbpElfwYo=;
	b=e+HpsMvr+XbKC1Vqeq80syeU9+vQCXJjnyUZKw+WKVzH6HaXJ2lG3E6/g0Y6ALjeJF
	OSR2hOKG52bAWUus37c34Avaj1vBpK0Kt64YM5LCnONT4iunMy3CtXAnGlsiqpGqB4Lk
	tPhR/9T8VB+7+q5nwriOBfVOOXHaQ6NpNiYawVkS4TC0zKpQ4MolwHyJf+6RQutDS0ud
	X8rvc44gZY3MGO+1TbLHFeHkIKUMHFFBKzklCFlQiI2sJeqM0CqWhvyIRnnxSQTFQx3F
	sjXcfRaat/B03cJlT9YSX4G2kczsJ2eZhnGby8eUMXNF2Km3rh0I51/YY2vIh8N1kkj2
	6xCw==
X-Gm-Message-State: AN3rC/7whXzlcBrqWN6rAB3RxbrEKn/iEAX1hpkSApQE4CFN6KwaurJm
	znm6bTll+6f8cbAE963M6DqRzaXHIg==
X-Received: by 10.25.157.210 with SMTP id g201mr10136473lfe.13.1493196966255; 
	Wed, 26 Apr 2017 01:56:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.234.92 with HTTP; Wed, 26 Apr 2017 01:56:05 -0700 (PDT)
In-Reply-To: <CA+chaQcA5sMZqmA6q_P=ZPZgzLR=H+16twTSp8bi1zgsYP-HuA@mail.gmail.com>
References: <CAJ5fcV3r3TrPsGsjYN0RpR8VJ6FnpRMFZ+hptzU8Ua1Aae3NkQ@mail.gmail.com>
	<f67e44c8-51ab-5812-c924-5e431085f09e@xevo.com>
	<CAJ5fcV19Om5Z6Yf9uyqXjeRG=M3yDRCGWKpsTZLPpB3P0ScXhQ@mail.gmail.com>
	<CA+chaQcA5sMZqmA6q_P=ZPZgzLR=H+16twTSp8bi1zgsYP-HuA@mail.gmail.com>
From: Malte Thiel <thieldev@gmail.com>
Date: Wed, 26 Apr 2017 10:56:05 +0200
Message-ID: <CAJ5fcV1nO3G61uwYxuzC7g3BpQmiafMAB4QkFp=m61RPWfpwyg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Qt 5.8: do_rootfs: File 'qtdeclarative-plugins' not found
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
X-List-Received-Date: Wed, 26 Apr 2017 08:56:11 -0000
Content-Type: multipart/alternative; boundary=001a11403990c0e109054e0e026d

--001a11403990c0e109054e0e026d
Content-Type: text/plain; charset=UTF-8

I am willed to do it the right way. Would you provide a bit more
information about how to do PACKAGECONFIG properly?

On Wed, Apr 26, 2017 at 8:51 AM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> No, this won't be added to meta-qt5 layer, because it's not the right fix.
>
> If you're happy with empty packages, then you don't need meta-qt5 at all.
>
> Empty packages are useless and bitbake is right not to create them.
>
> My guess is that you don't have all necessary PACKAGECONFIGs enabled for
> qtbase.
>
> On Wed, Apr 26, 2017 at 8:27 AM, Malte Thiel <thieldev@gmail.com> wrote:
>
>> Hey,
>>
>> thanks, that solved my problem! Should probably added to the qt5 layer?
>>
>> Best
>>
>>
>> On Tue, Apr 25, 2017 at 9:51 PM, Martin Kelly <mkelly@xevo.com> wrote:
>>
>>> On 04/25/2017 07:41 AM, Malte Thiel wrote:
>>>
>>>> Hello,
>>>>
>>>> I am trying to compile a Qt 5.8 application using the master branch
>>>> of meta-qt5/recipes-qt/qt5/ (For 5.8 support).
>>>>
>>>> Within my recipe I have:
>>>>
>>>> RDEPENDS_${PN} = "libgcc glibc qtbase [...] qtdeclarative"
>>>>
>>>> My recipe (and therefore the application) compiles fine. However, in
>>>> do_rootfs I get the following error:
>>>>
>>>> ------------------------------------------------------------
>>>> ERROR: my-image-1.0-r0 do_rootfs: Error executing a python function in
>>>> exec_python_func() autogenerated:
>>>>
>>>> [...]
>>>>
>>>> Exception: FileNotFoundError: [Errno 2] No such file or directory:
>>>> '/home/sec/sdk/build/0101301/tmp/sysroots/sm2-imx6/pkgdata/r
>>>> untime-reverse/qtdeclarative-plugins'
>>>>
>>>> ERROR: my-image-1.0-r0 do_rootfs: Function failed:
>>>> license_create_manifest
>>>> ------------------------------------------------------------
>>>>
>>>> It's true, there is no file 'qtdeclarative-plugins'.
>>>> However, qtdeclarative RPROVIDES qtdeclarative-plugins, so I expect that
>>>> this file should be generated somehow?
>>>>
>>>> Any help is appreciated
>>>>
>>>>
>>>>
>>>>
>>> Hi,
>>>
>>> I actually hit this issue as well. I discovered that
>>> qtdeclarative-plugins wasn't being generated because it was empty, and by
>>> default, bitbake won't generate an empty package. You can fix it by adding:
>>>
>>> ALLOW_EMPTY_${PN}-plugins = "1"
>>>
>>> to the qtdeclarative_git.bb file. That said, I'm not sure if this is
>>> the right fix, or if there is some other reason why qtdeclarative-plugins
>>> is not being generated.
>>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a11403990c0e109054e0e026d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am willed to do it the right way. Would you provide a bi=
t more information about how to do PACKAGECONFIG properly?</div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Apr 26, 2017 at 8:5=
1 AM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gma=
il.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr">No, this won&#39;t be added =
to meta-qt5 layer, because it&#39;s not the right fix.<div><br></div><div>I=
f you&#39;re happy with empty packages, then you don&#39;t need meta-qt5 at=
 all.</div><div><br></div><div>Empty packages are useless and bitbake is ri=
ght not to create them.</div><div><br></div><div>My guess is that you don&#=
39;t have all necessary PACKAGECONFIGs enabled for qtbase.</div></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"h5"=
>On Wed, Apr 26, 2017 at 8:27 AM, Malte Thiel <span dir=3D"ltr">&lt;<a href=
=3D"mailto:thieldev@gmail.com" target=3D"_blank">thieldev@gmail.com</a>&gt;=
</span> wrote:<br></div></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div clas=
s=3D"h5"><div dir=3D"ltr">Hey,<div><br></div><div>thanks, that solved my pr=
oblem! Should probably added to the qt5 layer?</div><div><br></div><div>Bes=
t</div><div><br></div></div><div class=3D"m_-3995178705096735849HOEnZb"><di=
v class=3D"m_-3995178705096735849h5"><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Tue, Apr 25, 2017 at 9:51 PM, Martin Kelly <span dir=
=3D"ltr">&lt;<a href=3D"mailto:mkelly@xevo.com" target=3D"_blank">mkelly@xe=
vo.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"m_-3995178705096735849m_-5508835913971346922HOEnZb"><div class=3D"m_-39=
95178705096735849m_-5508835913971346922h5">On 04/25/2017 07:41 AM, Malte Th=
iel wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello,<br>
<br>
I am trying to compile a Qt 5.8 application using the master branch<br>
of meta-qt5/recipes-qt/qt5/ (For 5.8 support).<br>
<br>
Within my recipe I have:<br>
<br>
RDEPENDS_${PN} =3D &quot;libgcc glibc qtbase [...] qtdeclarative&quot;<br>
<br>
My recipe (and therefore the application) compiles fine. However, in<br>
do_rootfs I get the following error:<br>
<br>
------------------------------<wbr>------------------------------<br>
ERROR: my-image-1.0-r0 do_rootfs: Error executing a python function in<br>
exec_python_func() autogenerated:<br>
<br>
[...]<br>
<br>
Exception: FileNotFoundError: [Errno 2] No such file or directory:<br>
&#39;/home/sec/sdk/build/0101301/t<wbr>mp/sysroots/sm2-imx6/pkgdata/r<wbr>u=
ntime-reverse/qtdeclarative-p<wbr>lugins&#39;<br>
<br>
ERROR: my-image-1.0-r0 do_rootfs: Function failed: license_create_manifest<=
br>
------------------------------<wbr>------------------------------<br>
<br>
It&#39;s true, there is no file &#39;qtdeclarative-plugins&#39;.<br>
However, qtdeclarative RPROVIDES qtdeclarative-plugins, so I expect that<br=
>
this file should be generated somehow?<br>
<br>
Any help is appreciated<br>
<br>
<br>
<br>
</blockquote>
<br></div></div>
Hi,<br>
<br>
I actually hit this issue as well. I discovered that qtdeclarative-plugins =
wasn&#39;t being generated because it was empty, and by default, bitbake wo=
n&#39;t generate an empty package. You can fix it by adding:<br>
<br>
ALLOW_EMPTY_${PN}-plugins =3D &quot;1&quot;<br>
<br>
to the <a href=3D"http://qtdeclarative_git.bb" rel=3D"noreferrer" target=3D=
"_blank">qtdeclarative_git.bb</a> file. That said, I&#39;m not sure if this=
 is the right fix, or if there is some other reason why qtdeclarative-plugi=
ns is not being generated.<br>
</blockquote></div><br></div>
</div></div><br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">=
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--001a11403990c0e109054e0e026d--
