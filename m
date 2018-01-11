Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9B22E00E1F; Wed, 10 Jan 2018 20:55:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_NONELEMENT_30_40, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 HTML_NONELEMENT_30_40 BODY: 30% to 40% of HTML elements are
	*      non-standard
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0DB2E00D9A;
	Wed, 10 Jan 2018 20:55:24 -0800 (PST)
Received: by mail-qt0-f195.google.com with SMTP id a16so411621qtj.3;
	Wed, 10 Jan 2018 20:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3XWmAdKZpWhdYOjI0cUqTtQnxfwA21ItnZqvaqf8n7I=;
	b=T6wxKOl8te6qw+eJ2s/OGWmi6/M1uO7WRCeY3W1nAP2R+DERMf+AbwIo5cHu5CQzID
	YzQJ/2AeOaAVff2NDG6Ee23px9BHJIiC6LCgz4rlAHzWq/13x3FXNQgvitK3YHtyPfTX
	yy3tlzUmVRI6bDTC5newNp/3pNavxD3tTnken4fjVBKnBzTyLiI6kESVe1C3BVi7x2zt
	H2ovDr6QXk1QhndqW67bh4kLKPgcikBfuHRqLp2Uzme27WCULrhFMVAXlwLPy/Nu2l4a
	LL3TpfYpsfuFVn0986P1p/S1ZlmknmAQupfVZNQlqSrvFpIGlDsL2wi3Fhb2Siy6Rn2o
	4EIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3XWmAdKZpWhdYOjI0cUqTtQnxfwA21ItnZqvaqf8n7I=;
	b=dg4ETlaE+FsL3GoHkJ0QGdBLYK4yhOn/bleZLcLC3AB/PedIy+wjTysTEAhgjaBXyp
	xmFz4isCUJtajg/Le6OGVkdrBqFsiABB5+Xa4nzdBlrokcELaXm7JkNjBD341M7Td7o8
	5FAXuVQixJdvOJZ5beuBcUEBkZWgeEcG+RTnDXlL3J7qxW0QmE+9oB3DkIhqgfiHIhxc
	50IxQdefCoHiTuhdYYL45KTAViGvZdc/d11RRPitV8HZIx0fFCiGre3eBDWKnDGowCpK
	k+ALYT6vU0fbnW6v+L2ExivoaLnfgKwDXLV4cjtgMfhOC8ISVyfZVlfrhUn8sa4UGKJf
	ddVg==
X-Gm-Message-State: AKwxyteJktld3VAfSWHW/26V1/p6vstqJHaxNdXlLZdJHwEIes9tdgv+
	A8EqUWVyZiSwtoLoSazIMsrgJnVZePE0naIhlX0=
X-Google-Smtp-Source: ACJfBotY74SWrl7fTiLdb7GDXB4bagPJoQPxbcDcyZ1Wlr01f9uBt4elsExPTiwZRm67toxqogYwxiP3EEVCoP9qixk=
X-Received: by 10.237.61.175 with SMTP id i44mr4581425qtf.89.1515646523494;
	Wed, 10 Jan 2018 20:55:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.233.239.137 with HTTP; Wed, 10 Jan 2018 20:55:23 -0800 (PST)
In-Reply-To: <CACfi_Z1iHtpMLTNnQO=FPpFVu+ZYaXrRLVSk6HkrrsSbt+CBkA@mail.gmail.com>
References: <CACfi_Z1iHtpMLTNnQO=FPpFVu+ZYaXrRLVSk6HkrrsSbt+CBkA@mail.gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Wed, 10 Jan 2018 23:55:23 -0500
Message-ID: <CACfi_Z1-wtH0iVO6Q3vg2Q661tWSHF1ZFQuGU_QVyCtijxW58Q@mail.gmail.com>
To: poky@yoctoproject.org
Cc: yocto@yoctoproject.org, bitbake-devel@lists.openembedded.org,
	yocto-bsp@yoctoproject.org
Subject: How to make the os-release package work with local walltime instead of GMT?
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
X-List-Received-Date: Thu, 11 Jan 2018 04:55:25 -0000
Content-Type: multipart/alternative; boundary="001a11401982a3548d056278f48b"

--001a11401982a3548d056278f48b
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to fullfill a requirement which states that I must have a file
in my root filesystem which has the timestamp of when the rootfs was
generated for traceability purposes.

I've included the os-release package into my image recipe.

However, when I cat /etc/os-release, I notice that the BUILD_ID variable
does not reflect the actually time that my build took place.

Upon further inspection, I noticed in the os-release recipe that BUILD_ID
is based on the DATETIME variable.

Drilling down further, I noticed that DATETIME is defined
in ./meta/conf/bitbake.conf

    DATE := "${@time.strftime('%Y%m%d',time.gmtime())}"
    TIME := "${@time.strftime('%H%M%S',time.gmtime())}"
    DATETIME = "${DATE}${TIME}"

So it appears to me that DATETIME is based on gmttime.

Instead, I would like this to be based on wall time.

Any suggestions on how to do this?

Thank you,

Davis

--001a11401982a3548d056278f48b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div>Hello,</d=
iv><div><br></div><div>I&#39;m trying to fullfill a requirement which state=
s that I must have a file in my root filesystem which has the timestamp of =
when the rootfs was generated for traceability purposes.</div><div><br></di=
v><div>I&#39;ve included the os-release package into my image recipe.<br></=
div><div><br></div><div>However, when I cat /etc/os-release, I notice that =
the BUILD_ID variable does not reflect the actually time that my build took=
 place.</div><div><br></div><div>Upon further inspection, I noticed in the =
os-release recipe that BUILD_ID is based on the DATETIME variable.</div><di=
v><br></div><div>Drilling down further, I noticed that DATETIME is defined =
in=C2=A0./meta/conf/bitbake.conf</div><div><br></div><div><div>=C2=A0 =C2=
=A0 DATE :=3D &quot;${@time.strftime(&#39;%Y%m%d&#39;,<wbr>time.gmtime())}&=
quot;</div><div>=C2=A0 =C2=A0 TIME :=3D &quot;${@time.strftime(&#39;%H%M%S&=
#39;,<wbr>time.gmtime())}&quot;</div><div>=C2=A0 =C2=A0 DATETIME =3D &quot;=
${DATE}${TIME}&quot;</div></div><div><br></div><div>So it appears to me tha=
t DATETIME is based on gmttime.=C2=A0</div><div><br></div><div>Instead, I w=
ould like this to be based on wall time.</div><div><br></div><div>Any sugge=
stions on how to do this?</div><div><br></div><div>Thank you,</div><div><br=
></div><div>Davis</div></div>
</div><br></div>

--001a11401982a3548d056278f48b--
