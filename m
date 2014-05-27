Return-Path: <niebuhrf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74473E00B66; Tue, 27 May 2014 03:12:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (niebuhrf[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1489 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 May 2014 03:12:35 PDT
Received: from mail-lb0-f175.google.com (unknown [209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9204E00985
	for <yocto@yoctoproject.org>; Tue, 27 May 2014 03:12:34 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id l4so4828696lbv.34
	for <yocto@yoctoproject.org>; Tue, 27 May 2014 03:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=ZMNd5V3nYcMHJMuEzWfFDj0zxh5jMzz6nwetA8GGDRE=;
	b=p2QaMWXzZ7qv4OD7bg+W7gUrpAgzUXIYPF2eXhZUiEpVdpZCWsXEGsqZV/Sm98qGQf
	4RHet8WFyg50XZaJGOAZ7kBmLXmaSM6sxJZ9PmnHfLnFb6PQJH32G5NHiK7+9a36s0bB
	EUX0/5Zz7NsyxYq8TBvSI0QCJUBwgOcmRXxYrKTxrgkUECSQ2gSjpWs5BUHQWXxqMiXn
	BbjO7wXg/gJWKdNeP8Fyl0Ui3vyqbKbMqsiKfF7ZyH8Y/CfNTiog2qg/jIeRxBf2E/kb
	A8uwEmDR507Eaj38Knjy4TL6sKaJ2BYVTtEZIvnF0wGP5QxGgip2Lm6TR0JBcZAroS08
	fVQQ==
MIME-Version: 1.0
X-Received: by 10.152.36.134 with SMTP id q6mr22225787laj.29.1401184064631;
	Tue, 27 May 2014 02:47:44 -0700 (PDT)
Received: by 10.152.30.38 with HTTP; Tue, 27 May 2014 02:47:44 -0700 (PDT)
In-Reply-To: <CAJhyh6=rXfS8xH-X_zbQruwhULGJAi=fApbvBMqP2SXCRYT42g@mail.gmail.com>
References: <CAJhyh6m8NuB0V=KOqCOscpDZm_m8X=OQGF4HAn39KR+Etjud8A@mail.gmail.com>
	<CAMCfZKGMAN3ZgKQa3s-yN2kOY5BJni-5yT9LbeD-TsK_sxz38g@mail.gmail.com>
	<CAJhyh6=rXfS8xH-X_zbQruwhULGJAi=fApbvBMqP2SXCRYT42g@mail.gmail.com>
Date: Tue, 27 May 2014 11:47:44 +0200
Message-ID: <CAB=cyLZcLyGccCehBpA7vvvR2NaKPsKLKP1Snz=XGa29c92CYA@mail.gmail.com>
From: Falk Niebuhr <niebuhrf@gmail.com>
To: =?UTF-8?Q?Bastian_Wei=C3=9Fbach?= <b.weissbach@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QT5 for gernericX86
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
X-List-Received-Date: Tue, 27 May 2014 10:12:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I had build a little self made Qt App with poky for an ARM target and
had the same issue. I'm not sure, but I think I added 'qtbase-plugins'
to IMAGE_INSTALL_append.
Perhaps you want to try this.

Best regards
Falk


2014-05-27 10:48 GMT+02:00 Bastian Wei=C3=9Fbach <b.weissbach@gmail.com>:
> Hi,
>
> in the future I would like to use egl instead of x11. But for the moment =
I
> would be happy if I could get any results ;).
>
> This time I added those lines to my conf/local.conf:
>
> IMAGE_INSTALL_append =3D " cinematicexperience "
> DISTRO_FEATURES_append =3D " x11 "
>
> then I build core-image-x11. The QT5 CinematicExperience still tells me t=
hat
> xcb plugin is missing.
>
> Regards,
>
>
>
>
>
>
>
> 2014-05-22 22:45 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
>
>> Bastian,
>>
>>
>> On Thu, May 22, 2014 at 12:32 PM, Bastian Wei=C3=9Fbach <b.weissbach@gma=
il.com>
>> wrote:
>>>
>>> Hey Guys,
>>>
>>> I'm trying to build a Linux for a generic X86 system with QT5.
>>>
>>> I've tried to go the simple way. I cloned the nessesary layers
>>> (meta-intel and meta-qt5). Then I selected  "intel-corei7-64" as MACHIN=
E and
>>> added cinematicexperience to my image. Then I build core-image-minimal.
>>>
>>> But when I try to start Qt5_CinematicExperience (on the target) it fail=
ed
>>> because of the missing xcb plugin.
>>>
>>> Is there anything I missed?
>>>
>>> Thanks for your help!
>>
>>
>> If you want to use qt5 with X11 you need to add DISTRO_FEATURES_append
>> onto your local.conf
>> But if tou want to use opengl or famebuffer take a look at PACKAGECONFIG
>> options on:
>>
>> meta-qt5/recipes-qt/qt5/qtbase.inc
>>
>>
>> I would recommend you to you core-image-x11 or core-image-base.
>>
>> Regards,
>>
>> --
>> *dS
>> Diego Sueiro
>>
>> Administrador do Embarcados
>> www.embarcados.com.br
>>
>> /*long live rock 'n roll*/
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

