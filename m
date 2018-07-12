Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3431EE00D60; Thu, 12 Jul 2018 09:19:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD083E004F6
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 09:19:28 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id h4-v6so24563597qtj.7
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 09:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=SQ2gFqoXRUhfJ1H6eeVOa5+Rhs0bwu05Qb1HUuG3eaM=;
	b=ZJd+xSOe3gpIaNXBAIizvqwdqfNSZY8v8lGrUuv2YisJromIJxNzQU4/2nUanF4rV+
	pBGTnq6nMftC0dI6RcPAHNFWZukTnP4oLhHldcWISjoLHIpe1RZU7vKEoawZ/udCJ6K0
	DvJ8AFDE9Rt2EtvcWyTSr18DliCsUNBKz6Z7Kavr7cEvdDFlgAyxL+VEccBGzsn6/xjl
	HRRSp/3P9UB4OOdYAxGJzs373UtP4uj64r1p1L5YeVisIla0iCfNrl9z78US08zS+Dwb
	nUcJxETKkAlBXQgFG7UNdLHzbQV+aBFcvaXRkLkaFSnIXiCMwxFJLg70n1Ethdk1Q0xP
	nlDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SQ2gFqoXRUhfJ1H6eeVOa5+Rhs0bwu05Qb1HUuG3eaM=;
	b=S/dX30/n6FwqvUheZpdOw10R9Wj0uCJdf7t7cRdFSElheEvpKvf0pTAVXP/ZKJk75U
	X/OcdcaM2x6L5wLsvssvLQJF5t8WooCwTJVdEpJ/J02F1/87Xc7XWH0/T1SePmR/gweN
	LdDukSGbnIB6onssSrsPpWos/bu2sdL5YsgxQR3GuCBnmfOBV+ax6kB80lPRMOflyKbP
	yamuaIG4nWbWXduxTys0dZIDX3LZWpO5oCQLFJFTyA5mLlx3LJJ1X7pWq/yIGrBrlLyj
	bgXm9c++4Tu0yYxvgHKwKxqBi0So55TsmydLPv3MXzWSCI8bM2fOShn/rTY3JzsDFWsV
	y0Eg==
X-Gm-Message-State: AOUpUlHoU75DMQx2XxTTW6RLWzEHNrFt0L7OXQwWwDbvCcgbmJoZqCXa
	ZC9nfZvxFy4yROqkFjcWw13OaELLJ6MCbCZDnodgA5H3
X-Google-Smtp-Source: AAOMgpfqgnbrFXig3QNE3o1Bm/nW4Lfy+/duFo756yGaX8mLR2P6qi41JzsO0dK9ygn7vXK30tBUD/JCE0SQuto2/xs=
X-Received: by 2002:a0c:e651:: with SMTP id
	c17-v6mr3142540qvn.170.1531412367701; 
	Thu, 12 Jul 2018 09:19:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Thu, 12 Jul 2018 09:19:27 -0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Thu, 12 Jul 2018 12:19:27 -0400
Message-ID: <CANmTPBYQtpFnEJccZ0aLQFXxViB6KB+4CemA+c9Y1EtX0j2P1Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: how to download a recipe
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
X-List-Received-Date: Thu, 12 Jul 2018 16:19:29 -0000
Content-Type: multipart/alternative; boundary="0000000000002eb7e80570cfba3c"

--0000000000002eb7e80570cfba3c
Content-Type: text/plain; charset="UTF-8"

Hi,

I simple question.

How do you download a recipe from ?

http://layers.openembedded.org/layerindex/branch/master/recipes/

??

Do I copy past the bb into a text file or there is a way to download the
actual file?

Thanks,
S

--0000000000002eb7e80570cfba3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I simple question.</div>=
<div><br></div><div>How do you download a recipe from ?<br></div><div><br><=
/div><div><a href=3D"http://layers.openembedded.org/layerindex/branch/maste=
r/recipes/">http://layers.openembedded.org/layerindex/branch/master/recipes=
/</a></div><div><br></div><div>??</div><div><br></div><div>Do I copy past t=
he bb into a text file or there is a way to download the actual file?</div>=
<div><br></div><div>Thanks,</div><div>S<br><br></div><div><br></div><br></d=
iv>

--0000000000002eb7e80570cfba3c--
