Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A35DEE00AF0; Tue, 11 Apr 2017 03:56:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mtl1nuxd3v[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f173.google.com (mail-yb0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A49DE00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 03:56:35 -0700 (PDT)
Received: by mail-yb0-f173.google.com with SMTP id l201so42731365ybf.0
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 03:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZHkMJ9vj9KqODnsYOPJ3jUMJStlJ3A1Rd6P8L8k2NRk=;
	b=YF3497ztwq0L2nSFkrxhoyy62IatS2M5gEZ8w7kW5NEEyBFtXLEb8vEkow97gDrk+M
	2iSf51xJT0GNa1ssfUtwG/tz2w4foi4XTSUej/TVaszbbcyy0b6F4BPn+IDmFioLetOT
	4/0AEjduO64LZAYUthpETkRFAPxWJD0IToNzEQyr+XIhdL+iNEyPTWnsPGtMgX1qbM/g
	+2PDgWAzaP3fM9TT5DoMqvQ2/abauNuk/0G8HiIHTaJZ4aVMDyH3Q4f1O+UF4pTmXSTh
	hl7SqB/eLsyGIob2qyVL77NbuFh7fc4oYorvT2mzkm4euIz0N379zuoYvemmF53Rnrqk
	5G0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZHkMJ9vj9KqODnsYOPJ3jUMJStlJ3A1Rd6P8L8k2NRk=;
	b=IL36GoJpFhy4LffAaTlNxIl+MBQd7RDDrziu5cG0N054aLwpC2s4EE7IXQY6vnsmco
	Q7hr+KomVv6YF8dfwEy9ue0QVGIIrnSKd6RmePli52B/vZFDT6FwGAZp/oacxukzGlkU
	+mmFJqQIbeHuJer/atR1rPNLEg0JHliUbcwWchtt46iyT90abk80iLtMJtQkcFD9HZR8
	ajHz9PzHIiHFfGdOXslNmWR9M9J9OUFE5FCyGRxpemdH9pWrdUoCbCkDyqSqy0ZrZXoO
	t+a+vmvIRNQIlS2CGSRywT+UBRza/gDDvrm+YViBslCE6IIwgZnpu1FmSo84l7xYInq+
	96pg==
X-Gm-Message-State: AFeK/H3+qIc43Umz6cZnL0v6qFAeGIJGAz+JLAqFkyK/48IGBB8lXzXBHANU/sTEfz5a8AormkrWxJvAfwpn/g==
X-Received: by 10.37.17.68 with SMTP id 65mr38603944ybr.62.1491908195262; Tue,
	11 Apr 2017 03:56:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.36.130 with HTTP; Tue, 11 Apr 2017 03:56:35 -0700 (PDT)
From: Mark T <mtl1nuxd3v@gmail.com>
Date: Tue, 11 Apr 2017 11:56:35 +0100
Message-ID: <CALf_N3b9D302khkTwnOjN25w1Q2=1DR5UZ6fvf2UzF8t892N9A@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Getting recipe variables into config.m4 files
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
X-List-Received-Date: Tue, 11 Apr 2017 10:56:36 -0000
Content-Type: multipart/alternative; boundary=001a113e7df804340f054ce1f28e

--001a113e7df804340f054ce1f28e
Content-Type: text/plain; charset=UTF-8

Hi,

I'm building a PHP extension.  In the config.m4 file for the extension I
can add include and library paths as follows -

  PHP_ADD_INCLUDE(../../../../../../../sources/inc)  - works
  PHP_ADD_INCLUDE($PROJ_ROOT/sources/inc)  ** does not work
  PHP_ADD_INCLUDE(${PROJ_ROOT}/sources/inc)  ** does not work
  PHP_ADD_LIBRARY(stdc++, 1, MY_TEST_SHARED_LIBADD)

where $PROJ_ROOT is define in my .bbappend.  for the php recipe.

Its the include path that is not working with the variable - I just get
"-I/sources/inc" in the compile line. The relative path works but I'd like
to be able to tie the path to a variable I have control over.

Any ideas on how to achieve this ?

Cheers,
Mark

--001a113e7df804340f054ce1f28e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I&#39;m building=
 a PHP extension.=C2=A0 In the config.m4 file for the extension I can add i=
nclude and library paths as follows - <br><br>=C2=A0 PHP_ADD_INCLUDE(../../=
../../../../../sources/inc)=C2=A0 - works<br>=C2=A0 PHP_ADD_INCLUDE($PROJ_R=
OOT/sources/inc)=C2=A0 ** does not work <br>=C2=A0 PHP_ADD_INCLUDE(${PROJ_R=
OOT}/sources/inc)=C2=A0 ** does not work<br>=C2=A0 PHP_ADD_LIBRARY(stdc++, =
1, MY_TEST_SHARED_LIBADD)<br><br></div>where $PROJ_ROOT is define in my .bb=
append.=C2=A0 for the php recipe.<br><br></div>Its the include path that is=
 not working with the variable - I just get &quot;-I/sources/inc&quot; in t=
he compile line. The relative path works but I&#39;d like to be able to tie=
 the path to a variable I have control over.<br><br></div><div>Any ideas on=
 how to achieve this ?<br><br></div>Cheers,<br></div>Mark<br></div>

--001a113e7df804340f054ce1f28e--
