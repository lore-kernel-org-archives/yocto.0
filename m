Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DAB9E00BDC; Fri, 16 Oct 2015 07:26:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (federicobriata[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CDD2E00BC1
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 07:26:32 -0700 (PDT)
Received: by lbcao8 with SMTP id ao8so101349102lbc.3
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 07:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=HRqk7OJc7n4boE2SiqJ92Kq0pJJN5ozLrRgIlNS+2IQ=;
	b=j4VcGIh8ad/PR1r+znmVDqX4rqwpSzpK8blvQ0Hu1JysebVS+QEc81hiTmU/m7B+sz
	niAz1bw3d1EzhAzMsjpqmg0szM4MPpYotQxD5Md0Rfg3JDJaz9IQjdjPTkGVd2UyHv9q
	1DclnjB43vJIkUMBYFmE8rJMRB7bvSuWtyDD/SpN5Fh0bNDhc9mM1TycYX1eRwVzQQFH
	ID6C2MRuqTuZKH4KORf29N/0X4Xgi578z7W7c7PG5fIR/Hu5Ej+eRfje2UD0O93Fi1SZ
	wP/DQEooU/0AGhfOzl1Bsvwi5ojeZ3/lLUHHAZGosj9NEUg0vIpg6IcVENmiuYYTJu4u
	vjiA==
MIME-Version: 1.0
X-Received: by 10.112.54.169 with SMTP id k9mr8205187lbp.95.1445005590458;
	Fri, 16 Oct 2015 07:26:30 -0700 (PDT)
Received: by 10.112.227.75 with HTTP; Fri, 16 Oct 2015 07:26:30 -0700 (PDT)
Date: Fri, 16 Oct 2015 16:26:30 +0200
Message-ID: <CA+KKcbkVBYfsE7fuJ+g1nmS9TdhL2wheObcCgyuf-LCiC7SOew@mail.gmail.com>
From: Federico Pietro Briata <federicobriata@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-java] can zero shark be enabled again?
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
X-List-Received-Date: Fri, 16 Oct 2015 14:26:34 -0000
Content-Type: multipart/alternative; boundary=001a11c3f5c4eafcb6052239940b

--001a11c3f5c4eafcb6052239940b
Content-Type: text/plain; charset=UTF-8

Hi again,

I saw that some JIT optimization for arm32 has been announcement in icedtea

the announcement is available at
http://mail.openjdk.java.net/pipermail/distro-pkg-dev/2015-January/030392.html

So I'm just wondering if anyone know if shark can be enabled again also in
yocto recipes and can suggest me some tip to use it.

thanks and regards
Federico

--001a11c3f5c4eafcb6052239940b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi again,<br><br>I saw that some JIT optimization for=
 arm32 has been announcement in icedtea<br><br>the announcement is availabl=
e at <a title=3D"Follow link" href=3D"http://mail.openjdk.java.net/pipermai=
l/distro-pkg-dev/2015-January/030392.html" class=3D"" rel=3D"nofollow">http=
://mail.openjdk.java.net/pipermail/distro-pkg-dev/2015-January/030392.html<=
/a><br><br>
So I&#39;m just wondering if anyone know if shark can be enabled again also=
 in yocto recipes and can suggest me some tip to use it.<br><br></div><div>=
thanks and regards<br></div><div>Federico<br></div></div>

--001a11c3f5c4eafcb6052239940b--
