Return-Path: <pcjegan@gmail.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DA86E003E2
	for <yocto@yoctoproject.org>; Sat, 17 Aug 2013 08:46:13 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id m1so2110255ves.13
	for <yocto@yoctoproject.org>; Sat, 17 Aug 2013 08:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=JiQoiZckLVRrobg6kbP1nqtAsL+cAe0ZzzNoB3w5SFE=;
	b=mfP6JggWNb+refY7CianSuGdZx/kgnSG9LjtwPbM8dDg3xFNZd9NWmwCrk+M5j23dU
	nXB9dFsyAdAbhhOOi8Q3bMCIUAc95/owP5PyYx3tlkQPxD7VDcbAut9SpVYNihm9UR3q
	BzgCER3zs27grif6aNIPha3yo7N6t2gp8cDymxoWwmea7WrPGVOKQBtNP3/Qf96dQs08
	LHSe8Ykl6lFTVsfai+v22anY5zVAbEdYiIttEWFJN73jD8g3Gwyzluc+yhNz4f1EUlFj
	euWM9rRvpsj+65u/M7HbTDe7RT1GEAz8n3byrJTo2exmZKYVLoxV07NQdOl0XerwZd3r
	ExCw==
X-Received: by 10.58.73.202 with SMTP id n10mr3669251vev.7.1376754372385; Sat,
	17 Aug 2013 08:46:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.24.4 with HTTP; Sat, 17 Aug 2013 08:45:47 -0700 (PDT)
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5EB168F2@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5EA3BEEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<37204F11-4EBA-42E9-8BC2-858EECFC2785@gmail.com>
	<AF0985D076EB244693F2CCD71AAB10BC2C5EB168F2@BLRINMSMBX01.bglrodc.lntinfotech.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Sat, 17 Aug 2013 21:15:47 +0530
Message-ID: <CAAA4K6K7N5GpP3sJYv4BzrXEkv9McPqDptX_0D=RpmXypneFGg@mail.gmail.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build packages-ssh, telnet, alsa and other package for arm
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
X-List-Received-Date: Sat, 17 Aug 2013 15:46:14 -0000
Content-Type: multipart/alternative; boundary=047d7bacbb5c4f218904e4269bd3

--047d7bacbb5c4f218904e4269bd3
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Amit,

Please refer,
https://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.h=
tml#var-IMAGE_INSTALL
where u can add the packages u need in ur image.

core-image-sato is a full linux system with GUI, it is obvious that the
size will be somewhat big.
About the image size, it really depends on what package system are you
using(rpm, deb, ipk)
If its rpm, the size would be big for a filesystem, and ipk would have the
smallest size.

-JC




On Sat, Aug 17, 2013 at 11:24 AM, Amit Kumar <Amit.Kumar@lntinfotech.com>wr=
ote:

> Hi Raj,****
>
>             Thanks for the suggestion, I have built the image as
> =93core-image-base=94 , now I got the ssh, sftp working with my image.***=
*
>
> But some more packages I need like- gtk+, I have taken those packages
> using the =93hob=94 and build the image =93bitbake core-image-base=94, **=
**
>
> But when I check that image using QEMU the =93libgtk=94 does not present.=
 I am
> not able to test or run my gtk app in QEMU.****
>
> ** **
>
> How do I get it in my image. If I build core-image-sato the libgtk presen=
t
> and I can test my app, but the image size is too big. ****
>
> Is there anyway either reduce the image-sato size or include the gtk
> support in core-image-base?****
>
> ** **
>
> ** **
>
> Thanks & Regards****
>
> Amit K ****
>
> ** **
>
> *From:* Khem Raj [mailto:raj.khem@gmail.com]
> *Sent:* Wednesday, August 14, 2013 11:37 AM
> *To:* Amit Kumar
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Build packages-ssh,telnet,alsa and other package
> for arm****
>
> ** **
>
> ** **
>
> On Aug 13, 2013, at 10:49 PM, Amit Kumar <Amit.Kumar@lntinfotech.com>
> wrote:****
>
>
>
> ****
>
> Hi,****
>
>  ****
>
>             Using the Yocto Project 1.4, I want to build the packages
> like ssh, telnet, alias and other library packages for arm. I am not
> getting an idea how I should have to add those packages in my build
> environment. I want to build them and test, using the QEMU, is that
> possible? I want to build them for arm.****
>
> ** **
>
> ** **
>
> You can start by building a reference image e.g. core-image-basic and the=
n
> add the packages as you want extra I would encourage to read through the =
*
> ***
>
> manual****
>
> ** **
>
>
> https://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual=
.html
> ****
>
> ** **
>
> especially IMAGE_FEATURES and IMAGE_INSTALL and CORE_IMAGE_EXTRA_INSTALL
> variables.****
>
>
>
> ****
>
>  ****
>
>  ****
>
>  ****
>
> Thanks & Regards****
>
> Amit K****
>
> ** **
> ------------------------------
>
> The contents of this e-mail and any attachment(s) may contain confidentia=
l
> or privileged information for the intended recipient(s). Unintended
> recipients are prohibited from taking action on the basis of information =
in
> this e-mail and using or disseminating the information, and must notify t=
he
> sender and delete it from their system. L&T Infotech will not accept
> responsibility or liability for the accuracy or completeness of, or the
> presence of any virus or disabling code in this e-mail"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto****
>
> ** **
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
JCP

--047d7bacbb5c4f218904e4269bd3
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Amit,<div><br></div><div>Please refer,=A0<a href=3D"htt=
ps://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html=
#var-IMAGE_INSTALL">https://www.yoctoproject.org/docs/current/poky-ref-manu=
al/poky-ref-manual.html#var-IMAGE_INSTALL</a></div>

<div>where u can add the packages u need in ur image.</div><div><br></div><=
div>core-image-sato is a full linux system with GUI, it is obvious that the=
 size will be somewhat big.</div><div>About the image size, it really depen=
ds on what package system are you using(rpm, deb, ipk)</div>

<div>If its rpm, the size would be big for a filesystem, and ipk would have=
 the smallest size.</div><div><br></div><div>-JC</div><div><br></div><div><=
br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote=
">

On Sat, Aug 17, 2013 at 11:24 AM, Amit Kumar <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Amit.Kumar@lntinfotech.com" target=3D"_blank">Amit.Kumar@lntinfo=
tech.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div><p class=3D"MsoNorm=
al"><span style=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,&q=
uot;sans-serif&quot;;color:#1f497d">Hi Raj,<u></u><u></u></span></p><p clas=
s=3D"MsoNormal">

<span style=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,&quot;=
sans-serif&quot;;color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Thanks fo=
r the suggestion, I have built the image as =93core-image-base=94 , now I g=
ot the ssh, sftp working with my image.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;;color:#1f497d">But some more packag=
es I need like- gtk+, I have taken those packages using the =93hob=94 and b=
uild the image =93bitbake core-image-base=94, <u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;;color:#1f497d">But when I check tha=
t image using QEMU the =93libgtk=94 does not present. I am not able to test=
 or run my gtk app in QEMU.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></s=
pan></p><p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:=
&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#1f497d">How do I get=
 it in my image. If I build core-image-sato the libgtk present and I can te=
st my app, but the image size is too big. <u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;;color:#1f497d">Is there anyway eith=
er reduce the image-sato size or include the gtk support in core-image-base=
?<u></u><u></u></span></p>

<div class=3D"im"><p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#1f497d"><u=
></u>=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:1=
0.0pt;font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#1f=
497d"><u></u>=A0<u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks &amp; Regards=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:10=
.0pt;font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;;color:#1f4=
97d"> Amit K <u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></s=
pan></p></div><div><div style=3D"border:none;border-top:solid #b5c4df 1.0pt=
;padding:3.0pt 0in 0in 0in">

<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Khem Raj=
 [mailto:<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>] <br>

<b>Sent:</b> Wednesday, August 14, 2013 11:37 AM<br><b>To:</b> Amit Kumar<b=
r><b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yo=
cto@yoctoproject.org</a><br><b>Subject:</b> Re: [yocto] Build packages-ssh,=
telnet,alsa and other package for arm<u></u><u></u></span></p>

</div></div><div><div class=3D"h5"><p class=3D"MsoNormal"><u></u>=A0<u></u>=
</p><p class=3D"MsoNormal"><u></u>=A0<u></u></p><div><div><p class=3D"MsoNo=
rmal">On Aug 13, 2013, at 10:49 PM, Amit Kumar &lt;<a href=3D"mailto:Amit.K=
umar@lntinfotech.com" target=3D"_blank">Amit.Kumar@lntinfotech.com</a>&gt; =
wrote:<u></u><u></u></p>

</div><p class=3D"MsoNormal"><br><br><u></u><u></u></p><div><div><p class=
=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">Hi,</span><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><u></u><u></u></spa=
n></p>

</div><div><p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">=A0</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><u></u><u></u></span></p>

</div><div><p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0<span>=A0</span></span><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">Using the Yocto Projec=
t 1.4, I want to build the packages like ssh, telnet, alias and other libra=
ry packages for arm. I am not getting an idea how I should have to add thos=
e packages in my build environment. I want to build them and test, using th=
e QEMU, is that possible? I want to build them for arm.</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><u></u><u></u></span></p>

</div></div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p =
class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=3D"MsoNormal">=
You can start by building a reference image e.g. core-image-basic and then =
add the packages as you want extra I would encourage to read through the=A0=
<u></u><u></u></p>

</div><div><p class=3D"MsoNormal">manual<u></u><u></u></p></div><div><p cla=
ss=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=3D"MsoNormal"><a =
href=3D"https://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-=
manual.html" target=3D"_blank">https://www.yoctoproject.org/docs/current/po=
ky-ref-manual/poky-ref-manual.html</a><u></u><u></u></p>

</div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=
=3D"MsoNormal">especially IMAGE_FEATURES and IMAGE_INSTALL and=A0<span styl=
e=3D"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#004444;b=
ackground:white">CORE_IMAGE_EXTRA_INSTALL variables.</span><u></u><u></u></=
p>

</div><p class=3D"MsoNormal"><br><br><u></u><u></u></p><div><div><p class=
=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Trebuchet =
MS&quot;,&quot;sans-serif&quot;">=A0</span><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><u></u><u></u></spa=
n></p>

</div><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">=A0</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><u></u><u></u></span></p>

</div><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">=A0</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
"><u></u><u></u></span></p>

</div><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">Thanks &amp; Regards</s=
pan><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;"><u></u><u></u></span></p>

</div><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">Amit K</span><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot=
;"><u></u><u></u></span></p>

</div><p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&q=
uot;Helvetica&quot;,&quot;sans-serif&quot;"><u></u>=A0<u></u></span></p><di=
v class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span st=
yle=3D"font-size:13.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&=
quot;"><hr size=3D"2" width=3D"100%" align=3D"center">

</span></div><p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;">The contents of this e-mail and any attachmen=
t(s) may contain confidential or privileged information for the intended re=
cipient(s). Unintended recipients are prohibited from taking action on the =
basis of information in this e-mail and using or disseminating the informat=
ion, and must notify the sender and delete it from their system. L&amp;T In=
fotech will not accept responsibility or liability for the accuracy or comp=
leteness of, or the presence of any virus or disabling code in this e-mail&=
quot;<br>

</span><span style=3D"font-size:13.5pt;font-family:&quot;Helvetica&quot;,&q=
uot;sans-serif&quot;">_______________________________________________<br>yo=
cto mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_bl=
ank"><span style=3D"color:purple">yocto@yoctoproject.org</span></a><br>

<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
><span style=3D"color:purple">https://lists.yoctoproject.org/listinfo/yocto=
</span></a><u></u><u></u></span></p></div></div><p class=3D"MsoNormal"><u><=
/u>=A0<u></u></p>

</div></div></div></div><br>_______________________________________________=
<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>JCP
</div>

--047d7bacbb5c4f218904e4269bd3--
