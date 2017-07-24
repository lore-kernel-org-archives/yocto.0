Return-Path: <nouri.iut@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8671E00BF3; Sun, 23 Jul 2017 22:18:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nouri.iut[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ED4FE00BE8
	for <yocto@yoctoproject.org>; Sun, 23 Jul 2017 22:18:54 -0700 (PDT)
Received: by mail-ua0-f182.google.com with SMTP id k43so33515758uaf.3
	for <yocto@yoctoproject.org>; Sun, 23 Jul 2017 22:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gYJO+rZ898yuYwBNAU/1PtUu6EfCyO7m7ykdOvMimsA=;
	b=C+JgIX9F2q7MEq/FBa67jRppESSxDxmbG6CBKiyVzrbpPs5G3f+3zxBVs4adRf2gRO
	AkLmu+Z+LMDIrK+r3X9AMNIEQ/+iTnYzFVgQsAByB0Sxt6wcxn0n79LxYHl34i3MkcIg
	TNklCMTBCzu/hX6ljCgf18JxZDU31p3jfym2vTqFIDg4HzgEdfw9vE6gPGb1UtmDsiLV
	PScOZTrzePspy1WYnJ51R4KRU2Wt4/2iTZSH2DWXdeV5gv2OboyPZUg/EjdVK7n7IuuK
	u0sPg4MpqvsnBNl4LW6K3v1jbI/N3fIr5Xafz2ZNfAgxuyaVqp7KPsiuviceb2wEwUOE
	2sEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gYJO+rZ898yuYwBNAU/1PtUu6EfCyO7m7ykdOvMimsA=;
	b=Fht1LaAOB4GQZYaMrqxZRUe1CKBpAq6IwNZd8duhi0m0p5TpXUDohSXUDP1H3DDZ9V
	I7gHBM2D87prnixo/kyuIZ6g7Z+p/Cy7x+iTBnauL8XgS2PGkXiNNWpOqku6e7h1/N7P
	+SHdzA/NN5aj9QM8HX5yuzGGxd0lPFjJ6q4c3Zkeul/2H7dq9zLQi/2S8RcWQ/YpNZ2R
	TY0squnEjAzlqQ6yRVs2tXgWoG7VVmO4r6hx5a2vS96mWSHMGo3jxZkrP5LicZZ2tOqK
	72BrC9v1jjojE4fiBdmOtgD+8w89DF1bph/edilLonRGXu7EGB3qP2pzzoGfjS9soYPl
	HIKA==
X-Gm-Message-State: AIVw110gTrvPFfjPVNYUpsqcGqVkje8jpxnTf/gHidmvtNeSn5lKthKT
	0cs8WQQek4rkM65TJjyN/2KtQXGOJg==
X-Received: by 10.159.35.39 with SMTP id 36mr9330560uae.211.1500873533312;
	Sun, 23 Jul 2017 22:18:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.85.210 with HTTP; Sun, 23 Jul 2017 22:18:52 -0700 (PDT)
From: Mohammad Nouri <nouri.iut@gmail.com>
Date: Mon, 24 Jul 2017 09:48:52 +0430
Message-ID: <CAKgkYTR0e5aX_eO-JTgfs4Q94YVmFd1HNAYZy60Mv4tiiFU4dQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 25 Jul 2017 11:19:05 -0700
Subject: How do I write a yocto/bitbake recipe to replace the default vsftpd.conf file with my own filE?
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
X-List-Received-Date: Mon, 24 Jul 2017 05:18:55 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I want to replace the default vsftpd.conf file with my own file!
My bitbake file looks following:

bbexample_1.0.bb
    DESCRIPTION = "Configuration and extra files for TX28"
    LICENSE = "CLOSED"
    LIC_FILES_CHKSUM = ""

    S = "${WORKDIR}"

    SRC_URI += " \
        file://ld.so.conf \
        file://vsftpd.conf \
        file://nginx/nginx.conf \
        file://init.d/myscript.sh"

    inherit allarch

    do_install () {
        install -d ${D}${sysconfdir}
        install -d ${D}${sysconfdir}/nginx
        install -d ${D}${sysconfdir}/init.d
        rm -f ${D}${sysconfdir}/ld.so.conf
        rm -f ${D}${sysconfdir}/vsftpd.conf
        install -m 0755 ${WORKDIR}/ld.so.conf ${D}${sysconfdir}
        install -m 0755 ${WORKDIR}/vsftpd.conf ${D}${sysconfdir}
        install -m 0755 ${WORKDIR}/nginx/nginx.conf ${D}${sysconfdir}/nginx/
        install -m 0755 ${WORKDIR}/init.d/myscript.sh ${D}${sysconfdir}/init.d/
    }

 But, the file could not be replaced!
 What is wrong?

