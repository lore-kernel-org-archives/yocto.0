Return-Path: <lchristina26@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40681E00B49; Thu, 18 Dec 2014 10:17:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3625E009B3
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 10:17:18 -0800 (PST)
Received: by mail-ie0-f174.google.com with SMTP id rl12so1614053iec.33
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 10:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=n56wr7hLZUdyhPb6FDPI2X9vswkaI2VWrGhNqwDqPXc=;
	b=o6aDwwDTv8zvMqFYU/+6g2CXJu20u42ZRwFgVibCrPeM0ckpvbyZ/kpneFWnhGxqy4
	0Zh+0XctcPvBimIQ4T9IzrYyrcwkQMRypjg0GlagEi1wCfS6j5yZhv9/FltJu29lqwDM
	nF344+Bwgbyjv38oxDC6kpAiEtzye3BwR/CvAiBGVwwwitX+39GNwyVVNWKS8pSk0Fgx
	O0F3FLBjE6fLGv/6XTqsIPEHihAN8WYdaXq3/1e7YjfJcO4utt8iedHpRQVrqsfinvTf
	nnLKiGKzD0cAQcox4fI6GJNtx6zxXgc0xj4RaA9Dlx0MJ1HpyNUUMED3faDzHh3FxvKv
	nyMA==
MIME-Version: 1.0
X-Received: by 10.50.148.101 with SMTP id tr5mr3810689igb.12.1418926637446;
	Thu, 18 Dec 2014 10:17:17 -0800 (PST)
Sender: lchristina26@gmail.com
Received: by 10.64.8.200 with HTTP; Thu, 18 Dec 2014 10:17:17 -0800 (PST)
Date: Thu, 18 Dec 2014 11:17:17 -0700
X-Google-Sender-Auth: J728s1LXU9enyuqEFIX8yPgnuqs
Message-ID: <CAL0pqZ01ZSMrQ0F7ga4mOBrM1iPABh4=nZi2fVA3LKN7CdgwFg@mail.gmail.com>
From: Leah <leah@wolfssl.com>
To: yocto@yoctoproject.org
Subject: CyaSSL compatible with Yocto Project
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
X-List-Received-Date: Thu, 18 Dec 2014 18:17:22 -0000
Content-Type: multipart/alternative; boundary=001a1134c7bc2ff94f050a819a12

--001a1134c7bc2ff94f050a819a12
Content-Type: text/plain; charset=UTF-8

CyaSSL if now compatible with the Yocto Project. If you have a
server/client project and would like to use CyaSSL for securing your
connections, please check it out at:
http://www.yassl.com/yaSSL/Blog/Entries/2014/7/11_meta-wolfssl_Layer_for_Yocto_and_OpenEmbedded.html.
We also have a bbappend file for cURL with the Yocto Project:
http://www.wolfssl.com/files/partners/cyassl_yocto_openembedded.pdf. For
questions or information please contact us at info@wolfssl.com.

--001a1134c7bc2ff94f050a819a12
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">CyaSSL if now compatible with the Yocto Project. If you ha=
ve a server/client project and would like to use CyaSSL for securing your c=
onnections, please check it out at:=C2=A0<a href=3D"http://www.yassl.com/ya=
SSL/Blog/Entries/2014/7/11_meta-wolfssl_Layer_for_Yocto_and_OpenEmbedded.ht=
ml">http://www.yassl.com/yaSSL/Blog/Entries/2014/7/11_meta-wolfssl_Layer_fo=
r_Yocto_and_OpenEmbedded.html</a>. We also have a bbappend file for cURL wi=
th the Yocto Project:=C2=A0<a href=3D"http://www.wolfssl.com/files/partners=
/cyassl_yocto_openembedded.pdf">http://www.wolfssl.com/files/partners/cyass=
l_yocto_openembedded.pdf</a>. For questions or information please contact u=
s at <a href=3D"mailto:info@wolfssl.com">info@wolfssl.com</a>.<br><br clear=
=3D"all"><div><br></div><div class=3D"gmail_signature"><div dir=3D"ltr"><di=
v><div><br></div></div></div></div></div>

--001a1134c7bc2ff94f050a819a12--
