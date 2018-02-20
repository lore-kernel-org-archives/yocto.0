Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50AABE00E41; Tue, 20 Feb 2018 00:26:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AC2FE00E08
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 00:26:50 -0800 (PST)
Received: by mail-it0-f44.google.com with SMTP id l187so12198847ith.4
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 00:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LPbcXgGzEEjQFR58mofaGdA0jXHm645b2xKTZKmoQGw=;
	b=jQ6IpKXyBtGsZcGpp7i43zDie6fnZLqyWIxpTIXfPw6DqOf3i38UDcFAgT74UweBl6
	0qxd3yqcsQxO+NSXJi2gYR6W8HwFdC+F5uOw+Q4HkFkwL7PBi6OiKAfIRARiT60+hwe7
	YgppDMu3B4XPog8PN0FBFKeYGN0F7VbxiRE88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LPbcXgGzEEjQFR58mofaGdA0jXHm645b2xKTZKmoQGw=;
	b=bIn1e1/hcEWqrnQXMZqw+7XFwx+DAAmdA5r9KeNW5d005qRSMERCkxbsK7q16DLc7h
	eBCLcY/Do+Zk55njp6C8aSObPsXsCWk5rUlhfvbOQo9FCs6MX8bGPZPhC1MnOSaR9Rxr
	krPleMFslAbnuIIERYUGUMpyU1R01h/fSoOgTsBMnYo4nYu7qTP0u1hQHXbf0SANHFX0
	P9hGf6EftP2ae6ge5g+HNvRt6ZZsTLTJ+++CvEd2AbqA2z586cBoskfpWyjS7hUDC9Sa
	+SrJ1Ru2gP84AfSqpIk4eW4f18h8bVB8mwfMeO2r35stEOlSgr3PlM5O+prsBr8tR3XR
	3D9w==
X-Gm-Message-State: APf1xPAQGBKzPGxhfB98SvxeonO0+obHCxQl/Mf+y/sXK74LfRXg8QjV
	Q4fhzlkUt8soGJF+I7AM185gbG47wqGhBngJfA9XDA==
X-Google-Smtp-Source: AH8x226/rXRBiyzkycArBGBVpxzT/OLy3zNn5WMI40p0Iduf8EA74xGOXdfL6nsgmDnGXqtoCpzwt9cyqeOXHDiFSz0=
X-Received: by 10.36.158.198 with SMTP id p189mr23889983itd.128.1519115209660; 
	Tue, 20 Feb 2018 00:26:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Tue, 20 Feb 2018 00:26:49 -0800 (PST)
In-Reply-To: <de7a5512-c5bf-8a67-f454-a85c788ef2b6@prevas.dk>
References: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
	<CAALXFYy7nN1ZahoR_+mCLeD4U7z4zEoiNwv+mzwT8dEf+e-pmg@mail.gmail.com>
	<CAMKF1sqrDFkVB0brWidTvARLpsKGHC6NFCQhP-yF25vtS_WxYA@mail.gmail.com>
	<20180219151819.GA38294@mbabyjoh-desk.ger.corp.intel.com>
	<CAALXFYxh2RWy1pvYyd0Fw=V0W6w2gZFZZ55sGNw3qMEaG_wRsQ@mail.gmail.com>
	<de7a5512-c5bf-8a67-f454-a85c788ef2b6@prevas.dk>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Tue, 20 Feb 2018 09:26:49 +0100
Message-ID: <CAALXFYxaYh=cEaNGOzZsjN50zVd-6MsUNKySwiDc+isCKgsBVQ@mail.gmail.com>
To: =?UTF-8?Q?Martin_Hundeb=C3=B8ll?= <mnhu@prevas.dk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Removing busybox completely from the generated image
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
X-List-Received-Date: Tue, 20 Feb 2018 08:26:52 -0000
Content-Type: multipart/alternative; boundary="94eb2c05d83071f1d60565a092e1"

--94eb2c05d83071f1d60565a092e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2018-02-20 7:45 GMT+01:00 Martin Hundeb=C3=B8ll <mnhu@prevas.dk>:

> Hi Ivan,
>
>>
>> Thank you for the information, I will take into account that tool for
>> future embedded projects. However, the focus of this issue was to remove
>> completely busybox from the image, not replacing it by another applicati=
on
>> box.
>>
>> I have created a bbappend with a fragment of the busybox configuration
>> disabling syslog and udhcpc applets. It works. However the busybox binar=
y
>> and a lot of applets are still there (adduser, unzip, fbset, traceroute,
>> and more).
>>
>> Disabling all different applets and installing native tools instead coul=
d
>> be the right way to procede. Not a nice solution, but at least it should
>> work...
>>
>
> Here's what we have in our distro config to disable busybox:
>
> > # Disable busybox
> > VIRTUAL-RUNTIME_base-utils =3D ""
> > ALTERNATIVE_PRIORITY_pn-busybox =3D "1"
>
> The priority setting make bitbake pull in alternatives from util-linux /
> coreutils when appropriate.
>
> // Martin
>


Yes!! That was the trick. It works like a charm!! Thank you so much Mr.
Martin!! :-)

--94eb2c05d83071f1d60565a092e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2018-02-20 7:45 GMT+01:00 Martin Hundeb=C3=B8ll <span dir=3D"ltr">&lt;<=
a href=3D"mailto:mnhu@prevas.dk" target=3D"_blank">mnhu@prevas.dk</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Ivan,<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"gmail-"><br>
Thank you for the information, I=C2=A0will take into account that tool for =
future embedded projects. However, the focus of this issue was to remove co=
mpletely busybox from the image, not replacing it by another application bo=
x.<br>
<br>
I have created a bbappend with a fragment of the busybox configuration disa=
bling syslog and udhcpc applets. It works. However the busybox binary and a=
 lot of applets are still there (adduser,=C2=A0unzip,=C2=A0fbset, tracerout=
e, and more).<br>
<br>
Disabling all different applets and installing native tools instead could b=
e the right way to procede. Not a nice solution, but at least it should wor=
k...<br>
</span></blockquote>
<br>
Here&#39;s what we have in our distro config to disable busybox:<br>
<br>
&gt; # Disable busybox<br>
&gt; VIRTUAL-RUNTIME_base-utils =3D &quot;&quot;<br>
&gt; ALTERNATIVE_PRIORITY_pn-busybo<wbr>x =3D &quot;1&quot;<br>
<br>
The priority setting make bitbake pull in alternatives from util-linux / co=
reutils when appropriate.<span class=3D"gmail-HOEnZb"><font color=3D"#88888=
8"><br>
<br>
// Martin<br>
</font></span></blockquote></div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Yes!! That was t=
he trick. It works like a charm!! <span style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial;float:none;display:inline">Thank you so mu=
ch Mr. Martin!! </span>:-)</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra"><br></div>
</div></div>

--94eb2c05d83071f1d60565a092e1--
