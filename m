Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25B9FE00C2B; Wed, 13 Sep 2017 01:16:32 -0700 (PDT)
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
	*      [209.85.218.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF005E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 01:16:30 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id r20so41764017oie.0
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 01:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kb/QF6N/gqWslNV3JBLEIQlCEKZBF4Oq+MgTXlT+Qck=;
	b=uDlhDyFXwHXPIpmmzf76nEuPewY+RSemgTcaEQ/WQJpSfZZr+4w+LygQcbW+X0oR34
	Xdu3sJG0Wz7dqeThxTq+CCjoqITRjHsnM/3vjOvRvzeCSiaFobXtPAezTM/VNMhA0Swj
	xpxW/rYna+G5k0HFbWmKA8EvW/pqawsa9L8lH4AmdaHUFDCJ4V5w06qz8+MIQBNnaWev
	pAu6h4tjiCSBbk10ktwvxMlz3lyA4VzPrgGN8RH3FRUxmfT816AlCXEVCHhxrdO0fmMI
	lIUmyG7SUtLy27gSTzNpCBf7H4jmLcuU2OrvUzowm2dC13CWYed9zJEXRlkKRtsNwt1V
	/bSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kb/QF6N/gqWslNV3JBLEIQlCEKZBF4Oq+MgTXlT+Qck=;
	b=j7sBguit1iy+1i2OoO4a02n4O1tLGjjdMojRYvS1/wvnpzuceRRihrz/84fdzjsJ2H
	RZdPt5c/p/jH86BNJwLwUKxEIjfj7uHXHoe1DGZ3Zo1xTKePCx1DkMuSmpo41k7jCBl7
	CtgOydCDp7F4O4PZQldOTbhaNJSZEEcgmpJ2Hk4uBOC167luq1hqeDTqlAqx3CyV/9Yu
	AORN3Yz0uhwEEqJ+TjYq3olWNTC4uSRSz9uiXKNuSQWHFArpl/g/mdTplUaITqpaz/in
	4JrC7mEesFNArGr+/jtVPjsSyuFvAZNdR1tLEIssq81gyMTDeAxvVP2/DWKzk6zUXqGU
	5ILQ==
X-Gm-Message-State: AHPjjUhiWC2tHhycDJ21Ewonb6PCcwAStVbZcysu2FVnrq9hIeQJ2Ja1
	KU3lKmn7Zy5UpsqJ6Wkojup8bmGMMJcaIALgzj4=
X-Google-Smtp-Source: AOwi7QBt587YjchSV+a9WHK+YXS6HTRibdFnVhYmVCbQ38jiEuGlijslhhoAOSaFBntc+AKWiisqon1WkajJgR5ySvk=
X-Received: by 10.202.104.151 with SMTP id o23mr18005105oik.98.1505290589842; 
	Wed, 13 Sep 2017 01:16:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.196 with HTTP; Wed, 13 Sep 2017 01:16:29 -0700 (PDT)
In-Reply-To: <CAC+thW0EPdn057n+Ff9ZOW8meqqA8UFDgFCMxY=7cK9pdQdUHA@mail.gmail.com>
References: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
	<49e17973-5ff9-de9b-c3e3-3036ff5ef068@embexus.com>
	<CABFXn3F24cswmw2R0C-CN_+-UJSQ_360U7Cke0Pq9+0tX2=+3A@mail.gmail.com>
	<CAC+thW0EPdn057n+Ff9ZOW8meqqA8UFDgFCMxY=7cK9pdQdUHA@mail.gmail.com>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 13 Sep 2017 10:16:29 +0200
Message-ID: <CABFXn3FLLiiBSusW2NJYy_kWa39sELVq1HMFgKFFk-Q7DyfoHw@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 13 Sep 2017 08:16:32 -0000
X-Groupsio-MsgNum: 37832
Content-Type: multipart/related; boundary="dhWVvVNKu5AaBhOCTror"

--dhWVvVNKu5AaBhOCTror
Content-Type: multipart/alternative; boundary="001a11c00be6e4303705590dc694"

--001a11c00be6e4303705590dc694
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

ok, i fixed this thanks for the note but it still gives me the error.



=E2=80=8C

On 13 September 2017 at 10:07, Andrea Galbusera <gizero@gmail.com> wrote:

>
>
> On Wed, Sep 13, 2017 at 10:04 AM, yahia farghaly <yahiafarghaly@gmail.com=
>
> wrote:
>
>>
>> Thanks for replying but it gives me this error log
>>
>>
>>> *ERROR: rpi-hwup-image-1.0-r0 do_rootfs: Unable to install packages.
>>> Command
>>> '/yocto/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-im=
age/1.0-r0/recipe-sysroot-native/usr/bin/apt-get
>>>  install --force-yes --allow-unauthenticated run-postinsts
>>> packagegroup-core-boot kernel-modules rpi-config' returned 100:*
>>> *Reading package lists...*
>>> *Building dependency tree...*
>>> *Reading state information...*
>>> *Package rpi-config is not available, but is referred to by another
>>> package.*
>>> *This may mean that the package is missing, has been obsoleted, or**is
>>> only available from another source*
>>> *E: Package 'rpi-config' has no installation candidate*
>>>
>>> *ERROR: rpi-hwup-image-1.0-r0 do_rootfs: Function failed: do_rootfs*
>>> *ERROR: Logfile of failure stored in:
>>> /yocto/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-ima=
ge/1.0-r0/temp/log.do_rootfs.2252**ERROR:
>>> Task
>>> (/yocto/poky/meta-raspberrypi/recipes-core/images/rpi-hwup-image.bb:do_=
rootfs)
>>> failed with exit code '1'*
>>
>>
>> All what i did is  IMAGE_INSTALL_append =3D "rpi-config" , the recipe fi=
le
>> is not exist in the meta-raspberry
>>
>
> You missed the space before rpi-config from the original suggestion in
> IMAGE_INSTALL_append. This is always required when overriding variables
> with _append
>
>
>>
>> =E2=80=8C
>>
>> On 13 September 2017 at 09:27, Ayoub Zaki <ayoub.zaki@embexus.com> wrote=
:
>>
>>> I ran into the same problem:
>>>
>>> ENABLE_UART =3D "1" is not enough you should also add INSTALL_append=3D=
 "
>>> rpi-config" to your local.conf and Serial port will be enabled.
>>>
>>> On 12.09.2017 14:09, yahia farghaly wrote:
>>>
>>> I have bitbaked rpi-hwup-image for raspberry pi 3 on sd card and
>>> connected the serial ports to *usb to ttl device* . i have set the
>>> minicom to
>>> port: /dev/ttyUSB0
>>> baud rate: 115200
>>> the image is booting fine and i can see the prompt on the screen but
>>> cannot see in my serial console using minicom.
>>> *is serial enabled by default for this image ? *
>>> i also tried ENABLE_UART =3D "1" in local.conf but doesn't help.
>>>
>>> how to enable it ? and what the serial device name with respect to
>>> raspberry pi
>>>
>>> thanks,
>>>
>>> --
>>> Yahia Farghaly
>>> Graduated from Faculty of Engineering - Electronics and Communications
>>> Department at Cairo University.
>>> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
>>> <https://github.com/yahiafarghaly>
>>>
>>>
>>>
>>> =E2=80=8C
>>>
>>>
>>>
>>> --
>>>
>>> Ayoub Zaki
>>> Embedded Systems Consultant
>>>
>>> Vaihinger Str. 2/1
>>> 71634 Ludwigsburg
>>>
>>> e-mail: ayoub.zaki@embexus.com
>>> Tel: +49176-62901545 <+49%20176%2062901545>https://embexus.com
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>>
>> --
>> Yahia Farghaly
>> Graduated from Faculty of Engineering - Electronics and Communications
>> Department at Cairo University.
>> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
>> <https://github.com/yahiafarghaly>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>


--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a11c00be6e4303705590dc694
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/1787890d8fece783e26e482b869701a206863341.png?u=3D1822760"/=
>ok, i fixed this thanks for the note but it still gives me the error.<br/>=
<br/><br/><br/>=E2=80=8C</div><div class=3D"gmail_extra"><br/><div class=3D=
"gmail_quote">On 13 September 2017 at 10:07, Andrea Galbusera <span dir=3D"=
ltr">&lt;<a href=3D"mailto:gizero@gmail.com" target=3D"_blank">gizero@gmail=
.com</a>&gt;</span> wrote:<br/><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr"><br/><div class=3D"gmail_extra"><br/><div class=3D"gmail_quote"><span c=
lass=3D"">On Wed, Sep 13, 2017 at 10:04 AM, yahia farghaly <span dir=3D"ltr=
">&lt;<a href=3D"mailto:yahiafarghaly@gmail.com" target=3D"_blank">yahiafar=
ghaly@gmail.com</a>&gt;</span> wrote:<br/><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><img class=3D"m_-7576970218385664028gmail=
-m_-7843972840442536946mailtrack-img" alt=3D"" style=3D"display:flex" src=
=3D"cid:attach_0_15D95A7D73238EE0_14359@groups.io" width=3D"0" height=3D"0=
"/><br/>Thanks for replying but it gives me this error log<div><br/></div><=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><i>ERROR: rpi-hwup-im=
age-1.0-r0 do_rootfs: Unable to install packages. Command &#39;/yocto/poky/=
build/tmp/work/ra<wbr/>spberrypi3-poky-linux-gnueabi/<wbr/>rpi-hwup-image/1=
.0-r0/recipe-<wbr/>sysroot-native/usr/bin/apt-get =C2=A0install --force-yes=
 --allow-unauthenticated run-postinsts packagegroup-core-boot kernel-module=
s rpi-config&#39; returned 100:<br/></i><i>Reading package lists...<br/></i=
><i>Building dependency tree...<br/></i><i>Reading state information...<br/=
></i><i>Package rpi-config is not available, but is referred to by another =
package.<br/></i><i>This may mean that the package is missing, has been obs=
oleted, or<br/></i><i>is only available from another source</i><i><br/></i>=
<i>E: Package &#39;rpi-config&#39; has no installation candidate</i><i><br/=
></i><i>ERROR: rpi-hwup-image-1.0-r0 do_rootfs: Function failed: do_rootfs<=
br/></i><i>ERROR: Logfile of failure stored in: /yocto/poky/build/tmp/work/=
ras<wbr/>pberrypi3-poky-linux-gnueabi/<wbr/>rpi-hwup-image/1.0-r0/temp/<wbr=
/>log.do_rootfs.2252<br/></i><i>ERROR: Task (/yocto/poky/meta-raspberrypi/<=
wbr/>recipes-core/images/rpi-hwup-i<wbr/>mage.bb:do_rootfs) failed with exi=
t code &#39;1&#39;</i></blockquote><div><br/></div>All what i did is =C2=A0=
IMAGE_INSTALL_append =3D &#34;rpi-config&#34; , the recipe file is not exis=
t in the meta-raspberry=C2=A0<br/></div></div></blockquote><div><br/></div>=
</span><div>You missed the space before rpi-config from the original sugges=
tion in IMAGE_INSTALL_append. This is always required when overriding varia=
bles with _append<br/></div><div><div class=3D"h5"><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br/>=E2=
=80=8C</div></div><div class=3D"gmail_extra"><br/><div class=3D"gmail_quot=
e"><div><div class=3D"m_-7576970218385664028gmail-h5">On 13 September 2017 =
at 09:27, Ayoub Zaki <span dir=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@emb=
exus.com" target=3D"_blank">ayoub.zaki@embexus.com</a>&gt;</span> wrote:<br=
/></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div c=
lass=3D"m_-7576970218385664028gmail-h5">
  
    
  
  <div bgcolor=3D"#FFFFFF">
    <p>I ran into the same problem:<br/>
    </p>
    <p>ENABLE_UART =3D &#34;1&#34; is not enough you should also add
      INSTALL_append=3D &#34; rpi-config&#34; to your local.conf and Seria=
l port
      will be enabled.</p>
    <br/>
    <div class=3D"m_-7576970218385664028gmail-m_-7843972840442536946m_-755=
0513121790960194moz-cite-prefix">On 12.09.2017 14:09, yahia farghaly
      wrote:<br/>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><img class=3D"m_-7576970218385664028gmail-m_-784397=
2840442536946m_-7550513121790960194mailtrack-img" alt=3D"" style=3D"display=
:flex" width=3D"0" height=3D"0" src=3D"cid:attach_1_15D95A7D7327D89C_14359@=
groups.io"/>I have
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
          <div>thanks,</div><span class=3D"m_-7576970218385664028gmail-m_-=
7843972840442536946HOEnZb"><font color=3D"#888888">
          <div><br/>
          </div>
          -- <br/>
          <div class=3D"m_-7576970218385664028gmail-m_-7843972840442536946=
m_-7550513121790960194gmail_signature">
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
          =E2=80=8C</font></span></div><span class=3D"m_-75769702183856640=
28gmail-m_-7843972840442536946HOEnZb"><font color=3D"#888888">
      </font></span></div><span class=3D"m_-7576970218385664028gmail-m_-78=
43972840442536946HOEnZb"><font color=3D"#888888">
      <br/>
      <fieldset class=3D"m_-7576970218385664028gmail-m_-784397284044253694=
6m_-7550513121790960194mimeAttachmentHeader"></fieldset>
      <br/>
    </font></span></blockquote><span class=3D"m_-7576970218385664028gmail-=
m_-7843972840442536946HOEnZb"><font color=3D"#888888">
    <br/>
    <pre class=3D"m_-7576970218385664028gmail-m_-7843972840442536946m_-755=
0513121790960194moz-signature" cols=3D"72">--=20

Ayoub Zaki
Embedded Systems Consultant

Vaihinger Str. 2/1
71634 Ludwigsburg

e-mail: <a class=3D"m_-7576970218385664028gmail-m_-7843972840442536946m_-7=
550513121790960194moz-txt-link-abbreviated" href=3D"mailto:ayoub.zaki@embex=
us.com" target=3D"_blank">ayoub.zaki@embexus.com</a>
Tel: <a href=3D"tel:+49%20176%2062901545" value=3D"+4917662901545" target=
=3D"_blank">+49176-62901545</a>
<a class=3D"m_-7576970218385664028gmail-m_-7843972840442536946m_-755051312=
1790960194moz-txt-link-freetext" href=3D"https://embexus.com" target=3D"_bl=
ank">https://embexus.com</a>
</pre>
  </font></span></div>

<br/></div></div><span class=3D"m_-7576970218385664028gmail-HOEnZb"><font =
color=3D"#888888">--<br/>
______________________________<wbr/>_________________<br/>
yocto mailing list<br/>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctopro=
ject.org</a><br/>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferre=
r" target=3D"_blank">https://lists.yoctoproject.org<wbr/>/listinfo/yocto</a=
><br/>
<br/></font></span></blockquote></div><span class=3D"m_-757697021838566402=
8gmail-"><br/><br clear=3D"all"/><div><br/></div>-- <br/><div class=3D"m_-7=
576970218385664028gmail-m_-7843972840442536946gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr"><font style=3D"font-family:Tahoma,sans-serif,Ari=
al,serif,EmojiFont" size=3D"1" color=3D"#777777"><span style=3D"font-size:1=
3px">Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font=
-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px">=
</span><div><font face=3D"Tahoma, sans-serif, Arial, serif, EmojiFont" colo=
r=3D"#777777"><span style=3D"font-size:13px">Graduated from Faculty of Engi=
neering - Electronics and Communications Department at Cairo University.</s=
pan></font><br/></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Ar=
ial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"ht=
tps://linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"=
_blank"><font style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"=
 size=3D"1"><span style=3D"font-size:13px">Linkedin</span></font></a><font =
style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont" size=3D"1" co=
lor=3D"#777777"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><=
a href=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" tar=
get=3D"_blank"><font style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emo=
jiFont" size=3D"1"><span style=3D"font-size:13px">GitHub</span></font></a><=
/div></div></div></div></div></div>
</span></div>
<br/>--<br/>
______________________________<wbr/>_________________<br/>
yocto mailing list<br/>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctopro=
ject.org</a><br/>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferre=
r" target=3D"_blank">https://lists.yoctoproject.org<wbr/>/listinfo/yocto</a=
><br/>
<br/></blockquote></div></div></div><br/></div></div>
</blockquote></div><br/><br clear=3D"all"/><div><br/></div>-- <br/><div cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"font-fam=
ily:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px"=
>Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></sp=
an><div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, serif, E=
mojiFont"><span style=3D"font-size:13px">Graduated from Faculty of Engineer=
ing - Electronics and Communications Department at Cairo University.</span>=
</font><br/></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,=
Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"https:=
//linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_bla=
nk"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emo=
jiFont"><span style=3D"font-size:13px">Linkedin</span></font></a><font size=
=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a h=
ref=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" target=
=
=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,=
serif,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a></d=
iv></div></div></div></div></div>
</div>
</body></html>

--001a11c00be6e4303705590dc694--

--dhWVvVNKu5AaBhOCTror
Content-Id: <attach_0_15D95A7D73238EE0_14359@groups.io>
X-Attachment-Id: attach_0_15D95A7D73238EE0_14359@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--dhWVvVNKu5AaBhOCTror
Content-Id: <attach_1_15D95A7D7327D89C_14359@groups.io>
X-Attachment-Id: attach_1_15D95A7D7327D89C_14359@groups.io
Content-Type: image/gif; name="dummyfile.1.part"
Content-Disposition: inline; filename="dummyfile.1.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--dhWVvVNKu5AaBhOCTror--
