Return-Path: <enrico.scholz@sigma-chemnitz.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D8DBE00C99; Mon, 26 Nov 2018 03:27:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [193.158.56.148 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1095 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Nov 2018 03:26:50 PST
Received: from mail.cvg.de (mail.cvg.de [193.158.56.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BB2BE00950
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 03:26:50 -0800 (PST)
Received: from mail-mta-0.intern.sigma-chemnitz.de
	(mail-mta-0.intern.sigma-chemnitz.de [192.168.12.76])
	by mailout-1.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
	wAQB8Xlb021429
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK)
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 12:08:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2012061000; t=1543230514;
	bh=Vox/x2Ohf/Jc4ptr2KVHwhFL2wqjjidlBr48k4acNFQ=;
	h=From:To:Subject:Date;
	b=RBCanpXE8S9/WpFaCABm5aypfoSPtsc/3GqB+4bSh3+qwNS478LvmOO1eAvrE5hwR
	bDlRc84EZ5XJXrnjuISESBp6+ceoipDVUto2SvuPtJfSLUVS1tVds03KGUXUCrgWJy
	zbCeoYAV1HPCUML44MjKyrh/vv+q1Jz3no5y6l+Q=
Received: from reddoxx.intern.sigma-chemnitz.de
	(reddoxx.intern.sigma-chemnitz.de [192.168.0.193])
	by mail-mta-0.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
	wAQB8PSN019865
	for <yocto@yoctoproject.org> from enrico.scholz@sigma-chemnitz.de;
	Mon, 26 Nov 2018 12:08:26 +0100
Received: from mail-msa-0.intern.sigma-chemnitz.de ( [192.168.12.77]) by
	reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 632B8713222;
	Mon, 26 Nov 2018 12:08:53 +0100
Received: from ensc-virt.intern.sigma-chemnitz.de
	(ensc-virt.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-0.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
	wAQB8NYh019862
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NO) for <yocto@yoctoproject.org> from ensc@sigma-chemnitz.de;
	Mon, 26 Nov 2018 12:08:23 +0100
Received: from ensc by ensc-virt.intern.sigma-chemnitz.de with local (Exim
	4.91) (envelope-from <ensc@sigma-chemnitz.de>) id 1gREkZ-00F7dp-Ln
	for yocto@yoctoproject.org; Mon, 26 Nov 2018 12:08:23 +0100
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: yocto@yoctoproject.org
Date: Mon, 26 Nov 2018 12:08:23 +0100
Message-ID: <ly1s78gkpk.fsf@ensc-virt.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Sender: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Subject: [meta-selinux] Request for 'thud' branch
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
X-List-Received-Date: Mon, 26 Nov 2018 11:27:01 -0000
Content-Type: text/plain

Hello,

I would like to provide some content[1] for meta-selinux[2], but all
this is based/tested on 'thud' only.  Would it be possible to create a
'thud' branch and update the corresponding LAYERSERIES_COMPAT_selinux?



Thanks
Enrico

Footnotes: 
[1]  https://gitlab.com/ensc-groups/bpi-router/de.ensc.bpi-router/blob/master/meta-core/classes/selinux-policy.bbclass
     https://gitlab.com/ensc-groups/bpi-router/de.ensc.bpi-router/tree/master/meta-core/recipes-selinux

[2]  https://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/

