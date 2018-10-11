Return-Path: <pawan4749@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74180E00566; Thu, 11 Oct 2018 06:55:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pawan4749[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53C10E003D9
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 06:55:34 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id x4so7581021otg.3
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 06:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=DUFJIArC+9hKNyBEz4JCgwsurlZJn7+Xw3b6Z2vVlMs=;
	b=J2VH2e5QJCFq/X0ZLmb+yCuoNRO7vJFUlm+BF1FE6YJztSYfw2uCwyfnRs+8/wRk3Z
	fyKIAidsBnakJWHxTv8xvJ3pwbBONriE7POzJWvkQ15Pw0dBmjYtXThZjnWXcJe/p4Pp
	Pa0v44F+V21wczs6wzzjpBotYIcYJwcCHLu1dH16wxBUKetrOEXlC7crt+CSgUkl+PFv
	bg0rWPwsBO1tGF0r7W4jFcsDJHfIq7RSpxnxE0KBUh83Fkzjq7G40CijtFegtFMSLCUE
	TajACpeXQBBVIaylXOyf3XgN7HYGOnZiCrIRpP9RIfPy6lEZrWKSk3BC2NMl3lIGmmup
	LOpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=DUFJIArC+9hKNyBEz4JCgwsurlZJn7+Xw3b6Z2vVlMs=;
	b=YYhk1NHCPMS5NCimVSN+WU/5be0dVhM4ODmfEqrWYsX6s/Qi8IdEbBONqOJz+tDJJ9
	boe0Z38u7z03c64P4lcp81tj5CJoJdJqV0U9db6LpvYHW2y4yRvmC4dxFUreqwmmYA0y
	1GY5eL74CUktKp/nmkxadjzEIxtdjNkmXDp6bbjmeG/L/L2fNCsmz60+GhNLcgeGmQOy
	jEzaMQH+8l1X/bpmLwkDtOPKhbR80n9feCn1/EUmf3guxtZ2Q99aX5C/efMBp623skYq
	8LqrCqnRcIoH/3zKbqGjjcB5MgH1ox0iBRRyKH8QVbqu+quw1amFVFZA41oxv3DuK8WV
	U2nw==
X-Gm-Message-State: ABuFfohMGAXmXP/ZE72KITawVL4gJMMxE/66w3OfWj2hfHrKbr8Dtmvu
	JABUncUx7put1rH9gEm4PU+/FMUg8QyAVyM+euEqMQ==
X-Google-Smtp-Source: ACcGV60Gt+VC8cDBDiUvBz013oOSa4VsAE9sVfzAu+EXWaaMIEMObAlADtvxFn/X7l1H1pXHNcRsnncNN5hqjgyP1K8=
X-Received: by 2002:a9d:a67:: with SMTP id 94mr1113546otg.61.1539266133360;
	Thu, 11 Oct 2018 06:55:33 -0700 (PDT)
MIME-Version: 1.0
From: pawanKumar <pawan4749@gmail.com>
Date: Thu, 11 Oct 2018 19:25:21 +0530
Message-ID: <CALd6x_uaO3aypMYCqUA=Jpra_+EptuMdBkvfdJ0KMjjjo2zu8g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Excluding Package:
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
X-List-Received-Date: Thu, 11 Oct 2018 13:55:35 -0000
Content-Type: multipart/alternative; boundary="00000000000018097f0577f45301"

--00000000000018097f0577f45301
Content-Type: text/plain; charset="UTF-8"

Hi team,

I'm using PACKAGE_EXCLUDE ="acl" to exclude the acl and complementary
packages but it is not working.

Can you provide solution how to exclude acl and complementary packages.



Thanks,
Pavan

--00000000000018097f0577f45301
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:12.8px">H=
i team,</span><div dir=3D"auto" style=3D"font-family:sans-serif;font-size:1=
2.8px"><br></div><div dir=3D"auto" style=3D"font-family:sans-serif;font-siz=
e:12.8px">I&#39;m using PACKAGE_EXCLUDE =3D&quot;acl&quot; to exclude the a=
cl and complementary packages but it is not working.</div><div dir=3D"auto"=
 style=3D"font-family:sans-serif;font-size:12.8px"><br></div><div dir=3D"au=
to" style=3D"font-family:sans-serif;font-size:12.8px">Can you provide solut=
ion how to exclude acl and complementary packages.</div><div dir=3D"auto" s=
tyle=3D"font-family:sans-serif;font-size:12.8px"><br></div><div dir=3D"auto=
" style=3D"font-family:sans-serif;font-size:12.8px"><br></div><div dir=3D"a=
uto" style=3D"font-family:sans-serif;font-size:12.8px"><br></div><div dir=
=3D"auto" style=3D"font-family:sans-serif;font-size:12.8px">Thanks,</div><d=
iv dir=3D"auto" style=3D"font-family:sans-serif;font-size:12.8px">Pavan</di=
v></div>

--00000000000018097f0577f45301--
