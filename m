Return-Path: <fede.vitali@gmail.com>
Received: from mail-oa0-f47.google.com (mail-oa0-f47.google.com
	[209.85.219.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8246E0076C
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 03:12:59 -0800 (PST)
Received: by mail-oa0-f47.google.com with SMTP id m1so224797oag.20
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 03:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mdl/Z5udSf6WNuK0FLSAqJ9QEw8VsYeKvnJ72cYWTzY=;
	b=lBQP7zaiDYqNBeSjjFhORJWhHOHhqom6PAkVU9eJ7jLxADUubUXpLOADbD8Z9+OO3T
	W37hcGvEgmB05/IpZXsFWv8e21c3SdsIydxUvu9PvdRYfCcoWkQyqtBWESjR3L/5iUuA
	atoYcCewNxjfhZVzX0IshTYrh9xGBMW14GMHwVU/nJMMs0xRYIIDAhoMrIcHeggolIqy
	c12ZEdXcREpgCDU3GZCLaNmtWiBDkoRTNp85DHPiiqtrUX/SuKUs3uIrAeRDFGzPhWDv
	0T5nt8fVHfS03ththPyhY3fOiMjKS+7BVHYYy+nlD1bhnmeQpbesiUGq9p2kQEd/U5HH
	gQGw==
MIME-Version: 1.0
X-Received: by 10.182.135.194 with SMTP id pu2mr31069964obb.38.1392808378513; 
	Wed, 19 Feb 2014 03:12:58 -0800 (PST)
Received: by 10.76.101.11 with HTTP; Wed, 19 Feb 2014 03:12:58 -0800 (PST)
In-Reply-To: <53048C4E.9050504@gmail.com>
References: <CAD78y+7qxqkdf1d1p6dFe5Cv9dFLHpgZ3uJfOD6JdmbScfX2+g@mail.gmail.com>
	<53048C4E.9050504@gmail.com>
Date: Wed, 19 Feb 2014 12:12:58 +0100
Message-ID: <CAD78y+7_Dg34_VNuyTooWt_ikEJEKZTrm03Krpk80BVzmXQPAQ@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: koansoftware@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: problem with yocto behind http_proxy
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
X-List-Received-Date: Wed, 19 Feb 2014 11:13:00 -0000
Content-Type: multipart/alternative; boundary=089e0122a6c0a43dc704f2c078ae

--089e0122a6c0a43dc704f2c078ae
Content-Type: text/plain; charset=ISO-8859-1

sorry I forgot to reply also to yocto@yoctoproject.org. This was the reply

thank you Marco,
I've tried but I'm still having problems:

WARNING: Failed to fetch URL git://
git.yoctoproject.org/yocto-kernel-tools.git, attempting MIRRORS if available
WARNING: Failed to fetch URL git://
git.yoctoproject.org/linux-yocto-3.10.git;bareclone=1;branch=standard/base,meta;name=machine,meta,
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
fatal: unable to connect to git.yoctoproject.org:
git.yoctoproject.org: Name or service not known

I noticed that the url https://www.yoctoproject.org/sources is not working.
So I tried  http://downloads.yoctoproject.org/sources/, but I get this
error:

ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
fatal: unable to connect to git.yoctoproject.org:
git.yoctoproject.org: Name or service not known



2014-02-19 11:49 GMT+01:00 Marco <koansoftware@gmail.com>:

> Il 19/02/2014 11:44, Federico Vitali ha scritto:
>
>> Hi,
>>
>> I have problems using yocto behind a firewall. The firewall blocks git,
>> so I've followed the instructions
>> given here:
>>
>> http://www.yoctoproject.org/docs/1.5.1/ref-manual/ref-
>> manual.html#how-does-the-yocto-project-obtain-source-
>> code-and-will-it-work-behind-my-firewall-or-proxy-server
>>
>> i.e. adding the following lines to my local.conf:
>>
>> PREMIRRORS_prepend = "\
>>       git://.*/.*http://www.yoctoproject.org/sources/  \n \
>>       ftp://.*/.*http://www.yoctoproject.org/sources/  \n \
>>       http://.*/.*http://www.yoctoproject.org/sources/  \n \
>>       https://.*/.*http://www.yoctoproject.org/sources/  \n"
>>
>>
>> BB_FETCH_PREMIRRORONLY = "1"
>>
>>
>> but I still get the following errors:
>>
>> ERROR: Function failed: Network access disabled through BB_NO_NETWORK (or
>> set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested
>> with command git fetch -f --prune git://git.yoctoproject.org/
>> yocto-kernel-tools.git  <http://git.yoctoproject.org/
>> yocto-kernel-tools.git>  refs/*:refs/* (for url git://
>> git.yoctoproject.org/yocto-kernel-tools.git  <
>> http://git.yoctoproject.org/yocto-kernel-tools.git>)
>>
>> ERROR: Logfile of failure stored in: /home/vitalife/yocto/poky-
>> dora-10.0.1/build/tmp/work/x86_64-linux/kern-tools-native/0.2+gitAUTOINC+
>> a42509b01c-r12/temp/log.do_fetch.4490
>>
>> It seems that bitbake is still trying to access the server with git.
>>
>> Any suggestion?
>>
>> Thank you in advance
>>
>> Federico
>>
>>
>>
>
> Remove
> BB_FETCH_PREMIRRORONLY = "1"
>
>
> --
> Marco Cavallini | KOAN sas | Bergamo - Italia
>  embedded and real-time software engineering
> Phone:+39-035-255.235 - Fax:+39-178-22.39.748
>       http://www.KoanSoftware.com
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0122a6c0a43dc704f2c078ae
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">sorry I forgot to reply also to <a href=3D"mailto:yocto@yo=
ctoproject.org">yocto@yoctoproject.org</a>. This was the reply<div><br></di=
v><div><span style=3D"font-family:arial,sans-serif;font-size:13px">thank yo=
u Marco,=A0</span><div style=3D"font-family:arial,sans-serif;font-size:13px=
">
I&#39;ve tried but I&#39;m still having problems:</div><div style=3D"font-f=
amily:arial,sans-serif;font-size:13px"><br></div><div style=3D"font-family:=
arial,sans-serif;font-size:13px"><div>WARNING: Failed to fetch URL git://<a=
 href=3D"http://git.yoctoproject.org/yocto-kernel-tools.git" target=3D"_bla=
nk">git.yoctoproject.org/yocto-kernel-tools.git</a>, attempting MIRRORS if =
available</div>
<div>WARNING: Failed to fetch URL git://<a href=3D"http://git.yoctoproject.=
org/linux-yocto-3.10.git;bareclone=3D1;branch=3Dstandard/base,meta;name=3Dm=
achine,meta" target=3D"_blank">git.yoctoproject.org/linux-yocto-3.10.git;ba=
reclone=3D1;branch=3Dstandard/base,meta;name=3Dmachine,meta</a>, attempting=
 MIRRORS if available</div>
<div>ERROR: Fetcher failure: Fetch command failed with exit code 128, outpu=
t:</div><div>fatal: unable to connect to=A0<a href=3D"http://git.yoctoproje=
ct.org/" target=3D"_blank">git.yoctoproject.org</a>:</div><div><a href=3D"h=
ttp://git.yoctoproject.org/" target=3D"_blank">git.yoctoproject.org</a>: Na=
me or service not known</div>
</div><div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div>=
<div style=3D"font-family:arial,sans-serif;font-size:13px">I noticed that t=
he url=A0<a href=3D"https://www.yoctoproject.org/sources" target=3D"_blank"=
>https://www.yoctoproject.org/sources</a>=A0is not working.</div>
<div style=3D"font-family:arial,sans-serif;font-size:13px">So I tried=A0=A0=
<a href=3D"http://downloads.yoctoproject.org/sources/" target=3D"_blank">ht=
tp://downloads.yoctoproject.org/sources/</a>, but I get this error:</div><d=
iv style=3D"font-family:arial,sans-serif;font-size:13px">
<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px"><div>E=
RROR: Fetcher failure: Fetch command failed with exit code 128, output:</di=
v><div>fatal: unable to connect to=A0<a href=3D"http://git.yoctoproject.org=
/" target=3D"_blank">git.yoctoproject.org</a>:</div>
<div><a href=3D"http://git.yoctoproject.org/" target=3D"_blank">git.yoctopr=
oject.org</a>: Name or service not known</div><div><br></div></div></div></=
div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014-02-1=
9 11:49 GMT+01:00 Marco <span dir=3D"ltr">&lt;<a href=3D"mailto:koansoftwar=
e@gmail.com" target=3D"_blank">koansoftware@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Il 19/02/2014 11:44, Federico Vitali ha scri=
tto:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">
Hi,<br>
<br>
I have problems using yocto behind a firewall. The firewall blocks git,<br>
so I&#39;ve followed the instructions<br>
given here:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/1.5.1/ref-manual/ref-manual.htm=
l#how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-=
firewall-or-proxy-server" target=3D"_blank">http://www.yoctoproject.org/<u>=
</u>docs/1.5.1/ref-manual/ref-<u></u>manual.html#how-does-the-<u></u>yocto-=
project-obtain-source-<u></u>code-and-will-it-work-behind-<u></u>my-firewal=
l-or-proxy-server</a><br>

<br>
i.e. adding the following lines to my local.conf:<br>
<br>
PREMIRRORS_prepend =3D &quot;\<br>
=A0 =A0 =A0 git://.*/.*<a href=3D"http://www.yoctoproject.org/sources/" tar=
get=3D"_blank">http://www.<u></u>yoctoproject.org/sources/</a> =A0\n \<br>
=A0 =A0 =A0 ftp://.*/.*<a href=3D"http://www.yoctoproject.org/sources/" tar=
get=3D"_blank">http://www.<u></u>yoctoproject.org/sources/</a> =A0\n \<br>
=A0 =A0 =A0 http://.*/.*<a href=3D"http://www.yoctoproject.org/sources/" ta=
rget=3D"_blank">http://www.<u></u>yoctoproject.org/sources/</a> =A0\n \<br>=
</div>
=A0 =A0 =A0 https://.*/.*<a href=3D"http://www.yoctoproject.org/sources/" t=
arget=3D"_blank">http://www.<u></u>yoctoproject.org/sources/</a> =A0\n&quot=
;<div class=3D""><br>
<br>
BB_FETCH_PREMIRRORONLY =3D &quot;1&quot;<br>
<br>
<br>
but I still get the following errors:<br>
<br></div>
ERROR: Function failed: Network access disabled through BB_NO_NETWORK (or s=
et indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested wi=
th command git fetch -f --prune git://<a href=3D"http://git.yoctoproject.or=
g/yocto-kernel-tools.git" target=3D"_blank">git.yoctoproject.org/<u></u>yoc=
to-kernel-tools.git</a> =A0&lt;<a href=3D"http://git.yoctoproject.org/yocto=
-kernel-tools.git" target=3D"_blank">http://git.yoctoproject.org/<u></u>yoc=
to-kernel-tools.git</a>&gt; =A0refs/*:refs/* (for url git://<a href=3D"http=
://git.yoctoproject.org/yocto-kernel-tools.git" target=3D"_blank">git.yocto=
project.org/<u></u>yocto-kernel-tools.git</a> =A0&lt;<a href=3D"http://git.=
yoctoproject.org/yocto-kernel-tools.git" target=3D"_blank">http://git.yocto=
project.org/<u></u>yocto-kernel-tools.git</a>&gt;)<div class=3D"">
<br>
ERROR: Logfile of failure stored in: /home/vitalife/yocto/poky-<u></u>dora-=
10.0.1/build/tmp/work/<u></u>x86_64-linux/kern-tools-<u></u>native/0.2+gitA=
UTOINC+<u></u>a42509b01c-r12/temp/log.do_<u></u>fetch.4490<br>
<br>
It seems that bitbake is still trying to access the server with git.<br>
<br>
Any suggestion?<br>
<br>
Thank you in advance<br>
<br>
Federico<br>
<br>
<br>
</div></blockquote>
<br>
<br>
Remove<br>
BB_FETCH_PREMIRRORONLY =3D &quot;1&quot;<span class=3D"HOEnZb"><font color=
=3D"#888888"><br>
<br>
<br>
-- <br>
Marco Cavallini | KOAN sas | Bergamo - Italia<br>
=A0embedded and real-time software engineering<br>
Phone:<a href=3D"tel:%2B39-035-255.235" value=3D"+39035255235" target=3D"_b=
lank">+39-035-255.235</a> - Fax:<a href=3D"tel:%2B39-178-22.39.748" value=
=3D"+391782239748" target=3D"_blank">+39-178-22.39.748</a><br>
=A0 =A0 =A0 <a href=3D"http://www.KoanSoftware.com" target=3D"_blank">http:=
//www.KoanSoftware.com</a><br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--089e0122a6c0a43dc704f2c078ae--
