Return-Path: <pawan4749@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 746A0E00A94; Thu, 11 Oct 2018 05:42:41 -0700 (PDT)
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
	*      [209.85.210.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A89EE003D9
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 05:42:40 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id l1so8741353otj.5
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 05:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hfdqrcE/L0ou1J07nMtTtdChaNmHxv8TQHKt2JCunZ8=;
	b=FU1anBcKTpgPvLn8nGAHXWULLRckjvqanNDmp36yPIMa54kcdr8PbCL+TZcPHExG/C
	uFN/pmQRsC8vTmeugL6+EvrgB2YrG2nxcJ/J8qU+rZqchr5bTXilDcaDkm2foCrlQGD5
	c0U99pSCwmPn4Vkji1cby0PbpgIDyyw9JT+vLl2gCEco2SelXgKFNk1NgZkCyWczzkPP
	vCKWxWswV7oiCV/kOP0+yBaB9nb3DmPY2/+HVs9hgmxkEROSrdCk57rL18nX2Hy23B71
	QP2xHiNCKbuMx2FzaytXfkSCN0SLEfWeP/F33Zdz5B/xklx/mQ59Qp9zYADvGLQnfph7
	2ARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hfdqrcE/L0ou1J07nMtTtdChaNmHxv8TQHKt2JCunZ8=;
	b=Bm/3oao/KOErIsztRpSZ1x2WKA3O3XnEYyY1keYccFnRJ6QgUtRn6udUui6FHZnqYj
	ulxDMZgoyzNHxrJ7jj+SS2+jQv7sGfoSxLCLsj/cpluyDMBz+7pNW9xGC3oOn1V9h8Li
	5oWMhi3vjXF5rRrzES3vMtNA7ekmkx22eBqKz8QGrCJva7TRnDsMUJJfbwcesacaNFPE
	1ZuOwHTXwmuVumP743AyzT/0W58oLSqDvo2d/+ktzmTlyc85zwLNGKVg2CD4u/d1GVqe
	+JTV2Yx//qqzf7VnPUtM115LwXUZz819tf0vU/+qB7NP9m9uqlvQdDbjyIXQf2o3ngcK
	b8WA==
X-Gm-Message-State: ABuFfoilzyVzW/VjNOrkU35PqkfKHkUzHeyl56/LFHU9MFELA+deOYKd
	YIxu1aVxzvdpnjnUG8rwHe/cpy9chbk9kAQhlXrOug==
X-Google-Smtp-Source: ACcGV61tNI50+0m5edpFcZ5avnPwnClPovZADzdtOvYqC4X4AeZCl/URwGsYg9RXlB4HVFrwvOv/K1fV1GyfmbGVkpU=
X-Received: by 2002:a9d:38f9:: with SMTP id k54mr853222ote.135.1539261759518; 
	Thu, 11 Oct 2018 05:42:39 -0700 (PDT)
MIME-Version: 1.0
From: pawanKumar <pawan4749@gmail.com>
Date: Thu, 11 Oct 2018 18:12:27 +0530
Message-ID: <CALd6x_skPx8O+GTt5khndU=4Q+MQt=kpXLNLN9gybEqLMvTJiQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 11 Oct 2018 06:32:57 -0700
Subject: Yocto:
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
X-List-Received-Date: Thu, 11 Oct 2018 12:42:41 -0000
Content-Type: multipart/alternative; boundary="000000000000647f270577f34ed2"

--000000000000647f270577f34ed2
Content-Type: text/plain; charset="UTF-8"

Hi team,

I'm using PACKAGE_EXCLUDE ="acl" to exclude the acl and complementary
packages but it is not working.

Can you provide solution how to exclude acl and complementary packages.

Thanks,
Pavan

--000000000000647f270577f34ed2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi team,<div dir=3D"auto"><br></div><div dir=3D"auto">I&#=
39;m using PACKAGE_EXCLUDE =3D&quot;acl&quot; to exclude the acl and comple=
mentary packages but it is not working.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Can you provide solution how to exclude acl and complementa=
ry packages.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</di=
v><div dir=3D"auto">Pavan</div></div>

--000000000000647f270577f34ed2--
