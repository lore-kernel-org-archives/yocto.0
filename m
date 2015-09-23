Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AA5DE00CDC; Wed, 23 Sep 2015 03:01:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F619E007B3
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 03:01:38 -0700 (PDT)
Received: by qgt47 with SMTP id 47so15004568qgt.2
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 03:01:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=9H9vBJFmqyjsQxw9RkUFphJkL7PbMQ9fefcK5mERmp0=;
	b=ehA8YL70J+Gm4Klfg7lbbllqHItfK6x8Uq6t79hDRhhz9eg++lQyCw1+5GYBed/04c
	acLPUM1iGEfvaZTVP5OdmUQLwWfoZW8dwNBs/e3ES97EWJ3lWnfS9SYWh2pfxedWcpPD
	vejiqYa0mhzv7fgVHwq6x08rrZyIjJatm3aCAkBAgLXGNu9cOB8pr6xtX7KdmDMiYHbw
	OYnv8Iw5uHyqQU0rE6cX6/2yuFnaAJIKnMPee/zk/SjvZ8HR27Uz3M4Ac0zav9gpbc5l
	wqNYwplIN6aZKHm3bzelvwP4x/NnsNpdwAOJQ1iNhgyddohlEIYB6tPBfC+ARYqUNUCi
	+B1A==
X-Gm-Message-State: ALoCoQlKry5xl2gk1wcGWt+6xJ1VDsyDhLSotKj3qHhJJgUqTW4djVB3yhVJ0UwVtnCAE/zt+8yQ
X-Received: by 10.140.133.202 with SMTP id 193mr36929324qhf.52.1443002497434; 
	Wed, 23 Sep 2015 03:01:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Wed, 23 Sep 2015 03:01:18 -0700 (PDT)
In-Reply-To: <CALLyC8Qt4X-=Ea7jcOY4TEnBUrGBJq_nPhALteENznRhmooCdA@mail.gmail.com>
References: <CALLyC8Qt4X-=Ea7jcOY4TEnBUrGBJq_nPhALteENznRhmooCdA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 23 Sep 2015 11:01:18 +0100
Message-ID: <CAJTo0LY2TTt=ebrz0dd0X313+tgY49+WKTOWW2-ZnyjGaiF6+Q@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Does mount.cifs command includes in busybox package
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
X-List-Received-Date: Wed, 23 Sep 2015 10:01:43 -0000
Content-Type: multipart/alternative; boundary=001a1135a4f445225705206733ec

--001a1135a4f445225705206733ec
Content-Type: text/plain; charset=UTF-8

mount.cifs is provided by Samba.

Ross

On 23 September 2015 at 10:56, Vivek Per <pervivek@gmail.com> wrote:

> hi all,
>      Does mount.cifs command includes in busybox package . If so then it
> includes what package
>
> PN= busybox
>
>
> PACKAGES =+ "${PN}-httpd ${PN}-udhcpd ${PN}-udhcpc ${PN}-syslog ${PN}-mdev
> ${PN}-hwclock"
>
> in which package cifs command include
>
> If not does it includes in
> utils-linux package
>
> Thanks and regards
>         vivek
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1135a4f445225705206733ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">mount.cifs is provided by Samba.<div><br></div><div>Ross</=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 23 S=
eptember 2015 at 10:56, Vivek Per <span dir=3D"ltr">&lt;<a href=3D"mailto:p=
ervivek@gmail.com" target=3D"_blank">pervivek@gmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">hi all,<div>=C2=A0 =
=C2=A0 =C2=A0Does mount.cifs command includes in busybox package . If so th=
en it includes what package=C2=A0</div><div><br></div><div>PN=3D busybox</d=
iv><div><br></div><div><br></div><div>PACKAGES =3D+ &quot;${PN}-httpd ${PN}=
-udhcpd ${PN}-udhcpc ${PN}-syslog ${PN}-mdev ${PN}-hwclock&quot;<br></div><=
div><br></div><div>in which package cifs command include</div><div><br></di=
v><div>If not does it includes in=C2=A0</div><div>utils-linux package</div>=
<div><br></div><div>Thanks and regards</div><span class=3D"HOEnZb"><font co=
lor=3D"#888888"><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 vivek</div></font></span><=
/div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a1135a4f445225705206733ec--
