Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2491E009B9; Thu,  9 Mar 2017 23:26:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.175 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 950A8E009A0
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 23:26:46 -0800 (PST)
Received: by mail-ua0-f175.google.com with SMTP id u30so106651399uau.0
	for <yocto@yoctoproject.org>; Thu, 09 Mar 2017 23:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=WWLWJto4wfa/ktudEvbZxw62GqQnVPda4KJZnG8WbIY=;
	b=t1hnPXusk/qns/7UtfTM9g+2/cLL1CP5Sc3+CQ3jiaqDBA3HVyVVMl4kngjmNMY0+l
	slM0cDiH3QrA3dtmeFuQb3o1iJzfRlCjAsMkWUQisx/HEy2QTgsDTNZlrw+uTwCRhAVK
	6Rz6W7HmJayCCHt9pCSOmxWJ+KxR+vmZcRJrQbdkHpMSlhCvGI78RMtvoXoV/jRsR7Me
	1wgE9ERGRkpUMrmjUdkDrDH7I9rmTNc6WBd+kR2Mll3MwehgRItVeED0w2PtnN0YoLbE
	GSMcWSg+zBnGW4s4A/x0WBrBnBg2WBSFZ/8mB+U6Q0vRGa6jlhCBJIJn/Go+gG/UdajG
	jQzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=WWLWJto4wfa/ktudEvbZxw62GqQnVPda4KJZnG8WbIY=;
	b=LUwfsv2AB9fpANxXqsAfGZ6WuHWWCBFWGKUwx+6LIu/a2Lvt1FFstZZ4eCxrxcu9kw
	1UUHf5yqrYbvCZ4MBuvTv087tz9DgyPnKjkDTDChVyrgjgGIaER1xrWgkm+HmpoTigE8
	IBoAi2BxesJOYl8S7AnviygWQCWrW+J1qvE/r4C+SVOyDsYQhSraO7gvWMo0zAsxsXL0
	lnTnBIXESnHKOqMi2tFDMLbsFCfvgcam6YMUwGnthVZWY1HsmEQomeJ+Ne1uZEFtDUJ+
	ogBAoPrqfgfipYTLnyfqBxN2C+YwxlDqqC2O4xVg/qO4ZLLMEFJwWizT1/FL5fC0WyY5
	UMUw==
X-Gm-Message-State: AMke39numyi6kpVwV4897qN/rQdX3meMuqe7lYE/vonIudcfg/fW+zbsumz+b0P8i1Q+EKYFrvjhLEe3ZYRcXA==
X-Received: by 10.176.85.75 with SMTP id u11mr9090849uaa.36.1489130805940;
	Thu, 09 Mar 2017 23:26:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.169.203 with HTTP; Thu, 9 Mar 2017 23:26:45 -0800 (PST)
Received: by 10.31.169.203 with HTTP; Thu, 9 Mar 2017 23:26:45 -0800 (PST)
In-Reply-To: <c8169cf0-c594-42d6-b286-7080e9693c95@mlbassoc.com>
References: <SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0@SG2PR0301MB2016.apcprd03.prod.outlook.com>
	<20170308171742.GC2586@haswell>
	<SG2PR0301MB201643023083BF1A84D10302D1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>
	<c8169cf0-c594-42d6-b286-7080e9693c95@mlbassoc.com>
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Date: Fri, 10 Mar 2017 16:26:45 +0900
Message-ID: <CACMwXoVd336HF2Y5CspxdbuEk67doeTuVhxMZsu_pOeMKLQUeg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Raspberry Pi2 Fails to boot into LXDE.
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
X-List-Received-Date: Fri, 10 Mar 2017 07:26:50 -0000
Content-Type: multipart/alternative; boundary=f403045e2966b65889054a5b48a2

--f403045e2966b65889054a5b48a2
Content-Type: text/plain; charset=UTF-8

Hello Steve

Would you try to other HDMI display such as PC monitor.

I suspects two points as follows.

* You enabled KMS(such as vc4graphics in MACHINE_FEATURE)
* Your display has not EDID.

If your HDMI settings in config.txt such as follows. There is a high
possibility that your HDMI display does not have EDID.

```
hdmi_group=2
hdmi_mode=87
```

When your display has not EDID, KMS will fail in initalization.
In such case, you have to create EDID file manually.

I hope this helps.


2017/03/10 14:43 "Gary Thomas" <gary@mlbassoc.com>:

> On 2017-03-10 01:55, Steve Plant wrote:
>
>> OK, I have spent the last day googling my heart out trying to find the
>> Xorg.log file without any luck.
>>
>>
>> The problem is that due to the rpi hanging on boot, the only way I can
>> access the SD card to look for the file is place
>> it in a USB SD card reader and use my VirtualBox based Debian to "ls"
>> directores etc.
>>
>> Having established that there is no file located at /var/log/Xorg.log
>> (there isn't a log directory) but there is a
>> symbolic link in the var directory - goes nowhere.
>>
>>
>> After goggling I discovered that the file could also be in the
>> ~/.local/share/xorg/Xorg.0.log, however if I try to look
>> there I get "permission denied" and cannot seem to get to the root
>> directory of the card and I can't find a way around
>> this as I'm trying to access this directory through the USB card reader.
>>
>>
>> Looked everywhere with no answers, Is there anyone who could help me
>> here??
>>
>
> /var/log is on a volatile file system (i.e. it does not live on the SD
> card)
>
> If you can get into your board via SSH, you can copy the file and send it
>
> ------------------------------------------------------------
>> ------------------------------------------------------------
>> *From:* Khem Raj <raj.khem@gmail.com>
>> *Sent:* Wednesday, 8 March 2017 5:17 p.m.
>> *To:* Steve Plant
>> *Cc:* yocto@yoctoproject.org
>> *Subject:* Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.
>>
>> On 17-03-08 12:40:51, Steve Plant wrote:
>>
>>> Hi All,
>>>
>>>
>>> Very new to all this linux world, and especially Yocto.
>>>
>>>
>>> I'm working on a embedded project at the moment using a raspberry pi2
>>> board.
>>>
>>>
>>> I have used toaster with Morty 2.2 to compile an image
>>> using"rpi-basic-image", to this I have added the following bitbake
>>> variables:
>>>
>>> Bitbake variables
>>>
>>> DISTRO
>>> poky
>>> DL_DIR
>>> /home/steve/poky/downloads
>>> IMAGE_FSTYPES
>>> ext3 jffs2 tar.bz2 rpi-sdimg
>>> IMAGE_INSTALL_append
>>> packagegroup-core-x11-base packagegroup-lxde-base connman
>>> PACKAGE_CLASSES
>>> package_rpm
>>> SSTATE_DIR
>>> /home/steve/poky/sstate-cache
>>>
>>> DISABLE_OVERSCAN
>>> 1
>>> GPU_MEM_1024
>>> 512
>>>
>>> I have dd'ed the image to an SD card increased the sdb2 partition to the
>>> max size and powered up the rpi. Everything looks fine to start with, as it
>>> displays the four raspberrys in the top left, then the white "Yocto
>>> Project" splash screen complete with small blue dot to the side appears,
>>> the progress bar moves across to 100 percent, then the screen turns black
>>> with a white
>>>
>> cursor in the middle and it appears to freeze with only a very dim one
>> second flash of the "act" led.
>>
>>>
>>>
>>> I have then connected the 7" touchscreen and apart from the added
>>> multicolored square at the very beginning I get the exact same boot up
>>> problem, hangs on the black screen with white cursor (good to see its all
>>> resized correctly for the TfT through!!)
>>>
>>>
>>> Before adding the packagegroup-core-x11-base and packagegroup-lxde-base
>>> I successfully copied over and ran the rpi-basic-image with no problem,
>>> ending up with a usable console.
>>>
>>>
>>> Looking for any help here, I'm thinking I've missed adding a package, or
>>> some type of local.conf instruction. any suggestions would be
>>> appreciated.............
>>>
>>
>> Can you send the content of /var/log/Xorg.log file ?
>>
>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045e2966b65889054a5b48a2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hello Steve</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Would you try to other HDMI display such as PC moni=
tor.</div><div dir=3D"auto"><br></div><div dir=3D"auto">I suspects two poin=
ts as follows.</div><div dir=3D"auto"><br></div><div dir=3D"auto">* You ena=
bled KMS(such as vc4graphics in MACHINE_FEATURE)</div><div dir=3D"auto">* Y=
our display has not EDID.</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">If your HDMI settings in config.txt such as follows. There is a high poss=
ibility that your HDMI display does not have EDID.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">```</div><div dir=3D"auto">hdmi_group=3D2</div><=
div dir=3D"auto">hdmi_mode=3D87</div><div dir=3D"auto">```</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">When your display has not EDID, KMS will=
 fail in initalization.</div><div dir=3D"auto">In such case, you have to cr=
eate EDID file manually.</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>I hope this helps.</div><div dir=3D"auto"><br></div></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">2017/03/10 14:43 &quot;Gary Thoma=
s&quot; &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;:=
<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 2017-03-10 01:55=
, Steve Plant wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
OK, I have spent the last day googling my heart out trying to find the Xorg=
.log file without any luck.<br>
<br>
<br>
The problem is that due to the rpi hanging on boot, the only way I can acce=
ss the SD card to look for the file is place<br>
it in a USB SD card reader and use my VirtualBox based Debian to &quot;ls&q=
uot; directores etc.<br>
<br>
Having established that there is no file located at /var/log/Xorg.log (ther=
e isn&#39;t a log directory) but there is a<br>
symbolic link in the var directory - goes nowhere.<br>
<br>
<br>
After goggling I discovered that the file could also be in the ~/.local/sha=
re/xorg/Xorg.0.log<wbr>, however if I try to look<br>
there I get &quot;permission denied&quot; and cannot seem to get to the roo=
t directory of the card and I can&#39;t find a way around<br>
this as I&#39;m trying to access this directory through the USB card reader=
.<br>
<br>
<br>
Looked everywhere with no answers, Is there anyone who could help me here??=
<br>
</blockquote>
<br>
/var/log is on a volatile file system (i.e. it does not live on the SD card=
)<br>
<br>
If you can get into your board via SSH, you can copy the file and send it<b=
r>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
------------------------------<wbr>------------------------------<wbr>-----=
-------------------------<wbr>------------------------------<br>
*From:* Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank=
">raj.khem@gmail.com</a>&gt;<br>
*Sent:* Wednesday, 8 March 2017 5:17 p.m.<br>
*To:* Steve Plant<br>
*Cc:* <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoc=
toproject.org</a><br>
*Subject:* Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.<br>
<br>
On 17-03-08 12:40:51, Steve Plant wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi All,<br>
<br>
<br>
Very new to all this linux world, and especially Yocto.<br>
<br>
<br>
I&#39;m working on a embedded project at the moment using a raspberry pi2 b=
oard.<br>
<br>
<br>
I have used toaster with Morty 2.2 to compile an image using&quot;rpi-basic=
-image&quot;, to this I have added the following bitbake variables:<br>
<br>
Bitbake variables<br>
<br>
DISTRO<br>
poky<br>
DL_DIR<br>
/home/steve/poky/downloads<br>
IMAGE_FSTYPES<br>
ext3 jffs2 tar.bz2 rpi-sdimg<br>
IMAGE_INSTALL_append<br>
packagegroup-core-x11-base packagegroup-lxde-base connman<br>
PACKAGE_CLASSES<br>
package_rpm<br>
SSTATE_DIR<br>
/home/steve/poky/sstate-cache<br>
<br>
DISABLE_OVERSCAN<br>
1<br>
GPU_MEM_1024<br>
512<br>
<br>
I have dd&#39;ed the image to an SD card increased the sdb2 partition to th=
e max size and powered up the rpi. Everything looks fine to start with, as =
it displays the four raspberrys in the top left, then the white &quot;Yocto=
 Project&quot; splash screen complete with small blue dot to the side appea=
rs, the progress bar moves across to 100 percent, then the screen turns bla=
ck with a white<br>
</blockquote>
cursor in the middle and it appears to freeze with only a very dim one seco=
nd flash of the &quot;act&quot; led.<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
I have then connected the 7&quot; touchscreen and apart from the added mult=
icolored square at the very beginning I get the exact same boot up problem,=
 hangs on the black screen with white cursor (good to see its all resized c=
orrectly for the TfT through!!)<br>
<br>
<br>
Before adding the packagegroup-core-x11-base and packagegroup-lxde-base I s=
uccessfully copied over and ran the rpi-basic-image with no problem, ending=
 up with a usable console.<br>
<br>
<br>
Looking for any help here, I&#39;m thinking I&#39;ve missed adding a packag=
e, or some type of local.conf instruction. any suggestions would be appreci=
ated.............<br>
</blockquote>
<br>
Can you send the content of /var/log/Xorg.log file ?<br>
</blockquote>
<br>
<br>
-- <br>
------------------------------<wbr>------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------<wbr>------------------------------<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</blockquote></div></div>

--f403045e2966b65889054a5b48a2--
