Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFC27E009CA; Sun, 31 May 2015 23:03:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailinglist[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A590E0095C
	for <yocto@yoctoproject.org>; Sun, 31 May 2015 23:03:45 -0700 (PDT)
Received: by qgf2 with SMTP id 2so44040392qgf.3
	for <yocto@yoctoproject.org>; Sun, 31 May 2015 23:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CQTMujUFPPOybWoWxJPapDPiiRKe502fjfrd1r9ouVg=;
	b=nqg4IA0J83JblZX0XXOmfQRMQnRIS1D5MjxWiipU28sFivUZT7ca3Kym3TZRgBj8J1
	OE3jEEIICNWV8mAx4t4MNBEuC53TkvIJK0R+nTVX38C4axPxUW829fyuSlrGlNVQgbkp
	D/X7Os1gsFoMdGWLYZ0u1oql+Z/C8jjZEN4Vtcob/J+FvY/Oi8kQNZN+5I+PFCu2rm8P
	9jPLdxCI9v2hYIz0g6qDw7llDHdl2QfBTHTlOvw1MFlusKUP19xJqj0kXQj+9EkNeohq
	Q/t25++K8MYQK7xijfYcJ8LQK9/lEYLQ9YP6+hG9XmjAriK1M6WLMlyZoi/seVu6ykMX
	sYGg==
MIME-Version: 1.0
X-Received: by 10.55.41.24 with SMTP id p24mr35616381qkh.55.1433138625100;
	Sun, 31 May 2015 23:03:45 -0700 (PDT)
Received: by 10.140.83.102 with HTTP; Sun, 31 May 2015 23:03:45 -0700 (PDT)
In-Reply-To: <4977390.O0q4MNQSA8@peggleto-mobl.ger.corp.intel.com>
References: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
	<11192520.5TF2irfV67@peggleto-mobl.ger.corp.intel.com>
	<CACTu1Lg-0R2MK+zbfTQWVfN2DGRFDA3nhpL+OHw_eMKOhLGOYA@mail.gmail.com>
	<4977390.O0q4MNQSA8@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 1 Jun 2015 08:03:45 +0200
Message-ID: <CACTu1LjSEt7qjHjsP1W8v6ZkOU146JXndfp0RrYOQVGiYA8v+w@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to enable php5 (php_5.5.24.bb) support for postgresql
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
X-List-Received-Date: Mon, 01 Jun 2015 06:03:48 -0000
Content-Type: multipart/alternative; boundary=001a11406c54a9c0df05176e964a

--001a11406c54a9c0df05176e964a
Content-Type: text/plain; charset=UTF-8

I am willed to do this since I rely on postgresql. It would help if you
could provide some hints which files are or might be related to the problem
since I am relatively new to yocto. I would do the rest of the work.

2015-05-28 13:15 GMT+02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> On Saturday 23 May 2015 11:12:22 yocto yocto wrote:
> > after looking at the config.log that I sent you I realized that all
> "unsafe
> > for cross-compilation" message occur because the recipe tries to link
> > against my local installation of postgresql-server-dev-9.3 and libpq-dev
> > lying in /usr/lib. Consider the following line:
> >
> > "skipping incompatible /usr/lib/libpq.so when searching for -lpq"
> >
> > The recipe is doing right to skip the library, because I am using Ubuntu
> > 64bit. Therefore my local installations of postgresql-server-dev-9.3 and
> > libpq-dev are 64 bit versions. So yesterday evening/night I did the
> > following:
> >
> > - I installed a virtual machine Ubuntu 32 bit
> > - I downloaded the latest linux sources (edison-src-ww18-15-1.tgz)
> > - I added the meta-openembbed layer (daisy branch)
> > - I removed the php recipe from the daisy branch and replaced it by the
> > latest from the master branch
> > - I added PACKAGECONFIG_pn-php = "mysql sqlite3 pgsql" in local.conf
> > - I added my own layer
> > - I built the image
> >
> > Result: Everything builds fine from scratch beside the php recipe. I
> > appended the latest config.log. As you can see some dependencies are
> > missing resulting in linker errors and I still get the "unsafe for
> > cross-compilation" error.
> >
> > Is the approach of the recipe correct (linking against local packages?).
>
> Certainly not. A recipe built for the target machine should never be
> picking
> up includes or libraries from the host, that's why this check exists. We
> need
> to ensure the configure script does not look at host locations at all. I
> guess
> one reason we haven't picked up on this is that by default postgres
> functionality is disabled.
>
> > What is your system configuration? Do you have any ideas or do you know a
> > person who might help?
>
> The system I did my most recent build on is a CentOS 6 machine, but that's
> probably not why it works for me - it likely works for me because I simply
> don't have postgres or its development files installed, so there's nothing
> for
> the configure script to find on the host.
>
> Unfortunately this is a case where someone is going to have to dig into the
> php configure script, find out how that -L/usr/lib is getting into the
> linker
> path, and then stop that from happening; depending on how it is getting in
> there that may be an additional argument to the configure script or it
> might
> require patching the configure.ac file. Using "grep" and a little
> knowledge of
> how autoconf works this shouldn't be too difficult, but it's not something
> I
> have time for at the moment.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11406c54a9c0df05176e964a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am willed to do this since I rely on postgresql. It woul=
d help if you could provide some hints which files are or might be related =
to the problem since I am relatively new to yocto. I would do the rest of t=
he work.<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>2015-05-28 13:15 GMT+02:00 Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"=
mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux=
.intel.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
"">On Saturday 23 May 2015 11:12:22 yocto yocto wrote:<br>
&gt; after looking at the config.log that I sent you I realized that all &q=
uot;unsafe<br>
&gt; for cross-compilation&quot; message occur because the recipe tries to =
link<br>
&gt; against my local installation of postgresql-server-dev-9.3 and libpq-d=
ev<br>
&gt; lying in /usr/lib. Consider the following line:<br>
&gt;<br>
&gt; &quot;skipping incompatible /usr/lib/libpq.so when searching for -lpq&=
quot;<br>
&gt;<br>
&gt; The recipe is doing right to skip the library, because I am using Ubun=
tu<br>
&gt; 64bit. Therefore my local installations of postgresql-server-dev-9.3 a=
nd<br>
&gt; libpq-dev are 64 bit versions. So yesterday evening/night I did the<br=
>
&gt; following:<br>
&gt;<br>
&gt; - I installed a virtual machine Ubuntu 32 bit<br>
&gt; - I downloaded the latest linux sources (edison-src-ww18-15-1.tgz)<br>
&gt; - I added the meta-openembbed layer (daisy branch)<br>
&gt; - I removed the php recipe from the daisy branch and replaced it by th=
e<br>
&gt; latest from the master branch<br>
&gt; - I added PACKAGECONFIG_pn-php =3D &quot;mysql sqlite3 pgsql&quot; in =
local.conf<br>
&gt; - I added my own layer<br>
&gt; - I built the image<br>
&gt;<br>
&gt; Result: Everything builds fine from scratch beside the php recipe. I<b=
r>
&gt; appended the latest config.log. As you can see some dependencies are<b=
r>
&gt; missing resulting in linker errors and I still get the &quot;unsafe fo=
r<br>
&gt; cross-compilation&quot; error.<br>
&gt;<br>
&gt; Is the approach of the recipe correct (linking against local packages?=
).<br>
<br>
</span>Certainly not. A recipe built for the target machine should never be=
 picking<br>
up includes or libraries from the host, that&#39;s why this check exists. W=
e need<br>
to ensure the configure script does not look at host locations at all. I gu=
ess<br>
one reason we haven&#39;t picked up on this is that by default postgres<br>
functionality is disabled.<br>
<span class=3D""><br>
&gt; What is your system configuration? Do you have any ideas or do you kno=
w a<br>
&gt; person who might help?<br>
<br>
</span>The system I did my most recent build on is a CentOS 6 machine, but =
that&#39;s<br>
probably not why it works for me - it likely works for me because I simply<=
br>
don&#39;t have postgres or its development files installed, so there&#39;s =
nothing for<br>
the configure script to find on the host.<br>
<br>
Unfortunately this is a case where someone is going to have to dig into the=
<br>
php configure script, find out how that -L/usr/lib is getting into the link=
er<br>
path, and then stop that from happening; depending on how it is getting in<=
br>
there that may be an additional argument to the configure script or it migh=
t<br>
require patching the <a href=3D"http://configure.ac" target=3D"_blank">conf=
igure.ac</a> file. Using &quot;grep&quot; and a little knowledge of<br>
how autoconf works this shouldn&#39;t be too difficult, but it&#39;s not so=
mething I<br>
have time for at the moment.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--001a11406c54a9c0df05176e964a--
