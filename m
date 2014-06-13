Return-Path: <ellurubharath29@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDF94E0073D; Fri, 13 Jun 2014 09:50:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ellurubharath29[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00D78E0073D
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 09:50:14 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id r20so1228508wiv.16
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 09:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=MKfQoGcbjfFPrAVHHyB27ATVzp9ukum6HWbGighcyu0=;
	b=JtkpF7FAJAAHThNoobrPm9N0ncsxwfYd7QbCImaE4IhLa809oSZF5xsQrMkDUC9Kkk
	x8iZ4JMoaY+QMzB5oIvH9948+0V3BRqcLopVtV/j0hmXbdncOBUJBo6SfywbtUmEvVSr
	gJlAJKrx2nMNk9/exGJXF86wAlYXVFzn8UgaH5X3ZMHBVyYmi7FR9AhI1b+/zn5VkoE/
	RsGQYZaAPmZ4dfYiKq/oA+qBqXTHirMlFqTv0lwV2lLQH/QI3X7kzP7PKqeW4uj/gdDJ
	D5Fw+MQRZSHoz9g5F179OJcY+Pu4Z3xTK3eJ7G35CW47FwtdbVwFqvigwqbS8/xCYs3c
	AWKA==
MIME-Version: 1.0
X-Received: by 10.180.96.6 with SMTP id do6mr6451571wib.44.1402678213432; Fri,
	13 Jun 2014 09:50:13 -0700 (PDT)
Received: by 10.194.172.164 with HTTP; Fri, 13 Jun 2014 09:50:13 -0700 (PDT)
Date: Fri, 13 Jun 2014 11:50:13 -0500
Message-ID: <CAGM0ZdSmXH4zxQEZudqQqamzDryxXrXtxgXtpX8vyzs0doxysg@mail.gmail.com>
From: Bharath Chandra <ellurubharath29@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Installing a new software
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
X-List-Received-Date: Fri, 13 Jun 2014 16:50:15 -0000
Content-Type: multipart/alternative; boundary=f46d04447fc1a55ae704fbba7852

--f46d04447fc1a55ae704fbba7852
Content-Type: text/plain; charset=UTF-8

Hi,

I am a newbee to yocto and I have a query. what is the process to add a new
software to the image which is up and running. Should I add that package to
recipe and build the image again and deploy it or is there any other simple
way to do that??

-- 
Thanks & Regards,
Bharath Chandra Elluru.
Contact Number:785-979-4875.

--f46d04447fc1a55ae704fbba7852
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div>I am a newbee to yocto and I have a =
query. what is the process to add a new software to the image which is up a=
nd running. Should I add that package to recipe and build the image again a=
nd deploy it or is there any other simple way to do that??<br clear=3D"all"=
>
<div><div><div><br>-- <br><div dir=3D"ltr">Thanks &amp; Regards,<div>Bharat=
h Chandra Elluru.</div><div>Contact Number:785-979-4875.</div></div>
</div></div></div></div>

--f46d04447fc1a55ae704fbba7852--
