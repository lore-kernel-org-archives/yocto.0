Return-Path: <joaohf@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54780E0032E
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2012 12:26:01 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so320103lah.35
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2012 12:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dh0lfit4Nia9a8qVwJxtTfhYPgtulZwukOTRJPMW3v8=;
	b=HQ7CiKvNPVYjM7Hel9Y3IGBav9jaagcGgR6v9TwfaghFfIZQZybtch2IM7HLjAhzqu
	a0MRcofhW/pxv0qewtD5k2pzmwquPA83lMtTCw9PXlZzoJ8Rfoy8rbhzYW9kqGDJ3LRn
	aCRxbvZUJH0MFMeuMZ1ZkYA0Irab4Y57GYyTq6G3HjAgZbIxZUPLuxA+nS5PqpJsl65h
	71KdR/73W3V6Cd3pna/VhJzET0mIJdc02IliTEiydw9qGZujN43Ix5ccBgxku6aK57V0
	zpssNBMsgG+uyEpnpDydOMxQ8oteOH5/o4RIoGGEwaA566Co16lkm3rvdfPvQUtcoRH/
	IYGQ==
MIME-Version: 1.0
Received: by 10.112.25.6 with SMTP id y6mr2414121lbf.17.1353097559998; Fri, 16
	Nov 2012 12:25:59 -0800 (PST)
Received: by 10.112.94.35 with HTTP; Fri, 16 Nov 2012 12:25:59 -0800 (PST)
In-Reply-To: <CANFVK799C_XeFAnUT1_nrDL2TSDisQ2uD+sRykUP=KZ4kChvAw@mail.gmail.com>
References: <CANFVK7_ahuH9aSOepVX__Zw1ppSeHNRr_SM=x5xgWMGd=APr6g@mail.gmail.com>
	<1634439.IYZyxqXxWH@helios>
	<CANFVK799C_XeFAnUT1_nrDL2TSDisQ2uD+sRykUP=KZ4kChvAw@mail.gmail.com>
Date: Fri, 16 Nov 2012 18:25:59 -0200
Message-ID: <CANFVK7_Qt529UxT-mXQuFr26nrx6U9wdi8LmnYOUX+mRpVE6-A@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Using vendo kernel with Yocto
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
X-List-Received-Date: Fri, 16 Nov 2012 20:26:01 -0000
Content-Type: multipart/alternative; boundary=bcaec554dbc269030704cea29354

--bcaec554dbc269030704cea29354
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello, just a report

As my vendor never will release patch to a recent kernel and our
applications needs some recent fetures found in a recent kernel. I decided
to make the patchs by myself.

I missed one week reading datasheet, git log, studying the old
implementation made by Mindspeed  and so on.

Now the kernel 3.4.18 boot and runs in our board using yocto 1.3. Of course
I have learned a lot of things.

Maybe some adjusts will be need to do. However I am very happy to track
Yocto project with Mindspeed hardware. This is going to speedup the release
cicles and  tools of our products.

Thanks.




>
>
>> Have you contacted the vendor to see if they can provide an updated patc=
h?
>>
>>
> Yes, I contacted they. They said that the kernel is 2.6.22.19 and did not
> have plans to upgrade it.
>
>
>
--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

--bcaec554dbc269030704cea29354
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><div><br>Hello, just a report<br><br>As my vendo=
r never will release patch to a recent kernel and our applications needs so=
me recent fetures found in a recent kernel. I decided to make the patchs by=
 myself.<br>
<br>I missed one week reading datasheet, git log, studying the old implemen=
tation made by Mindspeed=C2=A0 and so on.<br><br>Now the kernel 3.4.18 boot=
 and runs in our board using yocto 1.3. Of course I have learned a lot of t=
hings.<br>
<br>Maybe some adjusts will be need to do. However I am very happy to track=
 Yocto project with Mindspeed hardware. This is going to speedup the releas=
e cicles and=C2=A0 tools of our products.<br><br>Thanks.<br><br><br>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">
<div><div class=3D"gmail_quote"><div class=3D"im"><div>=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">

Have you contacted the vendor to see if they can provide an updated patch?<=
br>
<br></blockquote><div><br></div></div><div>Yes, I=C2=A0contacted=C2=A0they.=
 They said that the kernel is 2.6.22.19 and did not have plans to upgrade i=
t.</div><div>=C2=A0</div><br clear=3D"all"></div></div></blockquote></div><=
br>-- <br>-----------------------------------------------------------<br>
Jo=C3=A3o Henrique Freitas - <a href=3D"http://joaohf_at_gmail.com">joaohf_=
at_gmail.com</a><br>Campinas-SP-Brasil<br>BSD051283<br>LPI 1<br><a href=3D"=
http://www.joaohfreitas.eti.br">http://www.joaohfreitas.eti.br</a><br>

--bcaec554dbc269030704cea29354--
