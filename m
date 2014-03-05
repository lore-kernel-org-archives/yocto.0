Return-Path: <sebmennetrier@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85108E00A29
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 00:31:38 -0800 (PST)
Received: by mail-ie0-f180.google.com with SMTP id as1so703779iec.25
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 00:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=kfLqKZF78MELpgWtccRxBvKkZJul1V3KD9FBzKz7uew=;
	b=y3+9QOQpBlbhjT0/HOGrRiFzXy8ArFWZYoINlac6YYPCRCufDo8tmiYUEc4Xe4/8WU
	5XLPwYEgx163er0nbRnw5UPG/3JFaVeiTd5ts04ZLwA9WnCtR/qgZSoHd8l/LN6Q+bPF
	FlI3/rBg7jiwH8kyvwMHEl7AiugD70+Zeg82ej9TSlcoWJsKkIawzmZoz9rCNPQNk+pM
	/aICYlc26NiuA6pDwRjoxGthg+NxDNIbHlLkKZ+BQOf+nDc6ct147WMlsncocgT94h+f
	yaGK/fTJPEVWVzzlRFIPkp0PlG1zs7IdcPE/PtZ1tx5ROTs9hWtMpcLZP/aXCiq5c6qb
	e+gQ==
MIME-Version: 1.0
X-Received: by 10.50.82.73 with SMTP id g9mr39241183igy.0.1394008297373; Wed,
	05 Mar 2014 00:31:37 -0800 (PST)
Sender: sebmennetrier@gmail.com
Received: by 10.42.198.139 with HTTP; Wed, 5 Mar 2014 00:31:37 -0800 (PST)
In-Reply-To: <CAK18fxF3frJ-8f66maAOQssO+jWxeQzvtQSN9+ReJN0Np8KrFg@mail.gmail.com>
References: <1393581239-5526-1-git-send-email-s.mennetrier@innotis.org>
	<CABgO3_MuNG3BRko9w=uXgOJW9aFrGKUeYdNbtskSNNxdpk6g8g@mail.gmail.com>
	<CAMKF1soRRrcaW2o=Ebw5nm1Jc-222QKwTU8OwW_VbdisGTQJ8g@mail.gmail.com>
	<CAK18fxF3frJ-8f66maAOQssO+jWxeQzvtQSN9+ReJN0Np8KrFg@mail.gmail.com>
Date: Wed, 5 Mar 2014 09:31:37 +0100
X-Google-Sender-Auth: uqfL_ihAgOr-I6GNzcEMM06L2-g
Message-ID: <CABgO3_PFcLvj_X0o71rsQ+zZj-Seu1YcBVj0ZmJQzDc9yLwGQw@mail.gmail.com>
From: Sebastien MENNETRIER <s.mennetrier@innotis.org>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][for-dora][PATCH] Installed fonts directory in the default location needed by omxplayer
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
X-List-Received-Date: Wed, 05 Mar 2014 08:31:40 -0000
Content-Type: multipart/alternative; boundary=047d7bd911d461060104f3d7d9e7

--047d7bd911d461060104f3d7d9e7
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2014-03-04 23:51 GMT+01:00 Andrei Gherzan <andrei@gherzan.ro>:

>
>
>
> On Wed, Mar 5, 2014 at 12:39 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Tue, Mar 4, 2014 at 12:18 AM, Sebastien MENNETRIER
>> <s.mennetrier@innotis.org> wrote:
>> >>  do_install() {
>> >>         oe_runmake dist
>> >> +       mkdir -p ${D}/usr/share/fonts/truetype/freefont/
>> >> +       install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
>> >>  }
>> >>
>> >>  FILES_${PN} =3D "${bindir}/omxplayer* \
>> >> -               ${libdir}/omxplayer/lib*${SOLIBS}"
>> >> +               ${libdir}/omxplayer/lib*${SOLIBS} \
>> >> +               /usr/share/fonts"
>> >>
>> >
>>
>> send the patch to OE-Core ml
>
>
> Why exactly? meta-rpi is using yocto mailinglist.
>
>
>> and dont hardcode /usr/share but use
>> ${datadir} instead
>>
>
> That's a good catch.
>

I followed a part of modification done in master branch. (Commit
eff5ec9b75f2df6f06645fcc673bce7ca35fdc51).
But I am agree with you. I will send a new patch.

Sebastien, one more thing, could you please adjust the subject to include
> "omxplayer:" prefix?
>
No problem.

Regards,
S=E9bastien

>
> Thanks,
> --
> *Andrei Gherzan*
> m: +40.744.478.414 |  f: +40.31.816.28.12
>

--047d7bd911d461060104f3d7d9e7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2014-03-04 23:51 GMT+01:00 Andrei Gherzan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</=
span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><div=
 class=3D"gmail_extra"><br><br><div class=3D"gmail_quote"><div class=3D"">O=
n Wed, Mar 5, 2014 at 12:39 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</spa=
n> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div>On Tue, Mar 4, 2014 =
at 12:18 AM, Sebastien MENNETRIER<br>



&lt;<a href=3D"mailto:s.mennetrier@innotis.org" target=3D"_blank">s.mennetr=
ier@innotis.org</a>&gt; wrote:<br>
&gt;&gt; =A0do_install() {<br>
&gt;&gt; =A0 =A0 =A0 =A0 oe_runmake dist<br>
&gt;&gt; + =A0 =A0 =A0 mkdir -p ${D}/usr/share/fonts/truetype/freefont/<br>
&gt;&gt; + =A0 =A0 =A0 install ${S}/fonts/* ${D}/usr/share/fonts/truetype/f=
reefont/<br>
&gt;&gt; =A0}<br>
&gt;&gt;<br>
&gt;&gt; =A0FILES_${PN} =3D &quot;${bindir}/omxplayer* \<br>
&gt;&gt; - =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${libdir}/omxplayer/lib*${SOLIBS}&qu=
ot;<br>
&gt;&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ${libdir}/omxplayer/lib*${SOLIBS} \<=
br>
&gt;&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 /usr/share/fonts&quot;<br>
&gt;&gt;<br>
&gt;<br>
<br>
</div>send the patch to OE-Core ml </blockquote><div><br></div></div><div>W=
hy exactly? meta-rpi is using yocto mailinglist.</div><div class=3D""><div>=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">



and dont hardcode /usr/share but use<br>
${datadir} instead<br></blockquote><div><br></div></div><div>That&#39;s a g=
ood catch.</div></div></div></div></blockquote><div><br></div><div>I follow=
ed a part of modification done in master branch. (Commit eff5ec9b75f2df6f06=
645fcc673bce7ca35fdc51).<br>
</div><div>But I am agree with you. I will send a new patch.<br></div><div>=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">
<div class=3D"gmail_extra"><div class=3D"gmail_quote"><div>Sebastien, one m=
ore thing, could you please adjust the subject to include &quot;omxplayer:&=
quot; prefix?</div></div></div></div></blockquote><div>No problem. <br><div=
>
<br>Regards,<br></div>S=E9bastien<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">


<br clear=3D"all"><div>Thanks,</div><span class=3D""><font color=3D"#888888=
">-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=
=3D"text-align:center"><div style=3D"font-family:&#39;Times New Roman&#39;;=
font-size:medium" align=3D"left">
<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font color=3D"#333333" face=3D"Arial" size=3D"=
-1"><br>


</font><font color=3D"#333333" face=3D"Arial" size=3D"-1">m: <a href=3D"tel=
:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.744.478.41=
4</a> | =A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162812" tar=
get=3D"_blank">+40.31.816.28.12</a></font><br>


</div></div></div>
</font></span></div></div>
</blockquote></div><br></div></div>

--047d7bd911d461060104f3d7d9e7--
