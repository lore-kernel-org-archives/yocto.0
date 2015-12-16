Return-Path: <gunerserhats@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D238E006F3; Wed, 16 Dec 2015 14:04:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gunerserhats[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FC16E00321
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 14:04:54 -0800 (PST)
Received: by mail-lf0-f42.google.com with SMTP id l133so39174403lfd.2
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 14:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=avqE0HC7zjhvYjtl5L8p9wtlrViW3kj9u2AUYQLjWeI=;
	b=jFIZB3vpYDYknmOM2NqvtHTdAU4MAbQF77pjtwyZ0r/5d9ITsMYtZeuZw+gA05Y6iy
	h2IK5Qto/44s7/1EsfOuJWyc0ns4VzhwS8Oy9FOl90xxyhndOWNfyqfHufKVRPnpGF9w
	pUjkZ8vruomflxsbNl9QSPh+QcFYe3x5HjzH08/i/qAapCIBcCgUXq8cSM+4kpC+IaGk
	XIzNOS6vILDnbk94+bQMr7sHvVcd2uFH3heZMUmJtB2QF5Nc8UZUR4OChlpIGvT2Yag8
	CAeXyueKHo89bX1JJURlCqXwC07E++zhyvklIi2iCocv/ZXpZIoTXR6lSKdlEwVd6yE/
	BTdQ==
MIME-Version: 1.0
X-Received: by 10.25.208.206 with SMTP id h197mr20060087lfg.153.1450303493382; 
	Wed, 16 Dec 2015 14:04:53 -0800 (PST)
Received: by 10.112.175.5 with HTTP; Wed, 16 Dec 2015 14:04:53 -0800 (PST)
Date: Thu, 17 Dec 2015 00:04:53 +0200
Message-ID: <CALXY+b70s1UHAH=j-HeHut54sLA7kJ-kXJOaYzTZ8OLz2JpBjQ@mail.gmail.com>
From: serhat guner <gunerserhats@gmail.com>
To: yocto@yoctoproject.org
Subject: raspberrypi build error
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
X-List-Received-Date: Wed, 16 Dec 2015 22:04:58 -0000
Content-Type: multipart/alternative; boundary=001a1140118e8a26cf05270b18ad

--001a1140118e8a26cf05270b18ad
Content-Type: text/plain; charset=UTF-8

i m trying to build image for raspberry pi using "bitbake
core-image-minimal"  and getting error
"ERROR: Task 1309 (/home/serhat/yoctoProject/meta/recipes-devtools/gcc/
gcc-cross-initial_5.2.bb, do_compile) failed with exit code '1'"
any help would be appreciated

--001a1140118e8a26cf05270b18ad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i m trying to build image for raspberry pi using &quot;bit=
bake core-image-minimal&quot; =C2=A0and getting error<div>&quot;ERROR: Task=
 1309 (/home/serhat/yoctoProject/meta/recipes-devtools/gcc/<a href=3D"http:=
//gcc-cross-initial_5.2.bb">gcc-cross-initial_5.2.bb</a>, do_compile) faile=
d with exit code &#39;1&#39;&quot;</div><div>any help would be appreciated<=
/div><div><br><div><br></div></div></div>

--001a1140118e8a26cf05270b18ad--
