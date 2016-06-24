Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D141E00D29; Fri, 24 Jun 2016 06:11:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8C2FE00D3B
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 06:10:41 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id t74so98836207ioi.0
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 06:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uDW8+8e/jOTD7ZiUp1EAOInTStGbrLlXXPfJLQjVqDM=;
	b=LpUjDv8IiS2N4oPeZ1rxuhCR6fG8+QzPcpXobo2/UBWoJ85NcDIy5dku+U3NzmLiAk
	wZzx0PbYtKVMwiWMrKMRtRGdH1CIf5JWTpnjptXiu/YfR12DQkW0/41ttYM8Xatw7PX3
	ZedbMoYpFPHWZK37qVuQOkMaXj/OP9RQrP1N49efGqKnoWgz0VeMWwT/2vWDZ5ZgWOi2
	qjKIbhGsDY6pV2HPmAhyXDdGtecp4XEklCfXGQBskvbgjxN1PrG7R29PCPMGTzpTVSe4
	2+m5W5XF89W/M96+fnOdSGkGOWUYBYTOG5InBn8ufuLDjIicdl9ln7b2BBhzRK5/sL2b
	TVww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uDW8+8e/jOTD7ZiUp1EAOInTStGbrLlXXPfJLQjVqDM=;
	b=KyPk2ZwZZBe7MX+t/d9bFxW6up/YYxx8BrAL4daWH+wmHxEB0jsUB8zPsYAG8qDZcQ
	G0ST6C91uP9rcuh+lZLZQOoh/zDRoLjjXpoLrYCiDAFpTIw1ccWfXlXfdmU2d8IroOuv
	vopW0QEeaTrChjy1n0ZfI2A2oDtDXaNmAAkEBZ07NnsYeW0dwJVTikQ0+8dX5Jrk4j/V
	OuYWneBstaUU4pVgj8TgiS9G00iwBvetLaHwcfZ1MKbHYT/UenbCpXJ0/3wSxKek84m+
	I4KIOuPoytye7EDoSuvdZ4iYaUc7SAslQgnKf9LUECShU6NihmelAtN4uUrJU6Sme8+H
	lztg==
X-Gm-Message-State: ALyK8tJWU49CbDDQd51DNv6EIKstr3zD44CgSMt8h7kInogYvcL0NhPC5IHL6O2KP/B3COWpqyIL+01APYtYDM28
X-Received: by 10.107.138.201 with SMTP id c70mr5333051ioj.148.1466773841393; 
	Fri, 24 Jun 2016 06:10:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 24 Jun 2016 06:10:22 -0700 (PDT)
In-Reply-To: <c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
	<CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
	<c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Jun 2016 14:10:22 +0100
Message-ID: <CAJTo0LZCxCYNL-C0LU5oKVwSzeQfY5DCJXsiHR1N_PwdcBHHTw@mail.gmail.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setcap using recipe
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
X-List-Received-Date: Fri, 24 Jun 2016 13:11:06 -0000
Content-Type: multipart/alternative; boundary=001a113e8e6ac84d70053605e556

--001a113e8e6ac84d70053605e556
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Looks like using setcap directly is broken currently, there are two
workarounds:

1) use a postinst to invoke setcap on the target instead
2) test the patch for pseudo that is on this list ([PATCH] Add capset
pseudo function that always succeeds) and verify that it fixes the problem
for you.

Ross

On 24 June 2016 at 13:31, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote:

> I am using Yocto 2.0.2
>
>
>
> Thanks and Regards
>
> Shrawan
>
>
>
> *From:* Burton, Ross [mailto:ross.burton@intel.com]
> *Sent:* Friday, June 24, 2016 5:56 PM
>
> *To:* Kumar, Shrawan
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] setcap using recipe
>
>
>
> What version of OE/Yocto are you using?  Old versions of pseudo didn't
> support xattrs at all.
>
>
>
> Ross
>
>
>
> On 24 June 2016 at 13:23, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote=
:
>
> Thanks Ross for your quick turn around , I am getting below error
>
>
>
> =E2=80=9CUnable le to set CAP_SETFCAP effective capability: Operation not
> permitted.=E2=80=9D
>
>
>
> But when I use    # *sudo* setcap cap_net_raw+ep  helloworld        on
> command line I am able to set the cap.
>
>
>
> To achieve the sudo realization  in recipe , I tried  as below , but no
> luck=E2=80=A6=E2=80=A6 Can you suggest something here  ?
>
>
>
> fakeroot do_install() {
>
>                     install -d ${D}${bindir}
>
>                     install -m 0755 helloworld ${D}${bindir}
>
>                     install -d ${D}/lib/systemd/system
>
>                     install -m 0755 hello.service ${D}/lib/systemd/system=
/
>
>              setcap cap_net_raw+ep  ${D}${bindir}/helloworld
>
>
>
> }
>
>
>
> Thanks and Regards
>
> Shrawan
>
>
>
> *From:* Burton, Ross [mailto:ross.burton@intel.com]
> *Sent:* Friday, June 24, 2016 5:09 PM
> *To:* Kumar, Shrawan
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] setcap using recipe
>
>
>
> Hi,
>
>
>
> On 24 June 2016 at 11:41, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote=
:
>
> Is there a way to  add a capability to a binary (cap_net_raw+ep),into a
> recipe?
>
>
>
> Example :
>
> do_install() {
>
>            install -d ${D}${bindir}
>
>            install -m 0755 helloworld ${D}${bindir}
>
>            install -d ${D}/lib/systemd/system
>
>            install -m 0755 hello.service ${D}/lib/systemd/system/
>
>            setcap cap_net_raw+ep  ${D}${bindir}/helloworld
>
> }
>
>
>
> If yes is this correct approach to achieve the same from  package recipe
> itself ?
>
>
> capabilities on files are just extended attributes, so assuming that you
> have a fairly recent Yocto and your host and target filesystems support
> extended attributes, yes this should work.
>
>
>
> Ross
>
>
>

--001a113e8e6ac84d70053605e556
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Looks like using setcap directly is broken currently, ther=
e are two workarounds:<div><br></div><div>1) use a postinst to invoke setca=
p on the target instead</div><div>2) test the patch for pseudo that is on t=
his=C2=A0list ([PATCH] Add capset pseudo function that always succeeds) and=
 verify that it fixes the problem for you.</div><div><br></div><div>Ross</d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 24 Ju=
ne 2016 at 13:31, Kumar, Shrawan <span dir=3D"ltr">&lt;<a href=3D"mailto:Sh=
rawan.Kumar@harman.com" target=3D"_blank">Shrawan.Kumar@harman.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I am using Yocto 2.0.2<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks and Regards<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Shrawan<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Burton, =
Ross [mailto:<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>]
<br>
<b>Sent:</b> Friday, June 24, 2016 5:56 PM</span></p><div><div class=3D"h5"=
><br>
<b>To:</b> Kumar, Shrawan<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] setcap using recipe<u></u><u></u></div></div><p=
></p>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">What version of OE/Yocto are you using?=C2=A0 Old ve=
rsions of pseudo didn&#39;t support xattrs at all.<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ross<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 24 June 2016 at 13:23, Kumar, Shrawan &lt;<a href=
=3D"mailto:Shrawan.Kumar@harman.com" target=3D"_blank">Shrawan.Kumar@harman=
.com</a>&gt; wrote:<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks Ross for your quic=
k turn around , I am getting below error
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=E2=80=9CUnable le to set=
 CAP_SETFCAP effective capability: Operation not permitted.=E2=80=9D</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">But when I use=C2=A0=C2=
=A0=C2=A0 #
<b>sudo</b> setcap cap_net_raw+ep =C2=A0helloworld =C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0on command line I am able to set the cap.</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">To achieve the sudo reali=
zation =C2=A0in recipe , I tried =C2=A0as below , but no luck=E2=80=A6=E2=
=80=A6 Can you suggest something
 here=C2=A0 ?</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">fakeroot do_install() {</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0 install -d ${D}${bindir}</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0 install -m 0755 helloworld ${D}${bindir}</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0 install -d ${D}/lib/systemd/system</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0 install -m 0755 hello.service ${D}/lib/systemd/system/</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 setcap cap_net_raw+ep=C2=
=A0 ${D}${bindir}/helloworld</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">}</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks and Regards</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Shrawan</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><u></u><u></=
u></p>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Burton, =
Ross [mailto:<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>]
<br>
<b>Sent:</b> Friday, June 24, 2016 5:09 PM<br>
<b>To:</b> Kumar, Shrawan<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] setcap using recipe</span><u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">On 24 June 2016 at 11:41, Kumar, Shrawan &lt;<a href=
=3D"mailto:Shrawan.Kumar@harman.com" target=3D"_blank">Shrawan.Kumar@harman=
.com</a>&gt; wrote:<u></u><u></u></p>
<p>Is there a way to =C2=A0add a capability to a binary (cap_net_raw+ep),in=
to a recipe?
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p>Example :<u></u><u></u></p>
<p>do_install() {<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}$=
{bindir}<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 =
helloworld ${D}${bindir}<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}/=
lib/systemd/system<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 =
hello.service ${D}/lib/systemd/system/<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0setcap cap_=
net_raw+ep=C2=A0 ${D}${bindir}/helloworld=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></p>
<p>}<u></u><u></u></p>
<p>=C2=A0<u></u><u></u></p>
<p>If yes is this correct approach to achieve the same from=C2=A0 package r=
ecipe itself ?<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><br>
capabilities on files are just extended attributes, so assuming that you ha=
ve a fairly recent Yocto and your host and target filesystems support exten=
ded attributes, yes this should work.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ross<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--001a113e8e6ac84d70053605e556--
