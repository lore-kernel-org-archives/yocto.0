Return-Path: <yclai017@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73CE4E00D18; Tue, 31 Oct 2017 13:21:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yclai017[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D06B6E00D07
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 13:21:14 -0700 (PDT)
Received: by mail-lf0-f54.google.com with SMTP id a16so258702lfk.0
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 13:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0GPkjknB3a2n2YKfSY8CaB+DU8m36ifnpntwj4MyTyU=;
	b=IK+W//TYlgXxkjVZyMcNyYNlZ8fWHaoLTKaw4gBejjOnFNbPIy+kakJhRSpF3XQV64
	GA1eD4/VQLvoJ98GhqJppITVO4Sjo+oHp9620u1wW/eZWwP3lAWCd9eKYe9Lzsffri2T
	V84pb7MAZvBkX1PJVckIC1SPITiheebZ5DzR06dJuQFI2raXvJk/1EOktErmjC7++GWp
	ugg4WZiJ4Pi/tyU5Y9FSXwtKPxSyUglRNNqB5B17E65qPWzlUo/MDNTS2ijneLeF/7GJ
	N9/2bAA7Z65lV3mUPUR7Js0YYOSUIFOSAtUKrIQvzQXh7OH5XV+fwWC8iYeceo7FQnD4
	XoVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0GPkjknB3a2n2YKfSY8CaB+DU8m36ifnpntwj4MyTyU=;
	b=HNEGDJftS2kRGJFoCvEg2Zm3pb33tCWlgReUwfqFs3IjuQRw8v2XxhCmYcFXyzHm0N
	p9b/Gol5msKlLcMs4DpHJB/F1yNDGHKWMNOF1wck0vBnQhB4rl0FbBeHV/BEAeiUBVvx
	M44BkV2t4hhqku2Ka1zzXbPk7vsIcyBiNiqgB+nu2wGcuQbYIVTUVF4sIXhgufaYb/Cw
	LZVb6yXRMAEpJ0Gqr29Y5Z7YA0Pmn96KGAbSObP3C/N9/s1uED641eMj2qb9AZ9r4WLm
	W7q10jSoyXqT1B7RHsUcrW5yih35k9cKt915N+ikchXIw50K86mlW66w7fNrbW2aefSB
	qnBg==
X-Gm-Message-State: AMCzsaUDi54W4jni7xnXSnl1IaMMbzWFPIAaUCXBsrElsyGFOrq9Fq8q
	uYYOCNKHKPLyeIXA2k4AaySGtwfpfQj5TNRZkr8=
X-Google-Smtp-Source: ABhQp+RfmSxchvS/5Vd8YosiA+KfjzbLmQ83j4pMSotpotmJ9xjWZRPzuuQoPizFiKW5f2TER+o7QqsWvzzhYTeWnpE=
X-Received: by 10.46.75.26 with SMTP id y26mr1508019lja.113.1509481273555;
	Tue, 31 Oct 2017 13:21:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.81.155 with HTTP; Tue, 31 Oct 2017 13:21:13 -0700 (PDT)
In-Reply-To: <CAJTo0LYJTKtzmaFCmaRF8w_M0DF78z8Qoxyr2YLKGp6Wsef7dQ@mail.gmail.com>
References: <CAJWo1FLeiwm2pm4sfQf5g78bx-PXuuk1fm8N4obY+0BwyvOrng@mail.gmail.com>
	<CAJTo0LYJTKtzmaFCmaRF8w_M0DF78z8Qoxyr2YLKGp6Wsef7dQ@mail.gmail.com>
From: "Lai Y.C." <yclai017@gmail.com>
Date: Tue, 31 Oct 2017 21:21:13 +0100
Message-ID: <CAJWo1FJSXAarVhZ+kL+Ae4vC1qrD0NZ=a9EZPUbBpLoysEubbg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: about add python3 modules
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
X-List-Received-Date: Tue, 31 Oct 2017 20:21:15 -0000
Content-Type: multipart/alternative; boundary="f403045ea2861afe39055cdd7f8c"

--f403045ea2861afe39055cdd7f8c
Content-Type: text/plain; charset="UTF-8"

Hi Ross,

Thanks! It works well after I added python3-misc.

//Ying

2017-10-31 0:02 GMT+01:00 Burton, Ross <ross.burton@intel.com>:

> Hi,
>
> 1.7.1 is pretty old, there were some packaging problems.  Try adding
> python3-misc to the image too.
>
> If that doesn't work, use 'oe-pkgdata-util list-pkg-files -r python3' to
> list all the files built by the python3 recipe and to find out what files
> are missing.
>
> Ross
>
> On 30 October 2017 at 20:36, Lai Y.C. <yclai017@gmail.com> wrote:
>
>> Hi,
>>
>> I need to include python3 and some modules on my board. We are using
>> yocto 1.7.1 .
>> I have included python3 and python3-modules into the image.
>> Python3 is able to run but there are problems with the modules.
>>
>> 1. when I import "subprocess" module,  it gives errors that the module
>> "_posixsubprocess" is not found. How should I include _posixsubprocess ?
>> 2. There are couple of modules that are installed but they are found when
>> I used it. i.e. I have the argparse.py in /usr/lib/python3.3. However, the
>> module is not found when I try to import it. (tested with python3 -c
>> "import argparse"). Any clue what hasn't be set-up properly?
>>
>> Thanks
>>
>> //Ying
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--f403045ea2861afe39055cdd7f8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Ross, <br><br></div>Thanks! It works well aft=
er I added python3-misc. <br><br></div>//Ying<br></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">2017-10-31 0:02 GMT+01:00 Burton, Ros=
s <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"=
_blank">ross.burton@intel.com</a>&gt;</span>:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr">Hi,<div><br></div><div>1.7.1 is pretty old, there wer=
e some packaging problems.=C2=A0 Try adding python3-misc to the image too.<=
/div><div><br></div><div>If that doesn&#39;t work, use &#39;oe-pkgdata-util=
 list-pkg-files -r python3&#39; to list all the files built by the python3 =
recipe and to find out what files are missing.</div><div><br></div><div>Ros=
s</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div=
><div class=3D"h5">On 30 October 2017 at 20:36, Lai Y.C. <span dir=3D"ltr">=
&lt;<a href=3D"mailto:yclai017@gmail.com" target=3D"_blank">yclai017@gmail.=
com</a>&gt;</span> wrote:<br></div></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v><div class=3D"h5"><div dir=3D"ltr"><div><div><div><div><div><div><div>Hi,=
 <br><br></div>I need to include python3 and some modules on my board. We a=
re using yocto 1.7.1 . <br></div>I have included python3 and python3-module=
s into the image. <br></div><div>Python3 is able to run but there are probl=
ems with the modules. <br></div><div><br></div>1. when I import &quot;subpr=
ocess&quot; module,=C2=A0 it gives errors that the module &quot;_posixsubpr=
ocess&quot; is not found. How should I include _posixsubprocess ?<br></div>=
2. There are couple of modules that are installed but they are found when I=
 used it. i.e. I have the argparse.py in /usr/lib/python3.3. However, the m=
odule is not found when I try to import it. (tested with python3 -c &quot;i=
mport argparse&quot;). Any clue what hasn&#39;t be set-up properly?<br></di=
v><br></div>Thanks<br><br></div><div><div><div><div>//Ying<br></div><div><b=
r></div></div></div></div></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--f403045ea2861afe39055cdd7f8c--
