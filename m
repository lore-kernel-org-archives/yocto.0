Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00F8FE007DA; Mon, 19 Mar 2018 08:44:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FE64E00474
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 08:43:58 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id o4so7075443iod.3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 08:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0NNR2ypIa6i8kRqmdsL9q3iEDS1p0y/GDqgl9Ill65s=;
	b=iN7whWv965Adblm6PjFz68RtrbWtoU7x6/CHGF+HSD1LMiC+YlLZPbk983mkR3EFQs
	zKPDri0uKpQUr3oBxd75ey3qIp4c/vIzT7JPdmi6bmseyJBbpnrVwF/55hEEtfon70o8
	NFPu0ma+PVwjY+bBO169wIRVGHmwb6Hs0QaP9Zme8+sNfNF1Id5WcuZsx3qmNe2EkA5v
	zisLE7pIkuCdmBQv5Ti3pP5CkUsnPZydCy+yA+1f7XeRd2lzN8pJVrvb/7bIIP4ucny6
	fvobe8vvw9jFYYR9WqTvLiqJYSplNsA1y1yTNNl28MBzhGg1XjZ7ITUOlUiaG059hLqf
	FnLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0NNR2ypIa6i8kRqmdsL9q3iEDS1p0y/GDqgl9Ill65s=;
	b=E2i4b8btK0sOsLifWvnAas04Hn9YNcmW9ptFXlxojHAVdXfnV2FM11kNaoV6sYre5W
	Mu51CNIDygDV0CEut6lBV/5I6eG2dZmtO3I1b3ifMzmcI9ObFpIvzU/Ad+KWxuWqvPyV
	Vrs0z+111EOmvd3s1abRp25Bqrs+Iy0umEMSMtJ5ABZE2uW0FfUsmtiDo1HMT3v5nyp7
	d+wBq9rCHoEgmqliwJvR3DrZ1cFd01GH9dSwWf9ZIIac57UPI54eRU9oF12fwqx8CeEM
	XQ9Lin3nWPK8NAdYVhc5VdFbEoa0kaUSWdP2lhhlbkQkRVQ04VQ0j8LQfhzDgX9UhxC6
	1IGw==
X-Gm-Message-State: AElRT7FE1rfaV3fMRwBF7AJb9ayMS8p6W3NIixaR/17fcX9OK2vem00G
	S5e75eIexAjevRmJyrGwgoJqtZdi1N/9G0jKRUnGXQ==
X-Google-Smtp-Source: AG47ELsB/By16RxXHTUb/9wJYlqw9f14FEgNzG8IvhPDaU4rYh9LdlNSw5TAG5taibNZkBxv96YyHWZM7hIk9W0dhpQ=
X-Received: by 10.107.183.4 with SMTP id h4mr12474436iof.201.1521474237693;
	Mon, 19 Mar 2018 08:43:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 19 Mar 2018 08:43:37 -0700 (PDT)
In-Reply-To: <000f01d3bce2$13d4a490$3b7dedb0$@m5nv.com>
References: <000f01d3bce2$13d4a490$3b7dedb0$@m5nv.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 19 Mar 2018 15:43:37 +0000
Message-ID: <CAJTo0LYSgjGRogjX25MJ8_no5HLoJ_E69EjYqaC62=BZrzNnmg@mail.gmail.com>
To: sarayu@m5nv.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Issue with gcc6
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
X-List-Received-Date: Mon, 19 Mar 2018 15:44:00 -0000
Content-Type: multipart/alternative; boundary="94eb2c0b8e08791f080567c5d3a6"

--94eb2c0b8e08791f080567c5d3a6
Content-Type: text/plain; charset="UTF-8"

Fido is almost three years old, isn't supported, and doesn't support gcc6
hosts.

Either:
1) move to a release which is supported, such a Rocko
2) use a supported host distro for Fido
3) fix the problems yourself.  In this case the warning is showing you a
line which would crash if executed.

Ross


On 16 March 2018 at 04:48, <sarayu@m5nv.com> wrote:

> Hi ,
>
>
>
> I was trying to setup yocto on my debian VM and pulled the latest yocto
> fido and tried to compile the core_image_sato.
>
> I am getting the below error in the base build.
>
>
>
> /home/sarayu/code/yocto-sample/poky/build/tmp/work/
> x86_64-linux/elfutils-native/0.161-r0/elfutils-0.161/libebl/eblinitreg.c:50:26:
> error: nonnull argument 'ebl' compared to NULL [-Werror=nonnull-compare]
>
> |    return ebl == NULL ? 0 : ebl->frame_nregs;
>
> |           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
>
> | cc1: all warnings being treated as errors
>
> | Makefile:529: recipe for target 'eblinitreg.o' failed
>
> | make[2]: *** [eblinitreg.o] Error 1
>
>
>
>
>
> Can you please let me know if a patch or fix is already available for the
> same.
>
> Thanks in advance for your help.
>
>
>
> Thanks and Regards
>
> Sarayu
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c0b8e08791f080567c5d3a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Fido is almost three years old, isn&#39;t supported, and d=
oesn&#39;t support gcc6 hosts.<div><br></div><div>Either:</div><div>1) move=
 to a release which is supported, such a Rocko</div><div>2) use a supported=
 host distro for Fido</div><div>3) fix the problems yourself.=C2=A0 In this=
 case the warning is showing you a line which would crash if executed.</div=
><div><br></div><div>Ross<br><div><div><br></div></div></div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On 16 March 2018 at 04:48=
,  <span dir=3D"ltr">&lt;<a href=3D"mailto:sarayu@m5nv.com" target=3D"_blan=
k">sarayu@m5nv.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div lang=3D"EN-IN" link=3D"blue" vlink=3D"purple"><div class=3D"m_-1056307=
28718815016WordSection1"><p class=3D"MsoNormal">Hi , <u></u><u></u></p><p c=
lass=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">I was try=
ing to setup yocto on my debian VM and pulled the latest yocto fido and tri=
ed to compile the core_image_sato. <u></u><u></u></p><p class=3D"MsoNormal"=
>I am getting the below error in the base build.<u></u><u></u></p><p class=
=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">/home/sarayu/=
code/yocto-<wbr>sample/poky/build/tmp/work/<wbr>x86_64-linux/elfutils-nativ=
e/<wbr>0.161-r0/elfutils-0.161/<wbr>libebl/eblinitreg.c:50:26: error: nonnu=
ll argument &#39;ebl&#39; compared to NULL [-Werror=3Dnonnull-compare]<u></=
u><u></u></p><p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0 return ebl =3D=3D N=
ULL ? 0 : ebl-&gt;frame_nregs;<u></u><u></u></p><p class=3D"MsoNormal">|=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~~~~~^=
~~~~~~~~~~~~~<wbr>~~~~<u></u><u></u></p><p class=3D"MsoNormal">| cc1: all w=
arnings being treated as errors<u></u><u></u></p><p class=3D"MsoNormal">| M=
akefile:529: recipe for target &#39;eblinitreg.o&#39; failed<u></u><u></u><=
/p><p class=3D"MsoNormal">| make[2]: *** [eblinitreg.o] Error 1<u></u><u></=
u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"=
><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Can you please let me know =
if a patch or fix is already available for the same. <u></u><u></u></p><p c=
lass=3D"MsoNormal">Thanks in advance for your help.<u></u><u></u></p><p cla=
ss=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Thanks and =
Regards<u></u><u></u></p><p class=3D"MsoNormal">Sarayu<u></u><u></u></p></d=
iv></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c0b8e08791f080567c5d3a6--
