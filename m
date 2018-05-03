Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1287E00AE6; Wed,  2 May 2018 20:25:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A0BEE00A6A
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 20:25:45 -0700 (PDT)
Received: by mail-qk0-f180.google.com with SMTP id b131so12940146qkg.2
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 20:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=wD4uR2KwLVEgpijhJ7QFLgnP+2CP22uzO1QvTM+aUVY=;
	b=OTUOomOAaqgMukD9XD7WxF2VAdj1oKspZjpzWuscpsCkphLKmROzc9mkFqAkLp7TeQ
	eUQoF5BpDNsnmnFwD/3ugdy4lgeazbCoxLL0Qx7UVzFdOtmlIlS0zq5KN3X6PfOgblWA
	r7dQALZohgIAdYy0gAY1qvPCqlg7eVzZCWhfqOpyuNNbXAK1pNrT5MQh0nl8m/W+YgtJ
	l6k+FitewNjmxYaGimsnp3QDMH1mb4BA/yXr86Ipo9PBjrTArE21hqj0/ZUE8Jue3vyU
	0fYEFf1L9v8ovgcv2kRYJcGwvmKcOJVXn9h786z77iNjhFIiy+6ggalCCz29vdZjTnBF
	kZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=wD4uR2KwLVEgpijhJ7QFLgnP+2CP22uzO1QvTM+aUVY=;
	b=bg1jqawNSkmH8bFNuDu1LZ7EH8iwiy67nEtqQ9iqxwNbKkk1IX4IorHstsjMFWyqg4
	YKpZnzkqQEq8QGnHTNcfscUotSPmNQpE3gOf09jaXb/v6VTSDqeag96d4JUd9tvLnxiz
	yehU70MevCrlpserw4GRhwftgQxbCQAeaBdIqaSZoAHjUUu64bfAoLQLjUsr+gZH9LUy
	xp0PG+UexufX8cp3tL8R7T+K8gNrLwzj4DGWCu82fPSIr3dd65pxconsc5usy51JEbty
	N7PFPgCIUfVgFATrz6jr964OZoJMOxnBlV+wxR/P0kIj+pZUSUB24gUHwInquvyP79oP
	GYvQ==
X-Gm-Message-State: ALQs6tD6YRqnMxZiFaZsSlK7uVOfk/RHl3LAyoj6/bhHRit+70SmsYbF
	iXxmzQISbEDdI/DygAmpk4UwseZ42hznQuS1FSE=
X-Google-Smtp-Source: AB8JxZralD9eN1nYW7sa9N9HqJtru/O0iSBu2n/bunaZAcgnJtnx6QlEYal262KPiAkRhX2eEX5qbUhykNmbapRglCQ=
X-Received: by 10.55.86.133 with SMTP id k127mr17333542qkb.264.1525317944848; 
	Wed, 02 May 2018 20:25:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Wed, 2 May 2018 20:25:44 -0700 (PDT)
In-Reply-To: <VI1P192MB01435F0E4A77CF0A7DD2837A8D810@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
References: <AM5P192MB0132AEBDAFE4E6411791DF658DB60@AM5P192MB0132.EURP192.PROD.OUTLOOK.COM>
	<CAGAf8Lx77SfXCsRT=2i3XygqvQKH8zOQishdpRXUCqYz+4m5XA@mail.gmail.com>
	<VI1P192MB01435F0E4A77CF0A7DD2837A8D810@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 3 May 2018 05:25:44 +0200
Message-ID: <CAGAf8LzaAC+xMrTkwC_tygsoigc=vTTW+=frpiPBp7LLY53MFg@mail.gmail.com>
To: Vincent Daanen <vincent.daanen@orthotaxy.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need Help for meta-qt5
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
X-List-Received-Date: Thu, 03 May 2018 03:25:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Vincent,

You have to contact Toradex people, since they are, after all, kind of
experts in this area (Qt5). I doubt that people here (I mean R&D
maintaining reference YOCTO Project) are involved in-depth with Qt5
and underlying infrastructure.

My 2 cent worth advise,
Zoran
_______

On Tue, May 1, 2018 at 6:53 PM, Vincent Daanen
<vincent.daanen@orthotaxy.com> wrote:
> Hi,
> Sorry for the late reply, I have to work on other topics..
>
> I found that building qtbase-native would meet my needs but I cannot figu=
re out how to build it 'alone' ... if it is possible
>
> I added the file myMeta/recipes-qt/qt5/ qtbase-native_%.bbappend but bitb=
ake still build qtbase...
> Any idea ?
>
> Thanks
> Vince
>
> -----Message d'origine-----
> De : Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> Envoy=C3=A9 : jeudi 19 avril 2018 08:00
> =C3=80 : Vincent Daanen <vincent.daanen@orthotaxy.com>
> Cc : yocto@yoctoproject.org
> Objet : Re: [yocto] Need Help for meta-qt5
>
> http://developer.toradex.com/knowledge-base/how-to-set-up-qt-creator-to-c=
ross-compile-for-embedded-linux#contents
> http://developer.toradex.com/knowledge-base/board-support-package/openemb=
edded-(core)#Adding_the_Qt5_Layer
>
> Hope this helps,
> Zoran
> _______
>
> On Wed, Apr 18, 2018 at 6:24 PM, Vincent Daanen <vincent.daanen@orthotaxy=
.com> wrote:
>> Hi,
>>
>>
>>
>> I have to add Qt5 QtCore libs to my image. I know I must use meta-qt5
>> but as I=E2=80=99m not familiar with qt configuration, I simply do not k=
now how to start !
>>
>> So can someone help me to configure meta-qt5 to simply build and add
>> QtCore to my image ?
>>
>> Thank you
>>
>>
>>
>> Vincent
>>
>>
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

