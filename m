Return-Path: <jawad@emblemtechnologies.com>
Received: from mail-vb0-f44.google.com (mail-vb0-f44.google.com
	[209.85.212.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91850E016C8
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 05:45:59 -0700 (PDT)
Received: by mail-vb0-f44.google.com with SMTP id e13so452903vbg.3
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 05:45:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=yeLOpEXWTmMwOLf1YtNiifDtTdMXezsT4mGrbLqKX8E=;
	b=LF5gb7Vykhq+WLDy6KirO2TS6D6hd7PPnK6zMcvcf4MDEqo5Z0BJPEhtfskcUKDBPp
	fGDPNURZI0SA8EYSihrsVVBFkJtVLgIRlq7o8JrFlx1iRJql8knx8Te+BH5M6Fw+hRpE
	sTUrf0x+4up5xgokyMwPxRIRhWfYzCTAnt4pHv34SXYq/oAje7Gyxm5QNL6nGtWx4Bjb
	68U9/C8GO2Two4KtWQqSiiPTntDVm4J9EifZoG08JmFaloRtSgR16L6tqScXFd5O9ySn
	vwFi5EX/QXZwSnFv+usxArn5PoNVw2CfyZfGJPSHsiHw+TcwcZKQSwjeHECLV7TtnO1X
	BkMg==
X-Gm-Message-State: ALoCoQksV+8x8AP4ftd48M3YTS8//1C3+CTxCWPUiWRFD/Cf7uEuYo1cvyzxfrkzptGVvV8GWt0y
MIME-Version: 1.0
X-Received: by 10.52.230.102 with SMTP id sx6mr4605355vdc.15.1381322759204;
	Wed, 09 Oct 2013 05:45:59 -0700 (PDT)
Received: by 10.52.191.33 with HTTP; Wed, 9 Oct 2013 05:45:59 -0700 (PDT)
X-Originating-IP: [122.129.85.50]
In-Reply-To: <CAPhCmJp2-RUzwHHjRhiAt4f+DMcWB+fsA8GhGc+hC_isEaMeWQ@mail.gmail.com>
References: <CAPhCmJrN9fEaainDVW70A1NSZA3c+oTb-fsx4_CkDJQ0qqdS-Q@mail.gmail.com>
	<1801165.6ZCs8TucHi@helios>
	<CAPhCmJpAO1NaDGwc=ao8sWm94_7C_Uw0afit1MRma4A2WOLOFQ@mail.gmail.com>
	<CAPhCmJp2-RUzwHHjRhiAt4f+DMcWB+fsA8GhGc+hC_isEaMeWQ@mail.gmail.com>
Date: Wed, 9 Oct 2013 05:45:59 -0700
Message-ID: <CAPhCmJr1J2Vp22efOfbNVmqi57LQ6GHa3V=PMadraCBmoCd1XQ@mail.gmail.com>
From: Jawad Hassan <jawad@emblemtechnologies.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org,
	Muhammad Uzair Arshad <uzair@emblemtechnologies.com>
Subject: Re: TtyUsb Yocto Issue
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
X-List-Received-Date: Wed, 09 Oct 2013 12:46:00 -0000
Content-Type: multipart/alternative; boundary=089e0111ae3462071f04e84e44a3

--089e0111ae3462071f04e84e44a3
Content-Type: text/plain; charset=ISO-8859-1

Correction device_table


On Wed, Oct 9, 2013 at 5:44 AM, Jawad Hassan
<jawad@emblemtechnologies.com>wrote:

> PS. /etc/device_list does show a ttyUSB entry
>
>
> On Wed, Oct 9, 2013 at 5:36 AM, Jawad Hassan <jawad@emblemtechnologies.com
> > wrote:
>
>> Hi Paul,
>>
>> Thanks for your reply, but we're not seeing any ttyUSB* entries in the
>> /dev folder, the board is this one here:
>> http://boundarydevices.com/products/nitrogen6_lite/
>>
>> Which should have at least one port available for connection.
>>
>> But unfortunately we aren't seeing this device node. What should be our
>> way forward with this?
>>
>> Thanks in advance!
>>
>>
>> On Tue, Oct 8, 2013 at 9:04 AM, Paul Eggleton <
>> paul.eggleton@linux.intel.com> wrote:
>>
>>> Hi Jawad,
>>>
>>> On Tuesday 08 October 2013 06:43:18 Jawad Hassan wrote:
>>> > We're trying to access the USB serial port using rxtx on a java
>>> application
>>> > on Yocto. The problem is that we're unable to list out any ports on the
>>> > Nitrogen Lite board, we think this could be a permissions issue, if
>>> anyone
>>> > has been able to do this or any resources that can help us in getting
>>> this
>>> > done.
>>>
>>> It's hard to say for sure without further details, but assuming the
>>> device
>>> nodes actually exist in /dev and it's a typical device permissions issue
>>> there
>>> are two options:
>>>
>>> 1) Look at the /dev/ttyUSB* device nodes that exist and see if there is
>>> already a group assigned with write access; if so you just need to
>>> ensure the
>>> user you are running as is a member of that group.
>>>
>>> 2) Create a udev rule to set the device permissions correctly. This
>>> would be a
>>> matter of creating a recipe to install an extra file to
>>> /etc/udev/rules.d that
>>> assigned the desired permissions. There are lots of HOWTOs out there on
>>> the
>>> web for this, e.g.:
>>>
>>>
>>> http://sourceforge.net/apps/mediawiki/gizmod/index.php?title=HOWTO_-_Setting_Input_Device_Permissions_-_Creating_a_udev_Rule
>>>
>>> Cheers,
>>> Paul
>>>
>>> --
>>>
>>> Paul Eggleton
>>> Intel Open Source Technology Centre
>>>
>>
>>
>>
>> --
>> *Jawad Hassan*
>> Software Engineer
>> *Emblem Technologies (Pvt) Ltd*
>> *Uzair Pte Ltd, Singapore*
>> Skype: jawad@emblemtechnologies.com
>>
>> LinkedIn <http://www.linkedin.com/company/897097?trk=tyah> | Twitter<https://twitter.com/emblemtech>
>>  | Facebook <https://www.facebook.com/emblem.technologies>
>>
>> *This message contains confidential information and is intended only for
>> the individual named. If you are not the named addressee, you should not
>> disseminate, distribute or copy this email. Please notify the sender
>> immediately by email if you have received this email by mistake and delete
>> this email from your system. Email transmission cannot be guaranteed to be
>> secure or error-free, as information could be intercepted, corrupted, lost,
>> destroyed, arrive late, incomplete, or contain viruses. The sender,
>> therefore, does not accept liability for any errors or omissions in the
>> contents of this message which may arise as a result of email transmission.
>> If verification is required, please request a hard-copy version.*
>>
>
>
>
> --
> *Jawad Hassan*
> Software Engineer
> *Emblem Technologies (Pvt) Ltd*
> *Uzair Pte Ltd, Singapore*
> Skype: jawad@emblemtechnologies.com
>
> LinkedIn <http://www.linkedin.com/company/897097?trk=tyah> | Twitter<https://twitter.com/emblemtech>
>  | Facebook <https://www.facebook.com/emblem.technologies>
>
> *This message contains confidential information and is intended only for
> the individual named. If you are not the named addressee, you should not
> disseminate, distribute or copy this email. Please notify the sender
> immediately by email if you have received this email by mistake and delete
> this email from your system. Email transmission cannot be guaranteed to be
> secure or error-free, as information could be intercepted, corrupted, lost,
> destroyed, arrive late, incomplete, or contain viruses. The sender,
> therefore, does not accept liability for any errors or omissions in the
> contents of this message which may arise as a result of email transmission.
> If verification is required, please request a hard-copy version.*
>



-- 
*Jawad Hassan*
Software Engineer
*Emblem Technologies (Pvt) Ltd*
*Uzair Pte Ltd, Singapore*
Skype: jawad@emblemtechnologies.com

LinkedIn <http://www.linkedin.com/company/897097?trk=tyah> |
Twitter<https://twitter.com/emblemtech>
 | Facebook <https://www.facebook.com/emblem.technologies>

*This message contains confidential information and is intended only for
the individual named. If you are not the named addressee, you should not
disseminate, distribute or copy this email. Please notify the sender
immediately by email if you have received this email by mistake and delete
this email from your system. Email transmission cannot be guaranteed to be
secure or error-free, as information could be intercepted, corrupted, lost,
destroyed, arrive late, incomplete, or contain viruses. The sender,
therefore, does not accept liability for any errors or omissions in the
contents of this message which may arise as a result of email transmission.
If verification is required, please request a hard-copy version.*

--089e0111ae3462071f04e84e44a3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Correction device_table</div><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote">On Wed, Oct 9, 2013 at 5:44 AM, Jawad Hass=
an <span dir=3D"ltr">&lt;<a href=3D"mailto:jawad@emblemtechnologies.com" ta=
rget=3D"_blank">jawad@emblemtechnologies.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">PS. /etc/device_list does s=
how a ttyUSB entry</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=
=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Wed, Oct 9, 2013 at 5:36 AM, Jawad Ha=
ssan <span dir=3D"ltr">&lt;<a href=3D"mailto:jawad@emblemtechnologies.com" =
target=3D"_blank">jawad@emblemtechnologies.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Paul,<div><br></div><div=
>Thanks for your reply, but we&#39;re not seeing any ttyUSB* entries in the=
 /dev folder, the board is this one here: =A0<a href=3D"http://boundarydevi=
ces.com/products/nitrogen6_lite/" target=3D"_blank">http://boundarydevices.=
com/products/nitrogen6_lite/</a></div>


<div><br></div><div>Which should have at least one port available for conne=
ction.</div><div><br></div><div>But unfortunately we aren&#39;t seeing this=
 device node. What should be our way forward with this?</div>
<div><br></div><div>Thanks in advance!</div></div><div class=3D"gmail_extra=
"><div><div><br><br><div class=3D"gmail_quote">On Tue, Oct 8, 2013 at 9:04 =
AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@lin=
ux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span=
> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Jawad,<br>
<div><br>
On Tuesday 08 October 2013 06:43:18 Jawad Hassan wrote:<br>
&gt; We&#39;re trying to access the USB serial port using rxtx on a java ap=
plication<br>
&gt; on Yocto. The problem is that we&#39;re unable to list out any ports o=
n the<br>
&gt; Nitrogen Lite board, we think this could be a permissions issue, if an=
yone<br>
&gt; has been able to do this or any resources that can help us in getting =
this<br>
&gt; done.<br>
<br>
</div>It&#39;s hard to say for sure without further details, but assuming t=
he device<br>
nodes actually exist in /dev and it&#39;s a typical device permissions issu=
e there<br>
are two options:<br>
<br>
1) Look at the /dev/ttyUSB* device nodes that exist and see if there is<br>
already a group assigned with write access; if so you just need to ensure t=
he<br>
user you are running as is a member of that group.<br>
<br>
2) Create a udev rule to set the device permissions correctly. This would b=
e a<br>
matter of creating a recipe to install an extra file to /etc/udev/rules.d t=
hat<br>
assigned the desired permissions. There are lots of HOWTOs out there on the=
<br>
web for this, e.g.:<br>
<br>
<a href=3D"http://sourceforge.net/apps/mediawiki/gizmod/index.php?title=3DH=
OWTO_-_Setting_Input_Device_Permissions_-_Creating_a_udev_Rule" target=3D"_=
blank">http://sourceforge.net/apps/mediawiki/gizmod/index.php?title=3DHOWTO=
_-_Setting_Input_Device_Permissions_-_Creating_a_udev_Rule</a><br>



<br>
Cheers,<br>
Paul<br>
<span><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div></div=
></div><div>-- <br><div dir=3D"ltr"><div><div style=3D"font-size:small"><b =
style=3D"font-size:13px">Jawad Hassan</b><br></div></div>Software Engineer<=
br>

<b>Emblem Technologies (Pvt) Ltd</b><div>
<b>Uzair Pte Ltd, Singapore</b></div><div>Skype: <a href=3D"mailto:jawad@em=
blemtechnologies.com" target=3D"_blank">jawad@emblemtechnologies.com</a></d=
iv><div><br></div><div><a href=3D"http://www.linkedin.com/company/897097?tr=
k=3Dtyah" style=3D"color:rgb(17,85,204);font-size:small" target=3D"_blank">=
LinkedIn</a><span style=3D"font-size:small">=A0|=A0</span><a href=3D"https:=
//twitter.com/emblemtech" style=3D"color:rgb(17,85,204);font-size:small" ta=
rget=3D"_blank">Twitter</a><span style=3D"font-size:small">=A0|=A0</span><a=
 href=3D"https://www.facebook.com/emblem.technologies" style=3D"color:rgb(1=
7,85,204);font-size:small" target=3D"_blank">Facebook</a><br>


=A0<br><span style=3D"text-indent:0px;letter-spacing:normal;font-variant:no=
rmal;text-align:-webkit-auto;font-style:normal;font-weight:normal;line-heig=
ht:normal;border-collapse:separate;text-transform:none;font-size:medium;whi=
te-space:normal;font-family:Helvetica;word-spacing:0px"><span style=3D"text=
-indent:0px;letter-spacing:normal;font-variant:normal;text-align:-webkit-au=
to;font-style:normal;line-height:normal;border-collapse:separate;text-trans=
form:none;font-size:medium;white-space:normal;font-family:Helvetica;word-sp=
acing:0px"><span style=3D"border-collapse:collapse;color:rgb(95,95,95);font=
-family:arial,sans-serif;font-size:11px"><b><span style=3D"color:rgb(64,64,=
64)"><font face=3D"Arial"><span style=3D"font-weight:normal"><i>This
 message contains confidential information and is intended only for the=20
individual named. If you are not the named addressee, you should not=20
disseminate, distribute or copy this email. Please notify the sender=20
immediately by email if you have received this email by mistake and=20
delete this email from your system. Email transmission cannot be=20
guaranteed to be secure or error-free, as information could be=20
intercepted, corrupted, lost, destroyed, arrive late, incomplete, or=20
contain viruses. The sender, therefore, does not accept liability for=20
any errors or omissions in the contents of this message which may arise=20
as a result of email transmission. If verification is required, please=20
request a hard-copy version.</i></span></font></span></b></span></span></sp=
an><br></div></div>
</div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr"><div><div style=3D"font-size:small"><b style=3D"font-size:13px">Jawad =
Hassan</b><br></div></div>Software Engineer<br><b>Emblem Technologies (Pvt)=
 Ltd</b><div>

<b>Uzair Pte Ltd, Singapore</b></div><div>Skype: <a href=3D"mailto:jawad@em=
blemtechnologies.com" target=3D"_blank">jawad@emblemtechnologies.com</a></d=
iv><div><br></div><div><a href=3D"http://www.linkedin.com/company/897097?tr=
k=3Dtyah" style=3D"color:rgb(17,85,204);font-size:small" target=3D"_blank">=
LinkedIn</a><span style=3D"font-size:small">=A0|=A0</span><a href=3D"https:=
//twitter.com/emblemtech" style=3D"color:rgb(17,85,204);font-size:small" ta=
rget=3D"_blank">Twitter</a><span style=3D"font-size:small">=A0|=A0</span><a=
 href=3D"https://www.facebook.com/emblem.technologies" style=3D"color:rgb(1=
7,85,204);font-size:small" target=3D"_blank">Facebook</a><br>

=A0<br><span style=3D"text-indent:0px;letter-spacing:normal;font-variant:no=
rmal;text-align:-webkit-auto;font-style:normal;font-weight:normal;line-heig=
ht:normal;border-collapse:separate;text-transform:none;font-size:medium;whi=
te-space:normal;font-family:Helvetica;word-spacing:0px"><span style=3D"text=
-indent:0px;letter-spacing:normal;font-variant:normal;text-align:-webkit-au=
to;font-style:normal;line-height:normal;border-collapse:separate;text-trans=
form:none;font-size:medium;white-space:normal;font-family:Helvetica;word-sp=
acing:0px"><span style=3D"border-collapse:collapse;color:rgb(95,95,95);font=
-family:arial,sans-serif;font-size:11px"><b><span style=3D"color:rgb(64,64,=
64)"><font face=3D"Arial"><span style=3D"font-weight:normal"><i>This
 message contains confidential information and is intended only for the=20
individual named. If you are not the named addressee, you should not=20
disseminate, distribute or copy this email. Please notify the sender=20
immediately by email if you have received this email by mistake and=20
delete this email from your system. Email transmission cannot be=20
guaranteed to be secure or error-free, as information could be=20
intercepted, corrupted, lost, destroyed, arrive late, incomplete, or=20
contain viruses. The sender, therefore, does not accept liability for=20
any errors or omissions in the contents of this message which may arise=20
as a result of email transmission. If verification is required, please=20
request a hard-copy version.</i></span></font></span></b></span></span></sp=
an><br></div></div>
</div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr"><div><div style=3D"font-size:small"><b style=3D"font-size:=
13px">Jawad Hassan</b><br></div></div>Software Engineer<br><b>Emblem Techno=
logies (Pvt) Ltd</b><div>
<b>Uzair Pte Ltd, Singapore</b></div><div>Skype: <a href=3D"mailto:jawad@em=
blemtechnologies.com" target=3D"_blank">jawad@emblemtechnologies.com</a></d=
iv><div><br></div><div><a href=3D"http://www.linkedin.com/company/897097?tr=
k=3Dtyah" style=3D"color:rgb(17,85,204);font-size:small" target=3D"_blank">=
LinkedIn</a><span style=3D"font-size:small">=A0|=A0</span><a href=3D"https:=
//twitter.com/emblemtech" style=3D"color:rgb(17,85,204);font-size:small" ta=
rget=3D"_blank">Twitter</a><span style=3D"font-size:small">=A0|=A0</span><a=
 href=3D"https://www.facebook.com/emblem.technologies" style=3D"color:rgb(1=
7,85,204);font-size:small" target=3D"_blank">Facebook</a><br>
=A0<br><span style=3D"text-indent:0px;letter-spacing:normal;font-variant:no=
rmal;text-align:-webkit-auto;font-style:normal;font-weight:normal;line-heig=
ht:normal;border-collapse:separate;text-transform:none;font-size:medium;whi=
te-space:normal;font-family:Helvetica;word-spacing:0px"><span style=3D"text=
-indent:0px;letter-spacing:normal;font-variant:normal;text-align:-webkit-au=
to;font-style:normal;line-height:normal;border-collapse:separate;text-trans=
form:none;font-size:medium;white-space:normal;font-family:Helvetica;word-sp=
acing:0px"><span style=3D"border-collapse:collapse;color:rgb(95,95,95);font=
-family:arial,sans-serif;font-size:11px"><b><span style=3D"color:rgb(64,64,=
64)"><font face=3D"Arial"><span style=3D"font-weight:normal"><i>This
 message contains confidential information and is intended only for the=20
individual named. If you are not the named addressee, you should not=20
disseminate, distribute or copy this email. Please notify the sender=20
immediately by email if you have received this email by mistake and=20
delete this email from your system. Email transmission cannot be=20
guaranteed to be secure or error-free, as information could be=20
intercepted, corrupted, lost, destroyed, arrive late, incomplete, or=20
contain viruses. The sender, therefore, does not accept liability for=20
any errors or omissions in the contents of this message which may arise=20
as a result of email transmission. If verification is required, please=20
request a hard-copy version.</i></span></font></span></b></span></span></sp=
an><br></div></div>
</div>

--089e0111ae3462071f04e84e44a3--
