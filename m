Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30147E00757; Wed, 18 Feb 2015 04:07:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD5BBE0034A
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 04:07:10 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id c9so434804qcz.5
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 04:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=jG3om/fmkgAYPYHDwGh4oIYuODFFnHLKWbVscFgyuTM=;
	b=c2jsjOcsXI9ndP2YyqyVl760lVSOFnPT/vmveUjuDhmmpr7WBxiYJgHLsTVBIXzs0f
	v2LL/Q+CngmO04ufYX2taD7f/o3jb255Ds2+lGmhbBwKIRGHtUNkunJz50uwnwAl0buj
	+ENuj8wOSA4jwUILJj3kX9LfCIrF3N5WEE9+r1xVaBa4Ksqch1xxaxvVGjO8uiKLi5ZB
	zCdHIYGUxZKbgYJFhB7+jC+/xcyuTV2jNTcATv9wUWXhTLM4RSlXoBP4Y9OnNJiHgiM4
	0B/yvrbl3QkERIrA5CtCOU9JnTBqAbcQYAJ6K0J6s7yatYim6qjHdPlL3Mnt/lOQLcdI
	KkWw==
X-Received: by 10.140.194.204 with SMTP id p195mr793715qha.21.1424261229890;
	Wed, 18 Feb 2015 04:07:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.91.165 with HTTP; Wed, 18 Feb 2015 04:06:49 -0800 (PST)
In-Reply-To: <CAE_REAtVw=g-6Xb+PVt9gA3xmXVxN=+UUtjfTONYS4+i_wozAA@mail.gmail.com>
References: <CAP2S6e5oBGTDWNJ1eT9YsnWAV+xeDEBKKbCE2h3_34rmJu7ycg@mail.gmail.com>
	<CAE_REAtVw=g-6Xb+PVt9gA3xmXVxN=+UUtjfTONYS4+i_wozAA@mail.gmail.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Wed, 18 Feb 2015 13:06:49 +0100
Message-ID: <CAP2S6e7vQw6Ws6tMJfVDhkE+O3Kifm5oJRC6S-03hTJ6L=kXGA@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to switch kernel version without touching PREFERED VERSION
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
X-List-Received-Date: Wed, 18 Feb 2015 12:07:13 -0000
Content-Type: multipart/alternative; boundary=001a1143245eacd291050f5ba875

--001a1143245eacd291050f5ba875
Content-Type: text/plain; charset=UTF-8

Thank you for your help !

What you propose is using a kernel downloaded manually and outside of the
yocto build directory ?

I don't intend to use a custom kernel source. I was hopping to just use the
existing 3.10.% kernel recipe.

this is the content of the recipes-kernel folder :

~/yocto/poky/meta-raspberrypi/recipes-kernel/linux$ ll
linux.inc
linux-raspberrypi/
linux-raspberrypi_3.10.38.bb
linux-raspberrypi_3.12.26.bb
linux-raspberrypi_3.16.1.bb
linux-raspberrypi_3.2.27.bb
linux-raspberrypi_3.6.11.bb
linux-raspberrypi_3.8.13.bb
linux-raspberrypi.inc

The way I understand it, bitbake looks into
~/yocto/poky/meta-raspberrypi/conf/machine to find the MACHINE defined in
the layer.conf (of the build directory).
it then looks at the PREFERED_VERSION_linux-raspberrypi variable inside the
raspberrypi.conf file, to know whitch linux-raspberrypi_${PV} to use.

Am i correct ?

What I WOULD like to do is : inside a meta-wolfson layer (wich includes a
linux-raspberrypi_3.10.38.bbappend) how to change the
linux-raspberrypi_${PV} that bitbake will use.

some kind of conf/machine/raspberryppi.conf.bbappend would be nice :)

Any ideas ?




2015-02-18 12:43 GMT+01:00 Gaurang Shastri <gmshastri@gmail.com>:

> Well, if you want to use your own kernel source, you can use something
> like this:
> ==
> inherit kernel externalsrc
> EXTERNALSRC = "/home/xyz/linux-stable"
> S = "${EXTERNALSRC}"
> ...
> ==
>
> //Gaurang Shastri
>
>
> On Wed, Feb 18, 2015 at 4:23 PM, Valentin Le bescond <
> valentin.lebescond@gmail.com> wrote:
>
>> Hi all,
>>
>> I'm working an a meta-wolfson layer to add the wolfson audio card support
>> to the meta-raspberrypi layer.
>>
>> It's a very simple set of patche, but they apply to linux kernel 3.10.*
>>
>> And the PREFERED_VERSION of the machine configuration (raspberrypi.conf)
>> is  :
>> PREFERRED_VERSION_linux-raspberrypi ?= "3.12.%"
>>
>> I would like to build my images using
>> linux-raspberrypi_3.10.38.bb
>> instead of
>> linux-raspberrypi_3.12.26.bb
>>
>> What is the most "best practice" whay to achive this ?
>>
>> Best regards
>>
>> Valentin
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a1143245eacd291050f5ba875
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Thank you for your=
 help !<br><br></div><div>What you propose is using a kernel downloaded man=
ually and outside of the yocto build directory ?<br><br></div>I don&#39;t i=
ntend to use a custom kernel source. I was hopping to just use the existing=
 3.10.% kernel recipe.<br><br></div>this is the content of the recipes-kern=
el folder :<br><br>~/yocto/poky/meta-raspberrypi/recipes-kernel/linux$ ll<b=
r>linux.inc<br>linux-raspberrypi/<br><a href=3D"http://linux-raspberrypi_3.=
10.38.bb">linux-raspberrypi_3.10.38.bb</a><br><a href=3D"http://linux-raspb=
errypi_3.12.26.bb">linux-raspberrypi_3.12.26.bb</a><br><a href=3D"http://li=
nux-raspberrypi_3.16.1.bb">linux-raspberrypi_3.16.1.bb</a><br><a href=3D"ht=
tp://linux-raspberrypi_3.2.27.bb">linux-raspberrypi_3.2.27.bb</a><br><a hre=
f=3D"http://linux-raspberrypi_3.6.11.bb">linux-raspberrypi_3.6.11.bb</a><br=
><a href=3D"http://linux-raspberrypi_3.8.13.bb">linux-raspberrypi_3.8.13.bb=
</a><br>linux-raspberrypi.inc<br><br></div>The way I understand it, bitbake=
 looks into ~/yocto/poky/meta-raspberrypi/conf/machine to find the MACHINE =
defined in the layer.conf (of the build directory).<br></div>it then looks =
at the PREFERED_VERSION_linux-raspberrypi variable inside the raspberrypi.c=
onf file, to know whitch linux-raspberrypi_${PV} to use.<br><br></div>Am i =
correct ?<br><br></div>What I WOULD like to do is : inside a meta-wolfson l=
ayer (wich includes a linux-raspberrypi_3.10.38.bbappend) how to change the=
  linux-raspberrypi_${PV} that bitbake will use.<br><br></div>some kind of =
conf/machine/raspberryppi.conf.bbappend would be nice :)<br><br></div>Any i=
deas ?<br><div> <div><div><br><div><div><div><div><br><div><br></div></div>=
</div></div></div></div></div></div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">2015-02-18 12:43 GMT+01:00 Gaurang Shastri <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:gmshastri@gmail.com" target=3D"_blank">gms=
hastri@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div>Well, if you want to use your own kernel source, you can use =
something like this:<br>=3D=3D<br>inherit kernel externalsrc<br>EXTERNALSRC=
 =3D &quot;/home/xyz/linux-stable&quot;<br>S =3D &quot;${EXTERNALSRC}&quot;=
<br>...<br>=3D=3D<br><br></div>//Gaurang Shastri<br><div><br></div></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"=
h5">On Wed, Feb 18, 2015 at 4:23 PM, Valentin Le bescond <span dir=3D"ltr">=
&lt;<a href=3D"mailto:valentin.lebescond@gmail.com" target=3D"_blank">valen=
tin.lebescond@gmail.com</a>&gt;</span> wrote:<br></div></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div><div class=3D"h5"><div dir=3D"ltr"><div><div><div><di=
v><div><div>Hi all,<br><br></div>I&#39;m working an a meta-wolfson layer to=
 add the wolfson audio card support to the meta-raspberrypi layer.<br><br><=
/div>It&#39;s a very simple set of patche, but they apply to linux kernel 3=
.10.*<br><br></div>And the PREFERED_VERSION of the machine configuration (r=
aspberrypi.conf) is=C2=A0 :<br>PREFERRED_VERSION_linux-raspberrypi ?=3D &qu=
ot;3.12.%&quot;<br></div><br></div>I would like to build my images using <b=
r><a href=3D"http://linux-raspberrypi_3.10.38.bb" target=3D"_blank">linux-r=
aspberrypi_3.10.38.bb</a><br></div>instead of <br><a href=3D"http://linux-r=
aspberrypi_3.12.26.bb" target=3D"_blank">linux-raspberrypi_3.12.26.bb</a><b=
r><div><div><br></div><div>What is the most &quot;best practice&quot; whay =
to achive this ?<br><br></div><div>Best regards<span><font color=3D"#888888=
"><br><br></font></span></div><span><font color=3D"#888888"><div>Valentin<b=
r></div><div><div><br></div></div></font></span></div></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--001a1143245eacd291050f5ba875--
