Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E533EE0097E; Sun, 29 Mar 2015 20:00:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50B9CE00949
	for <yocto@yoctoproject.org>; Sun, 29 Mar 2015 20:00:13 -0700 (PDT)
Received: by igcxg11 with SMTP id xg11so60240832igc.0
	for <yocto@yoctoproject.org>; Sun, 29 Mar 2015 20:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=c6s21i8kthqAIN9B41cj0cnBRGPaWfLyWr8uGwYWYpw=;
	b=cptkzJvn+SnVgoJZ6hNLr/lw3/rcWaeGYjlAf0L0OPHeVClWHutnh2lnLVWcBe0aqf
	gO6DSt5J6jbN/NS7Z9UBDMyTgVidZo0IRu715ocswWNNrlBFzWgsNy48UQVkffrVahAB
	gIGcZ+q82+uwJogh11T0VmdxRAwf8HRIx0MY+b5b/xYZwRXqSFI6zWiFktzLDEFedQjE
	k8PqrQ8Z/fY8loklmCKzvR6P5hyYR2qVEyn5bN2BV837MvxDGDwd+aarl9XHQjpWQK06
	+WObaw6xUv77wtLYJiQU9xibszcutQx8PIIfY0Jss84jUoJyXC0TX8e4/4DqW9DMz1Nw
	N58Q==
MIME-Version: 1.0
X-Received: by 10.50.225.72 with SMTP id ri8mr14754992igc.48.1427684412428;
	Sun, 29 Mar 2015 20:00:12 -0700 (PDT)
Received: by 10.64.39.16 with HTTP; Sun, 29 Mar 2015 20:00:12 -0700 (PDT)
Date: Mon, 30 Mar 2015 11:00:12 +0800
Message-ID: <CACjDgAM_YZAemH+_-A=Ub488EZ0y7kT7Wta-yscHaJfw03C7Nw@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Recipe for i354 and i210 NIC
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
X-List-Received-Date: Mon, 30 Mar 2015 03:00:16 -0000
Content-Type: multipart/alternative; boundary=001a11c39b1241194a051278ae04

--001a11c39b1241194a051278ae04
Content-Type: text/plain; charset=UTF-8

Dear all,

Does anyone know if there exist a recipe for the kernel mode driver igb
version 5.2.x?  Thanks.

--001a11c39b1241194a051278ae04
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear all,<div><br></div><div>Does anyone know if there exi=
st a recipe for the kernel mode driver igb version 5.2.x?=C2=A0 Thanks.</di=
v><div><br></div></div>

--001a11c39b1241194a051278ae04--
