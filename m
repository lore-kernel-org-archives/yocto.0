Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D21E1E007E4; Fri,  1 Jul 2016 06:16:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78511E0049B
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 06:16:04 -0700 (PDT)
Received: by mail-vk0-f41.google.com with SMTP id k68so65895556vkb.0
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 06:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jNz6qh9qbeitykBbZrNb2dxXZHdNfOJLAHjs3KkbL78=;
	b=AaR5FXvWF1FePYHgkUtUW1+pVmu0cAiKoeuf0YQxfOMCA5yIeNoZ5Hb/htkpPIZt/k
	oNm58mOgzulE0C4wxVqII/eNlxN0El7J0E4jfT6ziJ2iVlsHr3Cn3/iCEfd6EZTYe+0+
	XIPIDicesyx3ZdEnqQTPO02r2REcLsbrET6+7f9CWp5bCU8KrdKZEzBgMc89WAfW4OK9
	Z/QmC4XfREJizJJ06GRPQe8KvQc2ocj1Bz5h2gCKIibWngoX2JgbCfeVtvpVzYvEUDLP
	Unv8h2Nteo8qO+7VqgSpZ1BcL127Kcr+WHUwRHAhBeWwi5ofRXkYHHqDUfrtmSp5v3Nn
	91Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jNz6qh9qbeitykBbZrNb2dxXZHdNfOJLAHjs3KkbL78=;
	b=Iu2zUtbCfRvu8eTa3G11BPMrTf4VS6t+uqTuSKaj7DSjpPFVvKkJhkU706LYK54p4i
	HCI/EvtI3XkNQY3uHCfNAro4czlXAgCHRBxGbSe52SZbuNnPsx5IeTBxAizXIWA9eRv3
	3s5lyonF/0mdDXWVgE9zPTSCwWOQ2A4zlj4pNrqXkNZ+tOuPuR8J6Hju1an5HJw15iuw
	fBIPlmcdZBxJELACW+8cP6IWSZQ7ox4v1zT3ki2Fazxm5bp8OaTO0TrH0z4q+aYSyPG7
	112gCEX+KEvgxInz2rIcqYr/hRxWqWtzEyB/4EQXfrcSoQJlXIqNxy3rWBuObClOWy/z
	Xt7w==
X-Gm-Message-State: ALyK8tJNkj8K31mTG1rQvbuD9xr5/5qpwdeGYWdZ+lQPy9glWyRAxmx7Bk/ArJR6Rg6QclVYwI2j+UB+o4PutA==
X-Received: by 10.159.34.229 with SMTP id 92mr7960970uan.150.1467378964259;
	Fri, 01 Jul 2016 06:16:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.201 with HTTP; Fri, 1 Jul 2016 06:16:03 -0700 (PDT)
In-Reply-To: <5637116E3E13BE46B0D936BF364783C1F350A1@MAIA.sede.videotec.com>
References: <5637116E3E13BE46B0D936BF364783C1F350A1@MAIA.sede.videotec.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 1 Jul 2016 10:16:03 -0300
Message-ID: <CAF3SDA63LaC9VvXKdFGDWADdGjJ6VXxK08sfbnWvqTZrVo6XdA@mail.gmail.com>
To: Ottavio Campana <o.campana@videotec.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: customizing system configuration files in my image
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
X-List-Received-Date: Fri, 01 Jul 2016 13:16:08 -0000
X-Groupsio-MsgNum: 30843
Content-Type: multipart/related; boundary=94eb2c03dc88ea9bc4053692c92b

--94eb2c03dc88ea9bc4053692c92b
Content-Type: multipart/alternative; boundary=94eb2c03dc88ea9bc1053692c92a

--94eb2c03dc88ea9bc1053692c92a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ottavio,

There is more than way to do it. In your case I would use
ROOTFS_POSTPROCESS_COMMAND to modify files prior the creation of the rootfs=
.

You may:
- Create a .bbclass for your image inheriting core-image for example.
- Create a shell function to do some sed magic.
- Setup that function to run at rootfs creation.

Here is a example, I hope this helps :)
https://gist.github.com/gkos/4e981dffb929886cd8a6c5ed738b7b08

Regards,

2016-07-01 6:11 GMT-03:00 Ottavio Campana <o.campana@videotec.com>:

> Hello,
>
>
>
> I would like to customize an image I am developing based on core image
> minimal.
>
>
>
> Particularly, I=E2=80=99d like to customize the files /etc/network/interf=
aces and
> /etc/inittab .
>
>
>
> What should I do achieve that?
>
>
>
> Thank you
>
>
>
> Ottavio
>
>
>
> --
>
> [image: Videotec Logo] <http://www.videotec.com/>
>
> *Ottavio Campana*
> *Product Manager - Electronic R&D Department*
>
> Office +39.0445.697.411  Fax +39.0445.697.414
> Address  VIDEOTEC S.p.A. - Via Friuli, 6 - 36015 Schio (Vicenza) - Italy
>
>
>
>
> *Any information herein transmitted only concerns the person or the
> company named in the address and is deemed to be confidential It is
> strictly forbidden to transmit, post, forward or otherwise use said
> information to anyone other than the recipient. If you have received this
> message by mistake, please contact the sender and delete any relevant
> information from your computer. This mailbox is only meant for sending an=
d
> receiving messages pertaining business matters and any other use for
> personal purposes is forbidden and unauthorized. Therefore, any email sen=
t
> and received will be handled as ordinary business messages and subject to
> the company's own rules, and may thus be read also by people other than t=
he
> user named in the mailbox address. *
>
> [image: Twitter Logo blue] <http://www.videotec.com/twitter>   [image:
> Youtube logo red] <http://www.videotec.com/youtube>   [image: Linkedin
> logo blue] <http://www.videotec.com/linkedin>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c03dc88ea9bc1053692c92a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hi Ottavio,<br><br=
></div>There is more than way to do it. In your case I would use ROOTFS_POS=
TPROCESS_COMMAND to modify files prior the creation of the rootfs.<br></div=
><br></div>You may:<br></div>- Create a .bbclass for your image inheriting =
core-image for example.<br></div>- Create a shell function to do some sed m=
agic.<br></div>- Setup that function to run at rootfs creation.<br><br></di=
v>Here is a example, I hope this helps :) <a href=3D"https://gist.github.co=
m/gkos/4e981dffb929886cd8a6c5ed738b7b08">https://gist.github.com/gkos/4e981=
dffb929886cd8a6c5ed738b7b08</a><br><br></div>Regards,<br></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-07-01 6:11 GMT-03:00 O=
ttavio Campana <span dir=3D"ltr">&lt;<a href=3D"mailto:o.campana@videotec.c=
om" target=3D"_blank">o.campana@videotec.com</a>&gt;</span>:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"IT">
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to customize an im=
age I am developing based on core image minimal.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Particularly, I=E2=80=99d like =
to customize the files /etc/network/interfaces and /etc/inittab .<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What should I do achieve that?<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Ottavio<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;">--<u></u><u></u></span></p>
<table style=3D"border-collapse:collapse" border=3D"0" cellpadding=3D"0" ce=
llspacing=3D"0">
<tbody>
<tr>
<td style=3D"width:42.4pt;padding:0cm 0cm 0cm 0cm" width=3D"113">
<p class=3D"MsoNormal"><a href=3D"http://www.videotec.com/" target=3D"_blan=
k"><span style=3D"color:blue;text-decoration:none"><img src=3D"cid:image001=
.png@01D1D389.5B8295C0" alt=3D"Videotec Logo" height=3D"76" width=3D"97" bo=
rder=3D"0"></span></a><u></u><u></u></p>
</td>
<td style=3D"width:244.5pt;padding:0cm 0cm 0cm 0cm" valign=3D"top" width=3D=
"652">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">Ottavio Campana<=
/span></b><span style=3D"font-size:10.0pt">
<br>
<i>Product Manager - Electronic R&amp;D Department</i> <br>
<br>
<span style=3D"color:red">Office=C2=A0</span>+39.0445.697.411 <span style=
=3D"color:red">=C2=A0Fax=C2=A0</span>+39.0445.697.414
<br>
<span style=3D"color:red">Address=C2=A0</span> VIDEOTEC S.p.A. - Via Friuli=
, 6 - 36015 Schio (Vicenza) - Italy =C2=A0
<u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;"><u></u>=C2=A0<u></u></span></p>
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0">
<tbody>
<tr>
<td style=3D"width:286.9pt;padding:0cm 0cm 0cm 0cm" width=3D"765">
<p class=3D"MsoNormal" style=3D"text-align:justify"><i><span style=3D"font-=
size:8.0pt;color:gray" lang=3D"EN-US">Any information herein transmitted on=
ly concerns the person or the company named in the address and is deemed to=
 be confidential It is strictly forbidden
 to transmit, post, forward or otherwise use said information to anyone oth=
er than the recipient. If you have received this message by mistake, please=
 contact the sender and delete any relevant information from your computer.=
 This mailbox is only meant for
 sending and receiving messages pertaining business matters and any other u=
se for personal purposes is forbidden and unauthorized. Therefore, any emai=
l sent and received will be handled as ordinary business messages and subje=
ct to the company&#39;s own rules, and
 may thus be read also by people other than the user named in the mailbox a=
ddress.
</span></i><span style=3D"font-size:8.0pt;color:gray" lang=3D"EN-US"><br>
<br>
</span><a href=3D"http://www.videotec.com/twitter" title=3D"&quot;http://tw=
itter.com/videotec&quot; " target=3D"_blank"><span style=3D"font-size:8.0pt=
;color:blue;text-decoration:none"><img src=3D"cid:image002.gif@01D1D389.5B8=
295C0" alt=3D"Twitter Logo blue" height=3D"28" width=3D"28" border=3D"0"></=
span></a><span style=3D"font-size:8.0pt;color:gray" lang=3D"EN-US">=C2=A0=
=C2=A0
</span><a href=3D"http://www.videotec.com/youtube" title=3D"&quot;http://ww=
w.youtube.com/user/videotecspa&quot; " target=3D"_blank"><span style=3D"fon=
t-size:8.0pt;color:blue;text-decoration:none"><img src=3D"cid:image003.gif@=
01D1D389.5B8295C0" alt=3D"Youtube logo red" height=3D"28" width=3D"28" bord=
er=3D"0"></span></a><span style=3D"font-size:8.0pt;color:gray" lang=3D"EN-U=
S">=C2=A0=C2=A0
</span><a href=3D"http://www.videotec.com/linkedin" title=3D"&quot;http://w=
ww.linkedin.com/company/videotec&quot; " target=3D"_blank"><span style=3D"f=
ont-size:8.0pt;color:blue;text-decoration:none"><img src=3D"cid:image004.pn=
g@01D1D389.5B8295C0" alt=3D"Linkedin logo blue" height=3D"28" width=3D"28" =
border=3D"0"></span></a><span style=3D"font-size:8.0pt;color:gray" lang=3D"=
EN-US"><u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div style=3D"text-align:rig=
ht"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b=
>Yoda Master</b></i><br></div></div>
</div>

--94eb2c03dc88ea9bc1053692c92a--

--94eb2c03dc88ea9bc4053692c92b
Content-Type: image/gif; name="image003.gif"
Content-Disposition: inline; filename="image003.gif"
Content-Transfer-Encoding: base64
Content-ID: <image003.gif@01D1D389.5B8295C0>
X-Attachment-Id: e8c8940eb749bc7d_0.0.3

R0lGODlhHAAcAMQAAP3Fxf/9/f/e3+c5PPaEhfiTlOUwMuMnKexMTv/u7uYxM+QrLfmZmvV8feIi
JP27vPqpqeg+QP/w8f/5+fFqa/mcnv729vy6uvWAgec1N//z8+UtMP3Q0O9bXP///+EfISH/C1hN
UCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtj
OWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUg
WE1QIENvcmUgNS4zLWMwMTEgNjYuMTQ1NjYxLCAyMDEyLzAyLzA2LTE0OjU2OjI3ICAgICAgICAi
PiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5
bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6
Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29t
L3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NU
eXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChN
YWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkVDN0ExOTE0MzI3NzExRTM5RDAy
OEJBNzI3NzdENEIyIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkVDN0ExOTE1MzI3NzExRTM5
RDAyOEJBNzI3NzdENEIyIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9Inht
cC5paWQ6QTlBNjZDMDkzMjc3MTFFMzlEMDI4QkE3Mjc3N0Q0QjIiIHN0UmVmOmRvY3VtZW50SUQ9
InhtcC5kaWQ6QTlBNjZDMEEzMjc3MTFFMzlEMDI4QkE3Mjc3N0Q0QjIiLz4gPC9yZGY6RGVzY3Jp
cHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6
+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LB
wL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomI
h4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBP
Tk1MS0pJSEdGRURDQkFAPz49PDs6OTg3NjU0MzIxMC8uLSwrKikoJyYlJCMiISAfHh0cGxoZGBcW
FRQTEhEQDw4NDAsKCQgHBgUEAwIBAAAh+QQAAAAAACwAAAAAHAAcAAAFyKAnjuL0NMjyfQvSPBMp
y1ahrHj+KYU1y4CBbogbAH6iCnGJq/wYzOiHIbtIpZdRwnCNGhIiQldK8EgOw0xnzW4LdQcJZEgI
IEUBzBBCGWruWkMUETobMg1HM0MRDjoGMggfFAIyQ42OkCsHHCRElziPJJGTlToOhDmGJBSJpTkR
fTpggB4agnM6GHZ3AWI6EGdDA23EHRlDcR6+Y0tlHlvMRAqzHlbROlkkUNcrVDNK105IQWNGtDU3
TDw+tCUnKSstLzHt9YAhADs=

--94eb2c03dc88ea9bc4053692c92b
Content-Type: image/png; name="image004.png"
Content-Disposition: inline; filename="image004.png"
Content-Transfer-Encoding: base64
Content-ID: <image004.png@01D1D389.5B8295C0>
X-Attachment-Id: e8c8940eb749bc7d_0.0.4

iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAYAAAByDd+UAAAAAXNSR0ICQMB9xQAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAQJSURBVEjH
5ZZfTFt1FMcvf/eHDDa2+ODDTNT46otGM5I9L9sLS3Q6jUQzXeZAXNeWgoVNJuzJB9S4OTSbJmgc
vS23fxksBCUrAiODDWEwoDA2kZZS96ct/f/1/O7tem/Z3HR0T97km/ae87vnc+/5/TmHuzj3F577
vBtZVRYUHW3PmDitBSXfDaO5Z+Y4gNz6+nqOiXv5pBPZOis4AmbpklL+f0yxeLkqAeV21/LsQuDt
FHCd3iG+DRsg6nAbuENG6Vdrlu2Po0oj9pqn0T3j3ZcCbqhzKGAmrNGZUXysAwXVSfhqgB+bsMd0
DecnPe+lgIVHHGmwLwauwxeMwDbyJ4rrO8CpTKsCvnE/sF1K3cFWHDAOI5ZA6mrqmpTSqzE/AWC5
AfrOcSgv2+U/pLRmHMicFQa8dqYfPn9YhIUicVQLI9IXajOa0uQcagTkqtuw/+wQ+ie9qLONYh3N
KacWJCD5xf/s915Ads8ywKQW/iOQ7UWVEWtVBmzWtaFAzYv3zJ5FKc9T8cgnX94hgwQlyFqtgEK9
FYU1FuSrTfdvpYemlFbjM8c7oaU0HrWMotY2hmebfqWHjNja2IlPrKNosI9BR/4ivR1P1dpwqmca
Q9d9GHD50Hh+Ak9/6hDHp6bgocDyVrx++jfc8kcRoaUaiiYo+BVwH7Rgxykn/EHJvngnhA+NV9A1
7kYiIS/pSDwB55QXW4+dk6D/BvjW930IheOpIEcstGjeb8Gub3sRi0r2aCwOz+0Q/un6rP0qssW0
mx8NfPNMHwLLMfFBemHUmiXgzuZehMOxtMDuuyH0T3sxtxQEFHt3wOVFQQ2th8NC5oCLtHVe/MaJ
DZUGbG/qxqT7bppvS0MnbSdT5oBf/zJFi4wXn+EqWtHQO5vy+SMxvHLiAsH4zAHLfh6SArK9RyeU
huZNCSyhr88osLRlUArI9mMFD41jLA247eQTBRpQteIL/3/AjomFd1YF3P0IYIkCuMdwFRdmvCpy
bSEVpwH30kkTjSQUJ83v0klDwISiMpf+mA7UnZOB4Xgc2+6tUlrBpT9chCcQdZNrgeSTgR/x2EED
pz1+3PAFcfPWMg6evQRu/08o+bJH3NxzvgBmlwJ49XSfDKzkUUYl7Sb5XIt+jLrv4HkaL/opZplw
DZc8gX0E62AvJDdRdMLnVVtRVGfHRrIxramxieUmN2kvIhtTTo1VLkH0XD6N2yj67CgkZVdb5cOb
Hwd/eX43sZpJS9x6vaJrY7WMNU1MYi+TLKoahZ1Js6LYsvs0v1luE4UpdE0ssC8sIG3iXjrhFBvf
VCNctUIPsq1slB/gZ/FyqBF+1+YKDs7flhth4/A81lNBzaHKzlp0NqeZEOvmX/hqEAdMI43tilb/
b+8F9HO1HeU+AAAAAElFTkSuQmCC

--94eb2c03dc88ea9bc4053692c92b
Content-Type: image/gif; name="image002.gif"
Content-Disposition: inline; filename="image002.gif"
Content-Transfer-Encoding: base64
Content-ID: <image002.gif@01D1D389.5B8295C0>
X-Attachment-Id: e8c8940eb749bc7d_0.0.2

R0lGODlhHAAcAMQAAIfG60yv45TM7aXV8W27573f9PT5/bDY8Tyr4Vaz5Mrl9sjk9ev0+/r9/mi5
5kKt4mK35ZrP7v3+/5/R73e/6dDo96zX8PH4/Pj7/rjd81u05dfs+O72/N7v+v///ziq4SH/C1hN
UCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtj
OWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUg
WE1QIENvcmUgNS4zLWMwMTEgNjYuMTQ1NjYxLCAyMDEyLzAyLzA2LTE0OjU2OjI3ICAgICAgICAi
PiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5
bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6
Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29t
L3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NU
eXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChN
YWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkE5QTY2QzA3MzI3NzExRTM5RDAy
OEJBNzI3NzdENEIyIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkE5QTY2QzA4MzI3NzExRTM5
RDAyOEJBNzI3NzdENEIyIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9Inht
cC5paWQ6QTlBNjZDMDUzMjc3MTFFMzlEMDI4QkE3Mjc3N0Q0QjIiIHN0UmVmOmRvY3VtZW50SUQ9
InhtcC5kaWQ6QTlBNjZDMDYzMjc3MTFFMzlEMDI4QkE3Mjc3N0Q0QjIiLz4gPC9yZGY6RGVzY3Jp
cHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6
+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LB
wL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomI
h4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBP
Tk1MS0pJSEdGRURDQkFAPz49PDs6OTg3NjU0MzIxMC8uLSwrKikoJyYlJCMiISAfHh0cGxoZGBcW
FRQTEhEQDw4NDAsKCQgHBgUEAwIBAAAh+QQAAAAAACwAAAAAHAAcAAAF0KAnjmKjCE7wfYEjKA0p
y9igrngeDNgsV4mcUJio+ESHoVJ48FmWUJxFtohaP4vR5XZdBi6iSNca8RgeXQ2AskLnHobMkAAQ
CiSijaIuzPBzAh4WbgExIxhPQgAaQxQiDBMODj8IQxqVQg4dR0hKmEKOnB4CS585BZwSQUMIjHMM
RwVLap6oMxyrQwByngN4WgRQGWeKCxxUuUNwHmJCEBMFChkREGQiW2NeYCJV2UNZJIneK1MzSeNN
R0BjRaIeNVxKOz3uJScpKy0vhvX9nCEAOw==

--94eb2c03dc88ea9bc4053692c92b
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01D1D389.5B8295C0>
X-Attachment-Id: e8c8940eb749bc7d_0.0.1

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
AAAASUVORK5CYII=

--94eb2c03dc88ea9bc4053692c92b--
