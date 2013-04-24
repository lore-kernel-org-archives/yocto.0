Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f52.google.com (mail-oa0-f52.google.com
	[209.85.219.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9E41E01510
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 05:01:07 -0700 (PDT)
Received: by mail-oa0-f52.google.com with SMTP id n12so1527322oag.39
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 05:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=E/HpaB395M9Z1srRvK3OSlCc3fdpIf67lQe8Bwh+WDs=;
	b=F22T3vm7lxuD2y3WBRJl//aPbORx6e+Tcu+M6EJDySjhigLpG8X7BM6zTBhMKZQndJ
	bJI3hPUmZ4Zalomy2v5LLJUSxIZn6rspx7BNXaNRajo6I+oT3NhdA2Fh5R1/23yPEnur
	J0CvteKHm9bkbNwWRJkV46YrPB9WdQPcAf8DifR24RT7IeCScOWE5y6bSCLk7se8InSA
	ANmwtpzZLB6PtpFam6+Fwb77hpF3Lqr9ClytSiPG81lUVBuxbpTrqc18JBaq23Z6qiUA
	J9HuxDPbGkD/o8q6hmWs6CuKi9juL82h6bjZopR2EEOueIt0Q69weUWlxD9I+ZcPmDfE
	ROFg==
MIME-Version: 1.0
X-Received: by 10.182.98.228 with SMTP id el4mr17954693obb.31.1366804866942;
	Wed, 24 Apr 2013 05:01:06 -0700 (PDT)
Received: by 10.182.204.70 with HTTP; Wed, 24 Apr 2013 05:01:06 -0700 (PDT)
Received: by 10.182.204.70 with HTTP; Wed, 24 Apr 2013 05:01:06 -0700 (PDT)
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE1B7095E9@POCITMSEXMB05.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1B7095E9@POCITMSEXMB05.LntUniverse.com>
Date: Wed, 24 Apr 2013 17:31:06 +0530
Message-ID: <CA+Z6RkV8n+YT7E-pFsMSVo1j8KZ6719O-3bY+RA+6rGg0xUXWQ@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Bitbake -c clean core-image-minimal
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
X-List-Received-Date: Wed, 24 Apr 2013 12:01:07 -0000
Content-Type: multipart/alternative; boundary=047d7b2e42b8924f3d04db1a0eaa

--047d7b2e42b8924f3d04db1a0eaa
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

I am using poky-danny for development. I am facing problem at the time of
cleaning rootfs image. If I am issuing =96

=93bitbake =96c clean  core-image-minimal=94

command , it is not cleaning deploy directory. I can still see images
existing in =93tmp/deploy/images/=94. But the same is working fine for kern=
el
and boot loader.

=93bitbake =96c clean u-boot=94 removes images from deploy directory also.

Please suggest what changes are required to clean rootfs image completely
from deploy directory.

Thanks and Regards
Navani Kamal Srivastava

--047d7b2e42b8924f3d04db1a0eaa
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>I am using poky-danny for development. I am facing problem at the time o=
f cleaning rootfs image. If I am issuing =96</p>
<p>=93bitbake =96c clean =A0core-image-minimal=94</p>
<p>command , it is not cleaning deploy directory. I can still see images ex=
isting in =93tmp/deploy/images/=94. But the same is working fine for kernel=
 and boot loader.</p>
<p>=93bitbake =96c clean u-boot=94 removes images from deploy directory als=
o.</p>
<p>Please suggest what changes are required to clean rootfs image completel=
y from deploy directory.</p>
<p>Thanks and Regards<br>
Navani Kamal Srivastava<br>
</p>

--047d7b2e42b8924f3d04db1a0eaa--
