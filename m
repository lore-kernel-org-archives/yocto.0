Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E92CE00D12; Thu, 28 Mar 2019 05:40:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BF8DE00942
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 05:40:01 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id v13so17495408ljk.4
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 05:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=EWDCopREfDUZpC8We3elAqsK7uBbOMaRIB7JJiSXJVY=;
	b=d2LvcRMDSA7OeffoSDU4kMyXukZAZpfCVs8MDo1/CjDptfRENzewe0w2r7C9POXgd/
	3Eew9zNaOm4uGuNZlKhgdtvFNOZFe7iqumHD4pcziYKmLxbnl+XQjCU4NDkspvzCL/2k
	8LndxGrFNvOHbKbJm2MXZ8sU+m7zGpBg0pyYJsMnH98DZ9xdOJsmduSAv9NjkW8IBZdZ
	kVqRXrqSIyZMmNI31TIHRNnjV7p0jf8eABJz0kpthJheugLPxx41z4I3T86yxfzsawao
	4Ghkt259YsOTMiI7YD+auFxR/FNxuyd6zPDAFYzIil+AHXimQn/wSgtrjbaquylCSq4B
	ceRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=EWDCopREfDUZpC8We3elAqsK7uBbOMaRIB7JJiSXJVY=;
	b=pJgbuoLgnobGL2M9XqRM7/DJoaK5x+UsPgAxblagESS5bO2Zr75C+f5uRBmmT9CPfE
	her9N8QJjhbVLaV4JfReTbIJBGGMlWgRA3r+XuiTRwC7WcW0IFBUAtMtdkmoOM8JrJd2
	kuYMd2JjMVirN8eU7os9gvHU/LnBjJ8PHjBSiXhAAOc0LELXJJpwin5JH9umbkZFCqd/
	2jV8m9jgRYJ5EummDqTCR5gPH4I2fYj4QAny5QKsPZBIWgORtHWDJ1vEelu1z54+KCms
	JAMH8x67yWsgWTeJCUvBdftf/jSFgRNo3x4QFFYt0oASw+NYYA9iqIoCV8Rqytn47NDo
	vfww==
X-Gm-Message-State: APjAAAVwNbjeBMfsN17237l1QvHep2svlq4TW4Cia2F/DazENJ9dbzG7
	EYHoUUBiHwrnFx8M+4zJO+wf9FhSofe0o5HZe9SJFg==
X-Google-Smtp-Source: APXvYqxobUbsd1KlPhkjWxkBsEgDUDrzFVGYSCs2C4GU2JNTdbcqrebV0TpITINtu/9PBTKlE57s+qhv853CpFrxris=
X-Received: by 2002:a2e:9151:: with SMTP id q17mr22480063ljg.87.1553776801010; 
	Thu, 28 Mar 2019 05:40:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaAdc8r6O=Z=BmoC4g1Jmsf4vLj-mk_QgYxggBsMEEQ10w@mail.gmail.com>
	<CAJTo0LanMdOJG3tihWDhEFmjrSkWqmkxdfcn8B80HujvJDRFoA@mail.gmail.com>
	<CAAx3WaArZfEwL=nDUU6RigieGRf87asju3T_8k0=4+LARU9KAA@mail.gmail.com>
In-Reply-To: <CAAx3WaArZfEwL=nDUU6RigieGRf87asju3T_8k0=4+LARU9KAA@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Thu, 28 Mar 2019 13:39:49 +0100
Message-ID: <CAAx3WaDjt9+udJUr-3NqOm_pFtuOJnZqe3z6W2sCHU_n5zW6rg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Trimming BOOST libraries installed
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
X-List-Received-Date: Thu, 28 Mar 2019 12:40:03 -0000
Content-Type: multipart/alternative; boundary="00000000000048d7c8058526da1e"

--00000000000048d7c8058526da1e
Content-Type: text/plain; charset="UTF-8"

Forgot to include the mailing list

---------- Forwarded message ---------
Da: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: gio 28 mar 2019 alle ore 13:38
Subject: Re: [yocto] Trimming BOOST libraries installed
To: Burton, Ross <ross.burton@intel.com>


Thank you for the fast reply.

So I just specify the dependencies in my recipes, and then remove
IMAGE_INSTALL_append = " boost". Am I right?

Which name should I use with DEPEND?

Thanks,
Gabriele

Il giorno gio 28 mar 2019 alle ore 13:15 Burton, Ross <ross.burton@intel.com>
ha scritto:

> On Thu, 28 Mar 2019 at 10:59, Gabriele Zampieri <gabbla.malist@gmail.com>
> wrote:
> > I'm building a custom image that install boost libraries:
> >
> > IMAGE_INSTALL_append = " boost"
> >
> > How can I trim the installed libraries? I see inside
> meta/recipes-support/boost/boost.inc a variable called BOOST_LIBS that
> lists all the boost components, so in my custom-image.bb I tried:
>
> The easy solution is to not do that.  The application you're building
> should DEPEND on boost and then the RDEPENDS will be populated for
> you, and be the required set not the full set.
>
> If you really want to explicitly install some packages, then don't
> install "boost" which is a meta-package depending on all boost
> libraries.  The sub-libraries are called eg boost-atomic.
>
> Ross
>

--00000000000048d7c8058526da1e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>Forgot to include the mailing list <br></div><div=
><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>---------- Forwarded message ---------<br>Da: <b class=3D"gmail_sendername=
" dir=3D"auto">Gabriele Zampieri</b> <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gabbla.malist@gmail.com">gabbla.malist@gmail.com</a>&gt;</span><br>Date: =
gio 28 mar 2019 alle ore 13:38<br>Subject: Re: [yocto] Trimming BOOST libra=
ries installed<br>To: Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.=
com">ross.burton@intel.com</a>&gt;<br></div><br><br><div dir=3D"ltr"><div>T=
hank you for the fast reply. <br></div><div><br></div><div>So I just specif=
y the dependencies in my recipes, and then remove IMAGE_INSTALL_append =3D =
&quot; boost&quot;. Am I right?</div><div><br></div><div>Which name should =
I use with DEPEND?<br></div><div><br></div><div>Thanks, <br></div><div>Gabr=
iele<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Il giorno gio 28 mar 2019 alle ore 13:15 Burton, Ross &lt;<=
a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel=
.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Thu, 28 Mar 2019 at 10:59, Gabriele Zampieri &lt;<a href=3D"m=
ailto:gabbla.malist@gmail.com" target=3D"_blank">gabbla.malist@gmail.com</a=
>&gt; wrote:<br>
&gt; I&#39;m building a custom image that install boost libraries:<br>
&gt;<br>
&gt; IMAGE_INSTALL_append =3D &quot; boost&quot;<br>
&gt;<br>
&gt; How can I trim the installed libraries? I see inside meta/recipes-supp=
ort/boost/boost.inc a variable called BOOST_LIBS that lists all the boost c=
omponents, so in my <a href=3D"http://custom-image.bb" rel=3D"noreferrer" t=
arget=3D"_blank">custom-image.bb</a> I tried:<br>
<br>
The easy solution is to not do that.=C2=A0 The application you&#39;re build=
ing<br>
should DEPEND on boost and then the RDEPENDS will be populated for<br>
you, and be the required set not the full set.<br>
<br>
If you really want to explicitly install some packages, then don&#39;t<br>
install &quot;boost&quot; which is a meta-package depending on all boost<br=
>
libraries.=C2=A0 The sub-libraries are called eg boost-atomic.<br>
<br>
Ross<br>
</blockquote></div>
</div></div>

--00000000000048d7c8058526da1e--
