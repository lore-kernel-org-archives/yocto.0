Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 558A1E00B1B; Fri,  1 Sep 2017 10:27:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B353EE00349
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 10:27:12 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id w10so7170284oie.1
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 10:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=c+2zmt7HXi8ECPGlIyiY/23wrftbHtoN4KsvvcnXHaM=;
	b=HZ7/grVjOBEC7XalWYkySn5N/U22HCppxJNkTodra8QpZUSL2DPTUXjC2t/sJ+bZsK
	bAR7/pYsX00TgjojPP0LRmx3T8zEjNVfyHhz1zu1QGPjPH4Wz42h+tvureDvC4ParuVu
	m5l8tqwa3Rw1JU2iFDackJgTjioIJ1M/rKcWmLvGB5OqBmTdMVTzScfyA60WhLJQl90N
	dkwkRe1IzOTV8bUyFINBqAEPdVKkW0x7GhN3ZmP2ULn0q9Iu5VHueYU0mmPOW68wPD4i
	OwhJJ8CNkH1swNxOo6g5RDm8QwRZATqsZpwxPotn25S0YJZnyT4UfCFND4MYuUkUK2Aw
	tOYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=c+2zmt7HXi8ECPGlIyiY/23wrftbHtoN4KsvvcnXHaM=;
	b=BeNM4pfX4Kyw63mhQlsNKhxvebNNKxLAfF3ktlmpQCZVctxI3+AKGp1VE/xWIYcIfB
	b9X537IfZFL1ligGUYLklPlkpSdEsFrvRuPv+vK49ho5wBSk/frQRZDZZmbCp/XqGazL
	DENWtZJu/T1twC9aEGbGepYTZ2kPRNwUcIh1DG38JUC8sliJ/R34zZiRtXQJBaGmCyzy
	jQfVKpCxKsCKF0PhGQQpesqbeulrkzUqXbym0TDoQgBbpjSw418oGNj2NQZ3SpQ8P/2B
	qFELTTgeoy2wrHrKCsIH5amSqz/h6p0pleBE/weDHXOg63CNxpvBNxxRgbWS12ucL+HL
	Qn0A==
X-Gm-Message-State: AHPjjUhOwhafqLPz5MF4rpb7Fy28fqGLoMr0jBL1xwiE6M5d9dM1Tynp
	zIa1/nXw4TapS5gx+qrNLUsfYyVVQOSR
X-Google-Smtp-Source: ADKCNb4eEyRaQs/K60vNCAyk8JlpNLuEiiLmTAc2ruy+Ikbacqu3VsHwm04CfSwbA8OogRE4ZgoCjq6gL5NOq0IDve8=
X-Received: by 10.202.83.203 with SMTP id h194mr2432709oib.98.1504286830325;
	Fri, 01 Sep 2017 10:27:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.131 with HTTP; Fri, 1 Sep 2017 10:27:09 -0700 (PDT)
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Fri, 1 Sep 2017 19:27:09 +0200
Message-ID: <CABFXn3FgSebaEHAq6Vg_+y5mK=b0x=7QsqvNqWk=idO6zGmfng@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: modify sources.list file
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
X-List-Received-Date: Fri, 01 Sep 2017 17:27:13 -0000
Content-Type: multipart/alternative; boundary="001a113d52322974260558241244"

--001a113d52322974260558241244
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I am build a deb package manager for the target image. for that i set these
variables in conf/local.conf

> *PACKAGE_FEED_URIS =3D "http://<server ip>/my-repo/yahia-repo/expirementa=
l \*
>
> *                                        "*
>
> *PACKAGE_FEED_BASE_PATHS =3D "deb"*
>
> *PACKAGE_FEED_ARCHS =3D "all"*
>
>
and as expected the result was in sources.list

> *deb http://<server ip>/my-repo/yahia-repo/expiremental/deb/all ./ *

Now , i want to make sources.list to be like this

> *deb http://<server ip>/my-repo/yahia-repo/expiremental/deb/all yahia mai=
n*
>

is there any way in yocto to achieve this ?
i tried overwriting content by an exist file on machine with install
command in do_install task but it doesn't work
I also tried in image recipe

> ROOTFS_POSTPROCESS_COMMAND +=3D "modifysourcelist;"
>
>
>> modifysourcelist(){
>
> install -d ${D}/etc/apt
>
>      install -m 0755 ${THISDIR}/../addfiles/keyfile/sources.list
>> ${D}/etc/apt
>
> }
>
> and it was no effect.
--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>



=E2=80=8C

--001a113d52322974260558241244
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/05aa7cd=
30273f4e57c7422504a23f5e2c1a31b68.png?u=3D1822760">Hi,<div>I am build a deb=
 package manager for the target image. for that i set these variables in co=
nf/local.conf</div><div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><b>PACKAGE_FEED_URIS =3D &=
quot;http://&lt;server ip&gt;/my-repo/yahia-repo/expiremental \</b></blockq=
uote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><b>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;</b></blockquote><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><b>PACKAGE_FEED_BASE_PATHS =
=3D &quot;deb&quot;</b></blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><b>PACKAGE_FEED_ARCHS =3D &quot;all&quot;</b></blockquote></bloc=
kquote><div><br></div><div>and as expected the result was in sources.list=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><b>deb http:/=
/&lt;server ip&gt;/my-repo/yahia-repo/expiremental/deb/all ./=C2=A0</b></bl=
ockquote><div>Now , i want to make sources.list to be like this =C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><b>deb http://&lt;server=
 ip&gt;/my-repo/yahia-repo/expiremental/deb/all yahia main</b><br></blockqu=
ote><div>=C2=A0</div><div>is there any way in yocto to achieve this ?</div>=
<div>i tried overwriting content by an exist file on machine with install c=
ommand in do_install task but it doesn&#39;t work</div><div>I also tried in=
 image recipe</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">ROOTFS_POSTPROCESS_COMMAND +=3D=
 &quot;modifysourcelist;&quot;</blockquote><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><br></blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">modifysourcelist(){</blockquote><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><span class=3D"gmail-Apple-tab-span" style=3D"white-space=
:pre">	</span>install -d ${D}/etc/apt</blockquote><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">=C2=A0 =C2=A0 =C2=A0install -m 0755 ${THISDIR}/../=
addfiles/keyfile/sources.list ${D}/etc/apt</blockquote><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">}</blockquote></blockquote><div>and it was no=
 effect. =C2=A0</div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"font-fam=
ily:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px"=
>Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></sp=
an><div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, serif, E=
mojiFont"><span style=3D"font-size:13px">Graduated from Faculty of Engineer=
ing - Electronics and Communications Department at Cairo University.</span>=
</font><br></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,H=
elvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"https:/=
/linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_blan=
k"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emoj=
iFont"><span style=3D"font-size:13px">Linkedin</span></font></a><font size=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif=
,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a hr=
ef=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" target=
=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,s=
erif,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a></di=
v></div></div></div></div></div>
<br><br><br>=E2=80=8C</div></div>

--001a113d52322974260558241244--
