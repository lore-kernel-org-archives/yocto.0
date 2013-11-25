Return-Path: <andreas2025@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8243E006AD
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 05:29:29 -0800 (PST)
Received: by mail-wg0-f54.google.com with SMTP id n12so2717969wgh.21
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 05:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Yddm6X1vXNmMJbbN/KkIZEtMt1LMrZ7pAuLLmd4U9dM=;
	b=q+vQTQZueDgedfYWFd7Fz6cY74kDudSFPML9fifIuff95kqIgIXcIASYkHdqp2//gl
	wOF8AC7iyXEhfkGX8atZ8I/2MAovhcQUNFkoApzAncrKDVEAA6kQSerB5eRRluzb5EuK
	xcmN1BxdILqZwQUW+pd09whrGi36akENVy11OALjL7VcaIgy8SeXDSN5dkSrxL8HffEL
	bCpwuFIyqs/XXyrpb/ivfMriyBFet9n3vNs5p3l11RDBDR+hFrmps7o/ZP0vkdYUV0UG
	IVy9K40dq57q3QZtBhPMwMGY6GaNgkZufggno5GhU6POv9ox9wKwOY+uNLYRtfZSjcab
	G5Lg==
MIME-Version: 1.0
X-Received: by 10.180.149.175 with SMTP id ub15mr13735330wib.10.1385386168369; 
	Mon, 25 Nov 2013 05:29:28 -0800 (PST)
Received: by 10.216.15.4 with HTTP; Mon, 25 Nov 2013 05:29:28 -0800 (PST)
Date: Mon, 25 Nov 2013 13:29:28 +0000
Message-ID: <CAAVaN8zkRU-dfasC-Dbyr2Y1+RoYmx6CAn1h1Ox5m=y2=xCPEw@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: yocto@yoctoproject.org
Subject: How to integrate QT Embedded toolchain in the final SDK.sh image
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
X-List-Received-Date: Mon, 25 Nov 2013 13:29:31 -0000
Content-Type: multipart/alternative; boundary=001a11c381187145ac04ec005a5c

--001a11c381187145ac04ec005a5c
Content-Type: text/plain; charset=ISO-8859-1

Hi

I try to produce some SDK that the environment has QT embedded support plus
Boost.

As far as I know the command to produce sdk is

bitbake foo-image  -c populate_sdk

Despite the fact that the "foo-image" builds the QT, Boost, and the
application, the -c populate_sdk command  does not put QT environment and
its environment variables to the environment file of the SDK! Is this a bug?

How do you produce the combined SDK?

The bitbake meta-toolchin-qte, it produces an SDK with just the toolchain,
and the QT libs.

How do I produce a rich super-set of QT SDK and  the Image SDK?

Best regards,
Andreas

--001a11c381187145ac04ec005a5c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi<br><br></div>I try to produce some =
SDK that the environment has QT embedded support plus Boost. <br><br></div>=
As far as I know the command to produce sdk is<br><br></div>bitbake foo-ima=
ge=A0 -c populate_sdk<br>
<br></div><div>Despite the fact that the &quot;foo-image&quot; builds the Q=
T, Boost, and the application, the -c populate_sdk command=A0 does not put =
QT environment and its environment variables to the environment file of the=
 SDK! Is this a bug?<br>
<br></div><div>How do you produce the combined SDK?<br><br></div><div>The b=
itbake meta-toolchin-qte, it produces an SDK with just the toolchain, and t=
he QT libs.<br><br></div><div>How do I produce a rich super-set of QT SDK a=
nd=A0 the Image SDK?<br>
<br></div><div>Best regards,<br>Andreas<br></div></div>

--001a11c381187145ac04ec005a5c--
