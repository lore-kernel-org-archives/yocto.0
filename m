Return-Path: <randy.mort@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31BE0E00C93; Wed,  5 Oct 2016 15:50:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (randy.mort[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.53 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D262DE00855
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 15:50:04 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id k125so294517771wma.1
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 15:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=myRm0waurEQLdPQECn4A9ZyWBl4QUSwSI/zpyx9c14w=;
	b=0BYCvdYfZ+EGe+ks2Gvs0y67vswQBXISZL5llLZtjyoOvWPtp2iz6fZKl2rWkUptHm
	pXawUCVIthesX8ytXCPi1V9Zv57TrP98xZg99gixF/Un+Sr3+2kD7H1WUZmTtz0jLWUw
	Jig0o3zTehEBDIZZLfRqLIqJQNi4ajF30xNSOL7vdJMD2GKkqsA5NJYdAe7TSS+QJs9g
	Y+tdggOm+u/2vVGmD00khHYfq4T96bo1sNl0oQx9O8wNmgg0A8NPm/s+1MTGHengDdP8
	uhuZEuP5hYxEL/xH/QrCWbIElhX2MvKgfieBZgis0Cz2PoIFJ56eeCaIjEla9WJQ5O+f
	UKBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=myRm0waurEQLdPQECn4A9ZyWBl4QUSwSI/zpyx9c14w=;
	b=LP4e5eJ94Zedp67Oz8ClLL19wBHpVnB7UNprz5A64zi0E6TQNVm9htN1deWIyqCk97
	yhiv/fwtcIaCU+w+NgSJFk4miTRrpxNuB+ZrPH1ZOgaCmNQq4jX6WyUcMEFn7LO9ImMd
	p9kWBGwaCkabcW4TVtHiph+dgKo1NJgfdEWL5JyKjpSBGJBbNGk78hrNRDhD4QM0PYqR
	aDvJoKS1XKdPHjC74IErAkgp8nMlVErKA4ZVm6Q4C6026F2EjTTqaKbIyS+CK0Z0mgzw
	tj1xVYRqIVwStYiFeL4MfAjVdyVFSbOzNzMx2vWOtT0DVr2ImrQ9Zkwy48QlMi9LqitK
	8tkw==
X-Gm-Message-State: AA6/9RkKANA68oLlNmL5DrREPgu5J8NJ8e7I8LR8TLoAXUqx3IWZqurH6+29SDIa3SVU95bye3zrfy4qShwqrw==
X-Received: by 10.194.107.137 with SMTP id hc9mr10843905wjb.158.1475707803220; 
	Wed, 05 Oct 2016 15:50:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.138.66 with HTTP; Wed, 5 Oct 2016 15:50:02 -0700 (PDT)
From: Randy Mortensen <randy.mort@gmail.com>
Date: Wed, 5 Oct 2016 16:50:02 -0600
Message-ID: <CAN+d=aScNFOQBaGXSCG+UGqpZ_hWzcAynrAAncgyXoW46ej6Mg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: openjdk build fails due to checksum mismatches from icedtea-native
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
X-List-Received-Date: Wed, 05 Oct 2016 22:50:10 -0000
Content-Type: multipart/alternative; boundary=e89a8f235a716740ff053e25ff0a

--e89a8f235a716740ff053e25ff0a
Content-Type: text/plain; charset=UTF-8

Using Jethro release and attempting to build either openjdk-7 or 8 fails
when fetching icedtea7-native/2.1.3-r1.0 due to checksum mismatches (on all
the SRC_URI entries).
openjdk-7 did successfully build about a month ago.

Is there a workaround, fix or other suggestions?
Thanks

--e89a8f235a716740ff053e25ff0a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:helvetica;font=
-size:12px">Using Jethro release and attempting to build either openjdk-7 o=
r 8 fails when fetching icedtea7-native/2.1.3-r1.0 due to checksum mismatch=
es (on all the SRC_URI entries).=C2=A0</span><br style=3D"color:rgb(0,0,0);=
font-family:helvetica;font-size:12px"><span style=3D"color:rgb(0,0,0);font-=
family:helvetica;font-size:12px">openjdk-7 did successfully build about a m=
onth ago.</span><br style=3D"color:rgb(0,0,0);font-family:helvetica;font-si=
ze:12px"><br style=3D"color:rgb(0,0,0);font-family:helvetica;font-size:12px=
"><span style=3D"color:rgb(0,0,0);font-family:helvetica;font-size:12px">Is =
there a workaround, fix or other suggestions?</span><br style=3D"color:rgb(=
0,0,0);font-family:helvetica;font-size:12px"><span style=3D"color:rgb(0,0,0=
);font-family:helvetica;font-size:12px">Thanks</span><br></div>

--e89a8f235a716740ff053e25ff0a--
