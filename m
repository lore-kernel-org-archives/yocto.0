Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04DC7E00747
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 06:41:18 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id l12so686463wiv.3
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 06:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=07SuW0fYOoD59v2oOE+plXaMTUIU2iMhh+tHg5SHYQo=;
	b=kxCAm53FUHN4V8HxWbzLTfDH1USAJ145xwjA8GOowy/71C+/yvckUy8HBxZSP2m2BQ
	jecySSSCN3XD+bvO0ywjLy5Ud5AMd+VvdhaPVvvFWIM02rcD16eEkzlXppZJj4KICJtO
	A1m0cRcZr7IxCSZXe6ICDJDzUfG+u3Q27+kqHGUyCTr3Usix8PPHxjL76GrL4xBw+mtA
	45PgUW4PI4ikc36vDDZJtUXU0f7NxiupgwoS3krNqWNCimiZzzsCr8CAhIRXTKZt6UHI
	jpG4wpqpvorFLFtlr1SfpF7g5puCGrhgpO1GLANm7caT26qPItdZtbrc5QCo48UegcAj
	XAYg==
X-Received: by 10.180.198.44 with SMTP id iz12mr9928685wic.32.1377178876962;
	Thu, 22 Aug 2013 06:41:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Thu, 22 Aug 2013 06:40:56 -0700 (PDT)
In-Reply-To: <CAAGt+t2gxfmg8cJ+izKmejXcywknPpOvYMrRPUgKN5fHHa-gmw@mail.gmail.com>
References: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
	<CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>
	<CAAGt+t2gxfmg8cJ+izKmejXcywknPpOvYMrRPUgKN5fHHa-gmw@mail.gmail.com>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Thu, 22 Aug 2013 15:40:56 +0200
Message-ID: <CAAGt+t13OZ88fi_9foDDp+FeD9VOkBDip1RVQYxWkNejmvifeg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake with cmake recipe
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
X-List-Received-Date: Thu, 22 Aug 2013 13:41:19 -0000
Content-Type: multipart/alternative; boundary=047d7b624dfec0ecd804e4897159

--047d7b624dfec0ecd804e4897159
Content-Type: text/plain; charset=ISO-8859-1

Hi Ross,

Is this the correct way to write my recipe with cmake?

DESCRIPTION = "cameracapture application"
SECTION = "examples"
LICENSE = "CLOSED"
PR = "r0"

DEPENDS += "opencv"

SRC_URI = "git://
https://github.com/zafrullahsyed/cameracapture.git;protocol=https;tag=v0.1"

EXTRA_OECMAKE=""

do_configure() {
 cmake ../
}

inherit pkgconfig cmake

Thanks & Regards,
Zafrullah.


On Thu, Aug 22, 2013 at 12:35 PM, Zafrullah Syed
<zafrullahmehdi@gmail.com>wrote:

> Hi,
>
> My recipe is: http://pastebin.com/xiFdYHNr
>
> Is the cmake recipe will be in this
> location? /home/siguser/yocto/poky/meta-openembedded/meta-oe/recipes-support/opencv
>
>
> On Thu, Aug 22, 2013 at 12:31 PM, Burton, Ross <ross.burton@intel.com>wrote:
>
>> On 22 August 2013 11:30, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
>> > I am trying to integrate my own package which should use cmake.
>> > I regularly use do_compile() and do_install().
>>
>> Pasting your recipe would be useful, but there's a cmake class you can
>> simply inherit that should just work.
>>
>> Ross
>>
>
>
>
> --
> Regards,
> Zafrullah Syed
>
>


-- 
Regards,
Zafrullah Syed

--047d7b624dfec0ecd804e4897159
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,<div><br></div><div>Is this the correct way to wri=
te my recipe with cmake?</div><div><br></div><div>DESCRIPTION =3D &quot;cam=
eracapture application&quot;=A0</div><div>SECTION =3D &quot;examples&quot;=
=A0</div>

<div>LICENSE =3D &quot;CLOSED&quot;=A0</div><div>PR =3D &quot;r0&quot;=A0</=
div><div><br></div><div>DEPENDS +=3D &quot;opencv&quot;</div><div><br></div=
><div>SRC_URI =3D &quot;git://<a href=3D"https://github.com/zafrullahsyed/c=
ameracapture.git;protocol=3Dhttps;tag=3Dv0.1">https://github.com/zafrullahs=
yed/cameracapture.git;protocol=3Dhttps;tag=3Dv0.1</a>&quot;</div>

<div><br></div><div>EXTRA_OECMAKE=3D&quot;&quot;<br></div><div><br></div><d=
iv>do_configure() {=A0</div><div>=A0cmake ../=A0</div><div>}=A0</div><div><=
br></div><div>inherit pkgconfig cmake</div><div>=A0</div><div>Thanks &amp; =
Regards,</div>

<div>Zafrullah.</div></div><div class=3D"gmail_extra"><br><br><div class=3D=
"gmail_quote">On Thu, Aug 22, 2013 at 12:35 PM, Zafrullah Syed <span dir=3D=
"ltr">&lt;<a href=3D"mailto:zafrullahmehdi@gmail.com" target=3D"_blank">zaf=
rullahmehdi@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>My r=
ecipe is:=A0<a href=3D"http://pastebin.com/xiFdYHNr" target=3D"_blank">http=
://pastebin.com/xiFdYHNr</a></div>

<div><br></div><div>Is the cmake recipe will be in this location?=A0/home/s=
iguser/yocto/poky/meta-openembedded/meta-oe/recipes-support/opencv</div>
</div><div class=3D"gmail_extra"><div><div class=3D"h5"><br><br><div class=
=3D"gmail_quote">On Thu, Aug 22, 2013 at 12:31 PM, Burton, Ross <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On 22 August 2013 11:30, Zafrullah Syed=
 &lt;<a href=3D"mailto:zafrullahmehdi@gmail.com" target=3D"_blank">zafrulla=
hmehdi@gmail.com</a>&gt; wrote:<br>



&gt; I am trying to integrate my own package which should use cmake.<br>
&gt; I regularly use do_compile() and do_install().<br>
<br>
</div>Pasting your recipe would be useful, but there&#39;s a cmake class yo=
u can<br>
simply inherit that should just work.<br>
<span><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div></div=
></div><span class=3D"HOEnZb"><font color=3D"#888888">-- <br><span style=3D=
"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;color=
:rgb(136,136,136)">Regards,<br>

Zafrullah Syed</span><div><font color=3D"#888888" face=3D"arial, sans-serif=
"><span style=3D"border-collapse:collapse"><br>
</span></font></div>
</font></span></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><span style=
=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;co=
lor:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><font color=3D"=
#888888" face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse=
"><br>

</span></font></div>
</div>

--047d7b624dfec0ecd804e4897159--
