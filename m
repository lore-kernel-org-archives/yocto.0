Return-Path: <ronaldo.viera@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5088DE003C7
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 14:15:30 -0700 (PDT)
Received: by mail-pb0-f51.google.com with SMTP id uo5so11327611pbc.38
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 14:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=SnEVxrn25kdVtJgdtWxzup6hT6ewRSN1CHHN8kh95j8=;
	b=wi52iWCcH6BRyu+Cu3hQqyTlg0rZtww9gQt382blo8uR/D6uSQ2Pc5LUrTWNqxlwq4
	R1mB/hdlZQ1eUyxz+Xdxq3Ng34EgleheeYCpZH1KaAGJIxoHNepf2ZeHbqy2b699ZudC
	4aF57ZrCMPPsk14I664/lhQut6ueuo+ZxNFQwql1f8eHeshZl8OlsEI53BvaAiVjwW0E
	lQYScKFqqVJvZsIIDTox48O62ROf11s1QjkBn/2N2qGRVa812ErAxadbqpzzmVOvsErD
	XGoasUteduCpPx22SZ/WHjHc6qLA5Yo/nXEmMUaW4QZZP4LWAyMtSSGAinaquiDDMNUv
	2drQ==
X-Received: by 10.66.226.145 with SMTP id rs17mr11113743pac.144.1397682930666; 
	Wed, 16 Apr 2014 14:15:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.83.226 with HTTP; Wed, 16 Apr 2014 14:15:10 -0700 (PDT)
From: Ronaldo Nunez <ronaldo.viera@gmail.com>
Date: Wed, 16 Apr 2014 18:15:10 -0300
Message-ID: <CALTF=oJyYWTJKauMk2VmdAoL+1v6vnVq892Og=6h3C-2c1XBcg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Git fetch with user/pass in a recipe
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
X-List-Received-Date: Wed, 16 Apr 2014 21:15:31 -0000
Content-Type: multipart/alternative; boundary=e89a8f3b552e97535e04f72f6ae4

--e89a8f3b552e97535e04f72f6ae4
Content-Type: text/plain; charset=UTF-8

Hi all!

I'm trying to create a custom recipe to a proprietary software from my
company. The code should be fetched from a git server, with username and
password authentication through a http connection (port 8080).

From the terminal I use the following command line to clone the project:

$ git clone http://username:pass@server:8080/project.git

well in the bitbake recipe, I tried the following in SRC_URI variable, with
no success:

SRC_URI = "git://username:pass@server:8080/project.git;protocol=http"

I also tried:

SRC_URI = "git://server:8080/project.git;protocol=http;user=username"

Again, with no success.

Well, any help is welcome. Thanks in advance.

-- 
Ronaldo Nunez

--e89a8f3b552e97535e04f72f6ae4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all!<div><br></div><div>I&#39;m trying to create a cust=
om recipe to a proprietary software from my company. The code should be fet=
ched from a git server, with username and password authentication through a=
 http connection (port 8080).</div>

<div><br></div><div>From the terminal I use the following command line to c=
lone the project:</div><div><br></div><div>$ git clone http://username:pass=
@server:8080/project.git</div><div><br></div><div>well in the bitbake recip=
e, I tried the following in SRC_URI variable, with no success:</div>

<div><br></div><div>SRC_URI =3D &quot;git://username:pass@server:8080/proje=
ct.git;protocol=3Dhttp&quot;</div><div><br></div><div>I also tried:</div><d=
iv><br></div><div><div>SRC_URI =3D &quot;git://server:8080/project.git;prot=
ocol=3Dhttp;user=3Dusername&quot;<br>

</div><div><br></div><div>Again, with no success.</div><div><br></div><div>=
Well, any help is welcome. Thanks in advance.</div><div><br></div>-- <br><d=
iv dir=3D"ltr">Ronaldo Nunez</div>
</div></div>

--e89a8f3b552e97535e04f72f6ae4--
