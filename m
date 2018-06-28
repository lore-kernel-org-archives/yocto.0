Return-Path: <abhishekr@eximiusdesign.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A54EE00DEE; Thu, 28 Jun 2018 00:35:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,WEIRD_PORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF753E00C1B
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 00:35:20 -0700 (PDT)
Received: by mail-lf0-f43.google.com with SMTP id q6-v6so3444270lfh.6
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 00:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=eximiusdesign-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ndrR9xN30Xyl/x6HJxZyxLQbNDxOPUCQq+K55rJebOE=;
	b=ds7Y4ZQL5F5wSucpKa3Qk1FG8ADTcZdWuHpQnhSuuYJxJ5C9wVy056Z1aQrtrvL+EC
	4W9wIlxrUDzB0/gegzioXZJ8q2lYI8ZkhYDerLKki1fG5pix6KV5F6fLZ+vMLfCplg62
	ZcUBJMBqILEga7Jf4Txa7+kCsDma60OoAcOL0tZxeAryBMpPffMHKMxxaMwcuHJAjpw0
	ZZlEj9qReSzvVBDkDUpiq+eVNi5aHmQzsHYZdg+QEtDvCgSfkBAt25z/WhwnHbZlfcch
	YH2KSdWnBPuXCWW5s+jAgTtj/l6/seNZBmvuq9Rq/dtGLWa0RljbjzC7Rgf460iaVcsL
	7Zcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ndrR9xN30Xyl/x6HJxZyxLQbNDxOPUCQq+K55rJebOE=;
	b=Wj5njxBL6nVx+JZgAWKaC0wflccNOPYby+K58TJKMlrF+x2bLo3Q2PhXbgK1IHpwtR
	I/UuJiEwY3Ml+x6ZKV1vOPSXJjIcW60tuIwDHsOfHaekocuAHRjkSlbTJEuAGLu0Skb0
	3Cu7p/+hcTQVGNo6UEQCBB0Wu7hYUODlZd7dGj1FFTVOOBYJnPKr9nv5OFE6IhU9Udq0
	IxS3D+vre7c6V5TTJacvAveWbH/s4x08JSIzPAZ2x+PTK8WIFCfBBQZ9JKnMQY4tkp22
	xqmDJaPSMEQ+koEVGNaUCAIK3sRFViJ6AG9lE9on2qn1oXgcf6uXsK8U4lu1swAKaYxs
	7W7g==
X-Gm-Message-State: APt69E0zJF7a8dor0SYtOzUxtqeb4Rsxcgbr9Xc2/PgFGmuzBUFhmvWl
	wLOYfhXv5MutSFTE03Hst7czilPoVBSNF3h6rn8/DLXLJxKOuzE2A9/Qy0LDe76lpoif8Cj5Cvy
	HQmYeEQVZQqoNn+S+g6v2duPkm0wrJAA=
X-Google-Smtp-Source: AAOMgpezSoeoKciEeWS3rTK/wI4vpgzxOno5bHKpFSMwToE22/RG+797Zydi/CAgEDC2F/nxRgQsRlYlR4grrQIjr3s=
X-Received: by 2002:a19:41c5:: with SMTP id
	o188-v6mr2794079lfa.100.1530171319749; 
	Thu, 28 Jun 2018 00:35:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7412:0:0:0:0:0 with HTTP; Thu, 28 Jun 2018 00:35:19
	-0700 (PDT)
In-Reply-To: <CAJTo0LYN6EFUQ3H-K0dO9hs=4L2m5-yRuTrocYN=AemayVFijg@mail.gmail.com>
References: <CALYWmf9Yd9iVHLmijQzYK-FmPYqt+x1pwG7=NE6JtDBN_fYJ2Q@mail.gmail.com>
	<CAJTo0LYN6EFUQ3H-K0dO9hs=4L2m5-yRuTrocYN=AemayVFijg@mail.gmail.com>
From: Abhishek Kumar Rai <abhishekr@eximiusdesign.com>
Date: Thu, 28 Jun 2018 13:05:19 +0530
Message-ID: <CALYWmf_s9+zUJUkPkjNjZETgJV4G4Zh_LLnrin_HkqXeyCeziQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Regarding Use the Latest LTP on Latest YOCTO build
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
X-List-Received-Date: Thu, 28 Jun 2018 07:35:22 -0000
Content-Type: multipart/alternative; boundary="000000000000f5a6e3056faec568"

--000000000000f5a6e3056faec568
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Burton Ross,
Thanks for your prompt reply.

I have some doubt please clarify
 I can use the latest release also but i am getting below error in version
2.3
{{{

     ltp-20170116-r0 do_compile: NOTE: ltp: compiling from external source
tree ~/build/https:/github.com/linux-test-project/ltp.git
     ERROR: ltp-20170116-r0 do_compile: oe_runmake failed
     ERROR: ltp-20170116-r0 do_compile: Function failed: do_compile (log
file is located at
~/build/tmp/work/cortexa9hf-neon-agl-linux-gnueabi/ltp/20170116-
r0/temp
     /log.do_compile.161006)
     ERROR: Logfile of failure stored in:
~/build//tmp/work/cortexa9hf-neon-agl-
linux-gnueabi/ltp/20170116-r0/temp/log.do_compile.161006
     Log data follows:
     | DEBUG: Executing python function externalsrc_compile_prefunc
     | NOTE: ltp: compiling from external source tree~/build//https:/
github.com/linux-test-project/ltp.git
     | DEBUG: Python function externalsrc_compile_prefunc finished
     | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'arm-32', 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
'common']
     | DEBUG: Executing shell function do_compile
     | NOTE: make -j 16
     | ERROR: oe_runmake failed
     | make: Entering directory '~/build/https:/github.com/linux-test-
project/ltp.git/testcases/kernel'
     | make: 'include/linux_syscall_numbers.h' is up to date.
     | make: Leaving directory '~/build/https:/github.com/linux-test-
project/ltp.git/testcases/kernel'
     | ~/build/https:/github.com/linux-test- project/ltp.git/include/mk/aut
omake.mk:108: *** target pattern contains no '%'.  Stop.
     | ERROR: Function failed: do_compile (log file is located at ~/build/
tmp/work/cortexa9hf-neon-agl-linux-gnueabi/ltp/20170116-
r0/temp/log.do_compile.161006)

}}}
Note :
        $ bitbake --version
           BitBake Build Tool Core version 1.34.0
Regards,
Abhishek

On Thu, Jun 28, 2018 at 12:49 PM, Burton, Ross <ross.burton@intel.com>
wrote:

> Just so you know, 2.3 is a year old.  2.5 is the latest release.
>
> On 28 June 2018 at 06:59, Abhishek Kumar Rai <abhishekr@eximiusdesign.com=
>
> wrote:
>
>> Hi Team,
>>
>> I am planning to use the LTP latest version on YOCTO latest vesion.
>> It seems that the earlier YOCTO versions are released with LTP and
>> latest version are not.
>> Found the below difficulties so far:
>> 1. Latest LTP version(20180118) suitable for old gcc version(4.8).
>> 2. But at the same time, latest version of YOCTO build(2.3) supporting
>> latest
>> gcc version(6.3) only.
>>
>> so we want to use a latest LTP version(20180118) with latest YOCTO
>> build(2.3) which has latest gcc version(6.3) .
>>
>> Please share your valuable inputs with me to achieve the same.
>>
>> Thanks & Regards,
>> Abhishek Rai
>>
>> The information contained in this e-mail message (including any
>>
>> attachments) may be confidential, proprietary, privileged, or otherwise
>>
>> exempt from disclosure under applicable laws. It is intended to be
>>
>> conveyed only to the designated recipient(s). Any use, dissemination,
>>
>> distribution, printing, retaining or copying of this e-mail (including
>> its
>>
>> attachments) by unintended recipient(s) is strictly prohibited and may
>>
>> be unlawful. If you are not an intended recipient of this e-mail, or
>> believe
>>
>> that you have received this e-mail in error, please notify the sender
>>
>> immediately (by replying to this e-mail), delete any and all copies of
>>
>> this e-mail (including any attachments) from your system, and do not
>>
>> disclose the content of this e-mail to any other person. Thank you for
>> your cooperation.
>>
>> *This e-mail message (including any attachments) may be confidential,
>> proprietary, privileged, or otherwise exempt from disclosure under
>> applicable laws. If you are not an intended recipient, please delete thi=
s
>> message. Thank you.*
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--=20














The information contained in this e-mail message (including=20
any=C2=A0


attachments) may be confidential, proprietary, privileged, or=20
otherwise


exempt from disclosure under applicable laws. It is intended to=20
be=C2=A0


conveyed only to the designated recipient(s). Any use, dissemination,=C2=A0



distribution, printing, retaining or copying of this e-mail (including=20
its=C2=A0


attachments) by unintended recipient(s) is strictly prohibited and=20
may=C2=A0


be unlawful. If you are not an intended recipient of this e-mail, or=20
believe=C2=A0


that you have received this e-mail in error, please notify the=20
sender=C2=A0


immediately (by replying to this e-mail), delete any and all=20
copies of=C2=A0


this e-mail (including any attachments) from your system, and=20
do not


disclose the content of this e-mail to any other person. Thank you=20
for your cooperation.






--=20
_This e-mail message (including any=C2=A0attachments) may be confidential,=
=20
proprietary, privileged, or otherwise=C2=A0exempt from disclosure under=20
applicable laws. If you are not an intended recipient, please delete this=
=20
message. Thank you.
_

--000000000000f5a6e3056faec568
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><h3 class=3D"gmail-m_-2286539447084380405gmail-western" st=
yle=3D"font-weight:normal">Hi Burton Ross,</h3>

<div>Thanks for your prompt reply.<br><br> I have some doubt please clarify=
 </div><div>=C2=A0I can use the latest release also but i am getting below =
error in version 2.3<br></div><div>{{{<br><p style=3D"margin-bottom:0in;lin=
e-height:100%">=C2=A0=C2=A0 =C2=A0	ltp-20170116-r0
do_compile: NOTE: ltp: compiling from external source tree ~/build/<wbr>htt=
ps:/<a href=3D"http://github.com/linux-test-project/ltp.git" target=3D"_bla=
nk">github.com/linux-test-<wbr>project/ltp.git</a><br>=C2=A0=C2=A0=C2=A0=C2=
=A0
	ERROR:
ltp-20170116-r0 do_compile: oe_runmake failed<br>=C2=A0=C2=A0=C2=A0=C2=A0
	ERROR:
ltp-20170116-r0 do_compile: Function failed: do_compile (log file is
located at ~/build/<wbr>tmp/work/cortexa9hf-neon-agl-<wbr>linux-gnueabi/ltp=
/20170116-		r0/temp<br>=C2=A0=C2=A0=C2=A0=C2=A0 /log.do_compile.161006)<br>=
=C2=A0=C2=A0=C2=A0=C2=A0 ERROR:
Logfile of failure stored in: ~/build/<wbr>/<wbr>tmp/work/cortexa9hf-neon-a=
gl-	linux-gnueabi/ltp/20170116-r0/<wbr>temp/log.do_compile.161006<br>=C2=A0=
=C2=A0=C2=A0=C2=A0
	Log
data follows:<br>=C2=A0=C2=A0=C2=A0=C2=A0
	| DEBUG: Executing python function
externalsrc_compile_prefunc<br>=C2=A0=C2=A0=C2=A0=C2=A0
	| NOTE: ltp: compiling from
external source tree~/build/<wbr>/<wbr>https:/<a href=3D"http://github.com/=
linux-test-project/ltp.git" target=3D"_blank">github.com/linux-test-<wbr>pr=
oject/ltp.git</a><br>=C2=A0=C2=A0=C2=A0=C2=A0
	|
DEBUG: Python function externalsrc_compile_prefunc finished<br>=C2=A0=C2=A0=
=C2=A0=C2=A0
	|
DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-comm=
on&#39;, &#39;arm-32&#39;,
&#39;common-linux&#39;, 	&#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;=
arm-linux-gnueabi&#39;,
&#39;common&#39;]<br>=C2=A0=C2=A0=C2=A0=C2=A0
	| DEBUG: Executing shell function do_compile<br>=C2=A0=C2=A0=C2=A0=C2=A0
	|
NOTE: make -j 16<br>=C2=A0=C2=A0=C2=A0=C2=A0
	| ERROR: oe_runmake failed<br>=C2=A0=C2=A0=C2=A0=C2=A0 | make:
Entering directory
&#39;~/build/<wbr><wbr>https:/<a href=3D"http://github.com/linux-test-" tar=
get=3D"_blank">github.com/linux-test-</a>	project/ltp.git/testcases/<wbr>ke=
rnel&#39;<br>=C2=A0=C2=A0=C2=A0=C2=A0
	|
make: &#39;include/linux_syscall_<wbr>numbers.h&#39; is up to date.<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 | make:
Leaving directory
&#39;~/build/<wbr>https:/<a href=3D"http://github.com/linux-test-" target=
=3D"_blank">github.com/linux-test-</a>	project/ltp.git/testcases/<wbr>kerne=
l&#39;<br>=C2=A0=C2=A0=C2=A0=C2=A0 | ~/build/<wbr>https:/<a href=3D"http://=
github.com/linux-test-" target=3D"_blank">github.com/linux-test-</a>	projec=
t/ltp.git/include/mk/<a href=3D"http://automake.mk:108" target=3D"_blank">a=
ut<wbr>omake.mk:108</a>:
*** target pattern contains no &#39;%&#39;.=C2=A0 Stop.<br>=C2=A0=C2=A0=C2=
=A0=C2=A0
	| ERROR:
Function failed: do_compile (log file is located at ~/build/<wbr><wbr>tmp/w=
ork/cortexa9hf-neon-agl-<wbr>linux-gnueabi/ltp/20170116-	r0/temp/log.do_com=
pile.161006)</p>

<br>}}}<br></div><div>Note : <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 $ bitbake --version<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 BitBake Build Tool Core version 1.34.0<br></div><div>Regards,<br>=
</div>Abhishek</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Thu, Jun 28, 2018 at 12:49 PM, Burton, Ross <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>Just so you know, 2.3 is a year old. =C2=A02.5 is the latest release.</div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div class=
=3D"h5">On 28 June 2018 at 06:59, Abhishek Kumar Rai <span dir=3D"ltr">&lt;=
<a href=3D"mailto:abhishekr@eximiusdesign.com" target=3D"_blank">abhishekr@=
eximiusdesign.com</a>&gt;</span> wrote:<br></div></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div><div class=3D"h5"><div dir=3D"ltr"><div><div><div><div><div=
><div><div><div><div><div><div>Hi Team,<br><br></div>I am planning to use t=
he LTP latest version on YOCTO latest vesion.<br></div>It seems that the ea=
rlier YOCTO versions are released with LTP and <br></div>latest version are=
 not.<br></div>Found the below difficulties so far:<br></div>1. Latest LTP =
version(20180118) suitable for old gcc version(4.8).<br></div>2. But at the=
 same time, latest version of YOCTO build(2.3) supporting latest<br></div>g=
cc version(6.3) only.<br>=C2=A0 <br></div>so we want to use a latest LTP ve=
rsion(20180118) with latest YOCTO build(2.3) which has latest gcc version(6=
.3) .<br><br></div>Please share your valuable inputs with me to achieve the=
 same.<br><br></div>Thanks &amp; Regards,<br></div>Abhishek Rai</div>

<br>








</div></div><table cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td valign=3D"middle">
<p><span>The information contained in this e-mail message (including any=C2=
=A0</span></p>
<p><span>attachments) may be confidential, proprietary, privileged, or othe=
rwise</span></p>
<p><span>exempt from disclosure under applicable laws. It is intended to be=
=C2=A0</span></p>
<p><span>conveyed only to the designated recipient(s). Any use, disseminati=
on,=C2=A0</span></p>
<p><span>distribution, printing, retaining or copying of this e-mail (inclu=
ding its=C2=A0</span></p>
<p><span>attachments) by unintended recipient(s) is strictly prohibited and=
 may=C2=A0</span></p>
<p><span>be unlawful. If you are not an intended recipient of this e-mail, =
or believe=C2=A0</span></p>
<p><span>that you have received this e-mail in error, please notify the sen=
der=C2=A0</span></p>
<p><span>immediately (by replying to this e-mail), delete any and all copie=
s of=C2=A0</span></p>
<p><span>this e-mail (including any attachments) from your system, and do n=
ot</span></p>
<p><span>disclose the content of this e-mail to any other person. Thank you=
 for your cooperation.</span></p>
</td>
</tr>
</tbody>
</table>
<br>
<img><i style=3D"font-family:Calibri;font-size:14px"><span style=3D"font-si=
ze:10pt">This e-mail message (including any=C2=A0</span>attachments) may be=
 confidential, proprietary, privileged, or otherwise=C2=A0exempt from discl=
osure under applicable laws. If you are not an intended recipient, please d=
elete this message. Thank you.</i><span class=3D"HOEnZb"><font color=3D"#88=
8888"><br style=3D"font-family:Calibri;font-size:14px"><br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

<br>








<table cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td valign=3D"middle">
<p><span>The information contained in this e-mail message (including any=C2=
=A0</span></p>
<p><span>attachments) may be confidential, proprietary, privileged, or othe=
rwise</span></p>
<p><span>exempt from disclosure under applicable laws. It is intended to be=
=C2=A0</span></p>
<p><span>conveyed only to the designated recipient(s). Any use, disseminati=
on,=C2=A0</span></p>
<p><span>distribution, printing, retaining or copying of this e-mail (inclu=
ding its=C2=A0</span></p>
<p><span>attachments) by unintended recipient(s) is strictly prohibited and=
 may=C2=A0</span></p>
<p><span>be unlawful. If you are not an intended recipient of this e-mail, =
or believe=C2=A0</span></p>
<p><span>that you have received this e-mail in error, please notify the sen=
der=C2=A0</span></p>
<p><span>immediately (by replying to this e-mail), delete any and all copie=
s of=C2=A0</span></p>
<p><span>this e-mail (including any attachments) from your system, and do n=
ot</span></p>
<p><span>disclose the content of this e-mail to any other person. Thank you=
 for your cooperation.</span></p>
</td>
</tr>
</tbody>
</table>
<br>
<img><i style=3D"font-family:Calibri;font-size:14px"><span style=3D"font-si=
ze:10pt">This e-mail message (including any=C2=A0</span>attachments) may be=
 confidential, proprietary, privileged, or otherwise=C2=A0exempt from discl=
osure under applicable laws. If you are not an intended recipient, please d=
elete this message. Thank you.</i><br style=3D"font-family:Calibri;font-siz=
e:14px">

--000000000000f5a6e3056faec568--
