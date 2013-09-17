Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5989EE013AB
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 04:21:06 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id x55so5019366wes.10
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 04:21:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LuczbLJSbWHNhtT+ntSg+sF2tGltZUE63td+gLV5Tsc=;
	b=aMErr/dbXjt2TvzVxVStOnBTlwAQizew/kbYiIJgU6ihJIbQcOOPzUq9t4LE4im/4i
	32H7GTt74iNUuZnhTp/mVskVCBw1m4nODqS6F8TvZQZYCrD2GENNdMfMzpcNYLtqkVKa
	oaTlx0yeqj3Y89hW+9tsfpQXeGPr9/PUncIPqihDio/UK6Wv215gGTBZZlJiV7g0n9OQ
	ofXviw0y8a28I0lrM4xgZprhq9P+gWnWRJm7oyPUA87LKHV3Kh/j6pPdPs/plNLRtXQE
	UFOg/IEtQu8egYYldyjTE3/kwfPeRDnvzAN7JO/NDVOHfXgc7Ag83QjPJDp/YCHaJXUf
	D8cg==
X-Gm-Message-State: ALoCoQmWrJm4MUBOcdFursJJKAVL0Gw9gejyyxpWXeA2FEHVKnWgd1yDKVTFCHTIitLthq80xLeZ
X-Received: by 10.194.176.163 with SMTP id cj3mr26388393wjc.8.1379416864639;
	Tue, 17 Sep 2013 04:21:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.91.132 with HTTP; Tue, 17 Sep 2013 04:20:44 -0700 (PDT)
In-Reply-To: <CAFyqS9omDS6s-si0U6WKB-m2BnPZnicd+H8uQg7vp+mo454ZEw@mail.gmail.com>
References: <CAFyqS9ock8ydDEd0SE5whhWRKuRnQmTKOzq6Ad7rTYHHtosEuA@mail.gmail.com>
	<CAFyqS9omDS6s-si0U6WKB-m2BnPZnicd+H8uQg7vp+mo454ZEw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 17 Sep 2013 13:20:44 +0200
Message-ID: <CAP71WjxqCC0SUXEVqLvBcnG5KjsewhUur1+t+=+F+tSxL0UBbw@mail.gmail.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DISTRO_FEATURES_append, anyway to override?
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
X-List-Received-Date: Tue, 17 Sep 2013 11:21:09 -0000
Content-Type: multipart/alternative; boundary=089e013cbfea36de6b04e6928404

--089e013cbfea36de6b04e6928404
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 17, 2013 at 12:15 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>=
wrote:

> > The resulting DISTRO_FEATURES (as checked by bitbake -e) shows that
> > everything appended by poky is also added to the custom distro.
> > Now, we would like to remove everything but the large file support as
> > added by poky. How do we do that? Is the only practical way to copy
> > everything from poky.conf and poky-tiny.conf into the custom distro? I
> > really would like to avoid that if possible.
> > I guess that the new feature DISTRO_FEATURES_remove might help us
> > here, but unfortunately we can no step up to such a late version in
> > a foreseeable future.
> >
> Maybe this is the patch we need, it seems to adress exactly this problem.
> http://www.mail-archive.com/yocto@yoctoproject.org/msg14784.html
>

i agree with this conclusion. this has been 'fixed' in master, but needs to
be backported to dylan (and danny), i believe.

--089e013cbfea36de6b04e6928404
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Sep 17, 2013 at 12:15 PM, Hans Beck=E9rus <span dir=3D"ltr">&lt;<a =
href=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.beckerus@gma=
il.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">&gt; The resulting DISTRO_=
FEATURES (as checked by bitbake -e) shows that<br>
&gt; everything appended by poky is also added to the custom distro.<br>
&gt; Now, we would like to remove everything but the large file support as<=
br>
&gt; added by poky. How do we do that? Is the only practical way to copy<br=
>
&gt; everything from poky.conf and poky-tiny.conf into the custom distro? I=
<br>
&gt; really would like to avoid that if possible.<br>
&gt; I guess that the new feature DISTRO_FEATURES_remove might help us<br>
&gt; here, but unfortunately we can no step up to such a late version in<br=
>
&gt; a foreseeable future.<br>
&gt;<br>
</div>Maybe this is the patch we need, it seems to adress exactly this prob=
lem.<br>
<a href=3D"http://www.mail-archive.com/yocto@yoctoproject.org/msg14784.html=
" target=3D"_blank">http://www.mail-archive.com/yocto@yoctoproject.org/msg1=
4784.html</a><div class=3D"yj6qo ajU"><div id=3D":tg" class=3D"ajR" tabinde=
x=3D"0">

</div></div></blockquote></div><br>i agree with this conclusion. this has b=
een &#39;fixed&#39; in master, but needs to be backported to dylan (and dan=
ny), i believe.</div></div>

--089e013cbfea36de6b04e6928404--
