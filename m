Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC6C1E00D42; Thu,  4 Apr 2019 02:24:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C7B8E00D3F
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 02:24:34 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id h18so2488918wml.1
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 02:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HzGT4vj8Ylz5GBoibtUEYwsW2gYuOSvb3PyXO0uTclM=;
	b=CZnp1ay7VbmAMWCAd8QilmO60IcyzTYMrw4fUzq7OoHErttc0fjr3e50OkxPZtGAm5
	7diik1ejt5C7jMxurmHQSHFgeeNkdQ+HTvC3B40x3YARZwt6Kk7Dsw/1bYkhZAN9aDXm
	lZf1Ion/c0xlA6uC4So9Yb9wDNaJ45/7Tv1u8TwHWR3wbPJIucXjDuX30GAUj/MGTczV
	56cw1fZkfk+1tve7kFao+43ISBzm2bBuRZnWLCDIjxDGCM0BPD9BRaBOtl0uJNkmu7u/
	D+wteKD09Yf96Uxt0c7dFhfEIWNTADwayzDVSz1ANjfvMwcxPBiyfrdCnp9bAwSQQ6ei
	Va/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HzGT4vj8Ylz5GBoibtUEYwsW2gYuOSvb3PyXO0uTclM=;
	b=Wjc9JvTV0Pd1gbP/iV0vXUUAFaJWUdjbbTiPZK8JkVEyi99KL0D0FHS+mC6NpykVAS
	1jl+Lsznm7uSqUoR8sRWNuLtcBlMqGiA/XgIDMR3E4wuajw60ymKJdFp5tFN1AalMxKc
	nOSAA6pwvpr2n/DLoK2lr5b/71sfnWwvywxkaUurvgm0OnV8gOEEIsHTc+LHrX7R7fKE
	vYPHGk1NnmATyyRGl21WANqOezaaOVP73J34G1cpIlRRSVuqh5D0gjhpX7j0exOYIzNZ
	brwOfSxD2Y/vINKmsuw10Tuu0xMh4lkOmXafI4SoKBCSUZsmgRU/TKbawxliOeUJmt9M
	Wsqg==
X-Gm-Message-State: APjAAAUhSMfxtNnUUjTWd4PPH+kUNdJ+IIGS1VBrU4b7RkLjbUpHsgOT
	KjtBcmVtT4+oRSeWo3hrWdg9l3S0x1q5w5HB5kmDafHd
X-Google-Smtp-Source: APXvYqye+9uFo+ltl4KuE5mTYERY9OxuBq2alpPzm2WbIU6UvsJNkhPvBfYz7+DY4zThmMZsOojCQYNFoJE7TBiyXTM=
X-Received: by 2002:a1c:6783:: with SMTP id b125mr3266138wmc.41.1554369873680; 
	Thu, 04 Apr 2019 02:24:33 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 4 Apr 2019 11:24:22 +0200
Message-ID: <CAAfyv36ADyxfdSTTceSe7EdKR=1v6PktKkMegsVqeYjK4StGXQ@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: xloadimage recipe
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
X-List-Received-Date: Thu, 04 Apr 2019 09:24:35 -0000
Content-Type: multipart/alternative; boundary="0000000000002ba0860585b0f0e8"

--0000000000002ba0860585b0f0e8
Content-Type: text/plain; charset="UTF-8"

Hello,

I was trying to write recipe for xloadimage (yes this SW is from 1993) and
have some "custom" configuration step required. I already put some effort
into that without success. Just curious: does anybody have recipe for that
package to share? Thanks a lot.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--0000000000002ba0860585b0f0e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I was trying to write recipe for=
 xloadimage (yes this SW is from 1993) and have some &quot;custom&quot; con=
figuration step required. I already put some effort into that without succe=
ss. Just curious: does anybody have recipe for that package to share? Thank=
s a lot.</div><div><br></div><div>BR,</div><div><br></div><div>marek<br cle=
ar=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature">as simple and primitive as possible<br>=
-------------------------------------------------<br>Marek Belisko - OPEN-N=
ANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slov=
ak Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #open=
nandra<br>web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://=
open-nandra.com</a></div></div></div>

--0000000000002ba0860585b0f0e8--
