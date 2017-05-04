Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DBD2E007BA; Thu,  4 May 2017 05:39:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FEA4E003C1
	for <yocto@yoctoproject.org>; Thu,  4 May 2017 05:39:12 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id p24so21000296ioi.0
	for <yocto@yoctoproject.org>; Thu, 04 May 2017 05:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KnJOQhDIkQb13bt1rkp6ewkr8juT/FANaMfxWHklbvs=;
	b=Le7k9QTi3HOxQVsgZS2fl/VWcMt68g+9RZ0RbepHEBGa9bSvrVF55tfJ5OPwnS0u3j
	jku6pFAha5tISGsao1TyBXVSne3QuUsBXKf4DafNvOjTaBhmjdnG7D+VEBoc9Vs/9z6J
	BOeZ8P29J5Yu/QzPP9X8P/8FCQHkAf7STaMM7nJIXSMfARbpSTcp+v4+E3JELWh0P/oI
	LRSb6Ps1KhaWIEnB3ptHyT/tw0X1ufUTGUoMqMpf/22SeKoGpw/XyXBLor7r/MYfiM35
	s3gUylfZvNYHPAUMRiq1CvARsurE0OKH+jfi4yMo/f3ixYQBe3dgniWL9BeE8eZXUQ0k
	9yFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KnJOQhDIkQb13bt1rkp6ewkr8juT/FANaMfxWHklbvs=;
	b=SZIshF09+hQ6TzC+7Tw8T85QfUsJGWwX0hZpE/nuxnDKsxZ8JRxj4xofjglk0sjD8O
	W597hJozLkS18WxZhWviEFZSaJZxEAjqpHy+Y+Ipwd6SOSUAfxeFBN0wncclSRhGhAB7
	76Ev+LbgdpDJyaOPJiO7mDG28YdtcDZTTAkWHKzkR7m/shmpe/iaWz7EnZqtJpKSik4V
	lmXBZzXkA42ov9d5Dd0WaB7Iyq5eV1hHQabYftJmBhGgSDcXVzVjzwKfUX21Vl4sAD9+
	nu/q0lYXuA1XwNHEUz6uDCnudRmWrfVqOOMkL/33E5jV05E8841eUVxEhonC20ljpnmq
	uuRQ==
X-Gm-Message-State: AN3rC/4Ji1/3HNBZKXeKg189wnA8ANZgCSVKpyeiq9l2JbYwT31pPy9V
	hqLdM7qmrJoHnBtnlON7mbylWsx2NA==
X-Received: by 10.157.7.114 with SMTP id 105mr15846469ote.170.1493901551625;
	Thu, 04 May 2017 05:39:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.24.107 with HTTP; Thu, 4 May 2017 05:39:11 -0700 (PDT)
In-Reply-To: <CAMC=D=sMPe65F2gf2KwJXTaUkwBgtqv94X9H8n9Aj+Bqyx+r8A@mail.gmail.com>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
	<CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
	<CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
	<CAC+thW3zTubp1by4i6it39bzvqkWMw4SExCHjSmc3OhmXrcwxw@mail.gmail.com>
	<CAMC=D=vgejGzJggU_DE13_tspbTZfi=4G9JShhXC8Q1XzWnxhg@mail.gmail.com>
	<CAC+thW0Lcmkn-zL_AyQXztQNywLxPAW0zFUM2YVCDvE8YcTFfw@mail.gmail.com>
	<CAMC=D=ts+93_6zoOgXtv9HkQ4GE897SiwJKHpEJbxt-KeO6J=A@mail.gmail.com>
	<CAMKF1srH1kLEKaG1rd7hQTyPn+6PVYkvddzpg-xj0KKEhVWDFw@mail.gmail.com>
	<CAMC=D=sMPe65F2gf2KwJXTaUkwBgtqv94X9H8n9Aj+Bqyx+r8A@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 4 May 2017 14:39:11 +0200
Message-ID: <CAC+thW1oU-dQr9URHqth_PKP2qo-tFieBF7qEARjhwC8nsbh7g@mail.gmail.com>
To: Luca Carlon <carlon.luca@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Building rpi-test-image for Pi3 64 bit
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
X-List-Received-Date: Thu, 04 May 2017 12:39:16 -0000
Content-Type: multipart/alternative; boundary=001a1136f7a0506d1a054eb20f72

--001a1136f7a0506d1a054eb20f72
Content-Type: text/plain; charset=UTF-8

Il 03 mag 2017 6:19 PM, "Luca Carlon" <carlon.luca@gmail.com> ha scritto:

What I'd like to be able to do is setup is a 64bit system including the
libraries from the userland repo: https://github.com/raspberrypi/userland.
I suspect vc4graphic is something different, isn't it?
But maybe you're right and those libs will never be built, as I see that
according to https://github.com/raspberrypi/userland/pull/347 not
everything builds in userland. In the recipe I however see that the ARM64
macro is defined and so I'm asking myself which libraries are currently
supported and which are not. Anyone who knows?
Thank you!


As far as I know, machine configuration for raspberrypi3-64, at least in
master branch of meta-raspberry does set vc4graphic in MACHINE_FEATURES,
which in turn selects mesa instead of userland exclusively. This is what
the metadata say, and what I recently experimented myself while switching
to 64bit builds. I'm not using graphics, but found convenient to monitor
RPi temperature via vcgencmd tool that comes with userland. Had a recipe of
mine RDEPENDing on userland and found out that this was breaking the 64bit
build. For me it was just a matter of using a different source for
temperature monitoring. In the end, Herve's explanation gives the more
technical background.



Luca

On Wed, May 3, 2017 at 2:35 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Wed, May 3, 2017 at 8:28 AM Luca Carlon <carlon.luca@gmail.com> wrote:
>
>> Hello,
>> thank you for your help. I followed your advice and I'm now able to build
>> rpi-test-image for raspberrypi2 and raspberrypi3. When I try
>> raspberrypi3-64 instead I'm getting a few errors. I fixed one build error,
>> but then I got: https://pastebin.com/pL2mei9s. It seems that those libs
>> were not added to the sysroot for some reason. I think those come from the
>> userspace package probably. As it seems to work for the other machines I'm
>> trying to determine what difference raspberrypi3-64 is introducing but for
>> the moment I'm failing. Any idea what is causing this error? Are you able
>> to build rpi-test-image? rpi-basic-image seems to work but not
>> rpi-test-image, which includes omxplayer and other libs that I need like
>> libEGL, libGLESv2, libopenmax etc...
>>
>> These are my current conf files:
>>
>> https://pastebin.com/LJnRfDUj
>> https://pastebin.com/axt9RLQS
>>
>> Any idea why those libs cannot be found?
>> Thank you!
>> Regards.
>>
>
> I don't know if anyone here has got GUI up with rpi64 using yocto yet
> however you could try to use vc4 graphics drivers by adding "vc4graphic" to
> MACHINE_FEATURES
>
>>
>> Luca
>>
>> On Sat, Apr 29, 2017 at 9:40 AM, Andrea Galbusera <gizero@gmail.com>
>> wrote:
>>
>>> On Sat, Apr 29, 2017 at 2:39 AM, Luca Carlon <carlon.luca@gmail.com>
>>> wrote:
>>>
>>>> Hello,
>>>> thank you very much for your advice. It seems I can build both a
>>>> minimal image and rpi-basic-image. I would like to test to see if the Pi is
>>>> able to boot with these images but it seems that the images directory does
>>>> not contain any sdimg file. By reading https://github.com/agherzan/me
>>>> ta-raspberrypi and https://github.com/Nuand/blade
>>>> RF/wiki/Creating-Linux-based-Embedded-System-Images-with-Yocto it
>>>> seems I should find a sdimg file to flash to the sdcard. I suppose this
>>>> image file contains both the boot and rootfs partitions. But it seems I do
>>>> not see this image at all, this is a list of what I can see in
>>>> tmp/deploy/images/raspberrypi3-64: https://pastebin.com/8XsRHzUY. I
>>>> see the rootfs filesystem that I can extract in a partition, but not the
>>>> boot partition the Pi needs. Maybe I'm missing some line in the conf files?
>>>>
>>>
>>> If you are using the local.conf you previously posted, the line:
>>>
>>> IMAGE_FSTYPES = "tar.xz"
>>>
>>> is overriding default configuration from rpi-base.inc in
>>> meta-raspberrypi which is:
>>>
>>> IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
>>>
>>> You can also consider using wic image format to generate a flashable
>>> image (see Yocto documentation on how to do that).
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--001a1136f7a0506d1a054eb20f72
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto"><div><br><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">Il 03 mag 2017 6:19 PM, &quot;Luca Carlon&quot; =
&lt;<a href=3D"mailto:carlon.luca@gmail.com" target=3D"_blank">carlon.luca@=
gmail.com</a>&gt; ha scritto:<br type=3D"attribution"><blockquote class=3D"=
m_5286700935961435230quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr">What I&#39;d like to be able to d=
o is setup is a 64bit system including the libraries from the userland repo=
: <a href=3D"https://github.com/raspberrypi/userland" target=3D"_blank">htt=
ps://github.com/raspberrypi<wbr>/userland</a>. I suspect vc4graphic is some=
thing different, isn&#39;t it?<br>But maybe you&#39;re right and those libs=
 will never be built, as I see that according to <a href=3D"https://github.=
com/raspberrypi/userland/pull/347" target=3D"_blank">https://github.com/ras=
pberrypi<wbr>/userland/pull/347</a> not everything builds in userland. In t=
he recipe I however see that the ARM64 macro is defined and so I&#39;m aski=
ng myself which libraries are currently supported and which are not. Anyone=
 who knows?<br>Thank you!</div></blockquote></div></div></div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">As far as I know, machine configuration fo=
r raspberrypi3-64, at least in master branch of meta-raspberry does set=C2=
=A0<span style=3D"font-family:sans-serif">vc4graphic in MACHINE_FEATURES, w=
hich in turn selects mesa instead of userland exclusively. This is what the=
 metadata say, and what I recently experimented myself while switching to 6=
4bit builds. I&#39;m not using graphics, but found convenient to monitor RP=
i temperature via vcgencmd tool that comes with userland. Had a recipe of m=
ine RDEPENDing on userland and found out that this was breaking the 64bit b=
uild. For me it was just a matter of using a different source for temperatu=
re monitoring. In the end, Herve&#39;s explanation gives the more technical=
 background. =C2=A0</span></div><div dir=3D"auto"><br></div><div dir=3D"aut=
o"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=
=3D"m_5286700935961435230quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr"><font color=3D"#888888"><br><=
br>Luca<br></font></div><div class=3D"m_5286700935961435230elided-text"><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, May 3, 2017 =
at 2:35 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail=
.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div><br><div class=3D"gmail_quote"><span><div>On W=
ed, May 3, 2017 at 8:28 AM Luca Carlon &lt;<a href=3D"mailto:carlon.luca@gm=
ail.com" target=3D"_blank">carlon.luca@gmail.com</a>&gt; wrote:<br></div></=
span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div>Hello,<span><div>thank you for you=
r help. I followed your advice and I&#39;m now able to build rpi-test-image=
 for raspberrypi2 and raspberrypi3. When I try raspberrypi3-64 instead I&#3=
9;m getting a few errors. I fixed one build error, but then I got:=C2=A0<a =
href=3D"https://pastebin.com/pL2mei9s" target=3D"_blank">https://pastebin.c=
om/pL2m<wbr>ei9s</a>. It seems that those libs were not added to the sysroo=
t for some reason. I think those come from the userspace package probably. =
As it seems to work for the other machines I&#39;m trying to determine what=
 difference raspberrypi3-64 is introducing but for the moment I&#39;m faili=
ng. Any idea what is causing this error? Are you able to build rpi-test-ima=
ge? rpi-basic-image seems to work but not rpi-test-image, which includes om=
xplayer and other libs that I need like libEGL, libGLESv2, libopenmax etc..=
.</div><div><br></div><div>These are my current conf files:</div><div><br><=
/div><div><a href=3D"https://pastebin.com/LJnRfDUj" target=3D"_blank">https=
://pastebin.com/LJnRfDUj</a><br></div><div><a href=3D"https://pastebin.com/=
axt9RLQS" target=3D"_blank">https://pastebin.com/axt9RLQS</a><br></div><div=
><br></div><div>Any idea why those libs cannot be found?</div><div>Thank yo=
u!</div><div>Regards.</div></span></div></blockquote><div><br></div><div>I =
don&#39;t know if anyone here has got GUI up with rpi64 using yocto yet how=
ever you could try to use vc4 graphics drivers by adding &quot;vc4graphic&q=
uot; to MACHINE_FEATURES</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span><div><di=
v></div></div><div><div><br></div><div>Luca</div></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Sat, Apr 29, 2017 at 9:40 AM, Andr=
ea Galbusera <span>&lt;<a href=3D"mailto:gizero@gmail.com" target=3D"_blank=
">gizero@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span>On Sat, Ap=
r 29, 2017 at 2:39 AM, Luca Carlon <span>&lt;<a href=3D"mailto:carlon.luca@=
gmail.com" target=3D"_blank">carlon.luca@gmail.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hello,<br>thank you=
 very much for your advice. It seems I can build both a minimal image and r=
pi-basic-image. I would like to test to see if the Pi is able to boot with =
these images but it seems that the images directory does not contain any sd=
img file. By reading <a href=3D"https://github.com/agherzan/meta-raspberryp=
i" target=3D"_blank">https://github.com/agherzan/me<wbr>ta-raspberrypi</a> =
and <a href=3D"https://github.com/Nuand/bladeRF/wiki/Creating-Linux-based-E=
mbedded-System-Images-with-Yocto" target=3D"_blank">https://github.com/Nuan=
d/blade<wbr>RF/wiki/Creating-Linux-based-E<wbr>mbedded-System-Images-with-Y=
oc<wbr>to</a> it seems I should find a sdimg file to flash to the sdcard. I=
 suppose this image file contains both the boot and rootfs partitions. But =
it seems I do not see this image at all, this is a list of what I can see i=
n tmp/deploy/images/raspberrypi3<wbr>-64: <a href=3D"https://pastebin.com/8=
XsRHzUY" target=3D"_blank">https://pastebin.com/8XsRHzUY</a>. I see the roo=
tfs filesystem that I can extract in a partition, but not the boot partitio=
n the Pi needs. Maybe I&#39;m missing some line in the conf files?<br></div=
></blockquote><div><br></div></span><div>If you are using the local.conf yo=
u previously posted, the line:</div><div><br></div><div>IMAGE_FSTYPES =3D &=
quot;tar.xz&quot;<br></div><div><br></div><div>is overriding default config=
uration from rpi-base.inc in meta-raspberrypi which is:</div><div><br></div=
><div>IMAGE_FSTYPES ?=3D &quot;tar.bz2 ext3 rpi-sdimg&quot;</div><div><br><=
/div><div>You can also consider using wic image format to generate a flasha=
ble image (see Yocto documentation on how to do that).</div></div></div></d=
iv>
</blockquote></div><br></div></span><span class=3D"m_5286700935961435230m_4=
491021657237927556HOEnZb"><font color=3D"#888888">
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div></div>
</blockquote></div><br></div>
</div></blockquote></div><br></div></div></div>
</div>

--001a1136f7a0506d1a054eb20f72--
