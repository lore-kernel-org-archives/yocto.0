Return-Path: <robin@deltastrike.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E06B0E009D9; Thu, 16 Jul 2015 17:11:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-vn0-f53.google.com (mail-vn0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59D8EE009D2
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 17:11:57 -0700 (PDT)
Received: by vnbg190 with SMTP id g190so9790900vnb.2
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 17:11:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=jvpEaCjBlQxlmLt+yi1UnZ8cQSK5kTuSDVrqX+GJvvM=;
	b=QquE1tTCfX2U6K+BwVpLsDjDHv1kCKyCXHBc7CW/g7HeQa4wFvIiITISx2ghJo/1Yp
	1fF6gLSEIjR/xo20tMpmaRVIgmNdD5oQPTUKtqUmAb3MZSt7D5zDGOGnpa5WhjPM0RKG
	2MNl1gSalt/tCU2AjHcsiNIXNBMQf68fNv5YNPSMBTqo2uQqyY5QQ8T5FrS+RQWhywV4
	rS165vkzZyIH/KhRQ1a86+Ho1FARqPrllIqdF3UuSeif3LZ54fmWRfyyJDPmEmImqLZS
	UY217xwJYi+o22VG0Ayr0LX6cbPX0nLvLyELzLaOOq121aWHG9dytFOZTkQ7gPsnvoUN
	8xBw==
X-Gm-Message-State: ALoCoQmhlBlDpPCbxgFO0tAdgDPAaO1c2KToje19q80Ys1tA7I81PMdLlv1LUUbWiz8X6GfbU8Hr
MIME-Version: 1.0
X-Received: by 10.52.227.170 with SMTP id sb10mr13147232vdc.88.1437091917277; 
	Thu, 16 Jul 2015 17:11:57 -0700 (PDT)
Received: by 10.31.3.92 with HTTP; Thu, 16 Jul 2015 17:11:57 -0700 (PDT)
In-Reply-To: <55A7BF58.8010503@linux.intel.com>
References: <CAHG6Dmenn5HzjNoTgddc7qXMi_SR_edwRa40y-9g4f98PO4Fpw@mail.gmail.com>
	<55A7BF58.8010503@linux.intel.com>
Date: Fri, 17 Jul 2015 12:11:57 +1200
Message-ID: <CAHG6DmdwBPUKpka9in1KmZNqfxwEDoeEnTu9RcM3O-sM159mhw@mail.gmail.com>
From: Robin Gilks <robin@deltastrike.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>,
	yocto@yoctoproject.org
Subject: Re: Anyone done a VAR-SOM-SOLO run-up?
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
X-List-Received-Date: Fri, 17 Jul 2015 00:12:00 -0000
Content-Type: multipart/alternative; boundary=089e0118377a3d4ac0051b07093a

--089e0118377a3d4ac0051b07093a
Content-Type: text/plain; charset=UTF-8

OK thanks.

I've found the serial port now (not the 9 pin D type as expected but a
header) for the console and confirmed that a DTB file is totally missing
from the build!

Avagudweegend


On 17 July 2015 at 02:27, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> Robin,
> you may have better luck if you send your question to the meta-freescale
> mailing list.
>
> Leo
>
> On 07/15/2015 08:38 PM, Robin Gilks wrote:
>
>> Greetings all
>>
>> I'm having problems with the run-up of a Dizzy build on a VAR-SOM-SOLO.
>> The
>> same image is OK with a quad core variant, its just the single core fails
>> so probably a DTB problem.
>>
>> I can't find any info on getting into u-boot - not even which serial port
>> is used - so I can start debugging this.
>>
>> Has anyone on the list experience of this SOM and its associated
>> VAR-MX6CustomBoard development/breakout board?
>>
>> Thanks
>>
>>
>>
>>


-- 
*Robin Gilks*
Development

Delta Strike
Success through Delta Strike
phone:    +64 3 982 9892
skype:     robindeltastrike
web:       www.deltastrike.com

--089e0118377a3d4ac0051b07093a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK thanks.=C2=A0<div><br></div><div>I&#39;ve found the ser=
ial port now (not the 9 pin D type as expected but a header) for the consol=
e and confirmed that a DTB file is totally missing from the build!</div><di=
v><br></div><div>Avagudweegend</div><div><br></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On 17 July 2015 at 02:27, Leonardo Sandov=
al <span dir=3D"ltr">&lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux=
.intel.com" target=3D"_blank">leonardo.sandoval.gonzalez@linux.intel.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Robin,<br>
you may have better luck if you send your question to the meta-freescale ma=
iling list.<br>
<br>
Leo<br>
<br>
On 07/15/2015 08:38 PM, Robin Gilks wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Greetings all<br>
<br>
I&#39;m having problems with the run-up of a Dizzy build on a VAR-SOM-SOLO.=
 The<br>
same image is OK with a quad core variant, its just the single core fails<b=
r>
so probably a DTB problem.<br>
<br>
I can&#39;t find any info on getting into u-boot - not even which serial po=
rt<br>
is used - so I can start debugging this.<br>
<br>
Has anyone on the list experience of this SOM and its associated<br>
VAR-MX6CustomBoard development/breakout board?<br>
<br>
Thanks<br>
<br>
<br>
<br>
</blockquote>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"f=
ont-size:12.8000001907349px"><font color=3D"#444444"><b>Robin Gilks</b></fo=
nt></div><div style=3D"font-size:12.8000001907349px"><div><font color=3D"#4=
44444"><font face=3D"verdana, arial, helvetica, sans-serif">Development<br>=
<br></font></font></div><div style=3D"font-family:verdana,arial,helvetica,s=
ans-serif"><span style=3D"font-weight:bold;font-size:large;font-family:aria=
l,sans-serif;color:rgb(255,69,0)">Delta=C2=A0</span><span style=3D"font-wei=
ght:bold;font-size:large;font-family:arial,sans-serif;color:rgb(68,68,68)">=
Strike</span></div><div style=3D"font-family:verdana,arial,helvetica,sans-s=
erif"><span style=3D"color:rgb(68,68,68)"><span style=3D"font-size:small;fo=
nt-family:Verdana,Arial,Helvetica,sans-serif;font-weight:bold">Success=C2=
=A0</span><span style=3D"font-size:small;font-family:Verdana,Arial,Helvetic=
a,sans-serif;font-weight:bold;font-style:italic"><span style=3D"color:rgb(2=
55,0,0)"></span></span></span><span style=3D"color:rgb(68,68,68)"><span sty=
le=3D"font-size:small;font-family:Verdana,Arial,Helvetica,sans-serif;font-w=
eight:bold;font-style:italic"><span style=3D"color:rgb(255,0,0)"><span styl=
e=3D"font-family:arial,sans-serif;color:rgb(255,69,0)">through</span></span=
>=C2=A0</span><span style=3D"font-size:small;font-family:Verdana,Arial,Helv=
etica,sans-serif;font-weight:bold">Delta Strike</span></span><span style=3D=
"font-weight:bold;font-size:large;font-family:arial,sans-serif;color:rgb(68=
,68,68)"><br></span></div><font color=3D"#444444">phone: =C2=A0=C2=A0=C2=A0=
</font><a value=3D"+6439829892">+64 3 982 9892</a><br><font color=3D"#44444=
4">skype: =C2=A0 =C2=A0 robindeltastrike</font></div><div style=3D"font-siz=
e:12.8000001907349px">web: =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://www.=
deltastrike.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank">www.delt=
astrike.com</a></div></div></div></div></div>
</div></div>

--089e0118377a3d4ac0051b07093a--
