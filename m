Return-Path: <soumyag213@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B8B3E006D8; Tue,  7 Mar 2017 08:48:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (soumyag213[at]gmail.com)
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
	*      [209.85.192.175 listed in list.dnswl.org]
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39CF7E00519
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 08:48:57 -0800 (PST)
Received: by mail-pf0-f175.google.com with SMTP id j5so2660097pfb.2
	for <yocto@yoctoproject.org>; Tue, 07 Mar 2017 08:48:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=3Qh7dMy/3s4dWBp7fZt3UFQIFu/6/QUpPVA6GyzmdOs=;
	b=djI6C9M8PQyJeA622uxpk4AgET6GIIy41oX6TplbecEaw+mtXfDBCMZNiWwv5LgcpW
	XtnsihIqh1YZ9HHmVE2w+Mg1HEIhKCYFVvcEY8yqifdjqHzjpZt4lLQ5E0897ige+k/R
	5Z5spXznqslWMIX2D7E9rQgnh7A0v+rYtYfxspivkCv/GbOv7anm7Kq4DnppzdB28cKA
	iEyQbwjsRio5Kc/aQ924SG9LTlvjnQjLK3MCrwrsnvHqYEyrXQDmwwoKReyDlTBP7T01
	3UuKqIMKZCIqeNeLUs7tbgLPX2hOGDSU6sdjkblZO2AglS+fVvrXDkXALgI8ZVFScrkj
	Kx9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3Qh7dMy/3s4dWBp7fZt3UFQIFu/6/QUpPVA6GyzmdOs=;
	b=hs1bxBncRZe1mBzh72f1FCIh02+tmSyyAjX2jBPk45fifkWt3eYjJ2Bf5rBh2S9baP
	uxU2zLXO6fTuYWVAGHgQUkdJxLcobil+I3ytZCJDxmhRwtLmlewK4CYZ0irVcu+7RInq
	eZqS20XzuiHp65t8+nFAG5N0nyhqO5rr+utVJQJUv7mmbhdcGIzTp5G0xpDY2yKtmMDP
	TrJ4AiuM+vCwMDzmR+G2+7jVyKAWDkw72wcTSHeDmjNeK7jZkgzJP33TKBEpKIA1PyNG
	moy0Md9Hgt82Aw32XgKvnGtexUrBJRWri7dKrM84uBRt9TY7bplb7x2wG4J7d/4Sey60
	sziw==
X-Gm-Message-State: AMke39l/UVWhtLNlPjeKX7UpUVA0WM9eYPcN8IgfKKQCmXJBX/+fuR53354SYnm9MRTRbbWpBev+WiUolTUXnw==
X-Received: by 10.84.232.131 with SMTP id i3mr1798575plk.172.1488905337316;
	Tue, 07 Mar 2017 08:48:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.177.196 with HTTP; Tue, 7 Mar 2017 08:48:16 -0800 (PST)
From: Soumya Gupta <soumyag213@gmail.com>
Date: Tue, 7 Mar 2017 22:18:16 +0530
Message-ID: <CAFD+RaYVrFfPXrbW79FMx24wJDSqfxAt2ey3PYKmvL0E5hE7Bw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Intoducting myself: Applying for Outreachy
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
X-List-Received-Date: Tue, 07 Mar 2017 16:48:58 -0000
Content-Type: multipart/alternative; boundary=f40304361d10bc2bf5054a26c9b2

--f40304361d10bc2bf5054a26c9b2
Content-Type: text/plain; charset=UTF-8

Hi all,

My name is Soumya, an I am a final year Engineering undergraduate student
from New Delhi. I would love to work to contribute to Yocto for the summer.

I have been coding in Python for the past year and I am quite at ease with
the same. It states on the Outreachy page, that there is a project relating
to the building of autobuilders. I want to work on the same.

Being a newbie, it would be great, if someone could guide me on the right
path here
Thanks already


Best,
Soumya Atul Gupta
Final Year Undergraduate Student, ECE
Netaji Subhas Institute of Technology
New Delhi, India

--f40304361d10bc2bf5054a26c9b2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi all, <br><br></div>My name is Soumy=
a, an I am a final year Engineering undergraduate student from New Delhi. I=
 would love to work to contribute to Yocto for the summer. <br><br></div>I =
have been coding in Python for the past year and I am quite at ease with th=
e same. It states on the Outreachy page, that there is a project relating t=
o the building of autobuilders. I want to work on the same.=C2=A0 <br></div=
><br>Being a newbie, it would be great, if someone could guide me on the ri=
ght path here<br></div>Thanks already <br><div><br><div><div><div><div><br =
clear=3D"all"><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Best=
,<div>Soumya Atul Gupta</div><div>Final Year Undergraduate Student, ECE</di=
v><div>Netaji Subhas Institute of Technology</div><div>New Delhi, India</di=
v><div><br></div></div></div></div></div></div></div></div>
</div></div></div></div></div></div>

--f40304361d10bc2bf5054a26c9b2--
