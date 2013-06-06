Return-Path: <gmshastri@gmail.com>
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82CF9E0155A
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 21:41:26 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id v10so2665135lbd.34
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2013 21:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GNiW7qIk0t0C0wCuHB1bjofWAoLjeDa5XaPj2TYCan0=;
	b=GZE4R6nCoAlNkaTBIrbVlbq9O3Tq1tNT370cB3r+6LAfRr8w+iMg3TFWpsuHN87Edg
	nmL1yzYqe7TnvALUGnZ6jWZCLGqOdHoVqYq7iKge0uoGDcK9qc4T8cgbCnq6Agvu4vvd
	B7pWRjnmTR2BBbx/alKWsArt/reaswhR7YPiMqzhJvq8w54xtBoVu5O026JGe+D+DXo1
	P7ihCgCkx4yDAtZG7DcD6bz81HW5Yo65xHY6RkVZ2xXoxyhjPPvXh4WsK7iCDfXMxwgp
	3lUrKwMe9eLcojz6hq8mYADor71/Q4tLuLa8Z6Iu4UtAOK/G/lFeW9ZBz+8N1bdeBKjc
	d+FA==
MIME-Version: 1.0
X-Received: by 10.112.21.74 with SMTP id t10mr16026835lbe.129.1370493684888;
	Wed, 05 Jun 2013 21:41:24 -0700 (PDT)
Received: by 10.114.58.72 with HTTP; Wed, 5 Jun 2013 21:41:24 -0700 (PDT)
In-Reply-To: <CAAGt+t1EKDfo=_=NK1vJMfYFh=yh=iJy+pf1c++-XKFO91LO_w@mail.gmail.com>
References: <CAAGt+t1EKDfo=_=NK1vJMfYFh=yh=iJy+pf1c++-XKFO91LO_w@mail.gmail.com>
Date: Thu, 6 Jun 2013 10:11:24 +0530
Message-ID: <CAE_REAtAtUBTK6FujVr4q581m7ey4r1iXSxM0BAkhW7zyO8jJQ@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: LIC_FILES_CHKSUM points to an invalid file
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
X-List-Received-Date: Thu, 06 Jun 2013 04:41:27 -0000
Content-Type: multipart/alternative; boundary=14dae94739f3413c1b04de74edab

--14dae94739f3413c1b04de74edab
Content-Type: text/plain; charset=ISO-8859-1

hi,

can you try with "bitbake -c cleanall hello" , change the recipe name from
hello.bb -> hello_2.7.bb and do "bitbake hello"

//Gaurang Shastri


On Thu, Jun 6, 2013 at 12:47 AM, Zafrullah Syed <zafrullahmehdi@gmail.com>wrote:

> I am getting these errors when I try my build. Any Idea?
>
> ERROR: Function failed: hello: LIC_FILES_CHKSUM points to an invalid file:
> /home/siguser/yocto2013-05-08/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/hello-1.0-r0/hello-1.0/COPYING
>
> ERROR: Logfile of failure stored in:
> /home/siguser/yocto2013-05-08/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/hello-1.0-r0/temp/log.do_configure.1985
>
> Screen shot of the above error directory. http://imgur.com/zRLKuYj
>
> hello-1.0 is empty but hello-2.7 has all the files extracted.
>
> Why does hello-1.0 exist when i did not include it in my recipe.
>
> my hello.bb recipe:
>
> DESCRIPTION = "GNU Helloworld application"
> SECTION = "examples"
> LICENSE = "GPLv3+"
> LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
> PR = "r0"
> SRC_URI = "ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz"
> SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
> SRC_URI[sha256sum] =
> "fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"
> inherit autotools gettext
>
> Any ideas about this error?
>
> Thank You,
>
> On Tue, Jun 4, 2013 at 9:45 PM, Zafrullah Syed <zafrullahmehdi@gmail.com>wrote:
>
>> Hi,
>>
>> I followed all the instructions and i started my build again. Build
>> successfully started and struck with Hello md5sum error.
>>
>> ERROR: Fetcher failure for URL: '
>> ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz'. No checksum specified for
>> /home/siguser/yocto2013-05-21/build/downloads/hello-2.7.tar.gz, please add
>> at least one to the recipe:
>> SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
>> SRC_URI[sha256sum] =
>> "fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"
>>
>>
>> I downloaded hello-2.7 from ftp://ftp.gnu.org/gnu/hello/ unzipped and
>> ran md5sum against COPYING file. Each file has different md5sum, which
>> md5sum should I include in my hello.bb file?
>>
>> *My hello.bb file*:
>>
>> DESCRIPTION = "GNU Helloworld application"
>> SECTION = "examples"
>> LICENSE = "GPLv3+"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=fc01b05c7f943d3c42124942a2a9bb3a"
>> PR = "r0"
>> SRC_URI = "ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz"
>> inherit autotools gettext
>>
>> Thank You,
>>
>>
>>
>>
>> On Tue, Jun 4, 2013 at 3:57 PM, Paul Eggleton <
>> paul.eggleton@linux.intel.com> wrote:
>>
>>> On Tuesday 04 June 2013 15:42:06 Zafrullah Syed wrote:
>>> > On Tue, Jun 4, 2013 at 3:26 PM, Paul Eggleton <
>>> paul.eggleton@linux.intel.com
>>> > wrote:
>>> > > Yes, conf/bblayers.conf is supposed to be in the build directory; and
>>> > > whichever build directory you are actually using. The build
>>> directory can
>>> > > be anywhere, but you shouldn't really have two build directories
>>> unless
>>> > > you know what you are doing - did you perhaps run oe-init-build-env
>>> with
>>> > > no arguments in two different places? I suspect this is what has
>>> happened.
>>> >
>>> > I think yes. I usually give just *source oe-init-build-env *command,
>>> this
>>> > is how i used earlier and failed. May be that is the reason it has
>>> created
>>> > another build directory in /poky.
>>> > What should be the command before building? i guess this(
>>> > TEMPLATECONF=meta-gumstix-extras/conf
>>> > source ./poky/oe-init-build-env ). so, every time i just need to give
>>> > TEMPLATECONF  command before building?
>>>
>>> You need to run oe-init-build-env at the start of every session yes, but
>>> you
>>> shouldn't need to specify TEMPLATECONF except when you first create the
>>> build
>>> directory. The important thing is you need to be in the same directory
>>> when
>>> you run oe-init-build-env *or* specify the path to the build directory
>>> as a
>>> parameter.
>>>
>>> > Lastly, my meta-bebot directory should be as following ?
>>> >
>>> > /poky
>>> >   --meta-bebot
>>> >       --conf
>>> >          --layer.conf
>>> >   --recipes-bebot
>>> >     --hello
>>> >       --hello.bb
>>>
>>> If you have recipes-bebot under meta-bebot, yes.
>>>
>>> > and meta-bebot path should be set in bblayers.conf file?
>>>
>>> Yes.
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
>> Regards,
>> Zafrullah Syed
>>
>>
>
>
> --
> Regards,
> Zafrullah Syed
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--14dae94739f3413c1b04de74edab
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>hi,<br><br></div>can you try with &quot;bitbake =
-c cleanall hello&quot; , change the recipe name from <a href=3D"http://hel=
lo.bb">hello.bb</a> -&gt; <a href=3D"http://hello_2.7.bb">hello_2.7.bb</a> =
and do &quot;bitbake hello&quot;<br>
<br></div>//Gaurang Shastri<br></div><div class=3D"gmail_extra"><br><br><di=
v class=3D"gmail_quote">On Thu, Jun 6, 2013 at 12:47 AM, Zafrullah Syed <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:zafrullahmehdi@gmail.com" target=3D"_b=
lank">zafrullahmehdi@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I am getting these errors w=
hen I try my build. Any Idea?=A0<div><br></div><div><div>ERROR: Function fa=
iled: hello: LIC_FILES_CHKSUM points to an invalid file: /home/siguser/yoct=
o2013-05-08/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/hello-1.0-r0/=
hello-1.0/COPYING</div>



<div><br></div><div>ERROR: Logfile of failure stored in: /home/siguser/yoct=
o2013-05-08/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/hello-1.0-r0/=
temp/log.do_configure.1985</div></div><div class=3D"gmail_extra"><br>Screen=
 shot of the above error directory.=A0<a href=3D"http://imgur.com/zRLKuYj" =
target=3D"_blank">http://imgur.com/zRLKuYj</a></div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">hello-1.0 i=
s empty but hello-2.7 has all the files extracted.</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">Why does hello-1.0 exist when =
i did not include it in my recipe.</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">my <a href=
=3D"http://hello.bb" target=3D"_blank">hello.bb</a> recipe:</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><div class=3D"gmail_e=
xtra">

DESCRIPTION =3D &quot;GNU Helloworld application&quot;=A0</div><div class=
=3D"gmail_extra">SECTION =3D &quot;examples&quot;=A0</div><div class=3D"gma=
il_extra">LICENSE =3D &quot;GPLv3+&quot;=A0</div><div class=3D"gmail_extra"=
>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239bcb673463ab874e80d47=
fae504&quot;=A0</div>


<div class=3D"gmail_extra">PR =3D &quot;r0&quot;=A0</div><div class=3D"gmai=
l_extra">SRC_URI =3D &quot;<a href=3D"ftp://ftp.gnu.org/gnu/hello/hello-2.7=
.tar.gz" target=3D"_blank">ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz</a>=
&quot;=A0</div>
<div class=3D"gmail_extra">

SRC_URI[md5sum] =3D &quot;fc01b05c7f943d3c42124942a2a9bb3a&quot;</div><div =
class=3D"gmail_extra">SRC_URI[sha256sum] =3D &quot;fd593b5bcf6d1bb6d7d1bb7e=
efdccdc0010cf2c4985ccb445ef490f768b927c0&quot;</div><div class=3D"gmail_ext=
ra">


inherit autotools gettext=A0</div></div><div class=3D"gmail_extra"><br></di=
v><div class=3D"gmail_extra">Any ideas about this error?</div><div class=3D=
"gmail_extra"><br></div><div class=3D"gmail_extra">Thank You,</div>

<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Jun 4, 20=
13 at 9:45 PM, Zafrullah Syed <span dir=3D"ltr">&lt;<a href=3D"mailto:zafru=
llahmehdi@gmail.com" target=3D"_blank">zafrullahmehdi@gmail.com</a>&gt;</sp=
an> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<div dir=3D"ltr">Hi,<div><br></div><div>I followed all the instructions and=
 i started my build again. Build successfully started and struck with Hello=
 md5sum error.<br></div><div><br></div><div><div>ERROR: Fetcher failure for=
 URL: &#39;<a href=3D"ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz" target=
=3D"_blank">ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz</a>&#39;. No check=
sum specified for /home/siguser/yocto2013-05-21/build/downloads/hello-2.7.t=
ar.gz, please add at least one to the recipe:</div>




<div>SRC_URI[md5sum] =3D &quot;fc01b05c7f943d3c42124942a2a9bb3a&quot;</div>=
<div>SRC_URI[sha256sum] =3D &quot;fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c49=
85ccb445ef490f768b927c0&quot;</div></div><div><br></div><div><br></div><div=
>




I downloaded hello-2.7 from=A0<a href=3D"ftp://ftp.gnu.org/gnu/hello/" targ=
et=3D"_blank">ftp://ftp.gnu.org/gnu/hello/</a>=A0unzipped and ran md5sum ag=
ainst COPYING file. Each file has different md5sum, which md5sum should I i=
nclude in my <a href=3D"http://hello.bb" target=3D"_blank">hello.bb</a> fil=
e?</div>




<div><br></div><div><u>My <a href=3D"http://hello.bb" target=3D"_blank">hel=
lo.bb</a> file</u>:</div><div><br></div><div><div><div>DESCRIPTION =3D &quo=
t;GNU Helloworld application&quot;=A0</div><div>SECTION =3D &quot;examples&=
quot;=A0</div>




<div>LICENSE =3D &quot;GPLv3+&quot;=A0</div></div><div>LIC_FILES_CHKSUM =3D=
 &quot;file://COPYING;md5=3Dfc01b05c7f943d3c42124942a2a9bb3a&quot;=A0</div>=
<div>PR =3D &quot;r0&quot;=A0</div><div>SRC_URI =3D &quot;<a href=3D"ftp://=
ftp.gnu.org/gnu/hello/hello-2.7.tar.gz" target=3D"_blank">ftp://ftp.gnu.org=
/gnu/hello/hello-2.7.tar.gz</a>&quot;=A0</div>




<div>inherit autotools gettext=A0</div><div><br></div><div>Thank You,</div>=
</div><div><br></div><div><br></div></div><div class=3D"gmail_extra"><div><=
div><br><br><div class=3D"gmail_quote">On Tue, Jun 4, 2013 at 3:57 PM, Paul=
 Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel=
.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:=
<br>




<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>On Tuesday 04 June 2013 15:42:06 Zafrullah Syed wrote=
:<br>



&gt; On Tue, Jun 4, 2013 at 3:26 PM, Paul Eggleton &lt;<a href=3D"mailto:pa=
ul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.co=
m</a><br>
&gt; wrote:<br>
</div><div>&gt; &gt; Yes, conf/bblayers.conf is supposed to be in the build=
 directory; and<br>
&gt; &gt; whichever build directory you are actually using. The build direc=
tory can<br>
&gt; &gt; be anywhere, but you shouldn&#39;t really have two build director=
ies unless<br>
&gt; &gt; you know what you are doing - did you perhaps run oe-init-build-e=
nv with<br>
&gt; &gt; no arguments in two different places? I suspect this is what has =
happened.<br>
&gt;<br>
</div>&gt; I think yes. I usually give just *source oe-init-build-env *comm=
and, this<br>
<div>&gt; is how i used earlier and failed. May be that is the reason it ha=
s created<br>
&gt; another build directory in /poky.<br>
&gt; What should be the command before building? i guess this(<br>
&gt; TEMPLATECONF=3Dmeta-gumstix-extras/conf<br>
&gt; source ./poky/oe-init-build-env ). so, every time i just need to give<=
br>
&gt; TEMPLATECONF =A0command before building?<br>
<br>
</div>You need to run oe-init-build-env at the start of every session yes, =
but you<br>
shouldn&#39;t need to specify TEMPLATECONF except when you first create the=
 build<br>
directory. The important thing is you need to be in the same directory when=
<br>
you run oe-init-build-env *or* specify the path to the build directory as a=
<br>
parameter.<br>
<div><br>
&gt; Lastly, my meta-bebot directory should be as following ?<br>
&gt;<br>
&gt; /poky<br>
&gt; =A0 --meta-bebot<br>
&gt; =A0 =A0 =A0 --conf<br>
&gt; =A0 =A0 =A0 =A0 =A0--layer.conf<br>
&gt; =A0 --recipes-bebot<br>
&gt; =A0 =A0 --hello<br>
&gt; =A0 =A0 =A0 --<a href=3D"http://hello.bb" target=3D"_blank">hello.bb</=
a><br>
<br>
</div>If you have recipes-bebot under meta-bebot, yes.<br>
<div><br>
&gt; and meta-bebot path should be set in bblayers.conf file?<br>
<br>
</div>Yes.<br>
<div><div><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br><br clear=3D"all"><span class=3D"HOEnZb"=
><font color=3D"#888888"><div><br></div></font></span></div></div><span cla=
ss=3D"HOEnZb"><font color=3D"#888888"><span><font color=3D"#888888">-- <br>=
<span style=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:=
collapse;color:rgb(136,136,136)">Regards,<br>



Zafrullah Syed</span><div><font color=3D"#888888" face=3D"arial, sans-serif=
"><span style=3D"border-collapse:collapse"><br>
</span></font></div>
</font></span></font></span></div><span class=3D"HOEnZb"><font color=3D"#88=
8888">
</font></span></blockquote></div><span class=3D"HOEnZb"><font color=3D"#888=
888"><br><br clear=3D"all"><div><br></div>-- <br><span style=3D"font-family=
:arial,sans-serif;font-size:13px;border-collapse:collapse;color:rgb(136,136=
,136)">Regards,<br>
Zafrullah Syed</span><div><font color=3D"#888888" face=3D"arial, sans-serif=
"><span style=3D"border-collapse:collapse"><br>


</span></font></div>
</font></span></div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--14dae94739f3413c1b04de74edab--
