Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB028E008FF; Mon, 20 Jun 2016 12:08:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,PLING_QUERY,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57B71E00875
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 12:08:45 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id t129so208088462vka.1
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 12:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=E3rhJfmJOvn4IzgIDEDOmY1Ks28sWozyF2nQKOYOhQI=;
	b=kYM+rD5BkmlNWh/gpgziGSTe6nmM16cLzeVKhcwgxYnjT84dAk6PfaflnR2yU/5zpa
	DkEyf26wjMprA41bmGpa2C0M8yPoB2rfigSwEBUQ+wi6wdZZcrL2276QyvZhpVzdsWRO
	eRB6X6NKbYiwWQNXDry3dLyhwe8Z61xn2zxdtua84HZtCtRyi6cv+itIvVEcZefWqxNH
	yRyiDgeASf0hJwgtAz+Ty+5CKpI1NTnKvu2lXqLKBFvcDowL7XcFJm04D8TQOgMVeq7j
	7ZmRHRjyekb/MIdlJDHKULklkVP30On8v1ate7oE7zjIn43TiZHaMSMyM4S49royZ8JT
	AcxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=E3rhJfmJOvn4IzgIDEDOmY1Ks28sWozyF2nQKOYOhQI=;
	b=JCUiFB5V0dQtCEgrKfsYzvVEojgnwX1LC+prX7s8zxwG5+sGVb7DXomIdWshOkcRbr
	SEglnJ5LrQdk3PdYh0SKpxvz5hmN8mzOQbM0nll6DQ3tfhioAL1bkWOzhEoOJD7bhSKA
	w0HeWJQXFoNzgJATIq4z+oOy9no9yHPFHngfo+tx00/WjmXNM/gFxqOEC0ARsO9zqrpn
	mmdlXYLOJPOsZ8qUoQEoVLDdgnEoqwf0J/gFGjs4L7yxY4E7subb+XW1DCUS0SQ5W4+8
	JMwCyuJC34Heo29za61Iw+pcD7VL810aV4znJ/X1kl4YOfpzWApW2OGW9t/V5WwHHHI7
	PlSg==
X-Gm-Message-State: ALyK8tKJQX/J2VswGTfpo9cLwxc93sg8mOwaU/QJKzcKnompcC5kVi6iibI7soIRqffBzFJJA2K0oW8oHST10g==
X-Received: by 10.176.66.130 with SMTP id j2mr7579857uaj.120.1466449725342;
	Mon, 20 Jun 2016 12:08:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Mon, 20 Jun 2016 12:08:44 -0700 (PDT)
In-Reply-To: <CAF3SDA4k9M0GdWngzpE2P-=_jCoyaW_oUo6jmzNJ6uibu2hRPw@mail.gmail.com>
References: <CAF3SDA5fWG_WyHHYAFDu3ZkRmv6ba+aV_8Ph6dy5avy71SQWsg@mail.gmail.com>
	<CAMKF1sqMH+Z=7+1BTAEbiPm9kQO6NYbxY7-9OgRJ=wDYcFov0A@mail.gmail.com>
	<CAF3SDA4k9M0GdWngzpE2P-=_jCoyaW_oUo6jmzNJ6uibu2hRPw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 20 Jun 2016 16:08:44 -0300
Message-ID: <CAF3SDA413PDn7J7wcNBsAW3f5gFJeD9x4X+rerYnz=xhQr1jWQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Crosscompiling python extensions with yocto generated toolchains!?
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
X-List-Received-Date: Mon, 20 Jun 2016 19:08:48 -0000
Content-Type: multipart/alternative; boundary=94eb2c0a6358f5c9940535ba6e79

--94eb2c0a6358f5c9940535ba6e79
Content-Type: text/plain; charset=UTF-8

I've found this recipe "python-pycurl" with exports libcurl to python. What
I did was build it and take a look at temp folder to stalk what line is
used to compile that stuff. Here it is:

distutils_do_compile() {

STAGING_INCDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/include
\

STAGING_LIBDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/lib
\
         BUILD_SYS=x86_64-linux HOST_SYS=arm-poky-linux-gnueabi \

/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr/bin/python-native/python
setup.py build  || \
         bbfatal "python setup.py build_ext execution failed."

}


So I go to my extension's source folder and paste
STAGING_INCDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/include
\
STAGING_LIBDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/lib
\
BUILD_SYS=x86_64-linux HOST_SYS=arm-poky-linux-gnueabi \
/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr/bin/python-native/python
setup.py build

and everything works fine, I got my extension compiled. So, in what magic
are these enviroment variables envolved? STAGING_INCDIR
and STAGING_LIBDIR are OE stuff, what are these BUILD_SYS and HOST_SYS
related?! I'm still searching, anyway thanks Khen for
pointing me meta-python sources. It helped me a lot.

Regards,


2016-06-20 15:29 GMT-03:00 Daniel. <danielhilst@gmail.com>:

> Thank you Khem!!
>
> Regards,
>
> 2016-06-20 15:02 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
>
>> On Mon, Jun 20, 2016 at 10:44 AM, Daniel. <danielhilst@gmail.com> wrote:
>> > Hi everybody..
>> >
>> > I've been playing with python extensions. Now I want to compile a simple
>> > hello world extension
>> > to my Yocto's target, but I really can't find any good resource about
>> doing
>> > it. So what is the teory behind it?
>> >
>> > I know that I need python headers "Python.h and others" and that I need
>> > distutils installed. After that everything is done by distutils and
>> setup.py
>> > script, but what is done is a mistery. I found distutilscross on
>> internet
>> > but no documentation about it!?
>> >
>> > How are python extensions cross-compiled by Yocto? Can somebody point
>> me an
>> > example?!
>>
>> take a look at meta-python.
>>
>> http://cgit.openembedded.org/meta-openembedded/tree/meta-python
>>
>> You might find some examples close to what you are looking for.
>>
>> >
>> > Regards,
>> >
>> > --
>> > "Do or do not. There is no try"
>> >   Yoda Master
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
>
>
> --
> *"Do or do not. There is no try"*
>   *Yoda Master*
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c0a6358f5c9940535ba6e79
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>I&#39;ve found this recipe &quot;pytho=
n-pycurl&quot; with exports libcurl to python. What I did was build it and =
take a look at temp folder to stalk what line is used to compile that stuff=
. Here it is:<br><br>distutils_do_compile() {<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 STAGING_INCDIR=3D/home/geckos/yocto/yocto-daisy/bu=
ild_x11/tmp/sysroots/pharosserver-imx6/usr/include \<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 STAGING_LIBDIR=3D/home/geckos/yocto/yocto-da=
isy/build_x11/tmp/sysroots/pharosserver-imx6/usr/lib \<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 BUILD_SYS=3Dx86_64-linux HOST_SYS=3Darm-p=
oky-linux-gnueabi \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /ho=
me/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr/bin/pyt=
hon-native/python setup.py build=C2=A0 || \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 bbfatal &quot;python setup.py build_ext execution fai=
led.&quot;<br><br>}<br><br><br></div>So I go to my extension&#39;s source f=
older and paste<br>STAGING_INCDIR=3D/home/geckos/yocto/yocto-daisy/build_x1=
1/tmp/sysroots/pharosserver-imx6/usr/include \<br>STAGING_LIBDIR=3D/home/ge=
ckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/lib \<b=
r>BUILD_SYS=3Dx86_64-linux HOST_SYS=3Darm-poky-linux-gnueabi \<br>/home/gec=
kos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr/bin/python-na=
tive/python setup.py build<br><br></div>and everything works fine, I got my=
 extension compiled. So, in what magic are these enviroment variables envol=
ved? STAGING_INCDIR<br></div>and STAGING_LIBDIR are OE stuff, what are thes=
e BUILD_SYS and HOST_SYS related?! I&#39;m still searching, anyway thanks K=
hen for<br></div><div>pointing me meta-python sources. It helped me a lot.<=
br></div><div><br></div>Regards,<br><div><div><div><div><div><br></div></di=
v></div></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">2016-06-20 15:29 GMT-03:00 Daniel. <span dir=3D"ltr">&lt;<a href=
=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</=
a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Than=
k you Khem!!<br><br></div>Regards,<br></div><div class=3D"HOEnZb"><div clas=
s=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-06-=
20 15:02 GMT-03:00 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span>:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><span>On Mon, Jun 20, 2016 at 10:44 AM, Daniel. &l=
t;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gm=
ail.com</a>&gt; wrote:<br>
&gt; Hi everybody..<br>
&gt;<br>
&gt; I&#39;ve been playing with python extensions. Now I want to compile a =
simple<br>
&gt; hello world extension<br>
&gt; to my Yocto&#39;s target, but I really can&#39;t find any good resourc=
e about doing<br>
&gt; it. So what is the teory behind it?<br>
&gt;<br>
&gt; I know that I need python headers &quot;Python.h and others&quot; and =
that I need<br>
&gt; distutils installed. After that everything is done by distutils and se=
tup.py<br>
&gt; script, but what is done is a mistery. I found distutilscross on inter=
net<br>
&gt; but no documentation about it!?<br>
&gt;<br>
&gt; How are python extensions cross-compiled by Yocto? Can somebody point =
me an<br>
&gt; example?!<br>
<br>
</span>take a look at meta-python.<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-python"=
 rel=3D"noreferrer" target=3D"_blank">http://cgit.openembedded.org/meta-ope=
nembedded/tree/meta-python</a><br>
<br>
You might find some examples close to what you are looking for.<br>
<div><div><br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; --<br>
&gt; &quot;Do or do not. There is no try&quot;<br>
&gt;=C2=A0 =C2=A0Yoda Master<br>
&gt;<br>
</div></div><span><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div data=
-smartmail=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do =
or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b>=
</i><br></div></div>
</div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div style=3D"text-=
align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 =
</i><i><b>Yoda Master</b></i><br></div></div>
</div>

--94eb2c0a6358f5c9940535ba6e79--
