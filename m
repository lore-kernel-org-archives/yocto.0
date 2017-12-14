Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDAC0E00D70; Wed, 13 Dec 2017 18:27:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60757E00D6D
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 18:27:32 -0800 (PST)
Received: by mail-qt0-f171.google.com with SMTP id e2so6326122qti.0
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 18:27:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=I4yFaV9qDfwVEsy19pW+vHKynAi4aQlDPFe4JJMTQnc=;
	b=eM/YCuTtP81hHPpNi3Tf5pBS1tR0LVHicBv/zubgFNkrzGDqfu1AI0HKkVN0DvkjoS
	5ag+gin1RxjESWhycEATk/iAnOJB6h6xEwC7IiL9wb5aOyWRLfvhcUizd1zLbV2YyxOT
	U7jFVaXT+llpraXEGoPBVe25n7L430MOY4LuEHe93fwaa09cawaQy+WvnJrZNygIjdd7
	y7Rqf4LmIauttXfuwDlUXgL/zWp5x4Ty2bHz4X6OagQPYb724tCXvnHovc2B6ZGz+0JG
	uCas6UPDID2q0L0dZXtanA6mv4IfK5mtOs6w4N02fdUjkZh33jpjPJA97NBjh7v/Af5c
	sAkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=I4yFaV9qDfwVEsy19pW+vHKynAi4aQlDPFe4JJMTQnc=;
	b=szERbXBw5684lenKxhtX+OjMoSmOO9qwr09/m2HFZuTEIgTMZPg7nU2bBGfvqRPTR/
	xMJnY3cV1nMPt5lNFQCSP38RxO650PWtat0O87fbTPll7qf49j/Xqq834+vEFJ2wNMqY
	3XHVNgCoSWbdeHve9ZQQ4/cVPE8+sluo7r28NBkh6Jhr3XhuQDebxEXfWweEwAAeB46T
	JeHrbozdCoXctt85TBgL+yLvETpYtqcOd6k+5rAkFlhIwupL5Jaqe3kZ7oem7qsJrKIh
	tpCud0cH7UhqAbiLD2sV+AnYy9q7P2ad8OUdKPw4Zsw9yUZ2AzfSskNWMCl2XsjBm1De
	zXRA==
X-Gm-Message-State: AKGB3mK50WxyI0gheT0QOigVblJcU5ZiaD0Kq51LP9kn/bBXlPDUgcB+
	ymrgQl4izUBqDOzdc7R4dkGVIniM0aPhCsqytxT1roPO
X-Google-Smtp-Source: ACJfBoucu4rnfiOrPJBVcZSJrb45sc7ihbXb8hleWoG06IfQQ+GjbhRYCxEhBLwFaPmUT6e3CzX1prTuuWmDh4aor9U=
X-Received: by 10.200.36.22 with SMTP id c22mr14428555qtc.207.1513218452296;
	Wed, 13 Dec 2017 18:27:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.21.241 with HTTP; Wed, 13 Dec 2017 18:27:31 -0800 (PST)
In-Reply-To: <CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
	<CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
	<CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 14 Dec 2017 00:27:31 -0200
Message-ID: <CAF3SDA4WQgM7Gvj2tGAPeCmK-eEoN-uAeKwuP2OrEW-Qto-j6w@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Thu, 14 Dec 2017 02:27:35 -0000
Content-Type: multipart/alternative; boundary="001a113f44f851193d056043a075"

--001a113f44f851193d056043a075
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Okay, sorry for the late reply!

I could reproduce the same error again, I just cleanall and then build
linux-raspberrypi again. Let's go to the logs:

The whole output: https://pastebin.com/zHLpPf5V
My config: https://pastebin.com/mKJb2tyJ
Configured layers: https://pastebin.com/7UakkhHJ
https://pastebin.com/xKRd8rDr
The layers commits: https://pastebin.com/9pJCrdh4

I'll let it stay in this state, so if you need any other information just
let me know and I gather it for you. Again, I'm on fedora 27, kernel
4.14.3-300.fc27.x86_64, i3, 8GB ram. I think this is it.

Regards!


2017-12-11 9:34 GMT-02:00 Daniel. <danielhilst@gmail.com>:

> I can anticipate some info for you. I'm on version 2.4 Rocko. Building
> rpi-hwup-image for MACHINE=3Drasbiberrypi3-64. Also is worth noting that =
I'm
> running Fedora 27 which wasn't tested...
>
> I'll try to get the full log tonight and let you know
>
> Regards
>
> On Dec 11, 2017 9:26 AM, "Daniel." <danielhilst@gmail.com> wrote:
>
>> Yeah but I got to face the error again, maybe tonight when I get home :)
>>
>> On Dec 11, 2017 9:17 AM, "Paul Barker" <pbarker@toganlabs.com> wrote:
>>
>>> On Sun, Dec 10, 2017 at 5:14 PM, Daniel. <danielhilst@gmail.com> wrote:
>>> > Hi everybody,
>>> >
>>> > I'm building a vanilla image for MACHINE=3Draspberrypi3-64. I'm doing=
 the
>>> > build for the first time and faced an error at
>>> > linux-raspberrypi:do_kernel_configme. I found that
>>> .kernel-meta/configs
>>> > folder was missing, so I fired a devshell and created it. After that
>>> > everything works as expected and linux-raspberrypi build fines.
>>> >
>>> > The solution I got is palliative, what would be the real solution and
>>> what
>>> > is this .kernel-meta folder? I had never seem this folder before.
>>>
>>> I have seen this issue occasionally when the do_kernel_configme task
>>> is re-executed. A "bitbake virtual/kernel -c clean" has always
>>> resolved this for me, allowing the next build to succeed. It doesn't
>>> occur on my autobuild systems though so I figure it's an edge case I'm
>>> hitting when building locally as I'm hacking around on recipes.
>>>
>>> I've never seen this on the first build of the kernel though.
>>>
>>> Which version of Yocto are you using? Could you send us the build
>>> configuration summary and the full error messages printed by bitbake?
>>>
>>> Thanks,
>>>
>>> --
>>> Paul Barker
>>> Tog=C3=A1n Labs Ltd
>>>
>>


--=20
=E2=80=9CIf you're going to try, go all the way. Otherwise, don't even star=
t. ..."
  Charles Bukowski

--001a113f44f851193d056043a075
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Okay, sorry for the lat=
e reply!<br><br></div>I could reproduce the same error again, I just cleana=
ll and then build linux-raspberrypi again. Let&#39;s go to the logs:<br><br=
></div>The whole output: <a href=3D"https://pastebin.com/zHLpPf5V">https://=
pastebin.com/zHLpPf5V</a><br></div>My config: <a href=3D"https://pastebin.c=
om/mKJb2tyJ">https://pastebin.com/mKJb2tyJ</a> <br></div>Configured layers:=
 <a href=3D"https://pastebin.com/7UakkhHJ">https://pastebin.com/7UakkhHJ</a=
> <a href=3D"https://pastebin.com/xKRd8rDr">https://pastebin.com/xKRd8rDr</=
a><br></div>The layers commits: <a href=3D"https://pastebin.com/9pJCrdh4">h=
ttps://pastebin.com/9pJCrdh4</a><br><br></div>I&#39;ll let it stay in this =
state, so if you need any other information just let me know and I gather i=
t for you. Again, I&#39;m on fedora 27, kernel 4.14.3-300.fc27.x86_64, i3, =
8GB ram. I think this is it.<br><br></div>Regards!<br><div><div><div><div><=
div><div><div><div><br></div></div></div></div></div></div></div></div></di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-12-11 9:34=
 GMT-02:00 Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmai=
l.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</span>:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"auto">I can anticipate some info for you.=
 I&#39;m on version 2.4 Rocko. Building rpi-hwup-image for MACHINE=3Drasbib=
errypi3-64. Also is worth noting that I&#39;m running Fedora 27 which wasn&=
#39;t tested...=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;ll=
 try to get the full log tonight and let you know<br><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Regards</div></div></div><div class=3D"HOEnZb"><div=
 class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
Dec 11, 2017 9:26 AM, &quot;Daniel.&quot; &lt;<a href=3D"mailto:danielhilst=
@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt; wrote:<br type=
=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Yeah but =
I got to face the error again, maybe tonight when I get home :)</div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Dec 11, 2017 9:17 AM=
, &quot;Paul Barker&quot; &lt;<a href=3D"mailto:pbarker@toganlabs.com" targ=
et=3D"_blank">pbarker@toganlabs.com</a>&gt; wrote:<br type=3D"attribution">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On Sun, Dec 10, 2017 at 5:14 PM, Daniel. &lt=
;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gma=
il.com</a>&gt; wrote:<br>
&gt; Hi everybody,<br>
&gt;<br>
&gt; I&#39;m building a vanilla image for MACHINE=3Draspberrypi3-64. I&#39;=
m doing the<br>
&gt; build for the first time and faced an error at<br>
&gt; linux-raspberrypi:do_kernel_co<wbr>nfigme. I found that .kernel-meta/c=
onfigs<br>
&gt; folder was missing, so I fired a devshell and created it. After that<b=
r>
&gt; everything works as expected and linux-raspberrypi build fines.<br>
&gt;<br>
&gt; The solution I got is palliative, what would be the real solution and =
what<br>
&gt; is this .kernel-meta folder? I had never seem this folder before.<br>
<br>
I have seen this issue occasionally when the do_kernel_configme task<br>
is re-executed. A &quot;bitbake virtual/kernel -c clean&quot; has always<br=
>
resolved this for me, allowing the next build to succeed. It doesn&#39;t<br=
>
occur on my autobuild systems though so I figure it&#39;s an edge case I&#3=
9;m<br>
hitting when building locally as I&#39;m hacking around on recipes.<br>
<br>
I&#39;ve never seen this on the first build of the kernel though.<br>
<br>
Which version of Yocto are you using? Could you send us the build<br>
configuration summary and the full error messages printed by bitbake?<br>
<br>
Thanks,<br>
<br>
--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd<br>
</blockquote></div></div>
</blockquote></div></div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">=E2=80=9CIf you&#39=
;re going to try, go all the way. Otherwise, don&#39;t even start. ...&quot=
; <br>=C2=A0 Charles Bukowski</div>
</div>

--001a113f44f851193d056043a075--
