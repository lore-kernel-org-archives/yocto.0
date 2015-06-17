Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C0F4E00A53; Wed, 17 Jun 2015 13:10:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10078E009C5
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 13:10:14 -0700 (PDT)
Received: by oiax193 with SMTP id x193so42692769oia.2
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 13:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=2/2xUlIOIJMIADMLlJUDK9i3gSJZNnLcWPV1xi5NNb0=;
	b=lO/0YW2LeYVWcJAT3NM4FoeoP5fcszlz2FGvo4VRKT9ilGno11m9GdTXD9fGqRFMmL
	Ux7FX0HrrHJcqzSuGGFI3o1k4eLK7v9trxBKW3k5kUtCnjbYaXJKT36V2XnZN2rKbSOg
	vsoLp3JOjgweqyV3kmgrdGzBK69AlRiiXz+B4NAwQZWTM7hJiE/aX7bfvbLHcJ2i3P3b
	0ea+D8YNolROBoAb9SKzkqI0A/H7sCNSKDZ8VqDuH1FldvUhM+tmkECVkoZAkbriA1h2
	C0DlkcIWOKTfvxh+pYbMqzknf2roWh/prar1Ybf3MqZnSGCMPs4x99QMEzqwoYbIlzbm
	sIfA==
MIME-Version: 1.0
X-Received: by 10.182.48.231 with SMTP id p7mr6111034obn.19.1434571814109;
	Wed, 17 Jun 2015 13:10:14 -0700 (PDT)
Received: by 10.202.181.84 with HTTP; Wed, 17 Jun 2015 13:10:14 -0700 (PDT)
Date: Thu, 18 Jun 2015 01:40:14 +0530
Message-ID: <CAE_REAtpX=fJdSPUnbGxq5TYXiyS3WQV1pKBuRO2o4_uM+dfzg@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	openembedded-core@lists.openembedded.org
Subject: Having Yocto Sandbox information on target in any form
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
X-List-Received-Date: Wed, 17 Jun 2015 20:10:16 -0000
Content-Type: multipart/alternative; boundary=047d7b6744006285d30518bc4707

--047d7b6744006285d30518bc4707
Content-Type: text/plain; charset=UTF-8

Hi Team,

I am trying to figure out in existing Yocto/OE , is there any way on
target, i will get my build path information:

Ex,.
# cat /etc/yocto_version (on target):
==
Yocto_SDK=1.8
Yocto_Build_Path=/home/gaurang/yocto-1.8/build
Image_name=core-image-sato
==


I don't know if anything like above exist for Yocto/OE ? This will very
helpful sometime to cross debug the things.

Any pointer is appreciable.

Regards,
Gaurang Shastri

--047d7b6744006285d30518bc4707
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi Team,<br><br></div>I=
 am trying to figure out in existing Yocto/OE , is there any way on target,=
 i will get my build path information:<br><br></div>Ex,.<br></div># cat /et=
c/yocto_version (on target):<br>=3D=3D<br></div>Yocto_SDK=3D1.8<br></div>Yo=
cto_Build_Path=3D/home/gaurang/yocto-1.8/build<br></div>Image_name=3Dcore-i=
mage-sato<br>=3D=3D<br><br><br></div><div>I don&#39;t know if anything like=
 above exist for Yocto/OE ? This will very helpful sometime to cross debug =
the things.<br><br></div><div>Any pointer is appreciable.<br><br></div><div=
>Regards,<br></div><div>Gaurang Shastri<br></div></div>

--047d7b6744006285d30518bc4707--
