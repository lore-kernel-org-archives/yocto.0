Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03264E009D6; Fri, 19 Jun 2015 10:04:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F8E5E00957
	for <yocto@yoctoproject.org>; Fri, 19 Jun 2015 10:04:26 -0700 (PDT)
Received: by ykar6 with SMTP id r6so96586889yka.2
	for <yocto@yoctoproject.org>; Fri, 19 Jun 2015 10:04:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=HkmXQTwgmU6+P+uO7/Mu2WkZQwzsHuqlkHsjemwt6U4=;
	b=C/wF4J1o3U+BV5+qG+htSKCNCb4q2wYi9MvJJrDwWzaP+xRKb7L+DDS9NZ3D+Y+lQa
	Om8dDPmdaCZ6iGkEGNNBKSVVff7QMhHhWdjcZS8G4bYkt/uWdW6W9EMAlZMf1IG9UgfG
	BEqw5FASZ7D1EiDBuI7o6WLMVAel4rk/44ud6lj4mAV1tUAgwJnfgQPZ/r1NpfDGeyIG
	2yzAiLEQSWFUZoc54hiE7jBtKEHmrEBNjjeIqE2y5PVZCxQOyeUvCUrmt/8RLjDnw/Fx
	oacd1w2U/No+YMKizvo4H7UrHxynMC5eIawwLoaLJxh3eZ6AA4yB4opb5SS7+G7+yEbM
	PgJQ==
X-Gm-Message-State: ALoCoQkWZQGgEHzBup2csWr4sicBLuIhi0tHc04++LjRvTuGx+XaArKmKiEEqUaIGZMratVAoQYg
MIME-Version: 1.0
X-Received: by 10.52.32.34 with SMTP id f2mr13452322vdi.11.1434733465676; Fri,
	19 Jun 2015 10:04:25 -0700 (PDT)
Received: by 10.52.233.105 with HTTP; Fri, 19 Jun 2015 10:04:25 -0700 (PDT)
Date: Fri, 19 Jun 2015 18:04:25 +0100
Message-ID: <CAPhnLPCyL93UoDMwoKtcoMu1gUhh9Rkk_8n8+eKF7nFFbCEB5w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] meta-intel 3.1 with Cherry Hill (Braswell) support for Yocto Project "fido" 1.8 now available
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
X-List-Received-Date: Fri, 19 Jun 2015 17:04:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

All,

The meta-intel 3.1 layer for the Yocto Projects 1.8 "fido" release is
now available for download. This update includes and supports the
Intel=C2=AE Cherry Hill (Braswell) board support package.

---
Elizabeth Flanagan
Intel Corp.

meta-intel
-----------------------
repo: git://git.yoctoproject.org/meta-intel
branch: fido
tag: 3.1-fido-1.8
hash: 28e8017ab8ba4f4d9e3fe5a5346bf31b3334bbbb
download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/meta-i=
ntel-3.1-fido-1.8.tar.bz2
md5sum: 09c78d0d76db223adc4bd0617180453c

BSP downloads
-----------------------
Intel=C2=AE Cherry Hill BSP (Braswell) (intel-corei7-64):
https://www.yoctoproject.org/downloads/bsps/fido18/intel-cherry-hill
Downloads: http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/machi=
nes/intel-corei7-64-3.1/intel-corei7-64-3.1-fido-1.8.tar.bz2
md5sums: b959c199cdd4658730227e1611598ae9

