Return-Path: <matteo.facchinetti@sirius-es.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D577E00DF2; Wed,  4 Sep 2019 07:11:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06749E00D9D
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 07:10:58 -0700 (PDT)
Received: by mail-qk1-f174.google.com with SMTP id x134so9552940qkb.0
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 07:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sirius-es-it.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=W9BfmLfh925xxFGQTX5ddAeunWufjw0WwHwC0TW0mOU=;
	b=ZONJ3J30wvBuu2wPMdRz5HXujfAIvEJZ1sGAMrscvFprovQ/ourNG3nsyUOtanw28s
	sK989f/0st9s4iyjx7coQTIJPNOGHLOFYv20h83kef+938vKGAVf4zjjYZIVup4NCAGM
	8OXQDMnR40cV/R6FlHKqpF6Yf7a1BOjjcWDycdzVlSdIf6TzdTe+ujIlkpNtGdYiDboh
	TsXYEt407AwoHvO8htdemM/FN6ehGDJvQJUkly/AliV2FqxERqSmojp4Wa/FsRGfEPrf
	6LLgMyIooHJ0Ehx7/+2J5J6DiHN57Un3yPdSIje73Qfuob7bv5UMU0H61ZEYYy8IpaZ8
	PLcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=W9BfmLfh925xxFGQTX5ddAeunWufjw0WwHwC0TW0mOU=;
	b=FZqzjGE72p/mi4mpB+QtMitlUjHOSyoHiowjcxSr4hX/CjZR5ipRw/kKexnx6zdTz2
	mgMgv9I7d3MBMA2PXU7XwoJsY3oDbtLH7HMCGpb10kjmEmUgD/jr4rvWVZnFUY2S7Miz
	arHUwI33ZBBH3B2TrSPrkqGD9RaHcogdwDz9q3Ubh3rm9/+hz/vZUdloteSu0I6UVYw0
	NSz+c3cabhjihR/vVF38vYutIWeOa1sex5IGNgLlHlLS4rpFRj6nYMlXZbD0WwnItB7Q
	6Z/tDq4mWaYZ1EhAaIYn0p99965Eo84v9QkktwnoPiF+IL0rmEckEYAhBFcFU1ulyIMO
	AfdA==
X-Gm-Message-State: APjAAAV8bKUaIha0O62rid3OnD6S1EIgtJfRq9fH5mRv9SUurAQfnfGK
	sQR9VpbeV4mqcaiTfPAS665cU3E23j+WUdJHsywx4g==
X-Google-Smtp-Source: APXvYqzVSM8UHuLAi6wt+CucOzGpIXruDsDPTEKoboo3WsI1lNRrwUa2d7GGKDeYxadbIGUEuWLmN2DlRxVgJBMgCcs=
X-Received: by 2002:a37:a00f:: with SMTP id j15mr36683267qke.335.1567606258143;
	Wed, 04 Sep 2019 07:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAAjAsiw9Az8N1W=kY_PA92uPU==E+Bob0W_E8icqcGYxnnVhsg@mail.gmail.com>
	<CAMKF1soFzHWLyGS4jcur6mdUL18dkUt0qYnbiwygOosy-f3X2w@mail.gmail.com>
In-Reply-To: <CAMKF1soFzHWLyGS4jcur6mdUL18dkUt0qYnbiwygOosy-f3X2w@mail.gmail.com>
From: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>
Date: Wed, 4 Sep 2019 16:10:47 +0200
Message-ID: <CAAjAsiyQN28Z8A_YUNh9r3s+zs326_V78ED_BpVuKj24fNMqJw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: in-tree module dependency
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
X-List-Received-Date: Wed, 04 Sep 2019 14:11:00 -0000
Content-Type: multipart/alternative; boundary="0000000000002a903e0591bac62e"

--0000000000002a903e0591bac62e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Il giorno mer 4 set 2019 alle ore 15:54 Khem Raj <raj.khem@gmail.com> ha
scritto:

>
>
> On Wed, Sep 4, 2019 at 2:58 AM Matteo Facchinetti <
> matteo.facchinetti@sirius-es.it> wrote:
>
>> Hi,
>>
>> I have a problem with a custom kernel module's recipe that depends to an
>> other module (in-tree).
>> My kernel module recipes built seems OK, but I have a problem when doing
>> the rootfs image stage.
>>
>> Error:
>>  Problem: package packagegroup-console-sirlinux-1.0-r0.0.noarch requires
>> canopen-sync, but none of the providers can be installed
>>   - package canopen-sync-git-r0.2.neo_sirius requires
>> kernel-module-canopen-sync-4.9.51-yocto-standard, but none of the provid=
ers
>> can be installed
>>   - conflicting requests
>>   - nothing provides kernel-module-xeno-can-4.9.51-yocto-standard needed
>> by kernel-module-canopen-sync-4.9.51-yocto-standard-git-r0.2.neo_sirius
>>
>
> It seems this modules is not built can you check if that=E2=80=99s the ca=
se ? You
> might look for ipk or rpm in deploy area with this name
>

I have checked and module is built.
In build/tmp/deploy/rpm/neo_sirius there's this file:
kernel-module-xeno-can-4.9.51+ipipe+git0+0774eacea2_089d772038-r0.1.neo_sir=
ius.rpm



>
>> ERROR: sirlinux4-image-qt4e-1.0-r0 do_rootfs: Function failed: do_rootfs
>> ERROR: Logfile of failure stored in:
>> /workspace/neo-sirius_sirlinux4/build/tmp/work/neo_sirius-poky-linux-gnu=
eabi/sirlinux4-image-qt4e/1.0-r0/temp/log.do_rootfs.9126
>> ERROR: Task
>> (/workspace/neo-sirius_sirlinux4/meta-sirlinux/recipes-qt4/images/sirlin=
ux4-image-qt4e.bb:do_rootfs)
>> failed with exit code '1'
>>
>>
>> I don't understand how exactly the modules dependencies works...
>> Initially, I suppose that PROVIDES variable was updated automatically
>> with the correct modules names when compiled like module from kernel but
>> now, I don't know if I have to specify it manually or is there any other
>> way?
>>
>> Regards,
>> Matteo
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--0000000000002a903e0591bac62e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Il giorno mer 4 set 2019 alle ore 15:=
54 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a=
>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Sep 4, 2019 at 2:58 AM Matteo Facchinetti &lt;<a hr=
ef=3D"mailto:matteo.facchinetti@sirius-es.it" target=3D"_blank">matteo.facc=
hinetti@sirius-es.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Hi,<br><br>I have a problem with a cus=
tom kernel module&#39;s recipe that depends to an other module (in-tree).<b=
r>My kernel module recipes built seems OK, but I have a problem when doing =
the rootfs image stage.<br><br>Error: <br>=C2=A0Problem: package packagegro=
up-console-sirlinux-1.0-r0.0.noarch requires canopen-sync, but none of the =
providers can be installed<br>=C2=A0 - package canopen-sync-git-r0.2.neo_si=
rius requires kernel-module-canopen-sync-4.9.51-yocto-standard, but none of=
 the providers can be installed<br>=C2=A0 - conflicting requests<br>=C2=A0 =
- nothing provides kernel-module-xeno-can-4.9.51-yocto-standard needed by k=
ernel-module-canopen-sync-4.9.51-yocto-standard-git-r0.2.neo_sirius<br></di=
v></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">It seems this =
modules is not built can you check if that=E2=80=99s the case ? You might l=
ook for ipk or rpm in deploy area with this name=C2=A0</div></div></div></b=
lockquote><div><br></div><div>I have checked and module is built.</div><div=
>In=C2=A0<span style=3D"color:rgb(0,0,0);font-family:monospace">build/tmp/d=
eploy/rpm/neo_sirius there&#39;s this file:</span></div><div>kernel-module-=
xeno-can-4.9.51+ipipe+git0+0774eacea2_089d772038-r0.1.neo_sirius.rpm</div><=
div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><br>ERROR: sirlinux4-image-qt4e-1.0-r0 do_roo=
tfs: Function failed: do_rootfs<br>ERROR: Logfile of failure stored in: /wo=
rkspace/neo-sirius_sirlinux4/build/tmp/work/neo_sirius-poky-linux-gnueabi/s=
irlinux4-image-qt4e/1.0-r0/temp/log.do_rootfs.9126<br>ERROR: Task (/workspa=
ce/neo-sirius_sirlinux4/meta-sirlinux/recipes-qt4/images/sirlinux4-image-qt=
4e.bb:do_rootfs) failed with exit code &#39;1&#39;<br><br><br>I don&#39;t u=
nderstand how exactly the modules dependencies works...<br>Initially, I sup=
pose that PROVIDES variable was updated automatically with the correct modu=
les names when compiled like module from kernel but now, I don&#39;t know i=
f I have to specify it manually or is there any other way?<br><br>Regards,<=
br>Matteo</div><div dir=3D"ltr"><br></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>
</blockquote></div></div>

--0000000000002a903e0591bac62e--
