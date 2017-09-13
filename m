Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E59BCE00C2B; Wed, 13 Sep 2017 01:04:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 748E3E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 01:04:08 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id l74so37306660oih.1
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 01:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tItQVTsAw8d8yKxm7NWSoukuU7FInoY1hT4ENgYHz4s=;
	b=JmhCMyTyH6VQX+ADwNL3H3UuuFF6TEML8Ok5axITfFK5LvCslSxCjifwVL4jL0H7DV
	wLR4lMEHVzmKj9GS12igBEOjpi62yKXe1s1n5cT0eUFP5/aEU3IlXYJ4xsGXktHHMka2
	M9yoLdlmoa34Dv8BtyREPtvsDw1MjGoBPPr3ZL6W+8eCSklsnsVbXeQdgwWgWaBa1jUy
	f7NDimkw10Fak49eLdlWkef9MeQKRh+xq/kVofot/i93Y41NmS9WoIsrUSOn+qwstr3R
	1hysCzCljYFYxqeDzuKttaZUrGzNqQxxJR/Te8VJk8LyPrCJ6jjDxq6JeNJncWyXyLnE
	BpXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tItQVTsAw8d8yKxm7NWSoukuU7FInoY1hT4ENgYHz4s=;
	b=exULCcXVk8JV6c7MBjP0YTWGXccozZYvs2jUoi4Mg0oUjHx9cMeMCI+2gcxPfxIbRI
	iOY6MAKzq3JcRYI+K96utaawaxJSgS7myX/yGjVDcP+6RUSFfemjF4LB8w1UBVPcbkYx
	9wrzzDbKVTUfnd+G+4ETogrQPWO1Sx/465eHY5UGEy043rdI37IpK1t7875+xS1d6nLx
	XBd4Brart9+HqdK5drakvpO89N2VcD+PS2NtYqCwcpdYg12GJGtyJttRWk2VAcNJ8uNb
	akybB11blEEANotCmaA4QuOra6yROOi0UyVfYcaZByWNa8iGqF+365mNou04atCyE98B
	LTyw==
X-Gm-Message-State: AHPjjUjWCEs0xXGXcKheXcJptao+QZH+oVNkzaquCsifOGZvkWfkOUsz
	V/v2gKuyzpQy4+oGwKRxgVoyu/3ZzWt1BvdICJNMBg==
X-Google-Smtp-Source: AOwi7QAmbDFQ/p7B+0YSwIht8zGqdJxqR+1NsCQ5kB3zX9JKxZgQvbYUInopuIL+ZsZASvWHIKd9DMwk2txF9PGslII=
X-Received: by 10.202.104.151 with SMTP id o23mr17977461oik.98.1505289847520; 
	Wed, 13 Sep 2017 01:04:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.196 with HTTP; Wed, 13 Sep 2017 01:04:07 -0700 (PDT)
In-Reply-To: <49e17973-5ff9-de9b-c3e3-3036ff5ef068@embexus.com>
References: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
	<49e17973-5ff9-de9b-c3e3-3036ff5ef068@embexus.com>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 13 Sep 2017 10:04:07 +0200
Message-ID: <CABFXn3F24cswmw2R0C-CN_+-UJSQ_360U7Cke0Pq9+0tX2=+3A@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] enable serial communication pi 3
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
X-List-Received-Date: Wed, 13 Sep 2017 08:04:08 -0000
X-Groupsio-MsgNum: 37830
Content-Type: multipart/related; boundary="RpyLiXblb9zxGHfZbfws"

--RpyLiXblb9zxGHfZbfws
Content-Type: multipart/alternative; boundary="001a11c00be6a5420e05590d9aae"

--001a11c00be6a5420e05590d9aae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for replying but it gives me this error log


> *ERROR: rpi-hwup-image-1.0-r0 do_rootfs: Unable to install packages.
> Command
> '/yocto/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-imag=
e/1.0-r0/recipe-sysroot-native/usr/bin/apt-get
>  install --force-yes --allow-unauthenticated run-postinsts
> packagegroup-core-boot kernel-modules rpi-config' returned 100:*
> *Reading package lists...*
> *Building dependency tree...*
> *Reading state information...*
> *Package rpi-config is not available, but is referred to by another
> package.*
> *This may mean that the package is missing, has been obsoleted, or**is
> only available from another source*
> *E: Package 'rpi-config' has no installation candidate*
>
> *ERROR: rpi-hwup-image-1.0-r0 do_rootfs: Function failed: do_rootfs*
> *ERROR: Logfile of failure stored in:
> /yocto/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-image=
/1.0-r0/temp/log.do_rootfs.2252**ERROR:
> Task
> (/yocto/poky/meta-raspberrypi/recipes-core/images/rpi-hwup-image.bb:do_ro=
otfs)
> failed with exit code '1'*


All what i did is  IMAGE_INSTALL_append =3D "rpi-config" , the recipe file =
is
not exist in the meta-raspberry

=E2=80=8C

On 13 September 2017 at 09:27, Ayoub Zaki <ayoub.zaki@embexus.com> wrote:

> I ran into the same problem:
>
> ENABLE_UART =3D "1" is not enough you should also add INSTALL_append=3D "
> rpi-config" to your local.conf and Serial port will be enabled.
>
> On 12.09.2017 14:09, yahia farghaly wrote:
>
> I have bitbaked rpi-hwup-image for raspberry pi 3 on sd card and connecte=
d
> the serial ports to *usb to ttl device* . i have set the minicom to
> port: /dev/ttyUSB0
> baud rate: 115200
> the image is booting fine and i can see the prompt on the screen but
> cannot see in my serial console using minicom.
> *is serial enabled by default for this image ? *
> i also tried ENABLE_UART =3D "1" in local.conf but doesn't help.
>
> how to enable it ? and what the serial device name with respect to
> raspberry pi
>
> thanks,
>
> --
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications
> Department at Cairo University.
> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
> <https://github.com/yahiafarghaly>
>
>
>
> =E2=80=8C
>
>
>
> --
>
> Ayoub Zaki
> Embedded Systems Consultant
>
> Vaihinger Str. 2/1
> 71634 Ludwigsburg
>
> e-mail: ayoub.zaki@embexus.com
> Tel: +49176-62901545https://embexus.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a11c00be6a5420e05590d9aae
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/027c421977ea17e38f572949e240e49ee044b458.png?u=3D1822760"/=
><br/>Thanks for replying but it gives me this error log<div><br/></div><di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><i>ERROR: rpi-hwup-imag=
e-1.0-r0 do_rootfs: Unable to install packages. Command &#39;/yocto/poky/bu=
ild/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/recipe-s=
ysroot-native/usr/bin/apt-get =C2=A0install --force-yes --allow-unauthentic=
ated run-postinsts packagegroup-core-boot kernel-modules rpi-config&#39; re=
turned 100:<br/></i><i>Reading package lists...<br/></i><i>Building depende=
ncy tree...<br/></i><i>Reading state information...<br/></i><i>Package rpi-=
config is not available, but is referred to by another package.<br/></i><i>=
This may mean that the package is missing, has been obsoleted, or<br/></i><=
i>is only available from another source</i><i><br/></i><i>E: Package &#39;r=
pi-config&#39; has no installation candidate</i><i><br/></i><i>ERROR: rpi-h=
wup-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br/></i><i>ERROR: Lo=
gfile of failure stored in: /yocto/poky/build/tmp/work/raspberrypi3-poky-li=
nux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.2252<br/></i><i>ERROR:=
 Task (/yocto/poky/meta-raspberrypi/recipes-core/images/rpi-hwup-image.bb:d=
o_rootfs) failed with exit code &#39;1&#39;</i></blockquote><div><br/></div=
>All what i did is =C2=A0IMAGE_INSTALL_append =3D &#34;rpi-config&#34; , th=
e recipe file is not exist in the meta-raspberry=C2=A0<br/><br/>=E2=80=8C</=
div></div><div class=3D"gmail_extra"><br/><div class=3D"gmail_quote">On 13 =
September 2017 at 09:27, Ayoub Zaki <span dir=3D"ltr">&lt;<a href=3D"mailto=
:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@embexus.com</a>&gt;</=
span> wrote:<br/><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
  
    
  
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>I ran into the same problem:<br/>
    </p>
    <p>ENABLE_UART =3D &#34;1&#34; is not enough you should also add
      INSTALL_append=3D &#34; rpi-config&#34; to your local.conf and Seria=
l port
      will be enabled.</p>
    <br/>
    <div class=3D"m_-7550513121790960194moz-cite-prefix">On 12.09.2017 14:=
09, yahia farghaly
      wrote:<br/>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><img class=3D"m_-7550513121790960194mailtrack-img" =
alt=3D"" style=3D"display:flex" src=3D"cid:attach_0_15D95A7D689EE8E5_29417@=
groups.io" height=3D"0" width=3D"0"/>I have
        bitbaked=C2=A0rpi-hwup-image for raspberry pi 3 on sd card and
        connected the serial ports to <i>usb to ttl device</i>=C2=A0. i ha=
ve
        set the minicom to=C2=A0<br/>
        port: /dev/ttyUSB0
        <div>baud rate:=C2=A0115200=C2=A0</div>
        <div>the image is booting fine and i can see the prompt on the
          screen but cannot see in my serial console using minicom.=C2=A0<=
/div>
        <div><b>is serial enabled by default for this image ?=C2=A0</b><br=
 clear=3D"all"/>
          <div>i also tried ENABLE_UART =3D &#34;1&#34; in local.conf but =
doesn&#39;t
            help.=C2=A0</div>
          <div><br/>
          </div>
          <div>how to enable it ? and what the serial device name with
            respect to raspberry pi</div>
          <div><br/>
          </div>
          <div>thanks,</div><span class=3D"HOEnZb"><font color=3D"#888888"=
>
          <div><br/>
          </div>
          -- <br/>
          <div class=3D"m_-7550513121790960194gmail_signature">
            <div dir=3D"ltr">
              <div>
                <div dir=3D"ltr"><font style=3D"font-family:Tahoma,sans-se=
rif,Arial,serif,EmojiFont" size=3D"1" color=3D"#777777"><span style=3D"font=
-size:13px">Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,=
0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size=
:16px"></span>
                  <div><font face=3D"Tahoma, sans-serif, Arial, serif,
                      EmojiFont" color=3D"#777777"><span style=3D"font-siz=
e:13px">Graduated from Faculty of
                        Engineering - Electronics and Communications
                        Department at Cairo University.</span></font><br/>
                  </div>
                  <div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial=
,Helvetica,sans-serif,serif,EmojiFont;font-size:16px">
                    <div><a href=3D"https://linkedin.com/in/yahiafarghaly"=
 rel=3D"noopener noreferrer" target=3D"_blank"><font style=3D"font-family:T=
ahoma,sans-serif,Arial,serif,EmojiFont" size=3D"1"><span style=3D"font-size=
:13px">Linkedin</span></font></a><font style=3D"font-family:Tahoma,sans-ser=
if,Arial,serif,EmojiFont" size=3D"1" color=3D"#777777"><span style=3D"font-=
size:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafa=
rghaly" rel=3D"noopener noreferrer" target=3D"_blank"><font style=3D"font-f=
amily:Tahoma,sans-serif,Arial,serif,EmojiFont" size=3D"1"><span style=3D"fo=
nt-size:13px">GitHub</span></font></a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br/>
          <br/>
          <br/>
          =E2=80=8C</font></span></div><span class=3D"HOEnZb"><font color=
=3D"#888888">
      </font></span></div><span class=3D"HOEnZb"><font color=3D"#888888">
      <br/>
      <fieldset class=3D"m_-7550513121790960194mimeAttachmentHeader"></fie=
ldset>
      <br/>
    </font></span></blockquote><span class=3D"HOEnZb"><font color=3D"#8888=
88">
    <br/>
    <pre class=3D"m_-7550513121790960194moz-signature" cols=3D"72">--=20

Ayoub Zaki
Embedded Systems Consultant

Vaihinger Str. 2/1
71634 Ludwigsburg

e-mail: <a class=3D"m_-7550513121790960194moz-txt-link-abbreviated" href=
=3D"mailto:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@embexus.co=
m</a>
Tel: +49176-62901545
<a class=3D"m_-7550513121790960194moz-txt-link-freetext" href=3D"https://e=
mbexus.com" target=3D"_blank">https://embexus.com</a>
</pre>
  </font></span></div>

<br/>--<br/>
______________________________<wbr/>_________________<br/>
yocto mailing list<br/>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br/>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferre=
r" target=3D"_blank">https://lists.yoctoproject.<wbr/>org/listinfo/yocto</a=
><br/>
<br/></blockquote></div><br/><br clear=3D"all"/><div><br/></div>-- <br/><d=
iv class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D=
"ltr"><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"fon=
t-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:=
13px">Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);fon=
t-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"=
></span><div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, ser=
if, EmojiFont"><span style=3D"font-size:13px">Graduated from Faculty of Eng=
ineering - Electronics and Communications Department at Cairo University.</=
span></font><br/></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,A=
rial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"h=
ttps://linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D=
"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont"><span style=3D"font-size:13px">Linkedin</span></font></a><font=
 size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,=
serif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font>=
<a href=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" ta=
rget=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Ari=
al,serif,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a>=
</div></div></div></div></div></div>
</div>
</body></html>

--001a11c00be6a5420e05590d9aae--

--RpyLiXblb9zxGHfZbfws
Content-Id: <attach_0_15D95A7D689EE8E5_29417@groups.io>
X-Attachment-Id: attach_0_15D95A7D689EE8E5_29417@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--RpyLiXblb9zxGHfZbfws--
