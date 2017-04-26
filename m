Return-Path: <thieldev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DFEDE00B05; Tue, 25 Apr 2017 23:28:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (thieldev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.43 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1128E00B01
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 23:27:57 -0700 (PDT)
Received: by mail-lf0-f43.google.com with SMTP id c80so102077297lfh.3
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 23:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nhlJfwwu6JSmN4+Tj3DKSIX9A7n1eZZKkvbinhFly8E=;
	b=vhKP2xUnLJMTf6vDNA3CmFh87/BBofaB7sryII91stVNY/b0Ee9LRecXTQ7MZX49Pn
	3TF9dZTyE6Q1ZGVjDbOZJFkngh3ryMBdOX9SKV3YAQKBh/rtMzbklI94XgqktfvKryKE
	DQgK/Z6D+cd3RV6SSFLadCRz8MbM/yovuwS3VFrxSQAyiV0PBuSKRYKMSFXPrz1CzXpp
	vrYnNBwRBzZ71O6jKx6sTEC3lov+n3dDmkI447m6FuVky1aA0SK24pBiWKfxUUkqiWyo
	0zBrNAJt+O+v1ry1K10/JP7nDG3/2SKBZod++5SxHG1ZB4pmi036Fpr/IUNlJKZXHFAA
	QQ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nhlJfwwu6JSmN4+Tj3DKSIX9A7n1eZZKkvbinhFly8E=;
	b=jF9DxuERCl33jKP1copFnic6eVRQ0dh/mUA01l3BFESyBK5V+fO4kQEq62UyZBzq2I
	7/tww6koWyW4QKIzEoALrAb3HdKpia/c9V2syBk3qUjjoCesyA4UFTBagVoC/dDf2CT1
	fjxwDA4X7Q9NSEfhZF9+sS4RHyN+DVV7XHvHMDPKF4qSbB9/H7XCjaFckLcGxrwEroRi
	//ouGhUfb5PN3y1ea7S6hmoWW4kxwc4Yiw6pAHFDfrli2Kvcrsuo+cTjB6XWdvAef5Dl
	d4MIXfbt66OZXf3guHDHiQnZwl3D+vCA12L/pZOi4wib56PpR1dnIPP2ohwEZ8zBqcFe
	8T9g==
X-Gm-Message-State: AN3rC/6s2ZcWg9fYWy9KI0t4sz/5XQGOsasnh50Q1Ht2uhtsjtfGGhhY
	+a0WyZO9lfuokfpHjziR3g3dvRMolg==
X-Received: by 10.46.22.17 with SMTP id w17mr11014405ljd.86.1493188076021;
	Tue, 25 Apr 2017 23:27:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.234.92 with HTTP; Tue, 25 Apr 2017 23:27:55 -0700 (PDT)
In-Reply-To: <f67e44c8-51ab-5812-c924-5e431085f09e@xevo.com>
References: <CAJ5fcV3r3TrPsGsjYN0RpR8VJ6FnpRMFZ+hptzU8Ua1Aae3NkQ@mail.gmail.com>
	<f67e44c8-51ab-5812-c924-5e431085f09e@xevo.com>
From: Malte Thiel <thieldev@gmail.com>
Date: Wed, 26 Apr 2017 08:27:55 +0200
Message-ID: <CAJ5fcV19Om5Z6Yf9uyqXjeRG=M3yDRCGWKpsTZLPpB3P0ScXhQ@mail.gmail.com>
To: Martin Kelly <mkelly@xevo.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 26 Apr 2017 06:28:01 -0000
Content-Type: multipart/alternative; boundary=94eb2c1b413adaadeb054e0bf04e

--94eb2c1b413adaadeb054e0bf04e
Content-Type: text/plain; charset=UTF-8

Hey,

thanks, that solved my problem! Should probably added to the qt5 layer?

Best


On Tue, Apr 25, 2017 at 9:51 PM, Martin Kelly <mkelly@xevo.com> wrote:

> On 04/25/2017 07:41 AM, Malte Thiel wrote:
>
>> Hello,
>>
>> I am trying to compile a Qt 5.8 application using the master branch
>> of meta-qt5/recipes-qt/qt5/ (For 5.8 support).
>>
>> Within my recipe I have:
>>
>> RDEPENDS_${PN} = "libgcc glibc qtbase [...] qtdeclarative"
>>
>> My recipe (and therefore the application) compiles fine. However, in
>> do_rootfs I get the following error:
>>
>> ------------------------------------------------------------
>> ERROR: my-image-1.0-r0 do_rootfs: Error executing a python function in
>> exec_python_func() autogenerated:
>>
>> [...]
>>
>> Exception: FileNotFoundError: [Errno 2] No such file or directory:
>> '/home/sec/sdk/build/0101301/tmp/sysroots/sm2-imx6/pkgdata/r
>> untime-reverse/qtdeclarative-plugins'
>>
>> ERROR: my-image-1.0-r0 do_rootfs: Function failed: license_create_manifest
>> ------------------------------------------------------------
>>
>> It's true, there is no file 'qtdeclarative-plugins'.
>> However, qtdeclarative RPROVIDES qtdeclarative-plugins, so I expect that
>> this file should be generated somehow?
>>
>> Any help is appreciated
>>
>>
>>
>>
> Hi,
>
> I actually hit this issue as well. I discovered that qtdeclarative-plugins
> wasn't being generated because it was empty, and by default, bitbake won't
> generate an empty package. You can fix it by adding:
>
> ALLOW_EMPTY_${PN}-plugins = "1"
>
> to the qtdeclarative_git.bb file. That said, I'm not sure if this is the
> right fix, or if there is some other reason why qtdeclarative-plugins is
> not being generated.
>

--94eb2c1b413adaadeb054e0bf04e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey,<div><br></div><div>thanks, that solved my problem! Sh=
ould probably added to the qt5 layer?</div><div><br></div><div>Best</div><d=
iv><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Tue, Apr 25, 2017 at 9:51 PM, Martin Kelly <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:mkelly@xevo.com" target=3D"_blank">mkelly@xevo.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div cla=
ss=3D"h5">On 04/25/2017 07:41 AM, Malte Thiel wrote:<br>
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

--94eb2c1b413adaadeb054e0bf04e--
