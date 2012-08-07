Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 862A6E002AB
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 05:16:32 -0700 (PDT)
Received: by lboi15 with SMTP id i15so966616lbo.35
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2012 05:16:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=Janydcuy+lxKn2dbIv9RkiZ6p7xeP+uJiZSBcnDQEuQ=;
	b=IrmsCm9YoneIeT/301MjQ8ILeZOSjRSX8m7VK1ZlBpdlFCv75dfBnY2ahunc4dMp5t
	XZgsBd8J1jqdQpQ2OBS+KhyEU4JPZjOLokO9N2RGYe49pKpLkHsrKkaVTR51v2wBE4Bh
	lEm0YmheSl50cMKNYHxKYriFuJVpWZTIQy8Ypbk50n+nz1kEZ2qSZ5Nx3ZsKnEGCNtxB
	A6eDT5sHd/ZyhL0oehd5ysMGGkriiWB/snzwTCxlSF8KGzQDNtpfNgf1iIrcdbC6UaR5
	VeJ8VfaoTRhuHQdPrK47XRX0R8mMhA8iDkhYUwr/iwe46fSM89YWoWUhrjA+FFPvcyz1
	jmSw==
Received: by 10.152.108.42 with SMTP id hh10mr1829664lab.9.1344341791327; Tue,
	07 Aug 2012 05:16:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.39.9 with HTTP; Tue, 7 Aug 2012 05:16:11 -0700 (PDT)
In-Reply-To: <CAMvUbCzugf07XABmUfHvSqcCMhN=hew0B_TMKAncVLt4bDUK7w@mail.gmail.com>
References: <CANsUPaOtNG=xQkccMg10T=4Hf-eJmP1UMJ=KRviPQ-kb270=2Q@mail.gmail.com>
	<CAMvUbCzugf07XABmUfHvSqcCMhN=hew0B_TMKAncVLt4bDUK7w@mail.gmail.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Tue, 7 Aug 2012 14:16:11 +0200
Message-ID: <CANsUPaPqw28hNpOfp+o20KH909Jf4OtRt-H9juWwVhnQftdVCw@mail.gmail.com>
To: Leon Woestenberg <sidebranch.openembedded@gmail.com>
X-Gm-Message-State: ALoCoQnF4QVBcAXmDIDQczjkmBzwSO3qIje8ddzcFURRFnEIzp7bHfRAL5T4S0vLCkLHWivtlo52
Cc: yocto@yoctoproject.org
Subject: Re: Usb-serial device support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Aug 2012 12:16:34 -0000
Content-Type: multipart/alternative; boundary=bcaec54fb9c6edc6b204c6abf6e3

--bcaec54fb9c6edc6b204c6abf6e3
Content-Type: text/plain; charset=ISO-8859-1

For me this procedure works:


   - bitbake linux-imx -c cleansstate
   - bitbake linux-imx -c patch
   - bitbake linux-imx -c menuconfig (add usb-serial converter support)
   - bitbake linux-imx


Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Mon, Jul 30, 2012 at 8:47 PM, Leon Woestenberg <
sidebranch.openembedded@gmail.com> wrote:

> Giovanni,
>
>
> On Mon, Jul 30, 2012 at 10:48 AM, Giovanni Foiani <fnognn@unife.it> wrote:
>
>> I built a distribution for iMX53 QSB with kernel 2.6.35-3 and I need
>> support for USB-serial devices.
>> When I plug the usb-serial converter I get this error..
>>
>> *usb wakeup is here
>>
>>                             *
>> *otg host Remote wakeup
>>
>>                                              *
>> *usb 1-1: new full speed USB device using fsl-ehci and address 3
>>
>>                                             *
>> *usb 1-1: device v067b p2303 is not supported *
>>
>> I tried to recompile linux-imx kernel adding support for USB-serial
>> devices, I run:
>>
>>    - bibake linux-imx -c menuconfig
>>    - added support for usb-serial devices in menuconfig
>>    - bitbake -f -c compile linux-imx
>>    - bitbake linux-imx
>>
>> ..but it didn't work..
>>
>> Any suggestions?
>>
>> Did you see the install and deploy steps being performed? There are some
> versions of OE/Yocto where those steps are not depended upon, even if you
> ran -c compile -f.
>
> For example, on Denzil, I have to run the compile, install and deploy
> steps forcefully.
>
> Regards,
>
> Leon.
>
>> Giovanni
>>  --
>>
>> Dott. Ing. Giovanni Foiani
>>
>> Cell:        +39-349-3577515
>> Phone:    +39-0532-97-4106
>> mail:        giovanni.foiani@unife.it
>> CenTec - Corso Guercino, 47 - 44042 Cento (FE)
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--bcaec54fb9c6edc6b204c6abf6e3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<font color=3D"#222222" face=3D"arial, sans-serif">For me this procedure wo=
rks:</font><div><br style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;background-color:rgb(255,255,255)"><ul><li><span style=3D"background-col=
or:rgb(255,255,255);color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:13px">bitbake linux-imx -c cleansstate</span></li>

<li><span style=3D"background-color:rgb(255,255,255);color:rgb(34,34,34);fo=
nt-family:arial,sans-serif;font-size:13px">bitbake linux-imx -c patch</span=
></li><li><span style=3D"background-color:rgb(255,255,255);color:rgb(34,34,=
34);font-family:arial,sans-serif;font-size:13px">bitbake linux-imx -c menuc=
onfig (add usb-serial converter support)</span></li>

<li><span style=3D"background-color:rgb(255,255,255);color:rgb(34,34,34);fo=
nt-family:arial,sans-serif;font-size:13px">bitbake linux-imx</span></li></u=
l><div><br></div>Giovanni<br style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:13px;background-color:rgb(255,255,255)">

<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Mon, Jul 30, 2012 at 8:47 PM, Leon Wo=
estenberg <span dir=3D"ltr">&lt;<a href=3D"mailto:sidebranch.openembedded@g=
mail.com" target=3D"_blank">sidebranch.openembedded@gmail.com</a>&gt;</span=
> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Giovanni,<div class=3D"im"><br><br><div clas=
s=3D"gmail_quote">On Mon, Jul 30, 2012 at 10:48 AM, Giovanni Foiani <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:fnognn@unife.it" target=3D"_blank">fnognn@=
unife.it</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<span style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-se=
rif"></span><div style=3D"color:rgb(34,34,34);font-size:13px;font-family:ar=
ial,sans-serif">I built a distribution for iMX53 QSB with kernel 2.6.35-3 a=
nd I need support for USB-serial devices.=A0</div>



<div style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-ser=
if">When I plug the usb-serial converter I get this error..</div><div style=
=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,sans-serif">
<br></div><div style=3D"color:rgb(34,34,34);font-size:13px;font-family:aria=
l,sans-serif"><div><i>usb
 wakeup is here =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</i></div>



<div><i>otg host Remote wakeup =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</i></div><div><i>usb
 1-1: new full speed USB device using fsl-ehci and address 3 =A0 =A0 =A0 =
=A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0=A0</i></div>



<div><i>usb 1-1: device v067b p2303 is not supported=A0</i></div><div><br><=
/div><div>I tried to recompile linux-imx kernel adding support for USB-seri=
al devices, I run:</div><div><ul><li style=3D"margin-left:15px">bibake linu=
x-imx -c menuconfig</li>


<li style=3D"margin-left:15px">added support for usb-serial devices in menu=
config</li><li style=3D"margin-left:15px">bitbake -f -c compile linux-imx</=
li><li style=3D"margin-left:15px">bitbake linux-imx</li></ul><div>..but it =
didn&#39;t work..</div>






</div><div><br></div><div>Any suggestions?</div><br>
</div></blockquote></div></div>Did you see the install and deploy steps bei=
ng=20
performed? There are some versions of OE/Yocto where those steps are not
 depended upon, even if you ran -c compile -f.<br>
<br>
For example, on Denzil, I have to run the compile, install and deploy steps=
 forcefully.<br>
<br>
Regards,<br>
<br>
Leon.<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"im"><div style=3D"color:rgb(34,34,34);font-size:13px;font-family:arial,=
sans-serif">

<div>Giovanni</div>
</div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 <a href=3D"tel:%2B39-349-3577515" value=3D"+393493577515=
" target=3D"_blank">+39-349-3577515</a><br>





Phone: =A0=A0 <a href=3D"tel:%2B39-0532-97-4106" value=3D"+390532974106" ta=
rget=3D"_blank">+39-0532-97-4106</a><br>mail:=A0 =A0 =A0 =A0 <a href=3D"mai=
lto:giovanni.foiani@unife.it" target=3D"_blank">giovanni.foiani@unife.it</a=
></div>
<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br>
</blockquote></div><br></div>

--bcaec54fb9c6edc6b204c6abf6e3--
