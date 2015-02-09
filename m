Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 175BEE00945; Sun,  8 Feb 2015 21:45:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTTPS_HTTP_MISMATCH, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	*  2.0 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA180E008CD
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 21:45:05 -0800 (PST)
Received: by mail-oi0-f45.google.com with SMTP id i138so2516109oig.4
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 21:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=l0LgCN5fqPNggdAzNYFI3KUj9fWG6xl9mJyN3x0oOdI=;
	b=qXlDKMPDyoM8iHHROFlKb/DXFxRUco+798J2l1nmAf0o6ZJoitJMa6lU1Dnn6Tu1KX
	6NavZq5SK243aI1SgljNU0XJ7NzLEEANHeTGTfB3k1WldOCBganQOc+LTB6fEILNXOrG
	/cBxAuKcrZQPHIdlWy+kpJtsW3FgvOFrvJB3CfGg0ETeaZtxfAWKvnioKZXYD6HJzqx6
	aIVYXHixQsUf+uLsDnSjF+dSVWgy4NM916NMEcnNe2JjM7QYIR6y1M1gOy04g1d8ZK8R
	+1RLqY3iVMyz/EAZX1dG4MBGvC+BKmAMvczUfjSNKBYle/iN4BCE+AkENOiNWEIo6pGa
	6gqw==
MIME-Version: 1.0
X-Received: by 10.182.76.69 with SMTP id i5mr10625737obw.19.1423460704806;
	Sun, 08 Feb 2015 21:45:04 -0800 (PST)
Received: by 10.202.104.144 with HTTP; Sun, 8 Feb 2015 21:45:04 -0800 (PST)
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A3471E8@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A345186@AZ-FFEXMB01.global.avaya.com>
	<CAE_REAuN6iW72f+B6EmHpmdC_zHC14td3fU6ATowRJY68Oqn+w@mail.gmail.com>
	<F38A866CD026F746A3BF0928A84397BE3A3471E8@AZ-FFEXMB01.global.avaya.com>
Date: Mon, 9 Feb 2015 11:15:04 +0530
Message-ID: <CAE_REAuApG02+rU8Ep9cgOPqYMkbC0MFoZ2qH03DsiCWFpYUpw@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_install fails to do a package for custom directory
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
X-List-Received-Date: Mon, 09 Feb 2015 05:45:11 -0000
Content-Type: multipart/alternative; boundary=047d7b6760c8a96d4e050ea14566

--047d7b6760c8a96d4e050ea14566
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

You can refer any of the existing recipe. For eg,
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-connectivi=
ty/dhcp/dhcp.inc

You can see how post scripts are used.

//Gaurang Shastri

On Sun, Feb 8, 2015 at 8:25 PM, Bipnesh, Abhinav (Abhinav) <
abhinavbipnesh@avaya.com> wrote:

>  Hi All,
>
>
>
> One more thing how to have %pre and %post defined in the recipe file. As =
I
> am not able to find the directive which can do the jobs. As I need to sto=
p
> an service and the post upgrade need to start the service.
>
>
>
> Thanks,
>
> Abhinav
>
>
>
> *From:* Gaurang Shastri [mailto:gmshastri@gmail.com]
> *Sent:* Sunday, February 08, 2015 19:45
> *To:* Bipnesh, Abhinav (Abhinav)
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] do_install fails to do a package for custom
> directory
>
>
>
> Hi,
>
> I think may be you missed,
>
> FILES_${PN} +=3D "/system"
>
> then you can see your binary inside ${PN} package.
>
> //Gaurang Shastri
>
>
>
> On Sun, Feb 8, 2015 at 6:55 PM, Bipnesh, Abhinav (Abhinav) <
> abhinavbipnesh@avaya.com> wrote:
>
> Hi All,
>
>
>
> I am trying to write a custom recipe for my make based project. So I am
> able to compile the project and generate the binary. Now when I am trying
> to package using do_install() I am not able to put the package in custom
> directory.
>
> So when I use *${D}${bindir} *it work perfectly fine and the package has
> those binary. But when I tried with *${D}/system/hello * it didn=E2=80=99=
t works.
> Below is the snapshot of the do_install ()
>
>
>
> do_install () {
>
>      cd ${WORKDIR}
>
>
>
>      # init script
>
>      install -d ${D}${sysconfdir}/init.d
>
>      install -d ${D}${sysconfdir}/sysconfig
>
>      install -m 755 ${WORKDIR}/test/test ${D}${sysconfdir}/init.d/test
>
>      install -m 644 ${WORKDIR}/test/test ${D}${sysconfdir}/sysconfig/test
>
>      # executable
>
>      install -d ${D}/system/hello
>
>      #install -d ${D}${bindir}
>
>      #install -m 755 ${S}/helloworl/hello ${D}${bindir}/hello =C3=A7 it w=
orks
>
>      install -m 755 ${S}/helloworld/hello ${D}/system/hello/hello =C3=A7 =
it
> doesn=E2=80=99t work
>
> }
>
>
>
> So any thoughts how to fix this issue.
>
>
>
> Thanks,
>
> Abhinav
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoprojec=
t.org_listinfo_yocto&d=3DAwMFaQ&c=3DBFpWQw8bsuKpl1SgiZH64Q&r=3DgeJ1wB7xRIMm=
teYB2Fo8esL32BOWvwP1HmY0YuLEB4E&m=3DIy9SmZSRA8a3TpWZ-PhWHrxbIxIS8nnOD7uMXs2=
GqMs&s=3DAZ_qNS0XO5MtD7frytoys-HR6ATQyQYHDItvpD5OjZI&e=3D>
>
>
>

--047d7b6760c8a96d4e050ea14566
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>You can refer any of the e=
xisting recipe. For eg,<br><a href=3D"http://cgit.openembedded.org/openembe=
dded-core/tree/meta/recipes-connectivity/dhcp/dhcp.inc">http://cgit.openemb=
edded.org/openembedded-core/tree/meta/recipes-connectivity/dhcp/dhcp.inc</a=
><br><br></div>You can see how post scripts are used.<br><br></div>//Gauran=
g Shastri<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Sun, Feb 8, 2015 at 8:25 PM, Bipnesh, Abhinav (Abhinav) <span dir=3D"l=
tr">&lt;<a href=3D"mailto:abhinavbipnesh@avaya.com" target=3D"_blank">abhin=
avbipnesh@avaya.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>





<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi All,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">One more thing how to hav=
e %pre and %post defined in the recipe file. As I am not able to find the d=
irective which can do the jobs. As I need to stop an service
 and the post upgrade need to start the service.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Abhinav<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Gaurang =
Shastri [mailto:<a href=3D"mailto:gmshastri@gmail.com" target=3D"_blank">gm=
shastri@gmail.com</a>]
<br>
<b>Sent:</b> Sunday, February 08, 2015 19:45<br>
<b>To:</b> Bipnesh, Abhinav (Abhinav)<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><span class=3D""><br>
<b>Subject:</b> Re: [yocto] do_install fails to do a package for custom dir=
ectory<u></u><u></u></span></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi,<u></u><u></u></p>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I think may be you mi=
ssed,<u></u><u></u></p>
</div></div></div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">FILES_${PN} +=3D &quo=
t;/system&quot; <u></u><u></u></p>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">then you can see your=
 binary inside ${PN} package.<u></u><u></u></p>
</div></div></div>
<p class=3D"MsoNormal">//Gaurang Shastri<u></u><u></u></p>
</div><div><div class=3D"h5">
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Sun, Feb 8, 2015 at 6:55 PM, Bipnesh, Abhinav (Ab=
hinav) &lt;<a href=3D"mailto:abhinavbipnesh@avaya.com" target=3D"_blank">ab=
hinavbipnesh@avaya.com</a>&gt; wrote:<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi All,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I am trying to write a custom recipe for my make bas=
ed project. So I am able to compile the project and generate the binary. No=
w when I am trying to package using do_install() I
 am not able to put the package in custom directory.<u></u><u></u></p>
<p class=3D"MsoNormal">So when I use
<b>${D}${bindir} </b>it work perfectly fine and the package has those binar=
y. But when I tried with
<b>${D}/system/hello </b>=C2=A0it didn=E2=80=99t works. Below is the snapsh=
ot of the do_install ()<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">do_install () {</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 cd ${WORKDIR}</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 # init script</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}/init=
.d</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}/sysc=
onfig</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/test/te=
st ${D}${sysconfdir}/init.d/test</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -m 644 ${WORKDIR}/test/te=
st ${D}${sysconfdir}/sysconfig/test</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 # executable</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}/system/hello</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 #install -d ${D}${bindir}</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 #install -m 755 ${S}/helloworl/he=
llo ${D}${bindir}/hello
</span><span style=3D"font-size:10.0pt;font-family:Wingdings">=C3=A7</span>=
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"> it wo=
rks</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -m 755 ${S}/helloworld/he=
llo ${D}/system/hello/hello
</span><span style=3D"font-size:10.0pt;font-family:Wingdings">=C3=A7</span>=
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"> it do=
esn=E2=80=99t work</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">}</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">So any thoughts how to fix this issue.<u></u><u></u>=
</p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Abhinav<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoc=
toproject.org_listinfo_yocto&amp;d=3DAwMFaQ&amp;c=3DBFpWQw8bsuKpl1SgiZH64Q&=
amp;r=3DgeJ1wB7xRIMmteYB2Fo8esL32BOWvwP1HmY0YuLEB4E&amp;m=3DIy9SmZSRA8a3TpW=
Z-PhWHrxbIxIS8nnOD7uMXs2GqMs&amp;s=3DAZ_qNS0XO5MtD7frytoys-HR6ATQyQYHDItvpD=
5OjZI&amp;e=3D" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--047d7b6760c8a96d4e050ea14566--
