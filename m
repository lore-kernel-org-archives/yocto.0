Return-Path: <csanchezdll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F946E00AEB; Thu, 15 Oct 2015 09:03:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (csanchezdll[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE977E00A49
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 09:03:14 -0700 (PDT)
Received: by lfeh64 with SMTP id h64so33358320lfe.3
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 09:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=ayZxHHYVk0TCO0/Sr6fk4aVd3hQobX9VNyFsF4R5CXI=;
	b=XZqKtnrJFOlpcOgVJDMk5jwrgrY1Xgds3vjokmwE6gfP5gXjeEBBAO1RZeIhQlTmKR
	rvN0L5hy2QShcaCan6JPdawXz6opJEMK9zzzolOq7ZTERpSDCHWdEFEd61TotZWisCok
	oa02BWYr+QFqIJ+shIMzMlAJ9C1l5Fw3LLm2MgWFr//pVTCrQObyKjARbT7EJ7EQkmFV
	1UozqN0E2indeY565bSruBnvLCsLhHmEsRRg3RNU2BkKK9mOwIP1Q93HQXuEetI667O3
	8sgkIIgNMpUdw9fPEnNgq/yH4Y0ycGwvH/7p5alU0QS7oO1WkdbzjaDpnd8VGoBLSToc
	lr6g==
X-Received: by 10.180.189.12 with SMTP id ge12mr21981017wic.73.1444924992259; 
	Thu, 15 Oct 2015 09:03:12 -0700 (PDT)
Received: from boole (galileo.kdpof.com. [80.38.102.19])
	by smtp.gmail.com with ESMTPSA id
	x9sm17276412wjf.44.2015.10.15.09.03.10 for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=RC4-SHA bits=128/128);
	Thu, 15 Oct 2015 09:03:11 -0700 (PDT)
From: csanchezdll@gmail.com (Carlos =?utf-8?Q?S=C3=A1nchez?= de La Lama)
To: yocto@yoctoproject.org
Date: Thu, 15 Oct 2015 18:03:13 +0200
Message-ID: <7tvba8jf0e.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.3 (gnu/linux)
MIME-Version: 1.0
Subject: Package inclusion
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
X-List-Received-Date: Thu, 15 Oct 2015 16:03:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,

I have some doubts on how package inclusion in images is determined. For
example, when building core-image-base, I would say that both

kernel-module-uvesafb
kernel-module-input

are recommended (through RRECOMENDS in packagegroup-base).

However, -uvesafb makes it to the final image, whereas -input does not.
I double-checked on the running system under QEMU *and* reading the
image manifest at
tmp/deploy/images/qemux86/core-image-base-qemux86.manifest

I must be missing something. Can someone give me a pointer?

Thanks a lot, BR

Carlos

--=20
-Debemos anhelar no s=C3=B3lo la verdad, sino tambi=C3=A9n la virtud -sente=
nci=C3=B3
Pit=C3=A1goras-. El conocimiento que se obtiene mediante oro, y no a trav=
=C3=A9s de un
merecimiento virtuoso, puede apartarnos del camino recto y ser nefasto para
nosotros y para nuestro entorno.

Marcos Chicot, "El asesinato de Pit=C3=A1goras" (2013)

