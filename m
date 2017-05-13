Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A430E00ACE; Sat, 13 May 2017 02:26:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.41 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED52E00826
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 02:25:58 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id l18so89009927oig.2
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 02:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1jhRQ7YxJxEiyUykccqiPuy8BvMQOwNAGIviza26nVs=;
	b=ZJzwV6iR6g2Gbpm6u7jK7krZwuavVNFhTsOjGBVF2SFkD+87KFV/nminG1KbUH9nWt
	IR+vch+3zE4nEK+ftnQhC43KWXyNsy7YHc4PCLDqjjiKqxFE5jZAEDDmDQdRGRp8WTe9
	1CklcbgxPHBSKbohKJp1Vg0W+GMpPr2VgOYjSxBWIWAqLhhXKb7t4UkLAKARn/eHYFAy
	cYjvtV9ZKtTFBLeENehoqxNyVC5QmIRZd60LSHim5RWgQngJ0YLrb1mJWni8mddP91Af
	53dNs+UQXN35eTG8kNFB8rH/YdexhOu/BA+xlZUHIY/tYA1ejGFlF9xFiRSnhm35C6oX
	/WZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1jhRQ7YxJxEiyUykccqiPuy8BvMQOwNAGIviza26nVs=;
	b=AeXr5o0xRVgu0YE/vukP8IaiigDULmBQTQSiB5Cmn1UeEs2s4zIjSCxI4voiMGUZVG
	JMM5VYb78kH1/E4rnNvt8vwGzg3oBjTe8lXjEAMnUQf7SKruf+KhQoENq8ZRhwXVAS4f
	dN3GFbCc04f0eGMPK9oe0oQkRK7ovLs/aNiSWKoNntqBkECFRHdodcEPt3cjXHTKti2f
	QnI9V79YdLeL63hHH7MHUFilDMygUzfYMYEPHBqkvLHauHh+ySgnmWKTRtySqLzASwX8
	+2e4xMLFz9xsZBJKR9RvrQASqKV4FF52S0VUqjT7Ls09+2ON9usuVzhFAvgxLjV8lhSM
	Eipg==
X-Gm-Message-State: AODbwcAtRGD8DD0hmyuZeVhjnr+imBpTAlUOtnsHOlOd6WkxLXtSe5C3
	cf4i4RHxaNBYZkdTwLXTQA/ePIjUxA==
X-Received: by 10.202.114.74 with SMTP id p71mr3550443oic.201.1494667558106;
	Sat, 13 May 2017 02:25:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.22.198 with HTTP; Sat, 13 May 2017 02:25:57 -0700 (PDT)
In-Reply-To: <CAHUNapTAuyhpDJ8ATx+arrGaN_JTy1ubs98zdTzJxh97gcxmbw@mail.gmail.com>
References: <CAFq4t4gKvAj=ne_fL4ah6a18rP0_PCveqBvzFvBqX8YwkkOwCg@mail.gmail.com>
	<CAHUNapR8kNs89_RjU7FpLoqnGbuD0xcnP8meU5P-KmBovWFZWA@mail.gmail.com>
	<em0c047a6c-ad89-4ee5-a271-862399749ce1@r59400-12>
	<CAHUNapTAuyhpDJ8ATx+arrGaN_JTy1ubs98zdTzJxh97gcxmbw@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sat, 13 May 2017 11:25:57 +0200
Message-ID: <CAFq4t4guS_reh=GHja7bwGQTC76krOF1Dfz1iYSJDYfqQ=2BtQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: dhcp eth0 network
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
X-List-Received-Date: Sat, 13 May 2017 09:26:02 -0000
Content-Type: multipart/alternative; boundary="001a11c014bedbc171054f64680c"

--001a11c014bedbc171054f64680c
Content-Type: text/plain; charset="UTF-8"

Hello,

Unfortunately I have no knowledge about that how image is built :(  I got
just that image downloaded which is already built.

BUT after applying ifconfig I got network working and connection
established... Now I wanna do it permanetly and dhcp instead of static IP.

root@imx6qpsabreauto:~# ifconfig eth0 10.171.88.8 netmask 255.0.0.0 up
root@imx6qpsabreauto:~# ifconfig
eth0      Link encap:Ethernet  HWaddr ee:d2:50:0d:f3:33
          inet addr:10.171.88.8  Bcast:10.255.255.255  Mask:255.0.0.0
          inet6 addr: fe80::ecd2:50ff:fe0d:f333/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:4447 errors:0 dropped:951 overruns:0 frame:0
          TX packets:254 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:640741 (625.7 KiB)  TX bytes:37067 (36.1 KiB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:2000 errors:0 dropped:0 overruns:0 frame:0
          TX packets:2000 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:152000 (148.4 KiB)  TX bytes:152000 (148.4 KiB)

root@imx6qpsabreauto:~#

within /etc/network directory

root@imx6qpsabreauto:/etc/network# ls
if-down.d  if-post-down.d  if-pre-up.d  if-up.d  interfaces
root@imx6qpsabreauto:/etc/network# vi interfaces

auto lo
iface lo inet loopback

auto eth0
iface eth0 inet dhcp
~
~
~



After reset I need to set network again and static ...

cheers,
Peter



On Fri, May 12, 2017 at 9:55 PM, Trevor Woerner <twoerner@gmail.com> wrote:

> Hi Peter,
>
> There isn't enough information here for me to help you.
>
> Could you please list the commands and steps you used to build the image?
> - what repositories are you using?
> - what branches of those repositories?
> - if you changed any config files, what did you change?
> - what command did you run to build your image?
> - what did bitbake print as your build configuration?
>
> Which i.mx board are you using? There are dozens of them.
>
> Best regards,
>     Trevor
>
>
> On Fri, May 12, 2017 at 3:34 PM, peter@gmail.com
> <balazovic.peter@gmail.com> wrote:
> > I build on i.mx (NXP) machine, I want to get configured as dhcp  (no
> > static)...
> >
> >
> > ------ Original Message ------
> > From: "Trevor Woerner" <twoerner@gmail.com>
> > To: "Peter Balazovic" <balazovic.peter@gmail.com>
> > Cc: "Yocto list discussion" <yocto@yoctoproject.org>
> > Sent: 5/12/2017 9:32:17 PM
> > Subject: Re: [yocto] dhcp eth0 network
> >
> >> Hi Peter,
> >>
> >> For what MACHINE are you building? What's your target hardware? Can
> >> you summarize the steps you took to build your image?
> >>
> >> What do you want eth0 to do? dhcp or static ip?
> >>
> >> Best regards,
> >>     Trevor
> >>
> >>
> >> On Fri, May 12, 2017 at 12:01 PM, Peter Balazovic
> >> <balazovic.peter@gmail.com> wrote:
> >>>
> >>>  Dears,
> >>>
> >>>  I got Yocto image and unfortunatelly network is not somehow enabled &
> >>>  proprely configured. After "ifconfig" no eth0 configured.
> >>>
> >>>
> >>>>  ifconfig
> >>>
> >>>  lo    Link encap:Local Loopback
> >>>         inet addr:127.0.0.1 Mask:255.0.0.0
> >>>   ....
> >>>
> >>>
> >>>
> >>>>  /etc/network
> >>>>  ls
> >>>
> >>>  if-down.d if-post-down.d if-pre-up.d  if-up.d
> >>>
> >>>
> >>>  How should I setup "eth0" to get network working properly?
> >>>
> >>>  Thanks.
> >>>
> >>>
> >>>
> >>>  --
> >>>  _______________________________________________
> >>>  yocto mailing list
> >>>  yocto@yoctoproject.org
> >>>  https://lists.yoctoproject.org/listinfo/yocto
> >>>
> >
>

--001a11c014bedbc171054f64680c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div>Unfortunately I have no kn=
owledge about that how image is built :( =C2=A0I got just that image downlo=
aded which is already built.=C2=A0<div><br></div><div>BUT after applying <f=
ont face=3D"monospace, monospace">ifconfig</font> I got network working and=
 connection established... Now I wanna do it permanetly and dhcp instead of=
 static IP.<div><div><br></div><div><div><font face=3D"monospace, monospace=
">root@imx6qpsabreauto:~# ifconfig eth0 10.171.88.8 netmask 255.0.0.0 up</f=
ont></div><div><font face=3D"monospace, monospace">root@imx6qpsabreauto:~# =
ifconfig</font></div><div><font face=3D"monospace, monospace">eth0 =C2=A0 =
=C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr ee:d2:50:0d:f3:33</font></div=
><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 inet addr:10.171.88.8 =C2=A0Bcast:10.255.255.255 =C2=A0Mask:255.0.0.0</=
font></div><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 inet6 addr: fe80::ecd2:50ff:fe0d:f333/64 Scope:Link</font></d=
iv><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 UP BROADCAST RUNNING MULTICAST =C2=A0MTU:1500 =C2=A0Metric:1</font></di=
v><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 RX packets:4447 errors:0 dropped:951 overruns:0 frame:0</font></div><di=
v><font face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX=
 packets:254 errors:0 dropped:0 overruns:0 carrier:0</font></div><div><font=
 face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collision=
s:0 txqueuelen:1000</font></div><div><font face=3D"monospace, monospace">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:640741 (625.7 KiB) =C2=A0TX byt=
es:37067 (36.1 KiB)</font></div><div><font face=3D"monospace, monospace"><b=
r></font></div><div><font face=3D"monospace, monospace">lo =C2=A0 =C2=A0 =
=C2=A0 =C2=A0Link encap:Local Loopback</font></div><div><font face=3D"monos=
pace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:127.0.0.1 =C2=
=A0Mask:255.0.0.0</font></div><div><font face=3D"monospace, monospace">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 addr: ::1/128 Scope:Host</font></div>=
<div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 UP LOOPBACK RUNNING =C2=A0MTU:65536 =C2=A0Metric:1</font></div><div><font =
face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets=
:2000 errors:0 dropped:0 overruns:0 frame:0</font></div><div><font face=3D"=
monospace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:2000 er=
rors:0 dropped:0 overruns:0 carrier:0</font></div><div><font face=3D"monosp=
ace, monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:=
0</font></div><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 RX bytes:152000 (148.4 KiB) =C2=A0TX bytes:152000 (148.4 KiB=
)</font></div><div><font face=3D"monospace, monospace"><br></font></div><di=
v><font face=3D"monospace, monospace">root@imx6qpsabreauto:~#</font></div><=
/div></div><div><br></div><div>within /etc/network directory</div><div><br>=
</div><div><div><font face=3D"monospace, monospace">root@imx6qpsabreauto:/e=
tc/network# ls</font></div><div><font face=3D"monospace, monospace">if-down=
.d =C2=A0if-post-down.d =C2=A0if-pre-up.d =C2=A0if-up.d =C2=A0interfaces</f=
ont></div></div><div><div><font face=3D"monospace, monospace">root@</font><=
span style=3D"font-family:monospace,monospace">imx6qp</span><font face=3D"m=
onospace, monospace">sabreauto:/etc/network# vi interfaces</font></div></di=
v><div><font face=3D"monospace, monospace"><br></font></div><div><div><font=
 face=3D"monospace, monospace">auto lo</font></div><div><font face=3D"monos=
pace, monospace">iface lo inet loopback</font></div><div><font face=3D"mono=
space, monospace"><br></font></div><div><font face=3D"monospace, monospace"=
>auto eth0</font></div><div><font face=3D"monospace, monospace">iface eth0 =
inet dhcp</font></div><div><font face=3D"monospace, monospace">~</font></di=
v><div><font face=3D"monospace, monospace">~</font></div><div><font face=3D=
"monospace, monospace">~</font></div></div><div><br></div><div><br></div><d=
iv><br></div><div>After reset I need to set network again and static ...</d=
iv><div><br></div><div>cheers,</div><div>Peter</div><div><br></div><div><br=
></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Fri, May 12, 2017 at 9:55 PM, Trevor Woerner <span dir=3D"ltr">&lt;<a =
href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Peter,<br>
<br>
There isn&#39;t enough information here for me to help you.<br>
<br>
Could you please list the commands and steps you used to build the image?<b=
r>
- what repositories are you using?<br>
- what branches of those repositories?<br>
- if you changed any config files, what did you change?<br>
- what command did you run to build your image?<br>
- what did bitbake print as your build configuration?<br>
<br>
Which <a href=3D"http://i.mx" rel=3D"noreferrer" target=3D"_blank">i.mx</a>=
 board are you using? There are dozens of them.<br>
<br>
Best regards,<br>
=C2=A0 =C2=A0 Trevor<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On Fri, May 12, 2017 at 3:34 PM, <a href=3D"mailto:peter@gmail.com">peter@g=
mail.com</a><br>
&lt;<a href=3D"mailto:balazovic.peter@gmail.com">balazovic.peter@gmail.com<=
/a>&gt; wrote:<br>
&gt; I build on <a href=3D"http://i.mx" rel=3D"noreferrer" target=3D"_blank=
">i.mx</a> (NXP) machine, I want to get configured as dhcp=C2=A0 (no<br>
&gt; static)...<br>
&gt;<br>
&gt;<br>
&gt; ------ Original Message ------<br>
&gt; From: &quot;Trevor Woerner&quot; &lt;<a href=3D"mailto:twoerner@gmail.=
com">twoerner@gmail.com</a>&gt;<br>
&gt; To: &quot;Peter Balazovic&quot; &lt;<a href=3D"mailto:balazovic.peter@=
gmail.com">balazovic.peter@gmail.com</a>&gt;<br>
&gt; Cc: &quot;Yocto list discussion&quot; &lt;<a href=3D"mailto:yocto@yoct=
oproject.org">yocto@yoctoproject.org</a>&gt;<br>
&gt; Sent: 5/12/2017 9:32:17 PM<br>
&gt; Subject: Re: [yocto] dhcp eth0 network<br>
&gt;<br>
&gt;&gt; Hi Peter,<br>
&gt;&gt;<br>
&gt;&gt; For what MACHINE are you building? What&#39;s your target hardware=
? Can<br>
&gt;&gt; you summarize the steps you took to build your image?<br>
&gt;&gt;<br>
&gt;&gt; What do you want eth0 to do? dhcp or static ip?<br>
&gt;&gt;<br>
&gt;&gt; Best regards,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Trevor<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Fri, May 12, 2017 at 12:01 PM, Peter Balazovic<br>
&gt;&gt; &lt;<a href=3D"mailto:balazovic.peter@gmail.com">balazovic.peter@g=
mail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 Dears,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 I got Yocto image and unfortunatelly network is not some=
how enabled &amp;<br>
&gt;&gt;&gt;=C2=A0 proprely configured. After &quot;ifconfig&quot; no eth0 =
configured.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;=C2=A0 ifconfig<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 lo=C2=A0 =C2=A0 Link encap:Local Loopback<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet addr:127.0.0.1 Mask:255.=
0.0.0<br>
&gt;&gt;&gt;=C2=A0 =C2=A0....<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;=C2=A0 /etc/network<br>
&gt;&gt;&gt;&gt;=C2=A0 ls<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 if-down.d if-post-down.d if-pre-up.d=C2=A0 if-up.d<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 How should I setup &quot;eth0&quot; to get network worki=
ng properly?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 Thanks.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 --<br>
&gt;&gt;&gt;=C2=A0 ______________________________<wbr>_________________<br>
&gt;&gt;&gt;=C2=A0 yocto mailing list<br>
&gt;&gt;&gt;=C2=A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopro=
ject.org</a><br>
&gt;&gt;&gt;=C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/=
listinfo/yocto</a><br>
&gt;&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a11c014bedbc171054f64680c--
