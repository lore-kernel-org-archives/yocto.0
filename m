Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08667E01535
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 19:16:50 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id w15so956010vbb.9
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 19:16:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=gbdxRvssIcXlF+3KcWgYsvhzcz2F0n2b4Hjiirdcna0=;
	b=TLu1/PCyJ2nJHEWbF1Rl4svyjbb3OqohT6g3uYdIqPQap3S7TQRqazhRvs6K1GSZfK
	irlkBspI9uYquAxSYA02QWfpHaVxBtecM5wJi4BUNsF0FSAPSlrjDklpppr1SPNQJ5hm
	EpSnEJSs+9zVCfug0WqxK/SvhoxbqSg2M71EnDM737M9mFkL6n0UUIk8k7yM/JjbHoQF
	q4z5h1tW4HYcyYLbqzIsxrimzhFKr/BpN8xuSgBzTN958wIf1Gd5XqbCVSjJj5ZUilNE
	q8Ir6XbfJ1EylBSK5jMIIoOeYBnFgejH00HJ4jdqiQ5jWQVzQ9MOTjycBSSJ9MPixxnF
	zMiA==
MIME-Version: 1.0
X-Received: by 10.58.205.179 with SMTP id lh19mr3297444vec.7.1365041810131;
	Wed, 03 Apr 2013 19:16:50 -0700 (PDT)
Received: by 10.52.230.226 with HTTP; Wed, 3 Apr 2013 19:16:49 -0700 (PDT)
Date: Wed, 3 Apr 2013 19:16:49 -0700
Message-ID: <CAPhnLPCtJRaK1BZ7-dd8r2AmZ4TZ69QuFCzkMXG4VofV-p+SJA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>
X-Gm-Message-State: ALoCoQlYuVT3SEaedpeLVJN+CCFgU90xJGDahmVoFU7QpLgOeYGiaJ1IVOSmMA75qVILs4TaYV7x
Cc: SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
Subject: Weekly build availablity
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
X-List-Received-Date: Thu, 04 Apr 2013 02:16:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build is built and available at:

http://autobuilder.yoctoproject.org/pub/nightly/20130403-2

Known issues:
Due to Bug 4186 - bitbake package-index fails over NFS, the adt-ipk
package index was created and deployed by hand. I have a temp fix in
the autobuilder to work around this issue.

nightly-multilib failed due to lib64 issues. This is a known issue and
lib64 images are new targets.

nightly-fsl-arm* failed

poky-tiny failed

meta-intel 3de2325133eb581c5c8d66133821ea5a801cf8ae
meta-qt3 4c27cce6688aa39852f3cba5e7b80ec279019605
poky fe336b149552b1f4f24d979c40302653298b98cc
bitbake b5b4b6e4fefa6a164a49b291a0993b1ff63947f4
oecore ca36be708e54c0c86535bc8512295c76c48f6cf5
meta-fsl-ppc 6e861617d3f61bcddcc944835f331e387e12db46
meta-fsl-arm 666485e1835aaa34518464265980acfee250783d

--
Elizabeth Flanagan
Yocto Project
Build and Release

