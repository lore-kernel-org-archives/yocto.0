Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB19EE00A92; Tue,  4 Aug 2015 05:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99ED0E00A7E
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 05:42:11 -0700 (PDT)
Received: by iodd187 with SMTP id d187so15183830iod.2
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 05:42:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=kePBftMltjBSGDz3Z2iOqVE4cKDtfxe8jqYxm7TpMiQ=;
	b=R0qkxy0HgG5/NhuSYc2Cg77BKqJKfDdAhDpzqMFkK0XoutC5NkAINhbO4P83bjoQnL
	KspdP7ZUJKZAk6itbM/v3Frzcb2RuAZtrEfZpre6sh4GQGA97hBEbA8CR+ez+Efy+pRH
	G22NdzPMjODE3J5TONUrNSBCLh4uxx4KCTWCnM2IYCpuZxjas7uBeNe76UOqDrSLA/i+
	wxtkAgOUv+oS/073BoC8Nov/sTXl0io2HOPp7bQMKMdLUcfAd/CkhJXSJ2nsEGEBQVqX
	GywhQjZSy7YJ+OH7eePdmlj9LAhRHTOYWJwVnGpNmXAVU8YAaro/dJ5ISvo7miVu/+J2
	4dZA==
X-Gm-Message-State: ALoCoQl0TQLd++ygYnLLhXhyqtaz0UbyGXu2uSc9li6IA7Ggveln1I2fssxGmUGwDRzuZWpVMFwh
MIME-Version: 1.0
X-Received: by 10.107.132.19 with SMTP id g19mr3092507iod.3.1438692131026;
	Tue, 04 Aug 2015 05:42:11 -0700 (PDT)
Sender: sarayu@tanmic.co.in
Received: by 10.107.186.10 with HTTP; Tue, 4 Aug 2015 05:42:10 -0700 (PDT)
In-Reply-To: <55C0A75F.1000701@mlbassoc.com>
References: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>
	<55C0A75F.1000701@mlbassoc.com>
Date: Tue, 4 Aug 2015 18:12:10 +0530
X-Google-Sender-Auth: LldR06NMG_32QKBBakhugMq1I3w
Message-ID: <CAF5S8SMdfH8rNHznXCLJ_yt7PDGnKDujiu9=dpZce8eMzH4DrA@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: ADD GDB in FSL toolchain
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
X-List-Received-Date: Tue, 04 Aug 2015 12:42:15 -0000
Content-Type: multipart/alternative; boundary=001a113eca10694e22051c7b9dec

--001a113eca10694e22051c7b9dec
Content-Type: text/plain; charset=UTF-8

hi Gary ,

Thanks for the quick response. I still see the below error .

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'gdb-cross-arm'
NOTE: Runtime target 'gdb-cross-arm' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['gdb-cross-arm']
ERROR: Required build target 'fsl-toolchain' has no buildable providers.
Missing or unbuildable dependency chain was: ['fsl-toolchain',
'gdb-cross-arm']
-----

Below is how the change ,
TOOLCHAIN_TARGET_TASK += " \
    glib-2.0 \
    glib-2.0-dev \
    dtc-staticdev \
    libgomp \
    libgomp-dev \
    libgomp-staticdev \
    libstdc++-staticdev \
    ${TCLIBC}-staticdev \
    util-linux-dev \
    gdb-cross-arm \
"


Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:
>
>> Hi all ,
>>
>> I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation for my ARM
>> board .  I wanted to build gdb along with the toolchain . I got some ideas
>> from google to add the
>> gdb-cross in the fsl-toolchain.bb <http://fsl-toolchain.bb> but on doing
>> the same it gave me some errors when trying to build .
>>
>> Can you please let me know the right method to add gdb in the toolchain ?
>>
>> Below is the error i got ,
>> *ERROR: gdb-cross not found in the base feeds (ls1021atwr
>> cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vfp
>> armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any all).*
>>
>
> Use gdb-cross-arm
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113eca10694e22051c7b9dec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">hi Gary ,=C2=A0</div><div class=3D"gmail_default" style=
=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:comic sans ms,sans-serif">Thanks for the quick r=
esponse. I still see the below error .</div><div class=3D"gmail_default" st=
yle=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_=
default"><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">NOTE: Resolving any missing task queue dependencies</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">ERROR: Nothi=
ng RPROVIDES &#39;gdb-cross-arm&#39;</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">NOTE: Runtime target &#39;gdb-c=
ross-arm&#39; is unbuildable, removing...</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">Missing or unbuildable dep=
endency chain was: [&#39;gdb-cross-arm&#39;]</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">ERROR: Required build t=
arget &#39;fsl-toolchain&#39; has no buildable providers.</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Missing or=
 unbuildable dependency chain was: [&#39;fsl-toolchain&#39;, &#39;gdb-cross=
-arm&#39;]</font></div><div class=3D"gmail_default" style=3D"font-family:&#=
39;comic sans ms&#39;,sans-serif">-----</div><div class=3D"gmail_default" s=
tyle=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><br></div><div clas=
s=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif=
">Below is how the change ,=C2=A0</div><div class=3D"gmail_default" style=
=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><div class=3D"gmail_def=
ault">TOOLCHAIN_TARGET_TASK +=3D &quot; \</div><div class=3D"gmail_default"=
>=C2=A0 =C2=A0 glib-2.0 \</div><div class=3D"gmail_default">=C2=A0 =C2=A0 g=
lib-2.0-dev \</div><div class=3D"gmail_default">=C2=A0 =C2=A0 dtc-staticdev=
 \</div><div class=3D"gmail_default">=C2=A0 =C2=A0 libgomp \</div><div clas=
s=3D"gmail_default">=C2=A0 =C2=A0 libgomp-dev \</div><div class=3D"gmail_de=
fault">=C2=A0 =C2=A0 libgomp-staticdev \</div><div class=3D"gmail_default">=
=C2=A0 =C2=A0 libstdc++-staticdev \</div><div class=3D"gmail_default">=C2=
=A0 =C2=A0 ${TCLIBC}-staticdev \</div><div class=3D"gmail_default">=C2=A0 =
=C2=A0 util-linux-dev \</div><div class=3D"gmail_default">=C2=A0 =C2=A0 gdb=
-cross-arm \</div><div class=3D"gmail_default">&quot;</div><div><br></div><=
/div></div></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D=
"comic sans ms, sans-serif">Thanks and Regards,</font><div><font face=3D"co=
mic sans ms, sans-serif">Sarayu K S=C2=A0</font></div><div><font face=3D"co=
mic sans ms, sans-serif">Tech Lead=C2=A0</font></div><div><font face=3D"com=
ic sans ms, sans-serif">Zaikenn Technologies</font></div></div></div></div>=
</div></div>
<br><div class=3D"gmail_quote">On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas =
<span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank=
">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Hi all ,<br>
<br>
I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation for my ARM b=
oard .=C2=A0 I wanted to build gdb along with the toolchain . I got some id=
eas from google to add the<br></span>
gdb-cross in the <a href=3D"http://fsl-toolchain.bb" rel=3D"noreferrer" tar=
get=3D"_blank">fsl-toolchain.bb</a> &lt;<a href=3D"http://fsl-toolchain.bb"=
 rel=3D"noreferrer" target=3D"_blank">http://fsl-toolchain.bb</a>&gt; but o=
n doing the same it gave me some errors when trying to build .<span class=
=3D""><br>
<br>
Can you please let me know the right method to add gdb in the toolchain ?<b=
r>
<br>
Below is the error i got ,<br></span>
*ERROR: gdb-cross not found in the base feeds (ls1021atwr cortexa7hf-vfp-ne=
on cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vfp armv6hf-vfp armv5ehf-vfp a=
rmv5hf-vfp noarch any all).*<br>
</blockquote>
<br>
Use gdb-cross-arm<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a113eca10694e22051c7b9dec--
