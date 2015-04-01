Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6CA1E006E9; Tue, 31 Mar 2015 22:05:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8EF4E0056E
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 22:05:36 -0700 (PDT)
Received: by lbbug6 with SMTP id ug6so27765200lbb.3
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 22:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=087SRpH93B4Kn/NJ7S+Yvs09ijNHFPpRT4QZ7JYtI64=;
	b=Gw9AP9lvzIA4GIdzCYMHuwEBIMDLq9u+G3lSACCFiJ3mwcCSlLy5L4JBzdWJ7xAhAh
	KYS4timtGBEEQsr4k/xb4g/SCSuzCmfLTcG2UpS1dUJxYT6NFBrxR2Ay/GC3Xx9gw4K5
	uSkOW/Amj/3KVxmZU9GcaNsjqiZAb/vBS/DHuz63SKsTpJ+jgIqB4QZ4E6B4Y2m4Aari
	EX34LfwlkSvejkmqYUY/DgszdFOkT5DaAzyNYM4BjtBkAC71XhiugTCH7FQnaERH/eGU
	EOMAnj4zBlHTb5Oxh10aBOe+ViEuvyXsaRqayjtZf0yXqXptoj8shBjCjbV47gVGE6wG
	ND4A==
MIME-Version: 1.0
X-Received: by 10.112.64.137 with SMTP id o9mr33819546lbs.15.1427864734340;
	Tue, 31 Mar 2015 22:05:34 -0700 (PDT)
Received: by 10.25.206.132 with HTTP; Tue, 31 Mar 2015 22:05:34 -0700 (PDT)
Received: by 10.25.206.132 with HTTP; Tue, 31 Mar 2015 22:05:34 -0700 (PDT)
In-Reply-To: <CAGj-b5JQ74eR_4nXO4uQiuUdkspojmXGuXdDDWEd1M7Z=bDqKw@mail.gmail.com>
References: <CAGj-b5JQ74eR_4nXO4uQiuUdkspojmXGuXdDDWEd1M7Z=bDqKw@mail.gmail.com>
Date: Wed, 1 Apr 2015 07:05:34 +0200
Message-ID: <CAALGJZYUhGrQcjMYoJ79DFR_0ckuZ1J5JCa0MyrHxb7KBaj92A@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: abhishek srivastava <abhishek.embsys@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: remove package from sdimg
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
X-List-Received-Date: Wed, 01 Apr 2015 05:05:38 -0000
Content-Type: multipart/alternative; boundary=001a11348fe4471c3e0512a2aa19

--001a11348fe4471c3e0512a2aa19
Content-Type: text/plain; charset=UTF-8

Hi,
Am 31.03.2015 17:07 schrieb "abhishek srivastava" <abhishek.embsys@gmail.com
>:
>
> hi
> i have created core-image-sato sdimg for my project on raspberrypi.
actually, i want to run few applications that need python. i want to remove
unnecessary packages that were required for smooth compilation of those
applications since I downloaded entire python and gcc packages which had
heavily increased size of my sdimg size.
>
> how can i find which applications requires what packages for its normal
functionality so that i can further tweak my sdimg or keep exactly those
libraries that are needed for my application and remove rest.
> please help
>
Have a look at my cheat sheet:
https:// <https://github.com/cybertux/cheatsheets/tree/master/bitbake>
github.com <https://github.com/cybertux/cheatsheets/tree/master/bitbake>/
<https://github.com/cybertux/cheatsheets/tree/master/bitbake>cybertux
<https://github.com/cybertux/cheatsheets/tree/master/bitbake>/
<https://github.com/cybertux/cheatsheets/tree/master/bitbake>cheatsheets
<https://github.com/cybertux/cheatsheets/tree/master/bitbake>/tree/master/
<https://github.com/cybertux/cheatsheets/tree/master/bitbake>bitbake
<https://github.com/cybertux/cheatsheets/tree/master/bitbake>
Or in the yocto wiki:

https://wiki.yoctoproject.org/wiki/FAQ#How_can_one_view_the_dependencies_of_packages_and_the_resulting_growth_in_code_size_as_packages_are_added.3F

Regards,
Christian
> regards
> Abhishek
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11348fe4471c3e0512a2aa19
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi,<br>
Am 31.03.2015 17:07 schrieb &quot;abhishek srivastava&quot; &lt;<a href=3D"=
mailto:abhishek.embsys@gmail.com">abhishek.embsys@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; hi<br>
&gt; i have created core-image-sato sdimg for my project on raspberrypi. ac=
tually, i want to run few applications that need python. i want to remove u=
nnecessary packages that were required for smooth compilation of those appl=
ications since I downloaded entire python and gcc packages which had heavil=
y increased size of my sdimg size.<br>
&gt;<br>
&gt; how can i find which applications requires what packages for its norma=
l functionality so that i can further tweak my sdimg or keep exactly those =
libraries that are needed for my application and remove rest.<br>
&gt; please help<br>
&gt;<br>
Have a look at my cheat sheet: <br>
<a href=3D"https://github.com/cybertux/cheatsheets/tree/master/bitbake">htt=
ps://</a><a href=3D"https://github.com/cybertux/cheatsheets/tree/master/bit=
bake">github.com</a><a href=3D"https://github.com/cybertux/cheatsheets/tree=
/master/bitbake">/</a><a href=3D"https://github.com/cybertux/cheatsheets/tr=
ee/master/bitbake">cybertux</a><a href=3D"https://github.com/cybertux/cheat=
sheets/tree/master/bitbake">/</a><a href=3D"https://github.com/cybertux/che=
atsheets/tree/master/bitbake">cheatsheets</a><a href=3D"https://github.com/=
cybertux/cheatsheets/tree/master/bitbake">/tree/master/</a><a href=3D"https=
://github.com/cybertux/cheatsheets/tree/master/bitbake">bitbake</a><br>
Or in the yocto wiki:</p>
<p dir=3D"ltr"><a href=3D"https://wiki.yoctoproject.org/wiki/FAQ#How_can_on=
e_view_the_dependencies_of_packages_and_the_resulting_growth_in_code_size_a=
s_packages_are_added.3F">https://wiki.yoctoproject.org/wiki/FAQ#How_can_one=
_view_the_dependencies_of_packages_and_the_resulting_growth_in_code_size_as=
_packages_are_added.3F</a></p>
<p dir=3D"ltr">Regards,<br>
Christian<br>
&gt; regards<br>
&gt; Abhishek<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt;<a href=3D"mailto:yocto@yoctoproject.org"> yocto@yoctoproject.org</a><b=
r>
&gt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto"> https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>

--001a11348fe4471c3e0512a2aa19--
