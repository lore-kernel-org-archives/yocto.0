Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 187D6E00DF2; Wed,  4 Sep 2019 07:23:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AD10E00D9D
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 07:23:04 -0700 (PDT)
Received: by mail-qk1-f181.google.com with SMTP id f10so19754908qkg.7
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 07:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=iQAUrz7VqXA1qq4j+NvahiYeVojQL6bsunw4ibO9OpU=;
	b=Mmn6Ub7D4XwMZOpQHZfgc0s9WDJL4c9o4klYGMxzM6hHE5h20sdazNNC6wE1HEACUD
	SVzwsfX/0eQJgkLIBRX316yO1dWe4uvs8wjN58EyZ5Qm6YJuiMzTNTBH3lXSWOpMrRG+
	7Tt6XYc1/O25y1uslz9RMtsKcgz5CCLJ34KIZ3JcARQqxBBj5dgEmRHFfE/koGLVF5O4
	+wf3CnnAwYN8NWIFBIkhggo+KZKzsbG0kiNY/TlpAolbDJOKczXilQ3kXiwbg2FyDNaA
	83DApWJY0vggeh1X6g4WAG+996ucWbHZtKoiYUF1f7PmORUQuhKySn9ja3/T83gyBUZD
	7hLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=iQAUrz7VqXA1qq4j+NvahiYeVojQL6bsunw4ibO9OpU=;
	b=OxARhCGAXjfkfML82xq13E+lWFwCymhVxAb0MFInrTDSJPqmmuINcuWoTRq1LJPXfQ
	2nvM3N2c9Xc8mhpciuPBsDY/tSLpsfzxumH9jrJhSifWMyYkM8MH3eRo/ZjX0/BpJ1Qp
	X5vgndLfr8uVLg57OHj8U2lCnTkrSr63IjEHLngW+YYH5SOkg23fTRqHr8YZTEQR8htk
	RBiwBYyZVrKPtjhS9RznxIU1YGh0v444vOBsaAzjFERHQCTN9JQL5YX6HUrL+HHZGvU0
	Xf6rYw6Sfb8lHo8q7zUOPX5GREgrHJ8MbtUl8HXEO61mrBTlNreaOWkMiVDoPRpOOytP
	p8FA==
X-Gm-Message-State: APjAAAVubqIUuiIi4/5XNVQf0qG2Mxx0inhBfpCt5R4ncaBRDjMlVIge
	lFO2sl91X4P42eEJy6VT52Dc+hGHCDLUFNDZUkWFoahA
X-Google-Smtp-Source: APXvYqyqxaCW9xPWySvP3ueluGERVlDbejGq86JkGLf5abMBy9ZsMKNkD110hnaj4bM0c9YQEmWl0OJzObimDpq9S6Q=
X-Received: by 2002:a37:b002:: with SMTP id z2mr20338830qke.71.1567606982950; 
	Wed, 04 Sep 2019 07:23:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAAjAsiw9Az8N1W=kY_PA92uPU==E+Bob0W_E8icqcGYxnnVhsg@mail.gmail.com>
	<CAMKF1soFzHWLyGS4jcur6mdUL18dkUt0qYnbiwygOosy-f3X2w@mail.gmail.com>
	<CAAjAsiyQN28Z8A_YUNh9r3s+zs326_V78ED_BpVuKj24fNMqJw@mail.gmail.com>
In-Reply-To: <CAAjAsiyQN28Z8A_YUNh9r3s+zs326_V78ED_BpVuKj24fNMqJw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 4 Sep 2019 07:22:52 -0700
Message-ID: <CAMKF1soECuQ635CZV-zK356nQ73iWMe7_jMx1nrri6aNRH167w@mail.gmail.com>
To: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>
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
X-List-Received-Date: Wed, 04 Sep 2019 14:23:05 -0000
Content-Type: multipart/alternative; boundary="0000000000005dd0590591baf1a1"

--0000000000005dd0590591baf1a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 4, 2019 at 7:10 AM Matteo Facchinetti <
matteo.facchinetti@sirius-es.it> wrote:

>
>
> Il giorno mer 4 set 2019 alle ore 15:54 Khem Raj <raj.khem@gmail.com> ha
> scritto:
>
>>
>>
>> On Wed, Sep 4, 2019 at 2:58 AM Matteo Facchinetti <
>> matteo.facchinetti@sirius-es.it> wrote:
>>
>>> Hi,
>>>
>>> I have a problem with a custom kernel module's recipe that depends to a=
n
>>> other module (in-tree).
>>> My kernel module recipes built seems OK, but I have a problem when doin=
g
>>> the rootfs image stage.
>>>
>>> Error:
>>>  Problem: package packagegroup-console-sirlinux-1.0-r0.0.noarch require=
s
>>> canopen-sync, but none of the providers can be installed
>>>   - package canopen-sync-git-r0.2.neo_sirius requires
>>> kernel-module-canopen-sync-4.9.51-yocto-standard, but none of the provi=
ders
>>> can be installed
>>>   - conflicting requests
>>>   - nothing provides kernel-module-xeno-can-4.9.51-yocto-standard neede=
d
>>> by kernel-module-canopen-sync-4.9.51-yocto-standard-git-r0.2.neo_sirius
>>>
>>
>> It seems this modules is not built can you check if that=E2=80=99s the c=
ase ? You
>> might look for ipk or rpm in deploy area with this name
>>
>
> I have checked and module is built.
> In build/tmp/deploy/rpm/neo_sirius there's this file:
>
> kernel-module-xeno-can-4.9.51+ipipe+git0+0774eacea2_089d772038-r0.1.neo_s=
irius.rpm
>

This has different version than what dep is asking for

>
>
>
>>
>>> ERROR: sirlinux4-image-qt4e-1.0-r0 do_rootfs: Function failed: do_rootf=
s
>>> ERROR: Logfile of failure stored in:
>>> /workspace/neo-sirius_sirlinux4/build/tmp/work/neo_sirius-poky-linux-gn=
ueabi/sirlinux4-image-qt4e/1.0-r0/temp/log.do_rootfs.9126
>>> ERROR: Task
>>> (/workspace/neo-sirius_sirlinux4/meta-sirlinux/recipes-qt4/images/sirli=
nux4-image-qt4e.bb:do_rootfs)
>>> failed with exit code '1'
>>>
>>>
>>> I don't understand how exactly the modules dependencies works...
>>> Initially, I suppose that PROVIDES variable was updated automatically
>>> with the correct modules names when compiled like module from kernel bu=
t
>>> now, I don't know if I have to specify it manually or is there any othe=
r
>>> way?
>>>
>>> Regards,
>>> Matteo
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>

--0000000000005dd0590591baf1a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Sep 4, 2019 at 7:10 AM Matteo Facchinetti &lt;<a hr=
ef=3D"mailto:matteo.facchinetti@sirius-es.it">matteo.facchinetti@sirius-es.=
it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
<div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Il giorno mer 4 set 2019 alle ore 15:54 Khem Raj &lt;<=
a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</=
a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, Sep 4, 2019 at 2:58 AM Matteo Facchinetti &lt;<a h=
ref=3D"mailto:matteo.facchinetti@sirius-es.it" target=3D"_blank">matteo.fac=
chinetti@sirius-es.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Hi,<br><br>I have a problem with a cu=
stom kernel module&#39;s recipe that depends to an other module (in-tree).<=
br>My kernel module recipes built seems OK, but I have a problem when doing=
 the rootfs image stage.<br><br>Error: <br>=C2=A0Problem: package packagegr=
oup-console-sirlinux-1.0-r0.0.noarch requires canopen-sync, but none of the=
 providers can be installed<br>=C2=A0 - package canopen-sync-git-r0.2.neo_s=
irius requires kernel-module-canopen-sync-4.9.51-yocto-standard, but none o=
f the providers can be installed<br>=C2=A0 - conflicting requests<br>=C2=A0=
 - nothing provides kernel-module-xeno-can-4.9.51-yocto-standard needed by =
kernel-module-canopen-sync-4.9.51-yocto-standard-git-r0.2.neo_sirius<br></d=
iv></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">It seems this=
 modules is not built can you check if that=E2=80=99s the case ? You might =
look for ipk or rpm in deploy area with this name=C2=A0</div></div></div></=
blockquote><div><br></div><div>I have checked and module is built.</div><di=
v>In=C2=A0<span style=3D"color:rgb(0,0,0);font-family:monospace">build/tmp/=
deploy/rpm/neo_sirius there&#39;s this file:</span></div><div>kernel-module=
-xeno-can-4.9.51+ipipe+git0+0774eacea2_089d772038-r0.1.neo_sirius.rpm</div>=
</div></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">This=
 has different version than what dep is asking for</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div></div></div>=
</div><div dir=3D"ltr"><div class=3D"gmail_quote"><div><br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><br>ERROR: sirlinux4-image-qt4e-1.0-r0 do_rootfs: Function failed:=
 do_rootfs<br>ERROR: Logfile of failure stored in: /workspace/neo-sirius_si=
rlinux4/build/tmp/work/neo_sirius-poky-linux-gnueabi/sirlinux4-image-qt4e/1=
.0-r0/temp/log.do_rootfs.9126<br>ERROR: Task (/workspace/neo-sirius_sirlinu=
x4/meta-sirlinux/recipes-qt4/images/sirlinux4-image-qt4e.bb:do_rootfs) fail=
ed with exit code &#39;1&#39;<br><br><br>I don&#39;t understand how exactly=
 the modules dependencies works...<br>Initially, I suppose that PROVIDES va=
riable was updated automatically with the correct modules names when compil=
ed like module from kernel but now, I don&#39;t know if I have to specify i=
t manually or is there any other way?<br><br>Regards,<br>Matteo</div><div d=
ir=3D"ltr"><br></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div></div>

--0000000000005dd0590591baf1a1--
