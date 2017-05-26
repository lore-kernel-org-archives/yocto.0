Return-Path: <gvandenbosch@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBACBE00C31; Fri, 26 May 2017 07:28:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gvandenbosch[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07E06E0094C
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 07:28:10 -0700 (PDT)
Received: by mail-wr0-f171.google.com with SMTP id w50so2954200wrc.0
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 07:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mF7DX+1NneT6uzdHEb8pDDeETx9ZlxqvBs5qE4tqIyc=;
	b=mAQXTcO5ExK0xB/gjbsHBhmb0RWWaavWul28lo71j513bcAPBXzyaFJa7Z5BZdqokn
	LrB3gVwCXPl0HAGbI1jILbAIwdFdelMvMt+QEXNTmis+/FdTlSFSEVx9IGLA+8tBwt8A
	q6rdmJunXJAxL/YGKkS0TVTU0RJ9dP/OY6Q6bxpV01q22W5mwJN1zqBUNTyUISlq+eP6
	mQLXfWmKs/OJCghnkuTI0f+pK+jC5lrtGgmsi+tGX+MztXH16adghBXtaij60hv/veZG
	JAfGGdaqSedPoRUIYQEeVOeKYbG+DJNowXebmGE5AHNyMhPkm+yPnw1xKBxAwx75ACet
	flFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mF7DX+1NneT6uzdHEb8pDDeETx9ZlxqvBs5qE4tqIyc=;
	b=UCouKtkfiKCeCz4P+sjQa3zt3AuFB4dWzG4c8wONhTCgia86yJ0PYBHmhuANbOxIbT
	oPMEKIQ+55StSbHiwWEr7TX3LOM1uvQUfFXEi8v2d+dCw5HPiPEJSFLgVWp3CMXY256v
	YOnrds4h550iXVqTzudI/b2dwfoQrDVNbB+Bcs0EPTk1IgILvBHflhfUizyHj4EA4won
	MOUy+cZGWuo9/DNGdgnb1bgRjQt/VWrHY+mkXG3evefR3Uk4/7nM9REGC9yhtjRMPNVB
	7XPrLorHZUAAcgfsmjyOHCYpalDHNT/Dr4TdP5xZDLBuTaQCMstB4q0WOHRy6eRSfMKc
	2a+w==
X-Gm-Message-State: AODbwcA/LtG9ZMI6+aK7LWuPEQhld22eiLTMMp2/eQ0R9aQ+cwZteEws
	1Jafsv101yRJkcQ2lQMVSmMm4uDm/Ds1
X-Received: by 10.223.152.233 with SMTP id w96mr2141087wrb.151.1495808889932; 
	Fri, 26 May 2017 07:28:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.73.139 with HTTP; Fri, 26 May 2017 07:27:49 -0700 (PDT)
In-Reply-To: <719c5e41-a79d-f14e-01e7-06a7b881fc44@embexus.com>
References: <CADqNDzo_i22kiy7upOZfD2FoRsFAdJ6_+F7pDATSTonooN1fQQ@mail.gmail.com>
	<CAAQYJAsD1B=Z1pFfVS8VhW4aKXcVShye2sLYqf0gsLFta+uifg@mail.gmail.com>
	<CADqNDzqOGHU43Eaz+RuaQAxSeRGPPd2AEKhWj9T7Hsj8L--Kgg@mail.gmail.com>
	<719c5e41-a79d-f14e-01e7-06a7b881fc44@embexus.com>
From: Gerard van den Bosch <gvandenbosch@gmail.com>
Date: Fri, 26 May 2017 22:27:49 +0800
Message-ID: <CADqNDzordhf-nQ=fuC=nT+hZyofbx_xeuZyQauKgtTAx1c6EBg@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
Cc: yocto@yoctoproject.org
Subject: Re: Warning: unable to open an initial console
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
X-List-Received-Date: Fri, 26 May 2017 14:28:12 -0000
Content-Type: multipart/alternative; boundary="001a113c5f9889550205506e25e8"

--001a113c5f9889550205506e25e8
Content-Type: text/plain; charset="UTF-8"

Hello Ayoub,

The kernel is quite old 2.6.20 and this variable is not available in the
config.
On the internet I saw this is only introduced with kernel version 2.6.32.

Cheers,
Gerard

On Fri, May 26, 2017 at 10:20 PM, Ayoub Zaki <ayoub.zaki@embexus.com> wrote:

> Hi Gerard,
>
> did you try to set CONFIG_DEVTMPFS=y in your Kernel config ?
>
> Cheers
>
> On 26.05.2017 15:52, Gerard van den Bosch wrote:
>
> Hello Andrea,
>
> I have tried to add the line to my machine config:
> IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt"
>
> But this didn't help, then I looked a bit further and also tried to set
> the following:
>
> USE_DEVFS="0"
> VIRTUAL_RUNTIME_dev_manager = "mdev"
>
> Unfortunately this doesn't seem to change anything.
>
> Cheers,
> Gerard
>
> On Fri, May 26, 2017 at 7:27 PM, Andrea Adami <andrea.adami@gmail.com>
> wrote:
>
>> On Fri, May 26, 2017 at 1:05 PM, Gerard van den Bosch
>> <gvandenbosch@gmail.com> wrote:
>> > Hello,
>> >
>> > I have build my vendor custom kernel 2.6.20 with yocto daisy.
>> > Daisy is used because seems to be last release supporting this old
>> kernel.
>> >
>> > I tried building core-image-minimal and core-image-base.
>> >
>> > The kernel boots and the rootfs is mounted but then I get:
>> >
>> > "Warning: unable to open an initial console."
>> >
>> >
>> > I found on the internet this is because "/dev/console" doesn't exists.
>> > The dev folder in my generated rootfs is empty.
>> >
>> > On internet found can do the following commands:
>> > "mknod -m 600 /dev/console c 5 1 "
>> > "mknod -m 666 /dev/null c 1 3"
>> >
>> > But if this is the problem how do I add this to my recipe?
>> > Or is there a proper way to populate this devices?
>> >
>> > Cheers,
>> > Gerard
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>> Hello Gerard,
>>
>> if your old kernel lacks devtmpfs you need a "device table".
>> You need to set at least
>> IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt"
>>
>> This is a default set in image.bbclass before and after daisy...dunno
>> what's happened with this release.
>>
>> Cheers
>> Andrea
>>
>
>
>
>
> --
>
> Ayoub Zaki
> ayoub.zaki@embexus.com
> Mobile: +49(0)176-62901545 <+49%20176%2062901545>https://embexus.com
>
>

--001a113c5f9889550205506e25e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ayoub,<div><br></div><div>The kernel is quite old 2.=
6.20 and this variable is not available in the config.</div><div>On the int=
ernet I saw this is only introduced with kernel version 2.6.32.</div><div><=
br></div><div>Cheers,</div><div>Gerard</div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Fri, May 26, 2017 at 10:20 PM, Ayoub Za=
ki <span dir=3D"ltr">&lt;<a href=3D"mailto:ayoub.zaki@embexus.com" target=
=3D"_blank">ayoub.zaki@embexus.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi Gerard,</p>
    <p>did you try to set <span style=3D"color:rgb(36,39,41);font-family:Ar=
ial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px;font-sty=
le:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weigh=
t:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);display:inline!important;float:none">CONFIG_DEVTMPFS=3Dy
        in your Kernel config ?</span></p>
    <p><span style=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica=
 Neue&quot;,Helvetica,sans-serif;font-size:15px;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:normal;letter-spa=
cing:normal;text-align:left;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;background-color:rgb(255,255,255);display:inline!i=
mportant;float:none">Cheers<br>
      </span></p><div><div class=3D"h5">
    <br>
    <div class=3D"m_-6926889303052179457moz-cite-prefix">On 26.05.2017 15:5=
2, Gerard van den
      Bosch wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hello Andrea,
        <div><br>
        </div>
        <div>I have tried to add the line to my machine config:</div>
        <div>
          <div>IMAGE_DEVICE_TABLES =3D &quot;files/device_table-minimal.<wb=
r>txt&quot;</div>
        </div>
        <div><br>
        </div>
        <div>But this didn&#39;t help, then I looked a bit further and also
          tried to set the following:</div>
        <div><br>
        </div>
        <div>
          <div>USE_DEVFS=3D&quot;0&quot;</div>
          <div>VIRTUAL_RUNTIME_dev_manager =3D &quot;mdev&quot;<br>
          </div>
        </div>
        <div><br>
        </div>
        <div>Unfortunately this doesn&#39;t seem to change anything.</div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>Gerard</div>
      </div>
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On Fri, May 26, 2017 at 7:27 PM, Andrea
          Adami <span dir=3D"ltr">&lt;<a href=3D"mailto:andrea.adami@gmail.=
com" target=3D"_blank">andrea.adami@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
            <div class=3D"m_-6926889303052179457HOEnZb">
              <div class=3D"m_-6926889303052179457h5">On Fri, May 26, 2017 =
at 1:05 PM, Gerard
                van den Bosch<br>
                &lt;<a href=3D"mailto:gvandenbosch@gmail.com" target=3D"_bl=
ank">gvandenbosch@gmail.com</a>&gt;
                wrote:<br>
                &gt; Hello,<br>
                &gt;<br>
                &gt; I have build my vendor custom kernel 2.6.20 with
                yocto daisy.<br>
                &gt; Daisy is used because seems to be last release
                supporting this old kernel.<br>
                &gt;<br>
                &gt; I tried building core-image-minimal and
                core-image-base.<br>
                &gt;<br>
                &gt; The kernel boots and the rootfs is mounted but then
                I get:<br>
                &gt;<br>
                &gt; &quot;Warning: unable to open an initial console.&quot=
;<br>
                &gt;<br>
                &gt;<br>
                &gt; I found on the internet this is because
                &quot;/dev/console&quot; doesn&#39;t exists.<br>
                &gt; The dev folder in my generated rootfs is empty.<br>
                &gt;<br>
                &gt; On internet found can do the following commands:<br>
                &gt; &quot;mknod -m 600 /dev/console c 5 1 &quot;<br>
                &gt; &quot;mknod -m 666 /dev/null c 1 3&quot;<br>
                &gt;<br>
                &gt; But if this is the problem how do I add this to my
                recipe?<br>
                &gt; Or is there a proper way to populate this devices?<br>
                &gt;<br>
                &gt; Cheers,<br>
                &gt; Gerard<br>
                &gt;<br>
              </div>
            </div>
            &gt; --<br>
            &gt; ______________________________<wbr>_________________<br>
            &gt; yocto mailing list<br>
            &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br>
            &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/li=
stinfo/yocto</a><br>
            &gt;<br>
            <br>
            Hello Gerard,<br>
            <br>
            if your old kernel lacks devtmpfs you need a &quot;device table=
&quot;.<br>
            You need to set at least<br>
            IMAGE_DEVICE_TABLES =3D &quot;files/device_table-minimal.tx<wbr=
>t&quot;<br>
            <br>
            This is a default set in image.bbclass before and after
            daisy...dunno<br>
            what&#39;s happened with this release.<br>
            <br>
            Cheers<br>
            <span class=3D"m_-6926889303052179457HOEnZb"><font color=3D"#88=
8888">Andrea<br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
      <br>
      <fieldset class=3D"m_-6926889303052179457mimeAttachmentHeader"></fiel=
dset>
      <br>
    </blockquote>
    <br>
    </div></div><span class=3D"HOEnZb"><font color=3D"#888888"><pre class=
=3D"m_-6926889303052179457moz-signature" cols=3D"72">--=20

Ayoub Zaki

<a class=3D"m_-6926889303052179457moz-txt-link-abbreviated" href=3D"mailto:=
ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@embexus.com</a>
Mobile: <a href=3D"tel:+49%20176%2062901545" value=3D"+4917662901545" targe=
t=3D"_blank">+49(0)176-62901545</a>
<a class=3D"m_-6926889303052179457moz-txt-link-freetext" href=3D"https://em=
bexus.com" target=3D"_blank">https://embexus.com</a></pre>
  </font></span></div>

</blockquote></div><br></div>

--001a113c5f9889550205506e25e8--
