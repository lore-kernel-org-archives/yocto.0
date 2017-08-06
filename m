Return-Path: <pvutov@imap.cc>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E64F6E00C3C; Sun,  6 Aug 2017 15:09:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.25 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pvutov[at]imap.cc)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 418 seconds by postgrey-1.32 at yocto-www;
	Sun, 06 Aug 2017 15:09:55 PDT
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EB26E00C37
	for <yocto@yoctoproject.org>; Sun,  6 Aug 2017 15:09:55 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id C628E20C72
	for <yocto@yoctoproject.org>; Sun,  6 Aug 2017 18:02:56 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
	by compute5.internal (MEProxy); Sun, 06 Aug 2017 18:02:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imap.cc; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=fm1; bh=I1dbycSNClqDx3ctIBFBczYISqevFagWEvpaLSIXW
	a8=; b=j5ru9r8R9Rz/ksUJkk+55d2z6JPSSsYHo+SXJ4KFqbVV5YC9gO8mv5Pte
	Kn58GTZ+OPfXUC/ehoz5qfeerEw9TjX3pZ9Ke1i0PDFLU1ml5cPlWNS5YksXMtZE
	p73uD2ixhDiz5b4LLv+eDC6DbDA1hMnrpNTCd029bQAqK/Ud8Z7UZSrLsvhV/Xc0
	5bfZFKfSH5l7b+v4FKHcn07YCyOI6HI5JPhM6xzpwWI0hhe8FUIqV9ah3WFeo4QV
	UUXB/beySW4OxF4NfgePfh+ndRKOAdWIwNF216IoaP9pukR/+HeCCVmm0RpPMNJA
	owGLh8b7nNx4eU7K8H93kYvuga8OQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=I1dbycSNClqDx3ctIB
	FBczYISqevFagWEvpaLSIXWa8=; b=f1rlJckrO0GLIZ9fyZXMLpzWC+UC7i5NuC
	oOFf1VCOGZQ2MwrE3HxD+vIDTLDxMIuDHD5Yk2QyEB6o0Nqn2NdSkiyWSVrfDqNy
	TVZrN9BjscUYUeFYgxrc+X/WjGgINPE+u61lqWdLNYLGhhYE4BV+hHRgrHhlkBja
	e5eqy9yoitvnhIK+/vhgbwO4wbUM52fvXYbKDoc3koog4I5Mj3iK6RO0sQU+AkdW
	l3zMsiTq5PEiWqYmi91reXzpYtPw1Uf27l2mC1KEOzXOmnx0Dxib0GqoiqpNgFoh
	OJP3x4pQ1omaL2xN3qQO7xVRT2fJ/OtbEaScFEx5rtkodCalnnxw==
X-ME-Sender: <xms:EJKHWVoSkiAqdu7lMIe2HwAUPxaaQWOaxO6-bx1G_H3WtRKIDqr0Qw>
X-Sasl-enc: iyM3D818LqRQvS5q5930RUvxV+ImySioDKPn29LkuQxB 1502056976
Received: from [141.3.200.101] (openvpn-cl-200-101.scc.kit.edu [141.3.200.101])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5CBBA24580
	for <yocto@yoctoproject.org>; Sun,  6 Aug 2017 18:02:56 -0400 (EDT)
To: yocto@yoctoproject.org
From: Peter Vutov <pvutov@imap.cc>
Message-ID: <2a5cd87f-984e-bb64-4861-8bab69461c2c@imap.cc>
Date: Mon, 7 Aug 2017 00:02:59 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: Conflicting recipes / How to set SSTATE_DUPWHITELIST?
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
X-List-Received-Date: Sun, 06 Aug 2017 22:09:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Performing pretty much a default build of petalinux 2016.4, Yocto gives
me an error because two recipes are creating the same README file. The
conflict is only in the README file, and the build goes fine if I delete
the file after the first recipe creates it but before the second tries
to replace it (but it is bothersome doing this every time).

Since the conflict is only in a README file, the appropriate fix to me
seems to add it to SSTATE_DUPWHITELIST. How would I do this? I've never
used yocto and couldn't ctrl+f information in the manual on where such
options are set. Would it go in the main *.bb file?

Build log: https://pastebin.com/KrzQvW7d



