Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C275E00655
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 07:46:49 -0700 (PDT)
Received: by lboj14 with SMTP id j14so775149lbo.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 07:46:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=Xibnaig4zIF3yK5p1XJ3vEJf/B5LBhgrYjFiqnaVpg0=;
	b=DQlSjlarDZvInnKnWdGOHRoDYEjcRYpOnpEFQPan0JFd/dTDlqpUiIO8XbMO4TIW1P
	Pvj3QRAYwNHuabD52ebAQGvGxFTnUq5bFKjIkZQN2WuHVKUYBT07ldNxfT+fRR+aShwo
	cUlI+bawdnCTvC+jB4bkBzNVPXqu0LNJgDiS12Fw2sNkp4YUQr6Jg7G6AtzNby0GFRz9
	nN35JqScjg9C1Ny1z4c31ZiqGfIK5IzEeaxqE9RL1ns39a6kxVhnvPzC4r0v9rCLWQ6P
	yCCTaw/PxMdjwEUgwsJdS7Sl62QTb2SBRBE71ft88fc4uP6krTqC5Yc7lpdUWbVhUPdq
	QXOA==
Received: by 10.152.125.116 with SMTP id mp20mr25986392lab.19.1343227608578;
	Wed, 25 Jul 2012 07:46:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 25 Jul 2012 07:46:28 -0700 (PDT)
In-Reply-To: <CANsUPaNJZpm5AQ4R0O9E2szAvciUYA9hGST7Mb7C9Z4zovhxrQ@mail.gmail.com>
References: <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com>
	<20120628181214.7ACD02026AB@gemini.denx.de>
	<C6510F6D410BB64A8C15398EDC6B847C46A79CD8@ORSMSX101.amr.corp.intel.com>
	<CANsUPaNSy0Me580w0odN76bcHvJZ1-gXFdWadhdnpNR3Q_EEtQ@mail.gmail.com>
	<CAMKF1sqwu1ZsyMyWoY4nfCh0fpWEV+Sw8oORt4iJ+TGAn_mXJw@mail.gmail.com>
	<CANsUPaOzw1Vqw4iDCf2GWtK8Ji-JY9Dg0EfHcdW6KweLt=Gf9A@mail.gmail.com>
	<CAMKF1sqrXQ9PGH-S9tttBd3KRvSffwDmxv3dZSWFKuDe9e7UNQ@mail.gmail.com>
	<CANsUPaNJZpm5AQ4R0O9E2szAvciUYA9hGST7Mb7C9Z4zovhxrQ@mail.gmail.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 25 Jul 2012 16:46:28 +0200
Message-ID: <CANsUPaMPqaAv-3XwcJWYuJVo0s5tUF3Zum4wQVESX2oKr=e1Mw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQkuANZqjF1hKZzh40h95YiZf3W5Ms0zkZuJjrB969Y8sU/JhZ2yLMvS56UdYOUrFsOsgXzT
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto and Qt embedded
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Jul 2012 14:46:50 -0000
Content-Type: multipart/alternative; boundary=f46d0435be6e76394d04c5a88c47

--f46d0435be6e76394d04c5a88c47
Content-Type: text/plain; charset=ISO-8859-1

I also tried to point to a qmake file under the Yocto build tree but it is
not correct..

Is there a way to compile the Qt application out of Qt creator?
For example sourcing the arm environment and running make into the
application folder?

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Mon, Jul 16, 2012 at 1:56 PM, Giovanni Foiani <fnognn@unife.it> wrote:

> Thanks Khem,
> I successfully found g++ compiler path which is:
>
>
> /opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
>
> now I was able to configure the poky tool chain into Qt creator (using
> default mkspec which is linux-g++); after that I tried to configure Qt
> Version (4.7.4) in Qt creator using the following qmake file:
>
> /opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/qmake
>
> Now Qt creator gives me a warning:
>
> *"ABI detection failed: Make sure to use a matching tool chain when
> building"*
> *
> *
> ABI is automatically set to arm-linux-generic-elf and this warning
> prevents me to select arm tool chain for building my application.
> Am I using the wrong mkspec? (The other ones seems unsuitable for me..)
>
> Thanks
>
> Giovanni
> --
>
> Dott. Ing. Giovanni Foiani
>
> Cell:        +39-349-3577515
> Phone:    +39-0532-97-4106
> mail:        giovanni.foiani@unife.it
> CenTec - Corso Guercino, 47 - 44042 Cento (FE)
>
>
>
> On Sat, Jul 14, 2012 at 8:17 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Sat, Jul 14, 2012 at 3:15 AM, Giovanni Foiani <fnognn@unife.it> wrote:
>> > So I tried to find g++ compiler using "find" command, into:
>> >
>> > /opt/poky/1.2.1/sysroots/i686-pokysdk-linux/
>> >
>> > with no success.
>>
>> find "*g++"
>>
>
>

--f46d0435be6e76394d04c5a88c47
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I also tried to point to a qmake file under the Yocto build tree but it is =
not correct..<div><br></div><div>Is there a way to compile the Qt applicati=
on out of Qt creator?</div><div>For example sourcing the arm environment an=
d running make into the application folder?</div>

<div><br></div><div>Thanks</div><div><br></div><div>Giovanni=A0<br clear=3D=
"all">
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 <a href=3D"tel:%2B39-349-3577515" value=3D"+393493577515=
" target=3D"_blank">+39-349-3577515</a><br>

Phone: =A0=A0 <a href=3D"tel:%2B39-0532-97-4106" value=3D"+390532974106" ta=
rget=3D"_blank">+39-0532-97-4106</a><br>mail:=A0 =A0 =A0 =A0 <a href=3D"mai=
lto:giovanni.foiani@unife.it" target=3D"_blank">giovanni.foiani@unife.it</a=
></div>
<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Mon, Jul 16, 2012 at 1:56 PM, Giovann=
i Foiani <span dir=3D"ltr">&lt;<a href=3D"mailto:fnognn@unife.it" target=3D=
"_blank">fnognn@unife.it</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">


<div>Thanks=A0Khem,</div>I successfully found g++ compiler path which is:<d=
iv><br></div><div>/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/armv7=
a-vfp-neon-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++</div><div><br></di=
v>



<div>now I was able to configure the poky tool chain into Qt creator (using=
 default mkspec which is linux-g++); after that=A0I tried to configure Qt V=
ersion (4.7.4) in Qt creator using the following qmake file:</div><div><br>



</div><div>/opt/poky/1.2.1/sysroots/i686-pokysdk-linux/usr/bin/qmake</div><=
div><br></div><div>Now Qt creator gives me a warning:</div><div><br></div><=
div><i>&quot;ABI detection failed: Make sure to use a matching tool chain w=
hen building&quot;</i></div>



<div><i><br></i></div><div>ABI is automatically set to arm-linux-generic-el=
f and this warning prevents me to select arm tool chain for building my app=
lication.</div><div>Am I using the wrong mkspec? (The other ones seems unsu=
itable for me..)</div>



<div><br></div><div>Thanks=A0</div><span><font color=3D"#888888"><div><br><=
/div><div>Giovanni</div></font></span><div><div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 <a href=3D"tel:%2B39-349-3577515" value=3D"+393493577515=
" target=3D"_blank">+39-349-3577515</a><br>


Phone: =A0=A0 <a href=3D"tel:%2B39-0532-97-4106" value=3D"+390532974106" ta=
rget=3D"_blank">+39-0532-97-4106</a><br>mail:=A0 =A0 =A0 =A0 <a href=3D"mai=
lto:giovanni.foiani@unife.it" target=3D"_blank">giovanni.foiani@unife.it</a=
></div>
<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br></div><div><div><div class=3D"gmail_quote">On Sat, Jul 14, 2012 at =
8:17 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.co=
m" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">



<div>On Sat, Jul 14, 2012 at 3:15 AM, Giovanni Foiani &lt;<a href=3D"mailto=
:fnognn@unife.it" target=3D"_blank">fnognn@unife.it</a>&gt; wrote:<br>
&gt; So I tried to find g++ compiler using &quot;find&quot; command, into:<=
br>
&gt;<br>
&gt; /opt/poky/1.2.1/sysroots/i686-pokysdk-linux/<br>
&gt;<br>
&gt; with no success.<br>
<br>
</div>find &quot;*g++&quot;<br>
</blockquote></div><br></div></div></div>
</blockquote></div><br>
</div>

--f46d0435be6e76394d04c5a88c47--
