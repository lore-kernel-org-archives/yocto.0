Return-Path: <prakashpks15@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DFA0E00EAC; Thu,  5 Jul 2018 18:52:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prakashpks15[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6D97E00A48
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 18:52:22 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id o5-v6so14584763itc.1
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2018 18:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qWo0ZvlMTeQdZgmXel4DYa7YF5mLwzNBKjrZ4aB22Mw=;
	b=KWaX62pdOCIKCypgk5jVVloGyC2s+iDeg4BGT/eGGc2upaBny9Ibq5WWMYqQd6DzOZ
	x09LkqgWgzA8pg4K0p7laIfxGsh65PiCjnXvrZYz5YC5yprht0Q5NOjyvDURFVgbt5m6
	ZCACF2B/TK2K6xrPB1UnNCaj8u09D/ai0EEeatZ3LNmJ3wFm9UaajqvsGU0s4CmIZQiX
	qtqVHlcsSIAFRPCgR+r94I5Gj5AWxeYhdXAwYpUNq07MhtQ2yRZs4mAMSeoAZgy6SdyU
	ZhAjQ0/1GwE/0tfw2dH9mDuq9pLocVx0OtGEErLs58+9dxP5VOCgRhaYEs0vmWQmJbwO
	M9NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qWo0ZvlMTeQdZgmXel4DYa7YF5mLwzNBKjrZ4aB22Mw=;
	b=QtuJ4AaY/V8ztMf8aADKMSQdjf+06NBPTVeKHSZL9nf8AYOLj/xmeL0ePgfry6IG56
	2G34rjLFII6p2nLitXXSG+TazID6MqRjSFn1hxUxNfuGKygvhjwyC5L8ozv22NNvu3lY
	sNMQMt335222FD9yDakVI1jTdRWaYIWaNIhs58m+KoM++A8ZHkGPTX1E7c7sTEt1yj/Y
	LALiFjDKnDCLZNYiXall88vKjXJXTuzaIiIQ3HBVeErPj9SEES+936G9kgubC65lDt9x
	zmDsP+TKame4JCZl3egQGsTngNuuCvj77W0HZI5LF2XcWFc/Tl44jDD4vaPL0NLRw04m
	gl5w==
X-Gm-Message-State: APt69E1+rmHV1fv9lhTKuUd+bpcyoInPo9DM5VmX76bId3fn6qu53OHX
	huoKNyGx4/Ywu/IT6MHIRr/jvtAThQZ3HplkQ8c=
X-Google-Smtp-Source: AAOMgpfy0dzAW0hs9BlmPtVbCdb9c7KPro5xwW3zP9N/wYeNqhWw1pI+wzBOzWiPOQiLeCWlpPUPoLpYC3FL97LSj30=
X-Received: by 2002:a24:8a03:: with SMTP id v3-v6mr6973726itd.40.1530841941989;
	Thu, 05 Jul 2018 18:52:21 -0700 (PDT)
MIME-Version: 1.0
References: <CALYWmf9kQfqdvz-8AuR2dDAz-xDxHWwcACu-j+AyNxq426UEgw@mail.gmail.com>
In-Reply-To: <CALYWmf9kQfqdvz-8AuR2dDAz-xDxHWwcACu-j+AyNxq426UEgw@mail.gmail.com>
From: Prakash Ks <prakashpks15@gmail.com>
Date: Thu, 5 Jul 2018 18:52:10 -0700
Message-ID: <CAET8a4F5uTWqFm=kowuio9fFS-k7gA2DYwV5vnh2YNd4-7T-UA@mail.gmail.com>
To: abhishekr@eximiusdesign.com
Cc: yocto@yoctoproject.org
Subject: Re: Regarding Error occuring after changing configuration
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
X-List-Received-Date: Fri, 06 Jul 2018 01:52:24 -0000
Content-Type: multipart/alternative; boundary="00000000000028dfd605704aea49"

--00000000000028dfd605704aea49
Content-Type: text/plain; charset="UTF-8"

you can use
IMAGE_ROOTFS_SIZE ?= *"8192"*
to increase Rootfs size.

On Thu, Jul 5, 2018 at 12:16 AM Abhishek Kumar Rai <
abhishekr@eximiusdesign.com> wrote:

> Hi Team,
>
> I am getting error while building yocto after changing the configuration.
>
> Please find set of below commands that i have used
> $ bitbake virtual/kernel -c menuconfig
> $ bitbake virtual/kernel
> $ bitbake -k agl-demo-platform
>
> *| Disk
> ~/build/tmp/work/nitrogen6x-agl-linux-gnueabi/agl-demo-platform/1.0-r0/deploy-agl-demo-platform-image-complete/agl-demo-platform-nitrogen6x-20180705063932.rootfs.sdcard:
> 2185MB*
> *| Sector size (logical/physical): 512B/512B*
> *| Partition Table: msdos*
> *| Disk Flags:*
> *| *
> *| Number  Start   End     Size    Type     File system  Flags*
> *|  1      4194kB  12.6MB  8389kB  primary               lba*
> *|  2      12.6MB  2181MB  2168MB  primary*
> *| *
> *| mkfs.fat: warning - lowercase labels might not work properly with DOS
> or Windows*
> *| mkfs.fat 4.1 (2017-01-24)*
> *| Disk full*
> *| WARNING: exit code 1 from a shell command.*
> *| ERROR: Function failed: do_image_sdcard (log file is located at
> ~/build/tmp/work/nitrogen6x-agl-linux-gnueabi/agl-demo-platform/1.0-r0/temp/log.do_image_sdcard.6362)*
> *ERROR: Task
> (~/kapil/meta-agl-demo/recipes-platform/images/agl-demo-platform.bb:do_image_sdcard)
> failed with exit code '1'*
>
>
> *NOTE: Tasks Summary: Attempted 7063 tasks of which 7059 didn't need to be
> rerun and 1 failed.*I think due to change in configuration rootfs size is
> increased and the current rootfs size is small that is not able to
> accommodate the thae changed size.
> If it is so can anybody please provide steps to change the rootfs size .
>
> Can you please give your inputs regarding this.
>
>
> *Regards,*
>
> *Abhishek Rai*
>
> The information contained in this e-mail message (including any
>
> attachments) may be confidential, proprietary, privileged, or otherwise
>
> exempt from disclosure under applicable laws. It is intended to be
>
> conveyed only to the designated recipient(s). Any use, dissemination,
>
> distribution, printing, retaining or copying of this e-mail (including its
>
> attachments) by unintended recipient(s) is strictly prohibited and may
>
> be unlawful. If you are not an intended recipient of this e-mail, or
> believe
>
> that you have received this e-mail in error, please notify the sender
>
> immediately (by replying to this e-mail), delete any and all copies of
>
> this e-mail (including any attachments) from your system, and do not
>
> disclose the content of this e-mail to any other person. Thank you for
> your cooperation.
>
> *This e-mail message (including any attachments) may be confidential,
> proprietary, privileged, or otherwise exempt from disclosure under
> applicable laws. If you are not an intended recipient, please delete this
> message. Thank you.*
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Thanks and Regards,
Prakash K S
+91 9620140303

--00000000000028dfd605704aea49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">you can use<div>IMAGE_ROOTFS_SIZE ?=3D <b>&quot;8192&quot;=
</b><br></div><div>to increase Rootfs size.</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">On Thu, Jul 5, 2018 at 12:16 AM Abhishek Kumar =
Rai &lt;<a href=3D"mailto:abhishekr@eximiusdesign.com">abhishekr@eximiusdes=
ign.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr"><div><div><div>Hi Team,<br><br></div>I am getting error while building=
 yocto after changing the configuration.<br><br>Please find set of below co=
mmands that i have used<br>$ bitbake virtual/kernel -c menuconfig<br></div>=
<div>$ bitbake virtual/kernel<br>$ bitbake -k agl-demo-platform<br></div><d=
iv><br><span id=3D"m_4110157924090138127gmail-:c2.co" class=3D"m_4110157924=
090138127gmail-tL8wMe m_4110157924090138127gmail-EMoHub" style=3D"text-alig=
n:left" dir=3D"ltr"><b>|
 Disk ~/build/tmp/work/nitrogen6x-agl-linux-gnueabi/agl-demo-platform/1.0-r=
0/deploy-agl-demo-platform-image-complete/agl-demo-platform-nitrogen6x-2018=
0705063932.rootfs.sdcard:
 2185MB</b><br><b>| Sector size (logical/physical): 512B/512B</b><br><b>| P=
artition Table: msdos</b><br><b>| Disk Flags:</b><br><b>| </b><br><b>| Numb=
er=C2=A0 Start=C2=A0=C2=A0 End=C2=A0=C2=A0=C2=A0=C2=A0 Size=C2=A0=C2=A0=C2=
=A0 Type=C2=A0=C2=A0=C2=A0=C2=A0 File system=C2=A0 Flags</b><br><b>|=C2=A0 =
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4194kB=C2=A0 12.6MB=C2=A0 8389kB=C2=A0 prim=
ary=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 lba</b><br><b>|=C2=A0 2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12.6MB=
=C2=A0 2181MB=C2=A0 2168MB=C2=A0 primary</b><br><b>| </b><br><b>| mkfs.fat:=
 warning - lowercase labels might not work properly with DOS or Windows</b>=
<br><b>| mkfs.fat 4.1 (2017-01-24)</b><br><b>| Disk full</b><br><b>| WARNIN=
G: exit code 1 from a shell command.</b><br><b>|
 ERROR: Function failed: do_image_sdcard (log file is located at ~/build/tm=
p/work/nitrogen6x-agl-linux-gnueabi/agl-demo-platform/1.0-r0/temp/log.do_im=
age_sdcard.6362)</b><br><b>ERROR:
 Task=20
(~/kapil/meta-agl-demo/recipes-platform/images/agl-demo-platform.bb:do_imag=
e_sdcard)
 failed with exit code &#39;1&#39;</b><br><b>NOTE: Tasks Summary: Attempted=
 7063 tasks of which 7059 didn&#39;t need to be rerun and 1 failed.<br><br>=
</b></span>I think due to change in configuration rootfs size is increased =
and the current rootfs size is small that is not able to accommodate the th=
ae changed size.<br>If it is so can anybody please provide steps to change =
the rootfs size .<br><br>Can you please give your inputs regarding this.<br=
><br></div><span id=3D"m_4110157924090138127gmail-:c2.co" class=3D"m_411015=
7924090138127gmail-tL8wMe m_4110157924090138127gmail-EMoHub" style=3D"text-=
align:left" dir=3D"ltr"><b>Regards,<br></b></span></div><span id=3D"m_41101=
57924090138127gmail-:c2.co" class=3D"m_4110157924090138127gmail-tL8wMe m_41=
10157924090138127gmail-EMoHub" style=3D"text-align:left" dir=3D"ltr"><b>Abh=
ishek Rai<br></b></span></div>

<br>








<table cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td valign=3D"middle">
<p><span>The information contained in this e-mail message (including any=C2=
=A0</span></p>
<p><span>attachments) may be confidential, proprietary, privileged, or othe=
rwise</span></p>
<p><span>exempt from disclosure under applicable laws. It is intended to be=
=C2=A0</span></p>
<p><span>conveyed only to the designated recipient(s). Any use, disseminati=
on,=C2=A0</span></p>
<p><span>distribution, printing, retaining or copying of this e-mail (inclu=
ding its=C2=A0</span></p>
<p><span>attachments) by unintended recipient(s) is strictly prohibited and=
 may=C2=A0</span></p>
<p><span>be unlawful. If you are not an intended recipient of this e-mail, =
or believe=C2=A0</span></p>
<p><span>that you have received this e-mail in error, please notify the sen=
der=C2=A0</span></p>
<p><span>immediately (by replying to this e-mail), delete any and all copie=
s of=C2=A0</span></p>
<p><span>this e-mail (including any attachments) from your system, and do n=
ot</span></p>
<p><span>disclose the content of this e-mail to any other person. Thank you=
 for your cooperation.</span></p>
</td>
</tr>
</tbody>
</table>
<br>
<img><i style=3D"font-family:Calibri;font-size:14px"><span style=3D"font-si=
ze:10pt">This e-mail message (including any=C2=A0</span>attachments) may be=
 confidential, proprietary, privileged, or otherwise=C2=A0exempt from discl=
osure under applicable laws. If you are not an intended recipient, please d=
elete this message. Thank you.</i><br style=3D"font-family:Calibri;font-siz=
e:14px">-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Thanks and Re=
gards,<div>Prakash K S</div><div>+91 9620140303</div></div>

--00000000000028dfd605704aea49--
