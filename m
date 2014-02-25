Return-Path: <pcjegan@gmail.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3D9DE008DC
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 03:10:22 -0800 (PST)
Received: by mail-ve0-f170.google.com with SMTP id c14so231136vea.15
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 03:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=OAcp7P7TcUIwh0FZVbPZbccizO16h66rciudkqOgYC0=;
	b=dRMkTqdLDlzxOJt5lY1opcQ3DXbynhx7l/XZlioYLCHSraBpMC2UBVEUABAuMqMjgD
	JfbVO5GU5MHPdngN1Cn/PzT2BzpPzlpDtt7JQe1F13CRkalTCmTLyvGGkL+TguQNItkG
	wSQfvII0k6QlDTZZk/E2P4daDzTm5vBSkZhG8bVjJag3A/LemZiSExAjuChKO5oSugQz
	aFY08yOG09W5FNzgDddfQlmBW96RKIt3y0jBXw8ne/CPD4RQjMTkMgBd0gZI9NLH6ppr
	v1djDpfZZRtpv8cFsmQYo0ucpLfhFYNXQN9a5HYKS7mJ/vFQZJndS1FkucRmC7KbJREa
	RyjQ==
X-Received: by 10.52.95.233 with SMTP id dn9mr450143vdb.3.1393326621348; Tue,
	25 Feb 2014 03:10:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.116.146 with HTTP; Tue, 25 Feb 2014 03:10:01 -0800 (PST)
In-Reply-To: <921B4CADE3939E41A17374DDCEBA12813A3FF7@POCITMSEXMB06.LntUniverse.com>
References: <921B4CADE3939E41A17374DDCEBA12813A3FF7@POCITMSEXMB06.LntUniverse.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Tue, 25 Feb 2014 16:40:01 +0530
Message-ID: <CAAA4K6KiPE55Ep1+04pe-LccZRYj5EAo-StTTMJffof6_y3uuw@mail.gmail.com>
To: Manimehalai S <MANIMEHALAI.SELVARAJ@lnttechservices.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Basic query regarding porting
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
X-List-Received-Date: Tue, 25 Feb 2014 11:10:25 -0000
Content-Type: multipart/alternative; boundary=001a1136b61052597504f3392268

--001a1136b61052597504f3392268
Content-Type: text/plain; charset=ISO-8859-1

Hi,

You should start reading the yocto documents. ;)
Start here,
https://www.yoctoproject.org/documentation/current
You should focus on,
http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html
http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html

As you have mentioned TI Beagle Board,
http://layers.openembedded.org/layerindex/branch/master/layer/meta-beagleboard/
You can integrate this layer to your yocto.

For any other how to, plenty of help available online.

Happy Yocto!



On Tue, Feb 25, 2014 at 3:57 PM, Manimehalai S <
MANIMEHALAI.SELVARAJ@lnttechservices.com> wrote:

>  Hi all,
>
>
>
> I am new to yocto. Consider that we are developing a new board based on
> TI's beagle board. How should I start porting to the new board in Yocto.
>
>
>
> Thanks
>
> *Larsen & Toubro Limited *
>
> *www.larsentoubro.com <http://www.larsentoubro.com>*
>
> This Email may contain confidential or privileged information for the
> intended recipient (s). If you are not the intended recipient, please do
> not use or disseminate the information, notify the sender and delete it
> from your system.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
JCP

--001a1136b61052597504f3392268
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif">Hi,</div><div class=3D"gmail_default" style=3D"f=
ont-family:&#39;trebuchet ms&#39;,sans-serif"><br></div><div class=3D"gmail=
_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">

You should start reading the yocto documents. ;)</div><div class=3D"gmail_d=
efault" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">Start here,=
</div><div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#=
39;,sans-serif">

<a href=3D"https://www.yoctoproject.org/documentation/current">https://www.=
yoctoproject.org/documentation/current</a><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">You should fo=
cus on,</div>

<div class=3D"gmail_default"><font face=3D"trebuchet ms, sans-serif"><a hre=
f=3D"http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-projec=
t-qs.html">http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-=
project-qs.html</a></font><br>

</div><div class=3D"gmail_default"><font face=3D"trebuchet ms, sans-serif">=
<a href=3D"http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.htm=
l">http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html</a><br=
>
</font></div>
<div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sa=
ns-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:&#39;=
trebuchet ms&#39;,sans-serif">As you have mentioned TI Beagle Board,</div><=
div class=3D"gmail_default">

<font face=3D"trebuchet ms, sans-serif"><a href=3D"http://layers.openembedd=
ed.org/layerindex/branch/master/layer/meta-beagleboard/">http://layers.open=
embedded.org/layerindex/branch/master/layer/meta-beagleboard/</a></font><br=
>

</div><div class=3D"gmail_default"><font face=3D"trebuchet ms, sans-serif">=
You can integrate this layer to your yocto.</font></div><div class=3D"gmail=
_default"><font face=3D"trebuchet ms, sans-serif"><br></font></div><div cla=
ss=3D"gmail_default">

<font face=3D"trebuchet ms, sans-serif">For any other how to, plenty of hel=
p available&nbsp;</font><span style=3D"font-family:&#39;trebuchet ms&#39;,s=
ans-serif">online.</span></div><div class=3D"gmail_default"><font face=3D"t=
rebuchet ms, sans-serif"><br>

</font></div><div class=3D"gmail_default"><font face=3D"trebuchet ms, sans-=
serif">Happy Yocto!&nbsp;</font></div><div class=3D"gmail_default"><br></di=
v></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tu=
e, Feb 25, 2014 at 3:57 PM, Manimehalai S <span dir=3D"ltr">&lt;<a href=3D"=
mailto:MANIMEHALAI.SELVARAJ@lnttechservices.com" target=3D"_blank">MANIMEHA=
LAI.SELVARAJ@lnttechservices.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">Hi all,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">I am new to yocto. Consider that w=
e are developing a new board based on TI&rsquo;s beagle board. How should I=
 start porting to the new board in Yocto.<u></u><u></u></span></p>


<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">Thanks<u></u><u></u></span></p>
</div>
<p><span style><strong>Larsen &amp; Toubro Limited </strong></span><br>
<br>
<strong><a href=3D"http://www.larsentoubro.com" target=3D"_blank">www.larse=
ntoubro.com</a></strong></p>
<p><span style>This Email may contain confidential or privileged informatio=
n for the intended recipient (s). If you are not the intended recipient, pl=
ease do not use or disseminate the information, notify the sender and delet=
e it from your
 system.</span></p>
</div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>JCP
</div>

--001a1136b61052597504f3392268--
