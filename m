Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DAC8E0086D; Tue, 24 Mar 2015 01:50:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBBA1E00837
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2015 01:49:57 -0700 (PDT)
Received: by iecvj10 with SMTP id vj10so55215119iec.0
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2015 01:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EYWp+pTv1ocV80o/8pLEkT+cvvkH/03csHH/pTO9YRo=;
	b=kwDgwF4IZp16icKFqe5EVWqeofWBa/X4UrXKOZAwEj+a8tMYsYe0iFPrdvcu6pSGRj
	ejvQJH2OyjsWrvKhnFhdutO+qooDVMUyiaqAYlNfu7tGjSfhABBBUFc7Xa87jirOjzRu
	snHTrN9+lUFA4VvEqUekFCTMi7Z8m9nwdJHkAc1iqXE46U6a+mRoO+kMzU1QoKGgd9Su
	zsL8WLD3u/zfgSf0usNPRnB5+1AbtI0OipGpgG8uloOpuHyGikLCXlax3Y7hrwkp6nJx
	If6Y0pn/lYTwGkWlfN2M0MJ3KAJgJ/Q4ruGJUGl6Dn8/KBLuYn6acF/62dqzin0ZB/1k
	F09A==
MIME-Version: 1.0
X-Received: by 10.107.12.70 with SMTP id w67mr4933307ioi.10.1427186997372;
	Tue, 24 Mar 2015 01:49:57 -0700 (PDT)
Received: by 10.64.39.16 with HTTP; Tue, 24 Mar 2015 01:49:57 -0700 (PDT)
Date: Tue, 24 Mar 2015 16:49:57 +0800
Message-ID: <CACjDgAOUU3HhbANrmm=iepfjy+UVT9RhLT6so+CSUxV665ifAg@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Iptables kernel mode driver
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
X-List-Received-Date: Tue, 24 Mar 2015 08:50:04 -0000
Content-Type: multipart/alternative; boundary=001a113f8b2001ac63051204deee

--001a113f8b2001ac63051204deee
Content-Type: text/plain; charset=UTF-8

Hi,

I am building with dizzy with hob,  a core-image-minimal with machine
generic-x86-64 (kernel 3.14) with addition of iptables, iproute2 and some
netfilter extensions.

I can add the kernel-module-xt-classify, kernel-module-x-tables but i
cannot find *kernel-module-xt-physdev *(via the build package).

Can someone please help to point me the right direction?  Thanks.

Regards,
Albert.

--001a113f8b2001ac63051204deee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am building with dizzy with hob, =
=C2=A0a core-image-minimal with machine generic-x86-64 (kernel 3.14) with a=
ddition of iptables, iproute2 and some netfilter extensions. =C2=A0 =C2=A0<=
/div><div><br></div><div>I can add the kernel-module-xt-classify, kernel-mo=
dule-x-tables but i cannot find <b>kernel-module-xt-physdev </b>(via the bu=
ild package).</div><div><br></div><div>Can someone please help to point me =
the right direction?=C2=A0 Thanks.</div><div><br></div><div>Regards,</div><=
div>Albert.</div></div>

--001a113f8b2001ac63051204deee--
