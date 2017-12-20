Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15540E00D7F; Wed, 20 Dec 2017 04:10:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 000DFE00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 04:09:59 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id e3so12468993pfi.10
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 04:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cAAqz4cjqB0vX19ugFZ/2fGBwxxe83yjgsr+OZv1fPU=;
	b=vBuh70R9xxjxp8YN42h5PR+1GFCiWrH0Bm8Y42OTGODkX013W8WZyqF0ILdSdGqrEK
	lIpN2NzKPqBW6olH88UHRCmQ12cjWTkWaMtoow6Cob1Y5kWH3SDBxxj8FKZih3H2Fa8m
	qBoVyTEXsd/gQqlKs83Yd8ljcOAiEb/5NP9taWk95MI1Zb034MXpAs/wAcPgrlGixvTl
	zG6wvGIJdaBbhOzBMDIJtXsiZxa5fFUdSA20Ds6kfGswNeF/gRWq+y6dOx38k1p51hAW
	YdCXtJTVQMtHY8TH3dPEBwWxnuwMg/E+BM0MH3YjIAdZP/1DEZFSFoOIGnIWkyNyesz9
	Mp1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cAAqz4cjqB0vX19ugFZ/2fGBwxxe83yjgsr+OZv1fPU=;
	b=Den5bK4RG4JvKPsxUKenAO52U5l1LG0jcF93p3F6MeZvXpiWc6o6+XyDNTsXeEkoIu
	1hXMOQPtXtMS8v0ipmqk+lYp2ziRPJo/4Rzm9ykLMJvhLXOlNULftlCd700Gx93ncD57
	bd/SRROtBQKA6zzSOCpdeWunx+S7sqCFwel2+UAS6HYOypWMy1uXrW31nIVDZhxrD/R3
	UFcGCofjvkUoX2s/xGFk0XbFnWTKezxb4B+pkhU24nj4TIksIUEJSUR78VbBSrcXOJbw
	Ot2q60+A2ZnbceFJLeTTGYX8Kn/ik4nRdCg8JOLsMB7p77nypjoN3rgQEK0iJwkDrfE6
	YMMA==
X-Gm-Message-State: AKGB3mLfiG0esQWJZSaA89mnKoJe0364ajLP6wwNGr5oRXSCu8id5phc
	KudAr906f/tvleb9FJDlJCDuDrAyd6yasWKEtGk=
X-Google-Smtp-Source: ACJfBotLhrpWiA8mQZyvdf3Ypx6ihba/gftx0csPUqaiauQcq69sTeYz8OVVbDO+SYa3P3T8ZOSo+ZnV0Lct31gVxK8=
X-Received: by 10.101.77.72 with SMTP id j8mr460675pgt.31.1513771799387; Wed,
	20 Dec 2017 04:09:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Wed, 20 Dec 2017 04:09:58 -0800 (PST)
In-Reply-To: <CAGAf8LzbvdQ3HaYnkojw3TrQdUdOgZQ123kfZqe_8D+nw7YzwA@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
	<CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
	<CAGAf8LzbvdQ3HaYnkojw3TrQdUdOgZQ123kfZqe_8D+nw7YzwA@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Wed, 20 Dec 2017 13:09:58 +0100
Message-ID: <CAPb0b+MNP=-Bki_Fa4Z6cW_hpM3Jd+pcLH8N2U1hn9+iLgCHwg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rfkill cannot open control device
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
X-List-Received-Date: Wed, 20 Dec 2017 12:10:01 -0000
Content-Type: multipart/alternative; boundary="089e082375cc5fa2220560c47606"

--089e082375cc5fa2220560c47606
Content-Type: text/plain; charset="UTF-8"

this does not solve the issue so far.  It seems a package installed by
rpi-basic-image does the trick.

what is the difference between :

core-image-minimal
rpi-basic-image


On Wed, Dec 20, 2017 at 10:25 AM, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Inside poky distro (.../poky/meta/recipes-connectivity):
>
> [user@localhost recipes-connectivity]$ pwd
> /home/user/YOCTO/oe_core_embedded/poky/meta/recipes-connectivity
> [user@localhost recipes-connectivity]$ ls -al
> total 96
> drwxrwxr-x. 24 user user 4096 Oct 18 12:49 .
> drwxrwxr-x. 19 user user 4096 Nov 18 15:13 ..
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 avahi
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 bind
> *drwxrwxr-x.  3 user user 4096 Oct 18 12:49 bluez5*
> drwxrwxr-x.  5 user user 4096 Oct 18 12:49 connman
> drwxrwxr-x.  4 user user 4096 Oct 18 12:49 dhcp
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 iproute2
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 irda-utils
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 iw
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 libnss-mdns
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 libpcap
> drwxrwxr-x.  2 user user 4096 Oct 18 12:49 mobile-broadband-provider-info
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 neard
> drwxrwxr-x.  5 user user 4096 Oct 18 12:49 nfs-utils
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 ofono
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 openssh
> drwxrwxr-x.  4 user user 4096 Oct 18 12:49 openssl
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 ppp
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 ppp-dialin
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 resolvconf
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 socat
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 wireless-tools
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 wpa-supplicant
> [user@localhost recipes-connectivity]$
>
> Or:
>
> https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/
> recipes-connectivity/bluez5/
>
> You should add it in .../conf/local.conf as:
>
> IMAGE_INSTALL_append += "rfkill" (my best guess, easiest way).
>
> Zoran
> _______
>
> On Tue, Dec 19, 2017 at 7:03 PM, Sherif Omran <sherifomran2000@gmail.com>
> wrote:
>
>> how can i add rfkill recipe?
>>
>> On Tue, Dec 19, 2017 at 4:23 PM, Sherif Omran <sherifomran2000@gmail.com>
>> wrote:
>>
>>> i used core-image-minimal for a raspberry pi 0w. But i get rfkill can
>>> not open control device. when i give rfkill , i get the syntanx output,
>>> this means it exists.
>>> the wifi driver is installed.
>>>
>>> What is the rfkill device? is it /dev/rfkill ?
>>>
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--089e082375cc5fa2220560c47606
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>this does not solve the issue so far.=C2=A0=
 It seems a package installed by rpi-basic-image does the trick.<br></div><=
br>what is the difference between :<br></div><br>core-image-minimal<br></di=
v>rpi-basic-image<br><br><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Wed, Dec 20, 2017 at 10:25 AM, Zoran Stojsavljevic <span dir=3D"=
ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank"=
>zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div><div>Inside poky distro (.../poky/meta/=
recipes-<wbr>connectivity):<br></div><div><br></div><div>[user@localhost re=
cipes-connectivity]$ pwd</div><div>/home/user/YOCTO/oe_core_<wbr>embedded/p=
oky/meta/recipes-<wbr>connectivity</div><div>[user@localhost recipes-connec=
tivity]$ ls -al</div><div>total 96</div><div>drwxrwxr-x. 24 user user 4096 =
Oct 18 12:49 .</div><div>drwxrwxr-x. 19 user user 4096 Nov 18 15:13 ..</div=
><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 avahi</div><div>drwxr=
wxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 bind</div><div><i><b><u>drwxrwxr=
-x.=C2=A0 3 user user 4096 Oct 18 12:49 bluez5</u></b></i></div><div>drwxrw=
xr-x.=C2=A0 5 user user 4096 Oct 18 12:49 connman</div><div>drwxrwxr-x.=C2=
=A0 4 user user 4096 Oct 18 12:49 dhcp</div><div>drwxrwxr-x.=C2=A0 3 user u=
ser 4096 Oct 18 12:49 iproute2</div><div>drwxrwxr-x.=C2=A0 3 user user 4096=
 Oct 18 12:49 irda-utils</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 1=
8 12:49 iw</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 libnss=
-mdns</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 libpcap</di=
v><div>drwxrwxr-x.=C2=A0 2 user user 4096 Oct 18 12:49 mobile-broadband-pro=
vider-info</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 neard<=
/div><div>drwxrwxr-x.=C2=A0 5 user user 4096 Oct 18 12:49 nfs-utils</div><d=
iv>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 ofono</div><div>drwxrwxr=
-x.=C2=A0 3 user user 4096 Oct 18 12:49 openssh</div><div>drwxrwxr-x.=C2=A0=
 4 user user 4096 Oct 18 12:49 openssl</div><div>drwxrwxr-x.=C2=A0 3 user u=
ser 4096 Oct 18 12:49 ppp</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct =
18 12:49 ppp-dialin</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:=
49 resolvconf</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 soc=
at</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 wireless-tools=
</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 wpa-supplicant</=
div><div>[user@localhost recipes-connectivity]$=C2=A0</div></div><div><br><=
/div><div>Or:</div><div><br></div><div><a href=3D"https://git.yoctoproject.=
org/cgit.cgi/poky/plain/meta/recipes-connectivity/bluez5/" target=3D"_blank=
">https://git.yoctoproject.org/<wbr>cgit.cgi/poky/plain/meta/<wbr>recipes-c=
onnectivity/bluez5/</a><br></div><div><br></div><div>You should add it in .=
../conf/local.conf as:</div><div><br></div><div>IMAGE_INSTALL_append +=3D &=
quot;rfkill&quot; (my best guess, easiest way).<br></div><div><br></div><di=
v>Zoran</div><div>_______</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote"><div><div class=3D"h5">On Tue, Dec 19, 2017 at 7:03 PM,=
 Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail=
.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt;</span> wrote:<br>=
</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div dir=
=3D"ltr">how can i add rfkill recipe?<br></div><div class=3D"m_-12492695994=
63974801HOEnZb"><div class=3D"m_-1249269599463974801h5"><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Tue, Dec 19, 2017 at 4:23 PM, She=
rif Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail.com=
" target=3D"_blank">sherifomran2000@gmail.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>i used core-imag=
e-minimal for a raspberry pi 0w. But i get rfkill can not open control devi=
ce. when i give rfkill , i get the syntanx output, this means it exists. <b=
r></div>the wifi driver is installed.<br><br></div>What is the rfkill devic=
e? is it /dev/rfkill ?<br></div><br></div>
</blockquote></div><br></div>
</div></div><br></div></div><span class=3D"">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></span></blockquote></div><br></div>
</blockquote></div><br></div></div>

--089e082375cc5fa2220560c47606--
