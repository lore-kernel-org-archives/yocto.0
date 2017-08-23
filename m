Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9098FE00D50; Tue, 22 Aug 2017 23:56:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.170 listed in dnsbl.sorbs.net]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f170.google.com (mail-wr0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FF3FE00CAB
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 23:56:25 -0700 (PDT)
Received: by mail-wr0-f170.google.com with SMTP id a47so2478919wra.0
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 23:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=TcNrRJ8C5rcMGYkh+c6F8hpWyMPIBmdlG1Orfr1pNzU=;
	b=p7BoeIaiDKsNubvNaJ7Tdn41YJ7gYktGAStrraePrIr3n+pmH1I4j7rT2tt0ZGQLDw
	XOIR6PsfgToQmWftJlsiK3G9gv7NpvGsJibPxdN+c4RrwOufgfDRIqZn526E3sgvFgQI
	cpgMnBpvYCBN2sE/HSEkQZOJgyjXlfGmI0kMQy6bPucO9GyBhY/UMVP/xkopoj44czJn
	WLbmTG5BX3lHkM6nHNds18j52+WwYhQXQwXCI1mV0ff3VcukyzL8UlCZUROCmfBOs5xK
	kurbrSKnZVT0YwrvLaTdI/f++f00ER/YOZsyexhqpIUXDj0036ulF9YAsq2DgKPP+1pn
	YKCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=TcNrRJ8C5rcMGYkh+c6F8hpWyMPIBmdlG1Orfr1pNzU=;
	b=oJQUXkzaUoMYpBAzy4K//bGk504f0m/MNLOZzFA92Sm/LSlJW2gtQ2uervNfadK7eV
	xeD2j2ily6Kq3q7GTk1BuTvkgj7tV9gPZdy5f4m4pJboKpfTqaIKi62hx0DHZbGcyifC
	3zXi1jfjk2/+zm/t209McWl/cTtcmFSdY668j5Ll1ZSi6SXL4pPN3x0mkOxN2x7ou6uY
	Z1r2iIF1rKv//qFp4DeTNv+Na97RAnqg1OF1xJDZmew7oMV854essK7HjYFT2157MS2t
	lgvqEzyPEmvpZIwcBeTTebfu20NpfSdusaYq7u9DOtVAyZ9RgeG/C+wSUd7GW5a8pk5M
	H0Rw==
X-Gm-Message-State: AHYfb5iKPaYgW+wB1vHFAbOLNz34b9v9iEuX2ifSxqd4sMueazVzKDdL
	FfLe/es+2sGmMNf42zvgiYlv4yGPPQ==
X-Received: by 10.223.173.51 with SMTP id p48mr1030936wrc.149.1503471384180;
	Tue, 22 Aug 2017 23:56:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.138.18 with HTTP; Tue, 22 Aug 2017 23:56:23 -0700 (PDT)
In-Reply-To: <CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
References: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
	<96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
	<CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 23 Aug 2017 08:56:23 +0200
Message-ID: <CAGAf8LzHHWqNmq9g2ZGUMnMnrtD00QPdJ736ttTNAbM+-uyHHQ@mail.gmail.com>
To: alexander.kanavin@linux.intel.com, yocto@yoctoproject.org, 
	Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Subject: [DNF YOCTO clarifications] smart was replaced with dnf in Yocto 2.3
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
X-List-Received-Date: Wed, 23 Aug 2017 06:56:26 -0000
Content-Type: multipart/alternative; boundary="f403045cf2aec8bd2005576635b8"

--f403045cf2aec8bd2005576635b8
Content-Type: text/plain; charset="UTF-8"

Privet Aleks,

Nezacem zlitsja/serditsja. Ja prosto ne znal cto u vas takaja politika.

All Cool. Did not know that this is the policy, to have real names on YOCTO
list. I removed nobody from it, and added my real name and real @. I
removed user nobody from the YOCTO @ list.

The/Your answer is too general. I somehow well know DNF service, but in
FEDORA light. For fedora I do know what I need to do, and where/what are
the options and which plug-ins to use/add, and ho to remove, upgrade, and
configure.

I tried all of this in the lieu of the following pointers:
https://docs.fedoraproject.org/en-US...ositories.html
<https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Configuring_DNF_and_DNF_Repositories.html>
https://docs.fedoraproject.org/en-US...y_Options.html
<https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Setting_repository_Options.html>

And made on my target (which is connected with my server with simplistic
Apache (it is one machine, which carries F26 on bare metal INTEL CORE) on
server, client runs as qemux86_64 YOCTO emulator).

So I need more help. Or we can work this out together for the whole YOCTO
community. Adapting DNF for .rpm package use for YOCTO further on. :-)

Thank you,
Zoran

On Tue, Aug 22, 2017 at 1:33 PM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 08/22/2017 09:09 AM, _nobody_ _nobody_ wrote:
>
>> The question is: where the Hell (in which /etc files on target) I should
>> put these???
>>
>> Links to the repos should be something like these:
>> http://127.0.0.1:8000/core2_64
>> http://127.0.0.1:8000/noarch
>> http://127.0.0.1:8000/qemux86_64
>> http://127.0.0.1:8000/x86_64_nativesdk
>>
>> Any suggestions/verbal help is appreciated!
>>
>> Let us go from here... There is more to come!
>>
>
> First of all, please introduce yourself. I personally am not very keen to
> help people who are aggressively anonymous.
>
> The answer is here:
>
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manua
> l.html#using-runtime-package-management
>
>
> Alex
>

--f403045cf2aec8bd2005576635b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Privet Aleks,<=
div><br></div><div>Nezacem zlitsja/serditsja. Ja prosto ne znal cto u vas t=
akaja politika.</div><div><br></div><div>All Cool. Did not know that this i=
s the policy, to have real names on YOCTO list. I removed nobody from it, a=
nd added my real name and real @. I removed user nobody from the YOCTO @ li=
st.</div><div><br></div><div>The/Your answer is too general. I somehow well=
 know DNF service, but in FEDORA light. For fedora I do know what I need to=
 do, and where/what are the options and which plug-ins to use/add, and ho t=
o remove, upgrade, and configure.</div><div><br></div><div>I tried all of t=
his in the lieu of the following pointers:</div><div><a href=3D"https://doc=
s.fedoraproject.org/en-US/Fedora/26/html/System_Administrators_Guide/sec-Co=
nfiguring_DNF_and_DNF_Repositories.html" style=3D"color:rgb(0,0,0);font-fam=
ily:verdana,geneva,lucida,&quot;lucida grande&quot;,arial,helvetica,sans-se=
rif,sans;font-size:11px;background-color:rgb(250,250,250)" target=3D"_blank=
">https://docs.fedoraproject.org<wbr>/en-US...ositories.html</a></div><a hr=
ef=3D"https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administra=
tors_Guide/sec-Setting_repository_Options.html" style=3D"color:rgb(0,0,0);f=
ont-family:verdana,geneva,lucida,&quot;lucida grande&quot;,arial,helvetica,=
sans-serif,sans;font-size:11px;background-color:rgb(250,250,250)" target=3D=
"_blank">https://docs.fedoraproject.org<wbr>/en-US...y_Options.html</a><div=
><br></div><div>And made on my target (which is connected with my server wi=
th simplistic Apache (it is one machine, which carries F26 on bare metal IN=
TEL CORE) on server, client runs as qemux86_64 YOCTO emulator).</div><div><=
br></div><div>So I need more help. Or we can work this out together for the=
 whole YOCTO community. Adapting DNF for .rpm package use for YOCTO further=
 on. :-)</div><div><br></div><div>Thank you,</div><div>Zoran</div></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Aug 22, 2017=
 at 1:33 PM, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alex=
ander.kanavin@linux.intel.com" target=3D"_blank">alexander.kanavin@linux.in=
tel<wbr>.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>=
On 08/22/2017 09:09 AM, _nobody_ _nobody_ wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span>
The question is: where the Hell (in which /etc files on target) I should pu=
t these???<br>
<br></span><span>
Links to the repos should be something like these:<br>
<a href=3D"http://127.0.0.1:8000/core2_64" rel=3D"noreferrer" target=3D"_bl=
ank">http://127.0.0.1:8000/core2_64</a><br>
<a href=3D"http://127.0.0.1:8000/noarch" rel=3D"noreferrer" target=3D"_blan=
k">http://127.0.0.1:8000/noarch</a><br>
<a href=3D"http://127.0.0.1:8000/qemux86_64" rel=3D"noreferrer" target=3D"_=
blank">http://127.0.0.1:8000/qemux86_<wbr>64</a><br>
<a href=3D"http://127.0.0.1:8000/x86_64_nativesdk" rel=3D"noreferrer" targe=
t=3D"_blank">http://127.0.0.1:8000/x86_64_n<wbr>ativesdk</a><br>
<br>
Any suggestions/verbal help is appreciated!<br>
<br></span><span>
Let us go from here... There is more to come!<br>
</span></blockquote>
<br>
First of all, please introduce yourself. I personally am not very keen to h=
elp people who are aggressively anonymous.<br>
<br>
The answer is here:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.ht=
ml#using-runtime-package-management" rel=3D"noreferrer" target=3D"_blank">h=
ttp://www.yoctoproject.org/do<wbr>cs/latest/dev-manual/dev-manua<wbr>l.html=
#using-runtime-package-m<wbr>anagement</a><br>
<br>
<br>
Alex<br>
</blockquote></div><br></div>
</div><br></div>

--f403045cf2aec8bd2005576635b8--
