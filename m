Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0F81E0164A
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 15:29:26 -0700 (PDT)
Received: by mail-we0-f180.google.com with SMTP id u57so1837927wes.39
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 15:29:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=GdB1d99wseuDaMj7TpxdVwQIwqhmp1aM2QOoFveKeY8=;
	b=CiWF8WJMUo38P7lX5ljY3zuXl4w9TxM9SDfubWZR70E6ikuydUWzgjYU7AAoUw76aH
	5GXZ+xMngxjl1w2vYwyBp+SVB3AqwKgs9aDjqWYFeMMMJSmSl3yutWJSNbDJn1/6l7Yd
	k45nHXWcIK8JyTb3m1+R27tlqfnJRZaN5UeYfG55DbCasrdW3LNO++um2JclSo0rQa88
	OZeYHmqY8sTaNLUlXD+XLCpqiUn2zP47q7KErl4dipRnXuhYHmEHGBLldUXNpsDj6DrK
	xQVUr91185Do7D84KCN1s9Eydkm/a9h/dfx39TIxGwBsWnQmSTR++Q0NkcchOxD+negZ
	0ixQ==
X-Gm-Message-State: ALoCoQnKyACNa9ScBJyE7pLjplnRph/6ulhryULJKlqnK8D5Zylvd0W0ah5TeGRMwPup0KPoC6AR
X-Received: by 10.194.123.227 with SMTP id md3mr2897134wjb.17.1380234565644;
	Thu, 26 Sep 2013 15:29:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.74.46 with HTTP; Thu, 26 Sep 2013 15:29:05 -0700 (PDT)
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8DF039C2@TI-ODIN.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8DF039C2@TI-ODIN.tasernet.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 27 Sep 2013 00:29:05 +0200
Message-ID: <CAP71Wjx4KQtfiEG4a4kin6XAtu9fMwZON6cNDgHDwJksef_H4w@mail.gmail.com>
To: Brad Litterell <brad@evidence.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about automatic debug package generation
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
X-List-Received-Date: Thu, 26 Sep 2013 22:29:28 -0000
Content-Type: multipart/alternative; boundary=089e01229a58fe065804e750e650

--089e01229a58fe065804e750e650
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Sep 27, 2013 at 12:00 AM, Brad Litterell <brad@evidence.com> wrote:

> My recipe builds and ships an executable in /foo/bin/fooapp
>
>  FILES_${PN} += "/foo/bin/*"
>
>  WARNING: QA Issue: foo: Files/directories were installed but not shipped
>   /foo/bin/.debug
>   /foo/bin/.debug/fooapp
>
>  This file doesn't appear in the image, but is in the package folder:
>  ./package/foo/bin/.debug/fooapp
>
>  It appears something is automatically creating these .debug files during
> the packaging steps, but the corresponding file isn't under packages-split.
>
>
>  Can someone point me to a place to learn more about how these are
> created and packaged?
>

this is done in meta/classes/package.bbclass. at the beginning of that
file, you will find an overall description of what the 'packaging' steps
are, and you can see, among many things:

# d) split_and_strip_files - split the files into runtime and debug and
strip them.

#    Debug files include debug info split, and associated sources that end
up in -dbg packages

you can then check the source code for the function split_and_strip_files.

Now, about 'packaging' the files, you need to look at
meta/conf/bitbake.conf and search for FILES_{PN}-dbg. this is the default
variable that specifies which files go into the -dbg package. Your issue
above is because the 'default' path for binary is /usr/bin, hence the
'default' path for debug variants is /usr/bin/.debug. But if you need
'/foo' , you can change these default in your recipe, by modifying
FILES_{PN}xxx in your .bb file.

--089e01229a58fe065804e750e650
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Sep 27, 2013 at 12:00 AM, Brad Litterell <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:brad@evidence.com" target=3D"_blank">brad@evidence.com</a>&gt=
;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>My recipe builds and ships an executable in /foo/bin/=
fooapp</div>


<div>
<div><br>
</div>
<div>FILES_${PN} +=3D &quot;/foo/bin/*&quot;</div>
</div>
<div><br>
</div>
<div>WARNING: QA Issue: foo: Files/directories were installed but not shipp=
ed</div>
<div>=A0 /foo/bin/.debug</div>
<div>=A0 /foo/bin/.debug/fooapp</div>
<div><br>
</div>
<div>This file doesn&#39;t appear in the image, but is in the package folde=
r:</div>
<div>
<div>./package/foo/bin/.debug/fooapp</div>
</div>
<div><br>
</div>
<div>It appears something is automatically creating these .debug files duri=
ng the packaging steps, but the corresponding file isn&#39;t under packages=
-split. =A0</div>
<div><br>
</div>
<div>Can someone point me to a place to learn more about how these are crea=
ted and packaged?</div>
<div></div></blockquote></div><br>this is done in meta/classes/package.bbcl=
ass. at the beginning of that file, you will find an overall description of=
 what the &#39;packaging&#39; steps are, and you can see, among many things=
:</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><div class=
=3D"gmail_extra"># d) split_and_strip_files - split the files into runtime =
and debug and strip them. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div>

<div class=3D"gmail_extra"># =A0 =A0Debug files include debug info split, a=
nd associated sources that end up in -dbg packages =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div =
class=3D"gmail_extra">

you can then check the source code for the function split_and_strip_files.<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Now, a=
bout &#39;packaging&#39; the files, you need to look at meta/conf/bitbake.c=
onf and search for FILES_{PN}-dbg. this is the default variable that specif=
ies which files go into the -dbg package. Your issue above is because the &=
#39;default&#39; path for binary is /usr/bin, hence the &#39;default&#39; p=
ath for debug variants is /usr/bin/.debug. But if you need &#39;/foo&#39; ,=
 you can change these default in your recipe, by modifying FILES_{PN}xxx in=
 your .bb file.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div><=
div><br></div></div><div class=3D"gmail_extra"><br></div></div>

--089e01229a58fe065804e750e650--
