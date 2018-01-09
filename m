Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7907E00DE4; Mon,  8 Jan 2018 16:44:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62EA9E008FB
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 16:44:15 -0800 (PST)
Received: by mail-qk0-f179.google.com with SMTP id d18so6164687qke.7
	for <yocto@yoctoproject.org>; Mon, 08 Jan 2018 16:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=d2nCfWm5jDo1GZT/Rfix8Jpf1uYVgeD70BSKz2k0LKc=;
	b=i8/g5YNDF0YHOzfLpW7K4oTIBQuWYJV/bPl7xZUQ9XjQWMileLYukIT1W6ez1y1kZB
	p0cvhlvGdetzxyd4DeyzrAcr0oK/e6ZrXcRp9mVEtmcWTOH1DA9U5grGuzucQuhBbGU8
	6TUQpUtvIpdoy6Qfji5+WlaK5AI3aKcs+zmpBOJPREPUm1Vk+YOvXs7K2g+b7pvkVhyZ
	IgNY1P9MLdzIl+mK5RDCBveU2uyYSt9WgXSgbXCC1YlTVWvKprkWJRKARDy+1/WJWVUw
	1aWyfIa7192sPMbe4tdjwFaKzu56s/JACXE8X6GsoBYEnRF9YnwVFGseJRHR4Ddc2i1B
	NSDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=d2nCfWm5jDo1GZT/Rfix8Jpf1uYVgeD70BSKz2k0LKc=;
	b=fNwHKGst9Mex6b1LE/bZSebPyem8i5mPDdxX7UFNFa6C9sHQv2C0yQ3+hLBAbvgKQb
	BwfjPAyJg35vGIJuE4+89ayC3zjm0XZVmuV9L8DZpy2JvwyNdN/HrQ4zqwu2kJviDvCq
	fpjttKhm3GTO4ZnPrT/22UuuIytx7buG2FJoXpbpLkBL4x3+itXxKhd87DGo+3RgpP24
	uN1tsDYKQc2zsjvtlVH+40vLnEhf52/w89ORCsdH8pWHIIGPlmI3SpWOe4VpwlZyJZOP
	3JECLB4HMco+e5ltboU8jsNYWtZKPbucppJulf1tUu9v28H9z2pjqSDwmbDTQmj1PmCI
	I9rw==
X-Gm-Message-State: AKwxytdxBuB4/M2PRFIXCUGyewrE/Xz9CZ0dVqeqGrBHJHPou/VUH+w5
	s7sry3Shm6qDD3s+Ck/W7Jc4y2f2EYGknBwor++1pg==
X-Google-Smtp-Source: ACJfBou8I7lj73JPTC1b3u3n16I1fCN+mXVvev9tRZAXqlsg7S2cctyTMSvRjScsPMm0voGrKHsQWEUCdGN91dv+aGU=
X-Received: by 10.55.105.194 with SMTP id e185mr19335743qkc.192.1515458654100; 
	Mon, 08 Jan 2018 16:44:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.233.239.137 with HTTP; Mon, 8 Jan 2018 16:44:13 -0800 (PST)
From: Davis Roman <davis.roman84@gmail.com>
Date: Mon, 8 Jan 2018 19:44:13 -0500
Message-ID: <CACfi_Z3Z1wWCO17nwzGNGatboFT=cEo-LjJoMJFE7gQrLA5yXQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: backporting u-boot fit changes and how to properly capture the changes in yocto
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
X-List-Received-Date: Tue, 09 Jan 2018 00:44:15 -0000
Content-Type: multipart/alternative; boundary="001a11487d54bfe09305624d36c0"

--001a11487d54bfe09305624d36c0
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm running yocto Krogoth and I had to backport some updates related to
u-boot FIT from the latest yocto version into my version of yocto.

The changes are located in: *poky/meta/classes/kernel-fitimage.bbclass*

I'd much prefer to put these changes into my own layer so that these
changes don't contaminate my existing version of poky.

Can I make a bbappend for a bbclass and store it in my layer?

Any suggestions would be appreciated.

Also, unfortunately, due to the current state of our project, upgrading to
the latest yocto version is not an option at the moment.

Thank you,

Davis

--001a11487d54bfe09305624d36c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m running yocto Krogoth an=
d I had to backport some updates related to u-boot FIT from the latest yoct=
o version into my version of yocto.</div><div><br></div><div>The changes ar=
e located in: <b>poky/meta/classes/kernel-fitimage.bbclass</b></div><div><b=
><br></b></div><div>I&#39;d much prefer to put these changes into my own la=
yer so that these changes don&#39;t contaminate my existing version of poky=
.</div><div><br></div><div>Can I make a bbappend for a bbclass and store it=
 in my layer?=C2=A0</div><div><br></div><div>Any suggestions would be appre=
ciated.</div><div><br></div><div>Also, unfortunately, due to the current st=
ate of our project, upgrading to the latest yocto version is not an option =
at the moment.</div><div><br></div><div>Thank you,</div><div><br>Davis</div=
><div><br></div><div><br></div></div>

--001a11487d54bfe09305624d36c0--
