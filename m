Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72E4CE00CEE; Wed,  9 May 2018 04:45:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75D90E0084D
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 04:45:00 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id e78-v6so42334071iod.0
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 04:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NEpmGnc+NCGSR/pEJjfiGtEXHqVHXGxqz0ZNY40FBlI=;
	b=aM5wVpjbpwbkLraoOHv3XxFEuBvwv9jhd2yJA09tSWpc9gip14b5eyddhwiXF2oGi/
	CkI/dq2c+lepTgWnu6zMgTXlxYRmMBs7DLVnWbSSP1flRKp3E0As70dvpHhoX8emh97F
	tk3cQTgzC5TX00b3NTELuvAFL9Z/PtkKGNirU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NEpmGnc+NCGSR/pEJjfiGtEXHqVHXGxqz0ZNY40FBlI=;
	b=erbaylmnURf7iKPmqeUNiXkicOrq53rpP0fGuawBeHoSvOLlFwoWvbzD5Ww59uXG9W
	afeiwlNFI5keo62CQLLhkrrWkhxSlsPICHBXJ8sGHjZlNdutyRR4m74CmyqTnyzeLMmz
	ACKGirVC3u0Y6qRExYqkypp5l1/A346z+Z11yFDuavYNuaccWuCo9vXdwuSr/iLwnifl
	x2ZdCyzx9cyCxe5+M2RvutRu/+2I7o8vbhZGMX9+3WbDBXoX/r8r+QoqlqxC31aWavox
	NC+YvdKnP4Ztl2hActG3Lvt+zXqHGLFFKiCrsQoU40BobGXNXFhSvK2lMz01xKbxfhmM
	9Ozw==
X-Gm-Message-State: ALQs6tAFBowak7dtDDdVvvwFqYjBS+OGZTdwyL2ptpigXESCBOK7geLo
	B3DX+GBX2TNfI5hMvcN/hyP+WjDs0fNZPvqiIUVIzyhO
X-Google-Smtp-Source: AB8JxZrEUK/HvzmH1jG5Ru25GaH45Dc8XHHLlo/i75aFvFQMyJS0QAmrxyb5v5whXBlnNsItpN2olXQIdAZECs46d60=
X-Received: by 2002:a6b:a784:: with SMTP id
	q126-v6mr49136462ioe.98.1525866300330; 
	Wed, 09 May 2018 04:45:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b04:0:0:0:0:0 with HTTP;
	Wed, 9 May 2018 04:44:59 -0700 (PDT)
In-Reply-To: <f6a9d6bb-1b5f-d3b7-a6a9-03500b03fb3a@linux.intel.com>
References: <CAALXFYw5fYE+JBAO4hrXFO-L3wyE6DRzP-yFWbPvKX6S1eRePw@mail.gmail.com>
	<da5f1fde-171e-09cb-f51c-13a6e147c3ed@linux.intel.com>
	<CAALXFYwpsMmKzyO47CzFxj_3FMT+zZja4OdTNtFfoD4=QT0Ehw@mail.gmail.com>
	<f6a9d6bb-1b5f-d3b7-a6a9-03500b03fb3a@linux.intel.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Wed, 9 May 2018 13:44:59 +0200
Message-ID: <CAALXFYxoKv8j+eB10t1sHBumgNCRxLmkejN_-trryR98sheHKA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Native curl and SSL CA certificates
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
X-List-Received-Date: Wed, 09 May 2018 11:45:02 -0000
Content-Type: multipart/alternative; boundary="000000000000ce686e056bc46e31"

--000000000000ce686e056bc46e31
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much for your explanation Mr. Alexander, it was really
helpfull to understand my issue.

I fixed it removing completely my dnf bbappend recipe from my custom layer
and adding this variable to my distro.conf file:

    PACKAGE_FEED_URIS =3D "https://storage.googleapis.com/my_repo/"

After that, at the end of the build process the image contains a valid
/etc/yum.d/oe-remote-repo file and all the necesary stuff to manage it.
There is no need to copy "ca-certificates.crt" manually at all.

Now its working as expected! :-)


2018-05-09 8:56 GMT+02:00 Alexander Kanavin <
alexander.kanavin@linux.intel.com>:

> On 05/09/2018 09:29 AM, Iv=C3=A1n Castell wrote:
>
>> But I am not fetching nor installing packages over the network during
>> image creation. I just build an image using local recipes (standard
>> procedure). One of those local recipes sets up a remote repository for r=
pm
>> packages (adding /etc/yum.repos.d/yocto-adv-rpm.repo to the final
>> image). The purpose of that remote repository is using it to update rpm
>> packages on target devices when they are running in production.
>>
>> In fact, I don't understand why yocto needs to synchronize that cache fo=
r
>> 'yocto-adv-rpm' repo during build time. It doesn't have any sense for me=
.
>> But the fact is that when the ca-certificates.crt is properly installed,
>> the build process ends fine. If that file is not properly installed, the
>> build process fails with the error reported in my previous message.
>>
>
> During image creation dnf is run several times, and it picks up its own
> configuration from the target rootfs. It is definitely not recommended to
> change that configuration behind dnf's back via installed recipes.
>
> The supported way to configure remote repositories is via
> PACKAGE_FEED_URIS:
> https://www.yoctoproject.org/docs/latest/dev-manual/dev-manu
> al.html#using-runtime-package-management
>
> Alex
>

--000000000000ce686e056bc46e31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">Thank you very much for you=
r explanation Mr. Alexander, it was really helpfull to understand my issue.=
=C2=A0</span><br></div><div><br></div><div>I fixed it removing completely m=
y dnf bbappend recipe from my custom layer and adding <span style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine">this variable=C2=A0</span>to my distro.conf file:<br></div><div><div><=
br></div><div>=C2=A0 =C2=A0 PACKAGE_FEED_URIS =3D &quot;<a href=3D"https://=
storage.googleapis.com/my_repo/" target=3D"_blank" style=3D"color:rgb(17,85=
,204);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255)">https://stora=
ge.<wbr>googleapis.com/my_repo/</a>&quot;</div><div><br></div><div>After th=
at, at the end of the build process the image contains a valid /etc/yum.d/o=
e-remote-repo file and all the necesary stuff to manage it. There is no nee=
d to copy=C2=A0<span style=3D"font-size:12.8px">&quot;ca-certificates.crt&q=
uot; manually at all.</span></div><div><br></div></div><div><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline">Now its working as expected! :-)</span><br></div><div><span styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline"><br></span></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2018-05-09 8:56 GMT+02:00 Alexander Kanavin <span dir=3D"l=
tr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_bla=
nk">alexander.kanavin@linux.intel.com</a>&gt;</span>:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"">On 05/09/2018 09:29 AM, Iv=C3=A1n Castell wr=
ote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
But I am not fetching nor installing packages over the network during image=
 creation. I just build an image using local recipes (standard procedure). =
One of those local recipes sets up a remote repository for rpm packages (ad=
ding /etc/yum.repos.d/yocto-adv-rpm<wbr>.repo to the final image). The purp=
ose of that remote repository is using it to update rpm packages on target =
devices when they are running in production.<br>
<br>
In fact, I don&#39;t understand why yocto needs to synchronize that cache f=
or &#39;yocto-adv-rpm&#39; repo during build time. It doesn&#39;t have any =
sense for me. But the fact is that when the ca-certificates.crt is properly=
 installed, the build process ends fine. If that file is not properly insta=
lled, the build process fails with the error reported in my previous messag=
e.<br>
</blockquote>
<br></span>
During image creation dnf is run several times, and it picks up its own con=
figuration from the target rootfs. It is definitely not recommended to chan=
ge that configuration behind dnf&#39;s back via installed recipes.<br>
<br>
The supported way to configure remote repositories is via PACKAGE_FEED_URIS=
:<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.h=
tml#using-runtime-package-management" rel=3D"noreferrer" target=3D"_blank">=
https://www.yoctoproject.org/d<wbr>ocs/latest/dev-manual/dev-manu<wbr>al.ht=
ml#using-runtime-package-<wbr>management</a><br>
<br>
Alex<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>
</div></div>

--000000000000ce686e056bc46e31--
