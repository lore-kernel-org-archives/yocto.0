Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F086E00D1F; Thu, 20 Dec 2018 12:02:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C42BFE00C77
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 12:02:04 -0800 (PST)
Received: by mail-it1-f177.google.com with SMTP id h65so3510202ith.3
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 12:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=fmnJO5AzTsIInOUa681uThzE3iPJSGVz8a67DBF0k+g=;
	b=t6KSw2FYj7Mv8hXuzCIUHMUe067MlMjgZSLD8xPTdxyoU8ioo7LYVG3Fak8uKHecNp
	LMyFvnJvhaYtyOhlXqYyk/hkYCAEJKq8i4/bd2m1ffAQ1MBANwtS2zt2cziVu9OcKKFx
	LSNmtwncrWzk9P42jQ1qrHD7RKFo4uvaTZeYeYRXwrUGl5putH84rnpkXtqAO+wYYJah
	yUPhX1t/TdhyPTLzlb0vI0uFUQD/PR2bba2ejks6rOcCEaoCbfho6MCrELOf8WnkYNiJ
	VNDE2EuQqEkXJjzdWP/MquhPtitGXCbuExKUTddAEdQHXbh6FacBha/s9XHBclNkLSLS
	/mWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=fmnJO5AzTsIInOUa681uThzE3iPJSGVz8a67DBF0k+g=;
	b=f8gNdBqZXv/Askil6S71aWp+G5xjoxU3sirxxg72thhOOD67vBfsnvxBGR4p4JfLEe
	kkkSSIjeE1GZ7J5XRn6JUhSOGrULiRfFmFr1VrRILZ4/Ml+5df0fLI/c7XKizvkjE27w
	ezF1TcQhhOOliX9fUHAxZ3Sxq2DWnUyEC69lm1gxRWEia4RChqOs9J4Oli8MAeGs5c8L
	jsrEMXkjIosNYbR8g5fQ5gY1k9VwLFYE/2eRxq815xLWsVKoGS8IC+VOsI7hHWHpMme8
	3YU9evM+hngTECivbHHbwRDrq+weInmrT6tFp0z9rEg7ECISl+jTXsJVWI7iDQ9mIorw
	Nc9g==
X-Gm-Message-State: AA+aEWYq06KaJep+IFda4V5K7V65q5qstDI/QKDiODf2jI8cfPaB17Q9
	ZTzI7IpUJE11o1Gt8ie/KD90oOBgYMfFRx6yxXy1ExJE74s=
X-Google-Smtp-Source: AFSGD/XvPVOjFIbVfnICaVvhU57LzW9lC32nZpzDeZHidKE8+GR7mkZ3D8t+Js24lU/Ak2Mgxt4gOxkDDMartBeuDgY=
X-Received: by 2002:a02:330d:: with SMTP id c13mr24284778jae.95.1545336124002; 
	Thu, 20 Dec 2018 12:02:04 -0800 (PST)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 20 Dec 2018 21:01:52 +0100
Message-ID: <CAFq4t4iEzLP8tJ2YWUgt+JO4Zod-Lin_K4hgvy+3C_xgSqfVFw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Thu, 03 Jan 2019 01:08:45 -0800
Subject: devtool upgrade ERROR: recipe is already in your workspace
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
X-List-Received-Date: Thu, 20 Dec 2018 20:02:06 -0000
Content-Type: multipart/alternative; boundary="000000000000bad84c057d799a85"

--000000000000bad84c057d799a85
Content-Type: text/plain; charset="UTF-8"

I have created recipe with devtool and now I want to upgrade following

> devtool upgrade myrecipe --srcrev 82a02d8585d262d6ab2d9dc335ed2231dc2d7f06

I am getting error

> ERROR: recipe is already in your workspace

How to correctly upgrade recipe with devtool (eSDK)?

--000000000000bad84c057d799a85
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I have created recipe wi=
th devtool and now I want to upgrade following<div><br></div><div>&gt; devt=
ool upgrade myrecipe --srcrev 82a02d8585d262d6ab2d9dc335ed2231dc2d7f06<br><=
/div><div><br></div><div>I am getting error</div><div><br></div><div>&gt; E=
RROR: recipe is already in your workspace<br></div><div><br></div><div>How =
to correctly upgrade recipe with devtool (eSDK)?</div></div></div></div>

--000000000000bad84c057d799a85--
