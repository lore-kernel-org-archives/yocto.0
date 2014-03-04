Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F596E0096A
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 14:52:08 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id y10so248471wgg.13
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 14:52:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Cd7W4qXOUyI8c8D2pXOUWij9yFOCJcR3MnTnc4niWf4=;
	b=TxZqRPjbKcZnmuSmGyYfoDVF0KQ7cwcILxOa1qYancijc/KpnZWEnZChIAwth7S46C
	iHF9ksTKXBqnq0wdSYyMunOkRSo2b9JYio3yDNgsgBFjeDXbP0IsxxUk2vw8oMexUvsM
	xuWmnqTgl6jVFla7CybOWC1u3+LlQmMpj1qXeyRVC9RKn8/4TjkG1GfoeWsjAPlUJlp8
	54xdHCOv0uC/0D6QIp2U2gOJF0y0CiyapBOiZDQbeW8jkKkRqFmwJbPaSubPnYYohYuK
	r2SkZSee27f1tEca5FFgg5J/X5f7Eb9jQ7y5EI0NcETtJdEdkXWyi+bqpAilEVnXUDdv
	GpXA==
X-Gm-Message-State: ALoCoQmwLkdfc36i5CuCgfX1e6tptxu7utpE3OIF4qk4h3YNQm87aQ0k3HT9/OrnaH0ffQbnztOv
X-Received: by 10.194.179.69 with SMTP id de5mr3428053wjc.4.1393973527207;
	Tue, 04 Mar 2014 14:52:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 4 Mar 2014 14:51:47 -0800 (PST)
X-Originating-IP: [5.13.146.71]
In-Reply-To: <CAMKF1soRRrcaW2o=Ebw5nm1Jc-222QKwTU8OwW_VbdisGTQJ8g@mail.gmail.com>
References: <1393581239-5526-1-git-send-email-s.mennetrier@innotis.org>
	<CABgO3_MuNG3BRko9w=uXgOJW9aFrGKUeYdNbtskSNNxdpk6g8g@mail.gmail.com>
	<CAMKF1soRRrcaW2o=Ebw5nm1Jc-222QKwTU8OwW_VbdisGTQJ8g@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 5 Mar 2014 00:51:47 +0200
Message-ID: <CAK18fxF3frJ-8f66maAOQssO+jWxeQzvtQSN9+ReJN0Np8KrFg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Tue, 04 Mar 2014 22:52:09 -0000
Content-Type: multipart/alternative; boundary=089e01493caeea760804f3cfc0a6

--089e01493caeea760804f3cfc0a6
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Mar 5, 2014 at 12:39 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Mar 4, 2014 at 12:18 AM, Sebastien MENNETRIER
> <s.mennetrier@innotis.org> wrote:
> >>  do_install() {
> >>         oe_runmake dist
> >> +       mkdir -p ${D}/usr/share/fonts/truetype/freefont/
> >> +       install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
> >>  }
> >>
> >>  FILES_${PN} = "${bindir}/omxplayer* \
> >> -               ${libdir}/omxplayer/lib*${SOLIBS}"
> >> +               ${libdir}/omxplayer/lib*${SOLIBS} \
> >> +               /usr/share/fonts"
> >>
> >
>
> send the patch to OE-Core ml


Why exactly? meta-rpi is using yocto mailinglist.


> and dont hardcode /usr/share but use
> ${datadir} instead
>

That's a good catch.

Sebastien, one more thing, could you please adjust the subject to include
"omxplayer:" prefix?

Thanks,
-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e01493caeea760804f3cfc0a6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Mar 5, 2014 at 12:39 AM, Khem Raj <span dir=3D"ltr">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>=
&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>On Tue, Mar 4, 2014 at 12:18 AM, Sebastien MENNETRIER=
<br>



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
</div>send the patch to OE-Core ml </blockquote><div><br></div><div>Why exa=
ctly? meta-rpi is using yocto mailinglist.</div><div>=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1p=
x;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1=
ex">


and dont hardcode /usr/share but use<br>
${datadir} instead<br></blockquote><div><br></div><div>That&#39;s a good ca=
tch.</div><div><br></div><div>Sebastien, one more thing, could you please a=
djust the subject to include &quot;omxplayer:&quot; prefix?</div></div>


<br clear=3D"all"><div>Thanks,</div>-- <br><div dir=3D"ltr"><div style=3D"t=
ext-align:center"></div><div style=3D"text-align:center"><div align=3D"left=
" style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><b style=
=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-align:center=
">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>


</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: <a href=3D"tel=
:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.744.478.41=
4</a> | =A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162812" tar=
get=3D"_blank">+40.31.816.28.12</a></font><br>

</div></div></div>
</div></div>

--089e01493caeea760804f3cfc0a6--
