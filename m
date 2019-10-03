Return-Path: <lukasz@tasz.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA0E8E00D8B; Thu,  3 Oct 2019 02:37:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95403E00D51
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 02:37:25 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id c25so3873173iot.12
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2019 02:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tasz-eu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=a+vYdPyfALoIoDF5doRqvi+Zkdclfn5PaOlvkVjwz/g=;
	b=hGAs4uvxEZXWT1L6dfSEoq28cs76+zvTUjcbmJ0jCXaMBzFyrG+aiQVVejy5MQ0Gv1
	oi9Iq8hE20ykrx7Ay9dZOpdYG/szrb41PaSph8iYy6iA0AX1MxWe1R9iIkgN1ZqtPmZU
	PInvTR24Cmmb8lBxnpQx9+bnarbPF6vO+rE1XgsXW3k3LRkyUrQsMuIwcqPguUG/mmWQ
	glmbiadlIkpu1KOriufFy0+2Po8/iQJGF2jTv8jqgqvOmvd0bUjt3/b8fzFRGIvKVt3E
	gh+IRPXr4NO3dIVUurHKMsMigxrDRvny6Qz5BCfqzP4AMDdqOy+2J/voPwJJEyKxZrfF
	G6Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=a+vYdPyfALoIoDF5doRqvi+Zkdclfn5PaOlvkVjwz/g=;
	b=GDkJ0oSqHsmBLH7GB6saw9MJCR2BETFWEMK9B3O0HWfvczXoPHc0U9dRonfRFS4+dg
	G+CfLzgOOHmAd11lcKMV9SlDlQZzVLMrbL+7vLfhQfPPS2FdATcSbanEcBzaeTUsVzI6
	QdQjUv2Kcam1pmyRT0dlHFa1C2KIXVKinAR8Ic427Kzj9csxkmxfIrWEpBOdhgIznF54
	jdtK+dcpTf2+KUtHXvVQFVOBup+u9sT1H6TbTwqtptQNgX6nXsk2OzBmJpLwz1OBKk6Y
	7D1TB9ibjoIkBrucWw8OQ7cKipUQjd8n1lcLA6/Apw4QLX31M75GAgAVbw8I8VsDiOWq
	2m9w==
X-Gm-Message-State: APjAAAWyKbyZIDJj5p8UUFcANgQMt7bi4hnCY0pLv7RUYcWG2akiXQlL
	QQnqq0jQDlbQ9p7eWHBDLKl0lvrPNtycw1m8U0Zz03RG+xvrVw==
X-Google-Smtp-Source: APXvYqzUPTH+edIGb1Htg7yr/aawGxeCUO6LD50phBdR8vz0q/6MybpoCSonxL0Qae6hrbCWelA+fd9Wri3G7hLiRDA=
X-Received: by 2002:a92:3311:: with SMTP id a17mr9349858ilf.166.1570095444478; 
	Thu, 03 Oct 2019 02:37:24 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?xYF1a2FzeiBUYXN6?= <lukasz@tasz.eu>
Date: Thu, 3 Oct 2019 11:36:58 +0200
Message-ID: <CAGRr-NiVrZsa-kXnO-bVDoU+VQcotH2JqnJXXr-kQv1zTRdvKw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: global class that others will inherit
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
X-List-Received-Date: Thu, 03 Oct 2019 09:37:26 -0000
Content-Type: multipart/alternative; boundary="0000000000003b6c9e0593fe556c"

--0000000000003b6c9e0593fe556c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
this is my first post here, so big hello!

I have a problem which you might help me to solve.
I have quite complex configuration, and I would like to inject something
into build system in a right way.

I already did some POC work, and adjusted cmake.class but this is rather
dirty hack, but also do not aplly to all of components, only to those who
inherits from cmake.
I would like to adjust local.conf, put there INHERITS+=3D"mytuning" and I
would expect that everybody will inherit. I'm prepending/appending
This is happening, but my class in shell like, and python recepies throw
exception because of  syntax error...


question, how to provide global class, that will inject python/shell
depending on context? mayby my way is simply wrong?

thanks in advance for any suggestions.
=C5=81ukasz Tasz
RTKW

--0000000000003b6c9e0593fe556c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div>this is my first post here, so big=
 hello!</div><div><br></div><div></div><div>I have a problem which you migh=
t help me to solve. <br></div><div>I have quite complex configuration, and =
I would like to inject something into build system in a right way. <br></di=
v><div><br></div><div>I already did some POC work, and adjusted cmake.class=
 but this is rather dirty hack, but also do not aplly to all of components,=
 only to those who inherits from cmake.</div><div>I would like to adjust lo=
cal.conf, put there INHERITS+=3D&quot;mytuning&quot; and I would expect tha=
t everybody will inherit. I&#39;m prepending/appending <br></div><div>This =
is happening, but my class in shell like, and python recepies throw excepti=
on because of=C2=A0 syntax error... <br></div><div><br></div><div><br></div=
><div>question, how to provide global class, that will inject python/shell =
depending on context? mayby my way is simply wrong?</div><div><br></div><di=
v>thanks in advance for any suggestions.<br> </div><div><div><div dir=3D"lt=
r" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D=
"ltr"><div>=C5=81ukasz Tasz<br></div><div>RTKW<br></div></div></div></div><=
/div></div>

--0000000000003b6c9e0593fe556c--
