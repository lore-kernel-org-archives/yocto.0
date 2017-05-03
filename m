Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B447E00ACE; Wed,  3 May 2017 05:35:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.48 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35048E00AA2
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 05:35:13 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id r190so35842039wme.1
	for <yocto@yoctoproject.org>; Wed, 03 May 2017 05:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BN9H6JZFkFbQGYbUex0XtnHkgN8C4Vbv6yFh19bgQm4=;
	b=og8oyP6vGpBtGeKnuiG/iMlAZH/GcXnxnen6xBdjupBJMGCwyH2U7jjx56/DSw3dxb
	T7ZBM9tF1hfy/mDY/SzHaKTqmVU+EAz3s1BTnsUJ5p+rYM218d7dV+gYv3z59RUM/OG5
	WjzVYJoxWHW7MrDX6EycElc01AXv7tNo0kM9jtF67ZyYwrbWeH7Gt6YkegpHV58nSA4d
	mmrm+rDkN/6WEKgDMglJBdX6eW1kHnoG41WJq2i0hEyfwiAwwElofGogxu6HUSE2N/Iu
	QfAalprdc9VW1mnpBdE3ZcO6hS1iwdzupc36qGWH+T/hWYUW8iz2cLOg5i6Vp4rHU6D5
	IoMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BN9H6JZFkFbQGYbUex0XtnHkgN8C4Vbv6yFh19bgQm4=;
	b=dxE//Uxjj6msMfEiRHmn6Da4rxsrQweDggsLjzJrSBRNiJdnsCm0Dp5wdbC9KX2a3X
	s5mefWgbhVxEPY01697qlkrqwcZripnY5DhE0zHYIa1HQdsuYRROpwLeEdxHY1NAFBsG
	nWSg0J0gog6k+EWRd5yEkxRd+7GlKPrE7GfV3Z7xF82rDqdjGeiIBUTpKxqwyJAphifl
	9IUjw7dvaBBU4WXYVILz8drWvJjDNlzfzPHsx9F0Gw1/pkU2l9Uwf44ERf3x0Wsp/7F8
	egSy8FwG7UFLiB6GOkMjiPHmS6hAoLnpUCTikUIdx5cy3eVhU8HZMi8tky3eLYKusRHn
	KX1Q==
X-Gm-Message-State: AN3rC/5SRRX/TxuBCr9NvmvPZwT8FJSC4e+5gkPzljiv+QIE7u95px9Z
	k/mmL0AwMIDlzC3QsIDwywZNYGmXiA==
X-Received: by 10.80.169.193 with SMTP id n59mr25934789edc.127.1493814912966; 
	Wed, 03 May 2017 05:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
	<CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
	<CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
	<CAC+thW3zTubp1by4i6it39bzvqkWMw4SExCHjSmc3OhmXrcwxw@mail.gmail.com>
	<CAMC=D=vgejGzJggU_DE13_tspbTZfi=4G9JShhXC8Q1XzWnxhg@mail.gmail.com>
	<CAC+thW0Lcmkn-zL_AyQXztQNywLxPAW0zFUM2YVCDvE8YcTFfw@mail.gmail.com>
	<CAMC=D=ts+93_6zoOgXtv9HkQ4GE897SiwJKHpEJbxt-KeO6J=A@mail.gmail.com>
In-Reply-To: <CAMC=D=ts+93_6zoOgXtv9HkQ4GE897SiwJKHpEJbxt-KeO6J=A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 03 May 2017 12:35:01 +0000
Message-ID: <CAMKF1srH1kLEKaG1rd7hQTyPn+6PVYkvddzpg-xj0KKEhVWDFw@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>, Luca Carlon <carlon.luca@gmail.com>
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
X-List-Received-Date: Wed, 03 May 2017 12:35:15 -0000
Content-Type: multipart/alternative; boundary=94eb2c195d283f648c054e9de32d

--94eb2c195d283f648c054e9de32d
Content-Type: text/plain; charset=UTF-8

On Wed, May 3, 2017 at 8:28 AM Luca Carlon <carlon.luca@gmail.com> wrote:

> Hello,
> thank you for your help. I followed your advice and I'm now able to build
> rpi-test-image for raspberrypi2 and raspberrypi3. When I try
> raspberrypi3-64 instead I'm getting a few errors. I fixed one build error,
> but then I got: https://pastebin.com/pL2mei9s. It seems that those libs
> were not added to the sysroot for some reason. I think those come from the
> userspace package probably. As it seems to work for the other machines I'm
> trying to determine what difference raspberrypi3-64 is introducing but for
> the moment I'm failing. Any idea what is causing this error? Are you able
> to build rpi-test-image? rpi-basic-image seems to work but not
> rpi-test-image, which includes omxplayer and other libs that I need like
> libEGL, libGLESv2, libopenmax etc...
>
> These are my current conf files:
>
> https://pastebin.com/LJnRfDUj
> https://pastebin.com/axt9RLQS
>
> Any idea why those libs cannot be found?
> Thank you!
> Regards.
>

I don't know if anyone here has got GUI up with rpi64 using yocto yet
however you could try to use vc4 graphics drivers by adding "vc4graphic" to
MACHINE_FEATURES

>
> Luca
>
> On Sat, Apr 29, 2017 at 9:40 AM, Andrea Galbusera <gizero@gmail.com>
> wrote:
>
>> On Sat, Apr 29, 2017 at 2:39 AM, Luca Carlon <carlon.luca@gmail.com>
>> wrote:
>>
>>> Hello,
>>> thank you very much for your advice. It seems I can build both a minimal
>>> image and rpi-basic-image. I would like to test to see if the Pi is able to
>>> boot with these images but it seems that the images directory does not
>>> contain any sdimg file. By reading
>>> https://github.com/agherzan/meta-raspberrypi and
>>> https://github.com/Nuand/bladeRF/wiki/Creating-Linux-based-Embedded-System-Images-with-Yocto
>>> it seems I should find a sdimg file to flash to the sdcard. I suppose this
>>> image file contains both the boot and rootfs partitions. But it seems I do
>>> not see this image at all, this is a list of what I can see in
>>> tmp/deploy/images/raspberrypi3-64: https://pastebin.com/8XsRHzUY. I see
>>> the rootfs filesystem that I can extract in a partition, but not the boot
>>> partition the Pi needs. Maybe I'm missing some line in the conf files?
>>>
>>
>> If you are using the local.conf you previously posted, the line:
>>
>> IMAGE_FSTYPES = "tar.xz"
>>
>> is overriding default configuration from rpi-base.inc in meta-raspberrypi
>> which is:
>>
>> IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
>>
>> You can also consider using wic image format to generate a flashable
>> image (see Yocto documentation on how to do that).
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c195d283f648c054e9de32d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div>On Wed, May 3, 2017 at 8:28 AM Luc=
a Carlon &lt;<a href=3D"mailto:carlon.luca@gmail.com">carlon.luca@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Hello,<div>tha=
nk you for your help. I followed your advice and I&#39;m now able to build =
rpi-test-image for raspberrypi2 and raspberrypi3. When I try raspberrypi3-6=
4 instead I&#39;m getting a few errors. I fixed one build error, but then I=
 got:=C2=A0<a href=3D"https://pastebin.com/pL2mei9s" target=3D"_blank">http=
s://pastebin.com/pL2mei9s</a>. It seems that those libs were not added to t=
he sysroot for some reason. I think those come from the userspace package p=
robably. As it seems to work for the other machines I&#39;m trying to deter=
mine what difference raspberrypi3-64 is introducing but for the moment I&#3=
9;m failing. Any idea what is causing this error? Are you able to build rpi=
-test-image? rpi-basic-image seems to work but not rpi-test-image, which in=
cludes omxplayer and other libs that I need like libEGL, libGLESv2, libopen=
max etc...</div><div><br></div><div>These are my current conf files:</div><=
div><br></div><div><a href=3D"https://pastebin.com/LJnRfDUj" target=3D"_bla=
nk">https://pastebin.com/LJnRfDUj</a><br></div><div><a href=3D"https://past=
ebin.com/axt9RLQS" target=3D"_blank">https://pastebin.com/axt9RLQS</a><br><=
/div><div><br></div><div>Any idea why those libs cannot be found?</div><div=
>Thank you!</div><div>Regards.</div></div></blockquote><div><br></div><div>=
I don&#39;t know if anyone here has got GUI up with rpi64 using yocto yet h=
owever you could try to use vc4 graphics drivers by adding &quot;vc4graphic=
&quot; to MACHINE_FEATURES</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div></=
div></div><div><div><br></div><div>Luca</div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Sat, Apr 29, 2017 at 9:40 AM, Andrea G=
albusera <span>&lt;<a href=3D"mailto:gizero@gmail.com" target=3D"_blank">gi=
zero@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span>On Sat, Apr 29=
, 2017 at 2:39 AM, Luca Carlon <span>&lt;<a href=3D"mailto:carlon.luca@gmai=
l.com" target=3D"_blank">carlon.luca@gmail.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div>Hello,<br>thank you ver=
y much for your advice. It seems I can build both a minimal image and rpi-b=
asic-image. I would like to test to see if the Pi is able to boot with thes=
e images but it seems that the images directory does not contain any sdimg =
file. By reading <a href=3D"https://github.com/agherzan/meta-raspberrypi" t=
arget=3D"_blank">https://github.com/agherzan/meta-raspberrypi</a> and <a hr=
ef=3D"https://github.com/Nuand/bladeRF/wiki/Creating-Linux-based-Embedded-S=
ystem-Images-with-Yocto" target=3D"_blank">https://github.com/Nuand/bladeRF=
/wiki/Creating-Linux-based-Embedded-System-Images-with-Yocto</a> it seems I=
 should find a sdimg file to flash to the sdcard. I suppose this image file=
 contains both the boot and rootfs partitions. But it seems I do not see th=
is image at all, this is a list of what I can see in tmp/deploy/images/rasp=
berrypi3-64: <a href=3D"https://pastebin.com/8XsRHzUY" target=3D"_blank">ht=
tps://pastebin.com/8XsRHzUY</a>. I see the rootfs filesystem that I can ext=
ract in a partition, but not the boot partition the Pi needs. Maybe I&#39;m=
 missing some line in the conf files?<br></div></blockquote><div><br></div>=
</span><div>If you are using the local.conf you previously posted, the line=
:</div><div><br></div><div>IMAGE_FSTYPES =3D &quot;tar.xz&quot;<br></div><d=
iv><br></div><div>is overriding default configuration from rpi-base.inc in =
meta-raspberrypi which is:</div><div><br></div><div>IMAGE_FSTYPES ?=3D &quo=
t;tar.bz2 ext3 rpi-sdimg&quot;</div><div><br></div><div>You can also consid=
er using wic image format to generate a flashable image (see Yocto document=
ation on how to do that).</div></div></div></div>
</blockquote></div><br></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--94eb2c195d283f648c054e9de32d--
