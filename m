Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E16CAE00B93; Fri, 12 May 2017 09:01:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B334E00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 09:01:34 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id l18so70888240oig.2
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 09:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=J+OPf8kF1Lx/cjpJWQVL+I/js/6T7ZAPqFQVpYWcqzY=;
	b=tggW7iaZM450j6eykWL+4cv1q3U8HrfP0PZlloIZ2aPCjewKHYrtb2A2zJnInoDfsB
	Amr8VrGxEQ8HlrzfBcoZZXDGmnJPliVfj/EbnqX0/sHrT+64T1NhAbIntyQI6fHcn0BD
	WzmEU0G7UYrTF4euB8mM/8c6vvIm0Eu1GfSyumgJFPfAMjBnr/iJ0VUycu1pVXhSpnLL
	IqVyDH/tEvNpPVQTJciO5Aif0cuEHC5CC69BPlde2Yj0wkBy4VX2JLCaC46GmYtQwB1B
	VCH+Ee4rFhTeCgzYsZAZ3E3ttaLpy5L/5xEFbC22WUMhF9gXwH5JCqgXKVeK69yBO+Fb
	7zzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=J+OPf8kF1Lx/cjpJWQVL+I/js/6T7ZAPqFQVpYWcqzY=;
	b=huSkSS382p+yY7MxmV5MuhzHeW7d6I4EjFcZANGOhXNP4eaC2OvDQOLlIOGrKfeX6Y
	dPvW5QIGJs2Kn3t6zCwih5E5ufErQ7PQoWadFdBYRsjIeDO8xeV2Qoe0+gKg34t0boZd
	Xaxl1rK4cjWOK6g7WXcFU/vXzPqkxL4yGLK6/nlr8QsWwgWOT3hIcNIKKIp1999369oa
	5TwMgP9x5jtS5tlZ/baf5lWS4tm2PZhGfumrb7Xk+IENxRBGnR6ZxN6187UniO9/b/qe
	IQauhbxZO0KynMRgHHuHWeUT4beLZyK5LWik/W6rdcknJg++gx/nB/Ul1WIho/7QyRck
	3M/A==
X-Gm-Message-State: AODbwcBLMFlZJKzNd5kYifWEO+oNW6AjJBVwjYS0pI+4oP2/iKtQlDKv
	j0WBM3GIh8ZJZNPjCt9DQwhvUb7L5YoT
X-Received: by 10.202.107.80 with SMTP id g77mr2378307oic.14.1494604894183;
	Fri, 12 May 2017 09:01:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.22.198 with HTTP; Fri, 12 May 2017 09:01:33 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Fri, 12 May 2017 18:01:33 +0200
Message-ID: <CAFq4t4gKvAj=ne_fL4ah6a18rP0_PCveqBvzFvBqX8YwkkOwCg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: dhcp eth0 network
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
X-List-Received-Date: Fri, 12 May 2017 16:01:38 -0000
Content-Type: multipart/alternative; boundary="001a114072dccc2b96054f55d14c"

--001a114072dccc2b96054f55d14c
Content-Type: text/plain; charset="UTF-8"

Dears,

I got Yocto image and unfortunatelly network is not somehow enabled &
proprely configured. After "ifconfig" no eth0 configured.


> ifconfig
lo    Link encap:Local Loopback
       inet addr:127.0.0.1 Mask:255.0.0.0
 ....



> /etc/network
> ls
if-down.d if-post-down.d if-pre-up.d  if-up.d


How should I setup "eth0" to get network working properly?

Thanks.

--001a114072dccc2b96054f55d14c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dears,<div><br></div><div>I got Yocto image and unfortunat=
elly network is not somehow enabled &amp; proprely configured. After &quot;=
ifconfig&quot; no eth0 configured.</div><div><br></div><div><br></div><div>=
&gt; ifconfig</div><div>lo =C2=A0 =C2=A0Link encap:Local Loopback</div><div=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0inet addr:127.0.0.1 Mask:255.0.0.0</div><div>=
=C2=A0....</div><div><br></div><div><br></div><div><br></div><div>&gt; /etc=
/network<br></div><div>&gt; ls=C2=A0</div><div>if-down.d if-post-down.d if-=
pre-up.d =C2=A0if-up.d</div><div><br></div><div><br></div><div>How should I=
 setup &quot;eth0&quot; to get network working properly?=C2=A0</div><div><b=
r></div><div>Thanks.</div><div><br></div><div><br></div></div>

--001a114072dccc2b96054f55d14c--
