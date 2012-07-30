Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40A1FE00280
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 09:55:57 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so5744228yhf.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 09:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=IIbrwjsQjEVdpaEH0b9/jtqcKnuh8pi3rvqR7QF/Ocs=;
	b=U+mNvAKtTeh9OtHhH5QCFI5JvIbVwakwCoaG1xUH3FEdTYSjLFpQ0qSbRB1lbj0KLy
	vyoYJkSoHoW1Vqqx1XdH5JN5oQKjnOoFWpjbyfiJUkenJYgAbV+WX2IwrOlCLSQfSe4P
	cyIO8FgHTer76DpC1lx9gbB3cpYokg52yi7D1GQcUVbc2r4drW9o/P1adOM2ZyRIAg5b
	dQev8bIhciT3MAiH9H8Slul0KVR4FDH6ODxdN3fgn4ROLlCQ0imK0x5ksFgOX23MAxPN
	k+ACAYhiU6uz42GONIJWQ4PHgVxa3dq+9MFIzh1Wj5hd4A58UBpL9J877MIBUYaQ9MpQ
	RQQA==
Received: by 10.66.83.6 with SMTP id m6mr25998548pay.29.1343667356443;
	Mon, 30 Jul 2012 09:55:56 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id wh7sm4629617pbc.33.2012.07.30.09.55.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Jul 2012 09:55:55 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <20120730164845.GM3261@jama.jama.net>
Date: Mon, 30 Jul 2012 20:55:50 +0400
Message-Id: <E9F44A50-97D0-4CBE-A9AF-36084B1E263C@gmail.com>
References: <2C433563-B7CA-458C-B27F-68E3D5D2408C@gmail.com>
	<20120730164845.GM3261@jama.jama.net>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: ERROR: Task 7 (/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, do_populate_sdk) failed with exit code '1'
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jul 2012 16:55:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Martin,

On Jul 30, 2012, at 8:48 PM, Martin Jansa wrote:

> Attach log.do_populate_sdk.25279

Here is the log

DEBUG: Executing python function do_populate_sdk
DEBUG: Executing shell function populate_sdk_image
Generating solve db for /tool/yocto/poky/build/tmp/deploy/rpm/ppc440...
   total:               1      0.000000 MB     15.378123 secs
   fingerprint:      7383      0.071586 MB      0.795094 secs
   install:          2461      0.000000 MB      3.924927 secs
   digest:           4922     17.539986 MB      0.071979 secs
   signature:        4922      0.000000 MB      5.635336 secs
   dbadd:            2461      0.000000 MB      3.867947 secs
   dbget:           24358      0.000000 MB      0.044111 secs
   dbput:            2461     11.232764 MB      2.458966 secs
   readhdr:         24611     22.422706 MB      2.833783 secs
   hdrload:         15847     48.317258 MB      0.063320 secs
   hdrget:         451910      0.000000 MB      0.314565 secs
Generating solve db for =
/tool/yocto/poky/build/tmp/deploy/rpm/x86_64-nativesdk...
   total:               1      0.000000 MB      4.420427 secs
   fingerprint:      1698      0.056604 MB      0.353290 secs
   install:           566      0.000000 MB      1.192211 secs
   digest:           1132      9.261982 MB      0.035940 secs
   signature:        1132      0.000000 MB      1.325190 secs
   dbadd:             566      0.000000 MB      1.176382 secs
   dbget:           21453      0.000000 MB      0.022157 secs
   dbput:             566      5.223256 MB      0.825451 secs
   readhdr:          5661     10.385022 MB      0.950751 secs
   hdrload:          3049     16.903506 MB      0.013520 secs
   hdrget:         107862      0.000000 MB      0.088460 secs
Processing task-core-standalone-sdk-target-dbg...
Processing task-core-standalone-sdk-target...
=
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/run.populate_sdk_image.25279: line 675: rpmresolve: command not found
DEBUG: Python function do_populate_sdk finished
ERROR: Function failed: populate_sdk_image (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/te=
mp/log.do_populate_sdk.25279 for further information)

Best regards,

Elvis Dowson=

