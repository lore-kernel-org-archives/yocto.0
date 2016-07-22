Return-Path: <mont3z.claro5@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69ABBE00F53; Fri, 22 Jul 2016 07:08:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mont3z.claro5[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1816E00F29
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 07:08:44 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id j12so97121804ywb.2
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 07:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=c3op0hUjH8Zimy7TxgbygLYnPvNzr0Xx8NjQH+WGdMg=;
	b=HRj1f/0HbdocOYtBAsYmZxA5qKAiunvSCcgb+zK+wOCEsA7hHSon8wQh0qs41zX0lv
	hYMcJBWTvZl0EX1MNUUUm40oOoPa/A9OA4Gpf4bbQG+79E5rsg8+doS6+V1g9Cf3VY9y
	YQEsbNeTU0Kvv8Bjy8CVLoBam4PJHRLHDn4/vX0btupGqiyly7MX/2GDGtBxO3oE4gcY
	I+9zldFwx4SxazPD0jPv9owuFhurUB2w7z120m+IpjIDstb/8A10ggZx3Srvj3gNv4pP
	M6e/bN10Sgkyve96iSZLM8dErvSl2KPjJJSwguPBGU0lrjZ8OmaJ8LwE9SxRNFE9Xu8V
	YhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=c3op0hUjH8Zimy7TxgbygLYnPvNzr0Xx8NjQH+WGdMg=;
	b=NFL2C+lpLdN2Gehp6iD8MNg0i7cGfFB3VgZ4RbIkLOJdTaV43AN4XC7msZ0kFUknqj
	ZkpO1PcTH7TTt57NdakQgE01Zj2wJGUIoiToe0C0VqWKRirUPTrHDrkzDwJnulrylHBc
	I5DRb0Xw4oKtBqyLBF0UBO8HmVwmFLPYTHhwrALyYa78HErt9pE/HuoKyyAdm6cJsmEG
	0IfnYuCS/wyusqZtpxj6WfUQk8W4tXCqit+ptUTE8Pui4Dmwo21hCoaBE5p3T8t2VgWC
	1DxyMTff72wj2yI6hDuuNJQbm5BBaegLwurVfr4OoZX5lqbvdEpvhIcYUcOkii/E86F/
	HcZA==
X-Gm-Message-State: AEkoouuyfzeV42jRj3S3DI1YiSg6sGj01Buqr0IBmM6TtNJUfBzXXPdUyUDPY9owZVKVl8/afaJrve9gMaFqIw==
X-Received: by 10.129.52.149 with SMTP id b143mr3423166ywa.8.1469196523470;
	Fri, 22 Jul 2016 07:08:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.132.150 with HTTP; Fri, 22 Jul 2016 07:08:43 -0700 (PDT)
From: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Fri, 22 Jul 2016 07:08:43 -0700
Message-ID: <CAJ70iBS6_vTOns1n+ner363dU5YycEAun_z1-9Pr0nSEOXeuoQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Image partition with boot0 blob
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
X-List-Received-Date: Fri, 22 Jul 2016 14:08:45 -0000
Content-Type: text/plain; charset=UTF-8

Hello all,

I'm trying to create an image with the following partition:

boot0_position=8      # KiB
uboot_position=19096  # KiB

boot0 is a blob and it loads u_boot. Please can some one help me on
this matter?

Thanks a lot,
Montez

