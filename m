Return-Path: <carlon.luca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A1C1E00961; Wed,  3 May 2017 09:19:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (carlon.luca[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F752E00812
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 09:19:19 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id 131so14561136itz.1
	for <yocto@yoctoproject.org>; Wed, 03 May 2017 09:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RY9NoJWUX4j0b+TmHciViP5IN7ygiJgj7KBVCgLEV3A=;
	b=axPS5BcJmDuHH+CrVqEW7Q6C1dy9OO9lgbLYWVhb2c5kIZmYiMdKVhESw+4tiDlpoZ
	qvmc+WjJbgqI8TevgfLS+b2xdN4+5ImW+hpFDE8B2QK+VXf7xE3Le2vkRt5HyyIsh4Hs
	UbOsQ64Qmw7Zuk8RkCgSmzFeHq33jCf8sdxftyK6/TmUq+91zrvjLLCFMvpXWFzh4SUj
	HeP4A1PvdHQvc1R+7upVdiqXtnuQj79voutzoy241hQ06UpxDkJdGjO6PfTHyCb4IgDR
	2a5o4JBaKYL1JWD/XYqfzBR2m7qw8jWyhmn/biiHSfpmI/WJ2HwXJcOrA7624PrOjj1v
	gDgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RY9NoJWUX4j0b+TmHciViP5IN7ygiJgj7KBVCgLEV3A=;
	b=Gu565i7tsjgzuW9y1j3EfP6Iea7LDiAxjD4Gg8fEyMWaBQLnfU9cXq9NTG4AIdOtm1
	AaxEVvR2DlvI844igZMokVInXYQv2YkExJsEI5tXfIHEZ6yu+s3fZX5QbTTIxI05VhAv
	xh6WzijWGIbqWFnUseYUBbWaZ0zElRADOPWTm+3GgaH7nLPwIzDpKi7UHeZAhEQqxjVH
	tWAwbrLloAZ6tsPovYX3ZfehCkfxfuV/ukVvUwoBl6F3dWzwDp2D3woFKYSi+ph18pMq
	Htr/wcXJdGF6A+x8TqnZljdonnJvY06rnWw1Z85te/ZEJr1opFpcemchckMUGmormIfv
	EfIw==
X-Gm-Message-State: AN3rC/4XBXs4pmXXBADg9QEgEXaS1JO75Gx1nI8DRK0BAIoNHAJQlkDB
	wgKIxb8SLF9VtGR9n4Qed9QH2+R6XdRZ
X-Received: by 10.157.12.67 with SMTP id 61mr3086956otr.237.1493828359218;
	Wed, 03 May 2017 09:19:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.63.197 with HTTP; Wed, 3 May 2017 09:19:18 -0700 (PDT)
In-Reply-To: <CAMKF1srH1kLEKaG1rd7hQTyPn+6PVYkvddzpg-xj0KKEhVWDFw@mail.gmail.com>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
	<CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
	<CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
	<CAC+thW3zTubp1by4i6it39bzvqkWMw4SExCHjSmc3OhmXrcwxw@mail.gmail.com>
	<CAMC=D=vgejGzJggU_DE13_tspbTZfi=4G9JShhXC8Q1XzWnxhg@mail.gmail.com>
	<CAC+thW0Lcmkn-zL_AyQXztQNywLxPAW0zFUM2YVCDvE8YcTFfw@mail.gmail.com>
	<CAMC=D=ts+93_6zoOgXtv9HkQ4GE897SiwJKHpEJbxt-KeO6J=A@mail.gmail.com>
	<CAMKF1srH1kLEKaG1rd7hQTyPn+6PVYkvddzpg-xj0KKEhVWDFw@mail.gmail.com>
From: Luca Carlon <carlon.luca@gmail.com>
Date: Wed, 3 May 2017 18:19:18 +0200
Message-ID: <CAMC=D=sMPe65F2gf2KwJXTaUkwBgtqv94X9H8n9Aj+Bqyx+r8A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Wed, 03 May 2017 16:19:21 -0000
Content-Type: multipart/alternative; boundary=94eb2c1103e4b4ecf0054ea10424

--94eb2c1103e4b4ecf0054ea10424
Content-Type: text/plain; charset=UTF-8

What I'd like to be able to do is setup is a 64bit system including the
libraries from the userland repo: https://github.com/raspberrypi/userland.
I suspect vc4graphic is something different, isn't it?
But maybe you're right and those libs will never be built, as I see that
according to https://github.com/raspberrypi/userland/pull/347 not
everything builds in userland. In the recipe I however see that the ARM64
macro is defined and so I'm asking myself which libraries are currently
supported and which are not. Anyone who knows?
Thank you!

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
>>>> not contain any sdimg file. By reading https://github.com/agherzan/
>>>> meta-raspberrypi and https://github.com/Nuand/
>>>> bladeRF/wiki/Creating-Linux-based-Embedded-System-Images-with-Yocto it
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

--94eb2c1103e4b4ecf0054ea10424
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What I&#39;d like to be able to do is setup is a 64bit sys=
tem including the libraries from the userland repo: <a href=3D"https://gith=
ub.com/raspberrypi/userland">https://github.com/raspberrypi/userland</a>. I=
 suspect vc4graphic is something different, isn&#39;t it?<br>But maybe you&=
#39;re right and those libs will never be built, as I see that according to=
 <a href=3D"https://github.com/raspberrypi/userland/pull/347">https://githu=
b.com/raspberrypi/userland/pull/347</a> not everything builds in userland. =
In the recipe I however see that the ARM64 macro is defined and so I&#39;m =
asking myself which libraries are currently supported and which are not. An=
yone who knows?<br>Thank you!<br><br>Luca<br></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Wed, May 3, 2017 at 2:35 PM, Khem Raj =
<span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blan=
k">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div><br><div class=3D"gmail_quote"><span class=3D""><div>On Wed, May 3,=
 2017 at 8:28 AM Luca Carlon &lt;<a href=3D"mailto:carlon.luca@gmail.com" t=
arget=3D"_blank">carlon.luca@gmail.com</a>&gt; wrote:<br></div></span><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div>Hello,<span class=3D""><div>thank you for yo=
ur help. I followed your advice and I&#39;m now able to build rpi-test-imag=
e for raspberrypi2 and raspberrypi3. When I try raspberrypi3-64 instead I&#=
39;m getting a few errors. I fixed one build error, but then I got:=C2=A0<a=
 href=3D"https://pastebin.com/pL2mei9s" target=3D"_blank">https://pastebin.=
com/<wbr>pL2mei9s</a>. It seems that those libs were not added to the sysro=
ot for some reason. I think those come from the userspace package probably.=
 As it seems to work for the other machines I&#39;m trying to determine wha=
t difference raspberrypi3-64 is introducing but for the moment I&#39;m fail=
ing. Any idea what is causing this error? Are you able to build rpi-test-im=
age? rpi-basic-image seems to work but not rpi-test-image, which includes o=
mxplayer and other libs that I need like libEGL, libGLESv2, libopenmax etc.=
..</div><div><br></div><div>These are my current conf files:</div><div><br>=
</div><div><a href=3D"https://pastebin.com/LJnRfDUj" target=3D"_blank">http=
s://pastebin.com/LJnRfDUj</a><br></div><div><a href=3D"https://pastebin.com=
/axt9RLQS" target=3D"_blank">https://pastebin.com/axt9RLQS</a><br></div><di=
v><br></div><div>Any idea why those libs cannot be found?</div><div>Thank y=
ou!</div><div>Regards.</div></span></div></blockquote><div><br></div><div>I=
 don&#39;t know if anyone here has got GUI up with rpi64 using yocto yet ho=
wever you could try to use vc4 graphics drivers by adding &quot;vc4graphic&=
quot; to MACHINE_FEATURES</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D""><div><div></div></div><div><div><br></div><div>Luca</div></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Apr 29, 2017 at=
 9:40 AM, Andrea Galbusera <span>&lt;<a href=3D"mailto:gizero@gmail.com" ta=
rget=3D"_blank">gizero@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><s=
pan>On Sat, Apr 29, 2017 at 2:39 AM, Luca Carlon <span>&lt;<a href=3D"mailt=
o:carlon.luca@gmail.com" target=3D"_blank">carlon.luca@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hello=
,<br>thank you very much for your advice. It seems I can build both a minim=
al image and rpi-basic-image. I would like to test to see if the Pi is able=
 to boot with these images but it seems that the images directory does not =
contain any sdimg file. By reading <a href=3D"https://github.com/agherzan/m=
eta-raspberrypi" target=3D"_blank">https://github.com/agherzan/<wbr>meta-ra=
spberrypi</a> and <a href=3D"https://github.com/Nuand/bladeRF/wiki/Creating=
-Linux-based-Embedded-System-Images-with-Yocto" target=3D"_blank">https://g=
ithub.com/Nuand/<wbr>bladeRF/wiki/Creating-Linux-<wbr>based-Embedded-System=
-Images-<wbr>with-Yocto</a> it seems I should find a sdimg file to flash to=
 the sdcard. I suppose this image file contains both the boot and rootfs pa=
rtitions. But it seems I do not see this image at all, this is a list of wh=
at I can see in tmp/deploy/images/<wbr>raspberrypi3-64: <a href=3D"https://=
pastebin.com/8XsRHzUY" target=3D"_blank">https://pastebin.com/8XsRHzUY</a>.=
 I see the rootfs filesystem that I can extract in a partition, but not the=
 boot partition the Pi needs. Maybe I&#39;m missing some line in the conf f=
iles?<br></div></blockquote><div><br></div></span><div>If you are using the=
 local.conf you previously posted, the line:</div><div><br></div><div>IMAGE=
_FSTYPES =3D &quot;tar.xz&quot;<br></div><div><br></div><div>is overriding =
default configuration from rpi-base.inc in meta-raspberrypi which is:</div>=
<div><br></div><div>IMAGE_FSTYPES ?=3D &quot;tar.bz2 ext3 rpi-sdimg&quot;</=
div><div><br></div><div>You can also consider using wic image format to gen=
erate a flashable image (see Yocto documentation on how to do that).</div><=
/div></div></div>
</blockquote></div><br></div></span><span class=3D"HOEnZb"><font color=3D"#=
888888">
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div></div>
</blockquote></div><br></div>

--94eb2c1103e4b4ecf0054ea10424--
