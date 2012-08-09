Return-Path: <fnognn@unife.it>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DA2FE0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 00:31:31 -0700 (PDT)
Received: by lagr15 with SMTP id r15so80251lag.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 00:31:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=N2Vp7HyZYGmmoSVQ3hI6xPNv4LwWB3CLFZT2xFTcYSk=;
	b=kCY6CVu48h7BT/dJZueoaOV/GdpMSZE76M4Gnrq3lINW736POMSLsWYhclak/QKJpE
	PdX+amFj7OVu7yB26jvrxJZ/vKVMmGPtkPTyEhHn/7KBgwJAXmB8POQ1I5v55JpxgVLo
	85E9+Ec45J/YQ+a7hbdJsp6YGlAgnVkQVQsldb+Rj5dWPdyLXdhyIYM7tBB4RN3kum5X
	13dMHAbpPVqIDdegMrUC2q2UQecjrfmvaueo+sNkWW8EGWHyrX2f6Y+AuLPhmdY4C8Cw
	gG74CY6+H4WTQL9ZuJ+C4e+2dJJWYey3Xk1iSoll78aeigzlyzpRUx6D1gDXdB2U09F9
	z1ww==
Received: by 10.112.51.174 with SMTP id l14mr364405lbo.24.1344497490298; Thu,
	09 Aug 2012 00:31:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.46.42 with HTTP; Thu, 9 Aug 2012 00:31:10 -0700 (PDT)
In-Reply-To: <50229DAA.3000307@intel.com>
References: <CANsUPaNSFsapsHbjxcBvjDi4Yo-8eJ1trLDvycKLBX9m4RDNSg@mail.gmail.com>
	<50229D6F.8010801@intel.com> <50229DAA.3000307@intel.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Thu, 9 Aug 2012 09:31:10 +0200
Message-ID: <CANsUPaOm-=mczLeKX3NsYhNiuEEKQ--fb=0REuvy3c86bH6+Tw@mail.gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
X-Gm-Message-State: ALoCoQlgvIViM4HbwBXfbAJ4YA8dYXZo/mGw/UlgNFumX7tC39F9ti+ywlYfa0bf2s6ysbIX4BsQ
Cc: yocto@yoctoproject.org
Subject: Re: Custom splash screen using psplash
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
X-List-Received-Date: Thu, 09 Aug 2012 07:31:32 -0000
Content-Type: multipart/alternative; boundary=f46d0401fb694f890f04c6d03725

--f46d0401fb694f890f04c6d03725
Content-Type: text/plain; charset=ISO-8859-1

Hi Scott,

I copied the psplash directory (and replaced the logo with mine) into my
own layer but when I run:

   - bitbake psplash -c cleansstate
   - bitbake psplash

it still builds the sources located into meta-yocto directory and not
sources that are into my own layer directory.
How can I build a package pointing to a specific folder path ?

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Wed, Aug 8, 2012 at 7:11 PM, Scott Garman <scott.a.garman@intel.com>wrote:

> On 08/08/2012 10:10 AM, Scott Garman wrote:
>
>> On 08/08/2012 08:13 AM, Giovanni Foiani wrote:
>>
>>> Hi,
>>>
>>> I need to setup a custom splash screen replacing the Yocto logo with a
>>> custom image.
>>> I generated my logo using make-image script into psplash screen and
>>> replaced the previous one in meta/recipes-core/psplash/**files folder.
>>> Then I run
>>>
>>>   * bitbake psplash -c cleansstate
>>>   * bitbake psplash
>>>
>>> and then generate a new image, but during boot I still see the Yocto
>>> logo.
>>> Which is the right procedure?
>>> Does the my custom logo (a png image) have some requirements (i.e. size,
>>> colors, etc..)?
>>>
>>
>> Did you re-generate the image too?
>>
>
> Sorry, apparently I can't read this morning.
>
>
> Scott
>
> --
> Scott Garman
> Embedded Linux Engineer - Yocto Project
> Intel Open Source Technology Center
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--f46d0401fb694f890f04c6d03725
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Scott,<div><br></div><div>I copied the psplash directory (and replaced t=
he logo with mine) into my own layer but when I run:</div><div><ul><li><spa=
n style=3D"font-family:arial,sans-serif;font-size:13px;background-color:rgb=
(255,255,255)">bitbake psplash -c cleansstate</span></li>

<li>bitbake psplash</li></ul><div>it still builds the=A0sources located int=
o meta-yocto directory and not sources that are into my own layer directory=
.</div><div>How can I build a package pointing to a specific folder path ?<=
/div>

<div><br></div><div>Thanks</div><div><br></div><div>Giovanni</div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Wed, Aug 8, 2012 at 7:11 PM, Scott Ga=
rman <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.a.garman@intel.com" targ=
et=3D"_blank">scott.a.garman@intel.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">

<div class=3D"im">On 08/08/2012 10:10 AM, Scott Garman wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 08/08/2012 08:13 AM, Giovanni Foiani wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
I need to setup a custom splash screen replacing the Yocto logo with a<br>
custom image.<br>
I generated my logo using make-image script into psplash screen and<br>
replaced the previous one in meta/recipes-core/psplash/<u></u>files folder.=
<br>
Then I run<br>
<br>
=A0 * bitbake psplash -c cleansstate<br>
=A0 * bitbake psplash<br>
<br>
and then generate a new image, but during boot I still see the Yocto<br>
logo.<br>
Which is the right procedure?<br>
Does the my custom logo (a png image) have some requirements (i.e. size,<br=
>
colors, etc..)?<br>
</blockquote>
<br>
Did you re-generate the image too?<br>
</blockquote>
<br></div>
Sorry, apparently I can&#39;t read this morning.<div class=3D"HOEnZb"><div =
class=3D"h5"><br>
<br>
Scott<br>
<br>
-- <br>
Scott Garman<br>
Embedded Linux Engineer - Yocto Project<br>
Intel Open Source Technology Center<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--f46d0401fb694f890f04c6d03725--
