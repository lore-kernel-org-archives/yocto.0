Return-Path: <insop.song@gmail.com>
Received: from mail-qc0-f175.google.com (mail-qc0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7CC1E00429;
	Fri, 15 Mar 2013 04:51:31 -0700 (PDT)
Received: by mail-qc0-f175.google.com with SMTP id j3so1495901qcs.34
	for <multiple recipients>; Fri, 15 Mar 2013 04:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=U6qRjigpJFYsI3DvFWf/XeY2lLa75Fvya/ovVM156p8=;
	b=nx0NyChNUsW3pWlSP/hGZTme0rvCGf2Wbi+zHtGIGf5+4f24Bmpz8FvHECpEnOsaah
	tq9SS9iKbExqecdPx3GlTfUVr4ywsrhd3PWNvrzzHhwp1yIPVwdX1bC/xXNP+TjT/CrH
	9q3nAcxo9krSSJ1uyPVKEYz6lqHzOnAl/2dsoMzZCGAjGI6IzDkxLg2fUhrek+7/z0wA
	io99N9PL1/oPYksm7H9PFwqAVnw6LYVt4T7iZvQvn5fBzv7xS1QOsSDUGy67qUo+tvBv
	3193bKlkmaFPLywBGQLrjsc5O1j015oNoGjA5PfrYPJOu2w7hYSqVdtaoasSfMZeIb3W
	9Dyw==
X-Received: by 10.229.69.24 with SMTP id x24mr1022216qci.16.1363348291036;
	Fri, 15 Mar 2013 04:51:31 -0700 (PDT)
Received: from sputnik.gateway.2wire.net
	(76-218-13-253.lightspeed.sntcca.sbcglobal.net. [76.218.13.253])
	by mx.google.com with ESMTPS id ku2sm2476279qeb.4.2013.03.15.04.51.27
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 15 Mar 2013 04:51:29 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
To: insop.song@gmail.com, bruce.ashfield@gmail.com, dvhart@linux.intel.com,
	linux-yocto@yoctoproject.org, yocto@yoctoproject.org
Date: Fri, 15 Mar 2013 04:47:16 -0700
Message-Id: <cover.1363347615.git.insop.song@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <insop.song@gmail.com>
References: <insop.song@gmail.com>
Subject: [PATCH 0/1] add scheedtool-dl for testing sched_deadline
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
X-List-Received-Date: Fri, 15 Mar 2013 11:51:32 -0000

add scheedtool-dl for testing sched_deadline

Insop Song (1):
  add scheedtool-dl for testing sched_deadline     use jiri's github as
    a main repo

 recipes-extended/images/core-image-realtime.bb |    1 +
 recipes-tools/schedtool-dl/schedtool-dl.bb     |   23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 recipes-tools/schedtool-dl/schedtool-dl.bb

-- 
1.7.9.5


