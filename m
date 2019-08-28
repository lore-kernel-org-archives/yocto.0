Return-Path: <prawnhongs@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDCBBE00DD1; Wed, 28 Aug 2019 01:07:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (prawnhongs[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C881E00D77
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 01:07:02 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id z17so1743732ljz.0
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 01:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gXKdIURLQ0NTxq+4aMTC5cb/709R7lcEDdyn18D0oDY=;
	b=A4fGlYHkO+KJrZIpCSjoC1Eh8omk1OZzT6PyncpTqe/KuMZE9EN01Xq/fVXYrnpIyl
	I+tLAB6uJDa2htbdwcpFGgFw1WpCDM5oadD7P7AzPx85KdmO7dxAKufjbixNKe+x0MT4
	yODUvu/maMAtuXwF/0Uykk9TLMBvaUC14zsPpVqYcZb12O2CQPulVS8uBhTq/9Qmyene
	VMMEL17rgC65csj9/mSpZv38WVYayrzmacNVQUfcVV4t+OqMRCouqyGaAzk4zWojM29+
	utKUnuyRjRfXgEiSZG1ufjCAsDcsTqkO5v4ja+Z65OAZD+j7D5D2JL7KuhjSwF5nO7L0
	EI4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gXKdIURLQ0NTxq+4aMTC5cb/709R7lcEDdyn18D0oDY=;
	b=SHMffwZIYXawFNv9hnqzurCbkcClaLHFk+5tliTUoCMBoyG9pOEmSKThoC94rk8xIe
	YhtpFM697c+zrGktyA2BHEUfmFfv2YVk0eEeRu5Wfnq9AHS++mTi9L6pemUN9Y2t+no4
	KEMhLjvDBPxbH6rOglyAeoT4ezZKOXXw5H23SWL0IIDCK8nlKofkd4/CPIPXGhqM1kma
	g4fWLQdPa/2PsN3kqw+sph3G+8yFpJESd0p/Dmw7ock/GxZX82LmlrCymBBjn0O1qSYI
	hC6l3qVMkksR+jZlbA16CH1F150CritmnYVvj3jl7UQnDTb/dU93T424lZyvSE7+hUqm
	EAAg==
X-Gm-Message-State: APjAAAUjEJg+P/4+CG/xlFvRyXKSzcXhJh6ypahsentM2ZIO1KhXFxXx
	WhBzmCoNXpDCEaDJQOtTEOajT4sWNfsgaBKfaSfHP3p+yos=
X-Google-Smtp-Source: APXvYqw6OmFqZFLgTeAM5ZT+QTTY4wRuXa1osLYgEdulnkGQQDdKv3h76SwzmwOIDNUY44Las5Xfi/lCRaOMKtndMRU=
X-Received: by 2002:a2e:8ed5:: with SMTP id e21mr1347931ljl.156.1566979621248; 
	Wed, 28 Aug 2019 01:07:01 -0700 (PDT)
MIME-Version: 1.0
From: Prawn Hongs <prawnhongs@gmail.com>
Date: Wed, 28 Aug 2019 18:06:22 +1000
Message-ID: <CADVHQEgK2d9qX311CNkHYLx=F6p=AHAaOCq2JyEsdVuUa0CN9g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta]/recipes-extended - Sumo Branch
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
X-List-Received-Date: Wed, 28 Aug 2019 08:07:03 -0000
Content-Type: multipart/alternative; boundary="000000000000b1e398059128dfa3"

--000000000000b1e398059128dfa3
Content-Type: text/plain; charset="UTF-8"

Hi Everyone,

In the Sumo branch, the iptables are not compiling correctly, I see that
the xtables.c isn't getting compiled at all.

Here is the recipe for iptables

http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/recipes-extended/iptables/iptables_1.6.2.bb?h=sumo


Has anyone faced this issue?

Thanks

--000000000000b1e398059128dfa3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Everyone,<div><br></div><div>In the Sumo branch, the ip=
tables are not compiling correctly, I see that the xtables.c isn&#39;t gett=
ing compiled at all.</div><div><br></div><div>Here is the recipe for iptabl=
es=C2=A0</div><div><br></div><div><a href=3D"http://git.yoctoproject.org/cg=
it.cgi/poky/tree/meta/recipes-extended/iptables/iptables_1.6.2.bb?h=3Dsumo"=
>http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/recipes-extended/iptab=
les/iptables_1.6.2.bb?h=3Dsumo</a>=C2=A0</div><div><br></div><div>Has anyon=
e faced this issue?</div><div><br></div><div>Thanks</div><div><br></div><di=
v><br></div><div><br></div></div>

--000000000000b1e398059128dfa3--
