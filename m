Return-Path: <nobodyless@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36117E00CB4; Tue, 22 Aug 2017 23:47:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nobodyless[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.175 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.175 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 220F5E00B8B
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 23:47:42 -0700 (PDT)
Received: by mail-yw0-f175.google.com with SMTP id h127so4671451ywf.0
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 23:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=70eUE1vbIxgbqX7LJfZBznOkf1fmSKzgtKQYjrqwF+w=;
	b=E2xNbqXJT3GKDfRVw0t1GOnPgHOicWVKlHRILWD/H9XEwqyCzKp2EDyuVcDgw1n/V/
	gGpnA0nsX1IfepBUNLKQWysDPPdAxVegs2K0+YqBvA/f8mcIbniR5R9EPKMuBoMlcd+t
	8bui/Kjf4aVAqcaM/uy96XqghrfMJ6S5midXRGmKWX6XvYZ1NAoAuf4A4+kD/+wIBTsu
	OwYi+/a/zfNdqCyy8IJSrHpBjaA88KoymLWu9FOvUfvdVRgpr63kRAALU9eUP4T55sbR
	yUINLvwMnXn8Ps5Yl7SZYyBKM1lslBXszRaFHvtRwb88DbBqPpzKnaavypZTWVHOlcll
	qNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=70eUE1vbIxgbqX7LJfZBznOkf1fmSKzgtKQYjrqwF+w=;
	b=BFdYYuS3McbgmdH3Ehhr7ssnM7HYRDA4hx7laOva98cMBMxvSEFNht2n2XY05zHQRH
	wQ6nZP7ajSTSvL9rMKIEeXTYSEmH8cS2u7QSMirCtWbHu7LUNVY0aHRmFVaRES45bkC8
	DCLu0m0U3XvxTINEJX/lYnQ779pKkRVCM/FCwdlh/erdJnp+Nt+13hG/3YjBV8tzId9b
	hhNoGXaDdHGBBP4fhenCYhCS9Ry5I7oH4POyNSg65g8I74s1EvFpZqGWJrKVg+ZKHn8k
	IupUIAp2Ew+HYGQmrl2IOnG23qNqy3NRqNvwCnRxXB/QyrsFDMLB8hSqsDfVdv6ZnVSb
	l5Qg==
X-Gm-Message-State: AHYfb5hCfPiXUdeEiXhzmWupyqzV/E9aCJVn2Uia45/Gui0kVKNOqkfb
	6SfHItdx6TZCfNZdZSycXRFHJesh6/C6
X-Received: by 10.37.105.195 with SMTP id e186mr1400723ybc.278.1503470862088; 
	Tue, 22 Aug 2017 23:47:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.83.213 with HTTP; Tue, 22 Aug 2017 23:47:41 -0700 (PDT)
In-Reply-To: <96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
References: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
	<96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
From: _nobody_ _nobody_ <nobodyless@gmail.com>
Date: Wed, 23 Aug 2017 08:47:41 +0200
Message-ID: <CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
X-Mailman-Approved-At: Wed, 23 Aug 2017 15:14:16 -0700
Cc: yocto@yoctoproject.org
Subject: Re: [DNF YOCTO clarifications] smart was replaced with dnf in Yocto 2.3
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
X-List-Received-Date: Wed, 23 Aug 2017 06:47:44 -0000
Content-Type: multipart/alternative; boundary="94eb2c14eda8aa4264055766165a"

--94eb2c14eda8aa4264055766165a
Content-Type: text/plain; charset="UTF-8"

Privet Aleks,

Nezacem zlitsja/serditsja. Ja prosto ne znal cto u vas takaja politika.

All Cool. Did not know that this is the policy, to have real names on YOCTO
list. I removed nobody from it, and added my real name and real @. Please,
remove nobody from RE: email.

The answer is to general. I somehow well know DNF service, but in FEDORA
light. For fedora I do know what I need to do, and where/what are the
options and which plug-ins to use/add, and ho to remove, upgrade, and
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
community. Adapting DNF for .rpm package use for YOCTO further on.

Please, reply on my real @ address.

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

--94eb2c14eda8aa4264055766165a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Privet Aleks,<div><br></div><div>Nezacem zlitsja/serditsja=
. Ja prosto ne znal cto u vas takaja politika.</div><div><br></div><div>All=
 Cool. Did not know that this is the policy, to have real names on YOCTO li=
st. I removed nobody from it, and added my real name and real @. Please, re=
move nobody from RE: email.</div><div><br></div><div>The answer is to gener=
al. I somehow well know DNF service, but in FEDORA light. For fedora I do k=
now what I need to do, and where/what are the options and which plug-ins to=
 use/add, and ho to remove, upgrade, and configure.</div><div><br></div><di=
v>I tried all of this in the lieu of the following pointers:</div><div><a h=
ref=3D"https://docs.fedoraproject.org/en-US/Fedora/26/html/System_Administr=
ators_Guide/sec-Configuring_DNF_and_DNF_Repositories.html" target=3D"_blank=
" style=3D"color:rgb(0,0,0);font-family:verdana,geneva,lucida,&quot;lucida =
grande&quot;,arial,helvetica,sans-serif,sans;font-size:11px;background-colo=
r:rgb(250,250,250)">https://docs.fedoraproject.org/en-US...ositories.html</=
a></div><a href=3D"https://docs.fedoraproject.org/en-US/Fedora/26/html/Syst=
em_Administrators_Guide/sec-Setting_repository_Options.html" target=3D"_bla=
nk" style=3D"color:rgb(0,0,0);font-family:verdana,geneva,lucida,&quot;lucid=
a grande&quot;,arial,helvetica,sans-serif,sans;font-size:11px;background-co=
lor:rgb(250,250,250)">https://docs.fedoraproject.org/en-US...y_Options.html=
</a><div><br></div><div>And made on my target (which is connected with my s=
erver with simplistic Apache (it is one machine, which carries F26 on bare =
metal INTEL CORE) on server, client runs as qemux86_64 YOCTO emulator).</di=
v><div><br></div><div>So I need more help. Or we can work this out together=
 for the whole YOCTO community. Adapting DNF for .rpm package use for YOCTO=
 further on.</div><div><br></div><div>Please, reply on my real @ address.</=
div><div><br></div><div>Thank you,</div><div>Zoran</div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Aug 22, 2017 at 1:33 P=
M, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kana=
vin@linux.intel.com" target=3D"_blank">alexander.kanavin@linux.intel.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 0=
8/22/2017 09:09 AM, _nobody_ _nobody_ wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
The question is: where the Hell (in which /etc files on target) I should pu=
t these???<br>
<br></span><span class=3D"">
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
<br></span><span class=3D"">
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
#using-runtime-package-<wbr>management</a><br>
<br>
<br>
Alex<br>
</blockquote></div><br></div>

--94eb2c14eda8aa4264055766165a--
