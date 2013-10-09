Return-Path: <jawad@emblemtechnologies.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 045BCE016CA
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 05:36:38 -0700 (PDT)
Received: by mail-vb0-f47.google.com with SMTP id h10so424439vbh.20
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 05:36:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Bz2fIPISnCoGxNYFIwzt/C/Dy0vc4YK0QnH28mm9f4k=;
	b=JGnY+JEnI2k1Fitwq+KcMBf6uuzXBDmFMYwTemV3kEXqg55CE/otGE15EUQfTN3Nqk
	Auf9n0vbK1QPJphYhMh/pzZR+QfACWQZ2lLup10lDTyQPDewy1WeQ9ZdB5Zp4wRdEAZX
	Q87EfKavjChCcvxVGKC5YVU6xgVV4yR7dXOyPWjACkKNb2xNctcLIHGURJ7LuoDSJuOP
	mhriGZ8Y5nVCK4fNKcZ4lykGviFQzOsaOqdLkSYz/GAYAQvwed8Vnm6S+K0WYyJ3nWw+
	NK+UTll5OMb7ER7fPXHxNTlFqHBcdQ+YaZAPJD22NU/dHB5jzQbEZkHROG0WXtMK/s91
	8phw==
X-Gm-Message-State: ALoCoQn+EBkohunLhBePhloMIiOhYGa/MoHWo++jlnaC6pa/29UKBOmIegBPu1bewZsxGv28g9YE
MIME-Version: 1.0
X-Received: by 10.52.230.202 with SMTP id ta10mr246078vdc.41.1381322197685;
	Wed, 09 Oct 2013 05:36:37 -0700 (PDT)
Received: by 10.52.191.33 with HTTP; Wed, 9 Oct 2013 05:36:37 -0700 (PDT)
X-Originating-IP: [122.129.85.50]
In-Reply-To: <1801165.6ZCs8TucHi@helios>
References: <CAPhCmJrN9fEaainDVW70A1NSZA3c+oTb-fsx4_CkDJQ0qqdS-Q@mail.gmail.com>
	<1801165.6ZCs8TucHi@helios>
Date: Wed, 9 Oct 2013 05:36:37 -0700
Message-ID: <CAPhCmJpAO1NaDGwc=ao8sWm94_7C_Uw0afit1MRma4A2WOLOFQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 09 Oct 2013 12:36:39 -0000
Content-Type: multipart/alternative; boundary=089e0111d926e9ec8b04e84e22b3

--089e0111d926e9ec8b04e84e22b3
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

Thanks for your reply, but we're not seeing any ttyUSB* entries in the /dev
folder, the board is this one here:
http://boundarydevices.com/products/nitrogen6_lite/

Which should have at least one port available for connection.

But unfortunately we aren't seeing this device node. What should be our way
forward with this?

Thanks in advance!


On Tue, Oct 8, 2013 at 9:04 AM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> Hi Jawad,
>
> On Tuesday 08 October 2013 06:43:18 Jawad Hassan wrote:
> > We're trying to access the USB serial port using rxtx on a java
> application
> > on Yocto. The problem is that we're unable to list out any ports on the
> > Nitrogen Lite board, we think this could be a permissions issue, if
> anyone
> > has been able to do this or any resources that can help us in getting
> this
> > done.
>
> It's hard to say for sure without further details, but assuming the device
> nodes actually exist in /dev and it's a typical device permissions issue
> there
> are two options:
>
> 1) Look at the /dev/ttyUSB* device nodes that exist and see if there is
> already a group assigned with write access; if so you just need to ensure
> the
> user you are running as is a member of that group.
>
> 2) Create a udev rule to set the device permissions correctly. This would
> be a
> matter of creating a recipe to install an extra file to /etc/udev/rules.d
> that
> assigned the desired permissions. There are lots of HOWTOs out there on the
> web for this, e.g.:
>
>
> http://sourceforge.net/apps/mediawiki/gizmod/index.php?title=HOWTO_-_Setting_Input_Device_Permissions_-_Creating_a_udev_Rule
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
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

--089e0111d926e9ec8b04e84e22b3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div style>Thanks for your reply, b=
ut we&#39;re not seeing any ttyUSB* entries in the /dev folder, the board i=
s this one here: =A0<a href=3D"http://boundarydevices.com/products/nitrogen=
6_lite/">http://boundarydevices.com/products/nitrogen6_lite/</a></div>
<div style><br></div><div style>Which should have at least one port availab=
le for connection.</div><div style><br></div><div style>But unfortunately w=
e aren&#39;t seeing this device node. What should be our way forward with t=
his?</div>
<div style><br></div><div style>Thanks in advance!</div></div><div class=3D=
"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Oct 8, 2013 at 9:0=
4 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@l=
inux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</sp=
an> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Jawad,<br>
<div class=3D"im"><br>
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
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div><div style=3D"font-size:small"><b style=3D"font-siz=
e:13px">Jawad Hassan</b><br></div></div>Software Engineer<br><b>Emblem Tech=
nologies (Pvt) Ltd</b><div>
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

--089e0111d926e9ec8b04e84e22b3--
