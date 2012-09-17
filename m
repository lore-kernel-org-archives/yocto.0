Return-Path: <munoz0raul@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0395CE0049F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 06:48:57 -0700 (PDT)
Received: by lboi15 with SMTP id i15so4943118lbo.35
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 06:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZKRZ04fTpzIlIlTKTqwDDJTrUrlV17ux/WBh8c+gMX8=;
	b=rGAHW39JNd75iK6wUYCu2AUQw5vyt+n/QU3445UgrIE/PP5xRcdi9vYMnyrWnKjPKY
	wOWVXy48PxCZNzt0Ym/kNYedmUb+szp7HAt3XUTngl+yDUbHX1PL0qb4Wso4hCs0dlKs
	jAK+YdsHvI7xcIr/obzBAMfeSGYmSMdlNWuU4MMKS3SEDxyq5bBXcDNkyj+beEf9xB/H
	is7hjY/ri3NC7WB5V3CI1SAfvEqa1aFxqaR/5mVUP5dhgUcrkUgZZKHTPBbXDGWWVr6l
	jw3EV/phDFc4r8FnRDPyyARlRFjqDWI5ibONk6d+Ja50IkhnOYx50XeciPZfTvfcPBjf
	GkLA==
MIME-Version: 1.0
Received: by 10.152.102.137 with SMTP id fo9mr9883281lab.35.1347889736604;
	Mon, 17 Sep 2012 06:48:56 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Mon, 17 Sep 2012 06:48:56 -0700 (PDT)
In-Reply-To: <CADzUK1J_aTDBpAwDiDAXXYom5OnfaK=N6VVevCrOEP-vmfG+Zg@mail.gmail.com>
References: <CANmVirh4JJnAyuJxnxMQbBuOB79dGsi6p_SRnn_HD8AZShsxKg@mail.gmail.com>
	<CADzUK1J_aTDBpAwDiDAXXYom5OnfaK=N6VVevCrOEP-vmfG+Zg@mail.gmail.com>
Date: Mon, 17 Sep 2012 10:48:56 -0300
Message-ID: <CANmVirg-f6MBzXjFrN+aquFLs+aqm050AcB7URcZH54JrLtx5w@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: Autif Khan <autif.mlist@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Create a .bb for my aplication
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
X-List-Received-Date: Mon, 17 Sep 2012 13:48:58 -0000
Content-Type: multipart/alternative; boundary=f46d0407160bf25b1504c9e6085b

--f46d0407160bf25b1504c9e6085b
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I'm just want to mkdir in the /home/ path.

Im try some thing like this but don't work!


DESCRIPTION =3D "xxxx"
SECTION =3D "examples"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D
"file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302"
PR =3D "r0"

SRC_URI =3D "file://teste"

S =3D "${WORKDIR}"

do_install() {
    mkdir -p /home/prjs/
}



2012/9/4 Autif Khan <autif.mlist@gmail.com>

> On Tue, Sep 4, 2012 at 1:14 PM, Raul Rosetto Munoz <munoz0raul@gmail.com>
> wrote:
> > Hello,
> > I have some files that compose my application, and I want to put this
> files
> > in the "/home/prjs" folder, I know That I need to install the prjs fold=
er
> > and the other files in this folder.
> >
> > What I dont know first, How to create a .bb file!
>
> I am not sure what you mean. Do you mean that if you create a .bb
> file, how to include it in your image?
>
> >
> > And another question.
> >
> > I saw that if I do some things like this:
> >
> > install -m 0644 ${WORKDIR}/fstab ${D}${sysconfdir}/fstab
> >
> > I will copy the file fstab in /etc/ folder.
> >
> > How I can know that {sysconfdir} correspond to /etc/ folder?
>
> these are in poky/meta/conf/bitbake.conf
>
> > And If it is correct how to know for what /home/ folder correspond {???=
}.
>
> If they do not exist in bitbake.conf, you should use a local variable
> in your recipe or local.conf.
>
> > plz Can some one try to tell me???
> >
> > Thanks For All Help!
> >
> > --
> > Raul Rosetto Mu=F1oz
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>



--=20
*Raul Rosetto Mu=F1oz*

--f46d0407160bf25b1504c9e6085b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;m just want to mkdir in the /home/ path.<div><br></div><div>Im try so=
me thing like this but don&#39;t work!</div><div><br></div><div><br></div><=
div><div>DESCRIPTION =3D &quot;xxxx&quot;</div><div>SECTION =3D &quot;examp=
les&quot;</div>
<div>LICENSE =3D &quot;MIT&quot;</div><div>LIC_FILES_CHKSUM =3D &quot;file:=
//${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;</d=
iv><div>PR =3D &quot;r0&quot;</div><div><br></div><div>SRC_URI =3D &quot;fi=
le://teste&quot;</div>
<div><br></div><div>S =3D &quot;${WORKDIR}&quot;</div><div><br></div><div>d=
o_install() {</div><div>=A0 =A0 mkdir -p /home/prjs/</div><div>}</div></div=
><div><br></div><div><br><br><div class=3D"gmail_quote">2012/9/4 Autif Khan=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:autif.mlist@gmail.com" target=3D"_=
blank">autif.mlist@gmail.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tue, Sep 4, 2012 at 1:1=
4 PM, Raul Rosetto Munoz &lt;<a href=3D"mailto:munoz0raul@gmail.com">munoz0=
raul@gmail.com</a>&gt; wrote:<br>

&gt; Hello,<br>
&gt; I have some files that compose my application, and I want to put this =
files<br>
&gt; in the &quot;/home/prjs&quot; folder, I know That I need to install th=
e prjs folder<br>
&gt; and the other files in this folder.<br>
&gt;<br>
&gt; What I dont know first, How to create a .bb file!<br>
<br>
</div>I am not sure what you mean. Do you mean that if you create a .bb<br>
file, how to include it in your image?<br>
<div class=3D"im"><br>
&gt;<br>
&gt; And another question.<br>
&gt;<br>
&gt; I saw that if I do some things like this:<br>
&gt;<br>
&gt; install -m 0644 ${WORKDIR}/fstab ${D}${sysconfdir}/fstab<br>
&gt;<br>
&gt; I will copy the file fstab in /etc/ folder.<br>
&gt;<br>
&gt; How I can know that {sysconfdir} correspond to /etc/ folder?<br>
<br>
</div>these are in poky/meta/conf/bitbake.conf<br>
<div class=3D"im"><br>
&gt; And If it is correct how to know for what /home/ folder correspond {??=
?}.<br>
<br>
</div>If they do not exist in bitbake.conf, you should use a local variable=
<br>
in your recipe or local.conf.<br>
<div class=3D"im"><br>
&gt; plz Can some one try to tell me???<br>
&gt;<br>
&gt; Thanks For All Help!<br>
&gt;<br>
&gt; --<br>
&gt; Raul Rosetto Mu=F1oz<br>
&gt;<br>
</div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><b>Raul Rose=
tto Mu=F1oz</b><br>
</div>

--f46d0407160bf25b1504c9e6085b--
