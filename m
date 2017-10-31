Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8907AE00CC2; Tue, 31 Oct 2017 04:34:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 733C4E00C44
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 04:34:23 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id b186so34303154iof.8
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 04:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JC+7dFV6ZnTvOg/tqgzjjUd2tfreLJV+XfB+CsX8gvw=;
	b=PGFGsdstqnr226zXnz3KkWXSfP1tg2LnIdAVMm06R781HS/ZDZYvrcSNv7d2TbqZmq
	XGS1ZflttLBrYClAk5bsT1bpM0Ec+Rd7HRiXmhwn3BSWqX3lxUAa5J2SRL5lA3P2Hva8
	T88N7AFBYHeVzfWrAq7f/Zy+OmBzksMLf4p69vXeHlR4Lf3qAiAtYp7voO0cOK4lFhOx
	MSMNrdTVQIBX3iS2g4Tj+yKwXu6hzWIIc3JMJpk3+2IEAulsVW5s4UXYMydQnaDOj/3x
	nglfEL/WCk7pPg8HsqiZ10uFBNYcl7CoHeIWAy0mexJIV+c/vn8if3pJsPLsUDXMIyzn
	7ycQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JC+7dFV6ZnTvOg/tqgzjjUd2tfreLJV+XfB+CsX8gvw=;
	b=pVUs48By/564Z4XnV9+7ToM24Kw3ZYOsUZTX3SOOu69/9AXufH83HlT1QeJmNav7Yl
	j1G4WS/LDk+YduKLbdzDwEGO5VuoPaaNaFxsMZiG0cQFnRAemtISRD7U17ZjFLlKXXPb
	Qj+K6/EmLk4nw62nlKWKQ1mUYeTd0J7wGol00cYL/Xq26OQnUbeaKO2thSPmMP8e1OXf
	SMrfaeZEWvtWnwE22gl7tsxpeC1WXrxsxMCKFq+GXsQXsCDY98Cm9wMLDwivtZ406+MC
	8aOvsBKb5d6RW2zhJj/ImIxLBQD39T7NoSXHOrKiakmDYlCu9WYe0p/PlL3JuY0Zj/bs
	9KVA==
X-Gm-Message-State: AMCzsaWbO1vZBR0etoOkxsJw+bXhXZ91iTeZ9mCerqmFjmxL30rompSu
	8yMYjwNde2Lai9eQgHfXR6KrSKCEY4Op2saLA6pADg==
X-Google-Smtp-Source: ABhQp+QjS9ipFhonuJhjhBNCQuZM8K36Fc/BkROyTyee9B7gWnGbG9cRnfzqWxgLC1Z0g6ZA/atY5cblqH0vM7/2y04=
X-Received: by 10.36.81.21 with SMTP id s21mr2680041ita.144.1509449663406;
	Tue, 31 Oct 2017 04:34:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Tue, 31 Oct 2017 04:34:02 -0700 (PDT)
In-Reply-To: <481c8b41-8497-ac4d-eaa7-d06291b41845@embexus.com>
References: <481c8b41-8497-ac4d-eaa7-d06291b41845@embexus.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 31 Oct 2017 11:34:02 +0000
Message-ID: <CAJTo0LaVd8oqRgMp4eQ2e9tF_KUht88BgMQh0Dur=SFYDPohXQ@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitwise Operations in BBClass
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
X-List-Received-Date: Tue, 31 Oct 2017 11:34:25 -0000
Content-Type: multipart/alternative; boundary="001a113a7146fe9673055cd62283"

--001a113a7146fe9673055cd62283
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That would be https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11314, $(=
(
isn't supported by our shell parser. Shouldn't be that difficult to fix in
bitbake.

Ross

On 31 October 2017 at 11:27, Ayoub Zaki <ayoub.zaki@embexus.com> wrote:

> Hello,
>
> I'm trying to get a bitwise operation working in a bitbake bblcass
> function but no luck so far :
>
> my_function() {
>
>     SZ=3D"`wc -c < ${1}`"
>
>     ALIGN_SZ=3D$(((${SZ} + 0x1000 - 1) & ~ (0x1000 - 1)))
>
>     .......
>
> }
>
> Bitbake complains with :
>
> ERROR: ExpansionError during parsing /opt/Projects/Yocto/meta-somel
> ayer/recipes-kernel/linux/linux-imx_4.1.15.bb: Failure expanding variable
> my_function: NotImplementedError: $((
>
>
> Any suggestions how to tackle this problem ?
>
> Thank you !
>
> --
> Ayoub Zaki
> Embedded Systems Consultant
>
> Vaihinger Stra=C3=9Fe 2/1
> <https://maps.google.com/?q=3DVaihinger+Stra%C3%9Fe+2/1&entry=3Dgmail&sou=
rce=3Dg>
> D-71634 Ludwigsburg
>
> Tel.     : +4971415074546
> Mobile   : +4917662901545
> Email    : ayoub.zaki@embexus.com
> Homepage : https://embexus.com
> VAT No.  : DE313902634
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113a7146fe9673055cd62283
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That would be=C2=A0<a href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D11314">https://bugzilla.yoctoproject.org/show_bug.c=
gi?id=3D11314</a>, $(( isn&#39;t supported by our shell parser. Shouldn&#39=
;t be that difficult to fix in bitbake.<div><br></div><div>Ross</div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 31 October 201=
7 at 11:27, Ayoub Zaki <span dir=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@e=
mbexus.com" target=3D"_blank">ayoub.zaki@embexus.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">Hello,<br>
<br>
I&#39;m trying to get a bitwise operation working in a bitbake bblcass func=
tion but no luck so far :<br>
<br>
my_function() {<br>
<br>
=C2=A0=C2=A0=C2=A0 SZ=3D&quot;`wc -c &lt; ${1}`&quot;<br>
<br>
=C2=A0=C2=A0=C2=A0 ALIGN_SZ=3D$(((${SZ} + 0x1000 - 1) &amp; ~ (0x1000 - 1))=
)<br>
<br>
=C2=A0=C2=A0=C2=A0 .......<br>
<br>
}<br>
<br>
Bitbake complains with :<br>
<br>
ERROR: ExpansionError during parsing /opt/Projects/Yocto/meta-somel<wbr>aye=
r/recipes-kernel/linux/<a href=3D"http://linux-imx_4.1.15.bb" rel=3D"norefe=
rrer" target=3D"_blank">linu<wbr>x-imx_4.1.15.bb</a>: Failure expanding var=
iable my_function: NotImplementedError: $((<br>
<br>
<br>
Any suggestions how to tackle this problem ?<br>
<br>
Thank you !<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
Ayoub Zaki<br>
Embedded Systems Consultant<br>
<br>
<a href=3D"https://maps.google.com/?q=3DVaihinger+Stra%C3%9Fe+2/1&amp;entry=
=3Dgmail&amp;source=3Dg">Vaihinger Stra=C3=9Fe 2/1</a><br>
D-71634 Ludwigsburg<br>
<br>
Tel.=C2=A0 =C2=A0 =C2=A0: <a href=3D"tel:%2B4971415074546" value=3D"+497141=
5074546" target=3D"_blank">+4971415074546</a><br>
Mobile=C2=A0 =C2=A0: <a href=3D"tel:%2B4917662901545" value=3D"+49176629015=
45" target=3D"_blank">+4917662901545</a><br>
Email=C2=A0 =C2=A0 : <a href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_b=
lank">ayoub.zaki@embexus.com</a><br>
Homepage : <a href=3D"https://embexus.com" rel=3D"noreferrer" target=3D"_bl=
ank">https://embexus.com</a><br>
VAT No.=C2=A0 : DE313902634<br>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a113a7146fe9673055cd62283--
