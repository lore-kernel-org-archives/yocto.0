Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A4D5E00BAE; Wed, 11 Jun 2014 00:48:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00CD6E00B78
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 00:48:19 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hi2so4917487wib.2
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 00:48:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=OoOvtYCfC5NQaLnQX45s6GpSQ+ENyGh8/0zQg/XXKcs=;
	b=e6pPSHB2LidKSAvnDPzQh2/yhhpjzDsh3Xkik2p4b69W9fxYOohSJ9qG4PbYyytnQ9
	yOwWX2TAQgXuJaCcrm4wYx5vm2/BfbG2ViEHayHM+th3WXieO29DGtlYj22h1wZUgQ6c
	wFcvEqOoJWr2tNB4CctIDK4XoLBKL2nZy7d7Do8dm1t0yaPNdHhVEj4Ygi0tAp8v3juP
	3qltVVtc32u8SfKzlh28tpd9S2TpSzyw71JFuur/2xPU0jGVUV8JgsOMINhBLU0JbrAu
	mXLVNgghc04wpIWt3CiysTngSSd1mEkAmOiIgz/MoSSIO1Pgqia7nsq9SCQyvIXn1Xmu
	kehA==
X-Gm-Message-State: ALoCoQkn+zN6k8G2Kw41aph8hJ7DmpqJn118qDoG9X0q0wt3BRM1LGMKKt6F96zQkX/9NLgXN6uQ
X-Received: by 10.180.126.8 with SMTP id mu8mr45368338wib.10.1402472899043;
	Wed, 11 Jun 2014 00:48:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Wed, 11 Jun 2014 00:47:58 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <5397947A.6050605@dynamicdevices.co.uk>
References: <cover.1402224537.git.ajlennon@dynamicdevices.co.uk>
	<e68eff99bd1d5efac6eb532a8f0b73ab673fceb7.1402224537.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxHboa0uRC0YfeGZmuFGUzWHnzTy8F25S6xtpWb+2UdRXw@mail.gmail.com>
	<5397947A.6050605@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Jun 2014 10:47:58 +0300
Message-ID: <CAK18fxGgMPMY_zdtRnr0nHk9Dc4siGWY-dat-tw9uXVZwZW-qA@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] gstreamer1.0-omx: Target Raspberry Pi instead of Bellagio.
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
X-List-Received-Date: Wed, 11 Jun 2014 07:48:29 -0000
Content-Type: multipart/alternative; boundary=e89a8f839f35f47e5204fb8aaa61

--e89a8f839f35f47e5204fb8aaa61
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 11, 2014 at 2:27 AM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 10/06/2014 19:59, Andrei Gherzan wrote:
>
>  Hello Alex.
>
> On Sun, Jun 8, 2014 at 1:50 PM, Alex J Lennon <
> ajlennon@dynamicdevices.co.uk> wrote:
>
>> This changes the build slightly as there are some #ifdefs in there for
>> Raspberry Pi.
>>
>> Also the codec configuration file used by gstreamer1.0-omx codecs,
>> /etc/xdg/gstomx.conf,  is set correctly to
>> core-name=/usr/lib/libopenmaxil.so
>>
>> Change-Id: I2352ecabfd053717d9ccd2d22422e7d4b7588ce4
>> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
>> ---
>>  recipes-multimedia/gstreamer/gstreamer1.0-omx.inc            | 2 ++
>>  recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend | 1 +
>>
>
>  I was thinking we we really need two files for this... I know that yocto
> has an inc too. But i don't know if that really makes sense for one line.
> What do you think?
>
>
>
> I came across Yocto best practice here. This is more or less why I
> provided a patch for consideration into Poky on this earlier today. It
> would help me, and I suspect other newbies, to have best practice
> expectations on how to put patches together somewhere up front, say in the
> README.
>
> "Do not merge .inc / .bb files"
>
>
> https://wiki.yoctoproject.org/wiki/Best_Known_Methods_(BKMs)_for_Package_Updating
>

I understand. But I think that this is the case only for bb files. We are
talking here about a bbappend in which case this would be pretty useless.
Nobody reuses an inc for a bbappend - never seen something like that.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--e89a8f839f35f47e5204fb8aaa61
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Jun 11, 2014 at 2:27 AM, Alex J Lennon <span dir=3D"ltr">&l=
t;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlenn=
on@dynamicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><div class=3D"">
    <br>
    <div>On 10/06/2014 19:59, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra">Hello Alex.</div>
        <div class=3D"gmail_extra"><br>
          <div class=3D"gmail_quote">On Sun, Jun 8, 2014 at 1:50 PM, Alex
            J Lennon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynam=
icdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</s=
pan>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">This
              changes the build slightly as there are some #ifdefs in
              there for Raspberry Pi.<br>
              <br>
              Also the codec configuration file used by gstreamer1.0-omx
              codecs, /etc/xdg/gstomx.conf, =C2=A0is set correctly to
              core-name=3D/usr/lib/libopenmaxil.so<br>
              <br>
              Change-Id: I2352ecabfd053717d9ccd2d22422e7d4b7588ce4<br>
              Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@d=
ynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt=
;<br>
              ---<br>
              <div>=C2=A0recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
                =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
                =C2=A0recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.b=
bappend
                | 1 +<br>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div>I was thinking we we really need two files for this...
              I know that yocto has an inc too. But i don&#39;t know if tha=
t
              really makes sense for one line. What do you think?=C2=A0</di=
v>
            <div>=C2=A0</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br></div>
    I came across Yocto best practice here. This is more or less why I
    provided a patch for consideration into Poky on this earlier today.
    It would help me, and I suspect other newbies, to have best practice
    expectations on how to put patches together somewhere up front, say
    in the README.<br>
    <br>
    &quot;Do not merge .inc / .bb files&quot; <br>
    <br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Best_Known_Methods_(BKMs)_for=
_Package_Updating" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Bes=
t_Known_Methods_(BKMs)_for_Package_Updating</a></div></blockquote><div><br>

</div><div>I understand. But I think that this is the case only for bb file=
s. We are talking here about a bbappend in which case this would be pretty =
useless. Nobody reuses an inc for a bbappend - never seen something like th=
at.=C2=A0</div>

</div><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:cente=
r"></div><div style=3D"text-align:center"><div align=3D"left" style=3D"font=
-family:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(5=
1,51,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherza=
n</b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =C2=A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--e89a8f839f35f47e5204fb8aaa61--
