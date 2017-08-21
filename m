Return-Path: <oliver.staebler@bytesatwork.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00B9DE00C62; Mon, 21 Aug 2017 06:01:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 409 seconds by postgrey-1.32 at yocto-www;
	Mon, 21 Aug 2017 06:01:49 PDT
Received: from bytesatwork.ch (bytesatwork.ch [91.135.72.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C5C7E00B8B
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 06:01:49 -0700 (PDT)
Received: from stanley.bytesatwork.ch (162.40.150.83.ftth.as8758.net
	[83.150.40.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested) (Authenticated sender: oliver)
	by bytesatwork.ch (Postfix) with ESMTPSA id F1059101C0452;
	Mon, 21 Aug 2017 14:54:49 +0200 (CEST)
From: =?UTF-8?q?Oliver=20St=C3=A4bler?= <oliver.staebler@bytesatwork.ch>
To: yocto@yoctoproject.org
Date: Mon, 21 Aug 2017 14:55:17 +0200
Message-Id: <20170821125518.29160-1-oliver.staebler@bytesatwork.ch>
X-Mailer: git-send-email 2.13.5
MIME-Version: 1.0
Cc: =?UTF-8?q?Oliver=20St=C3=A4bler?= <oliver.staebler@bytesatwork.ch>
Subject: [RFC][PATCH 0/1] kernel.bbclass overwrites custom variables
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
X-List-Received-Date: Mon, 21 Aug 2017 13:01:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi

It seems that it's not possible to set a custom pre/postinst function for a
kernel recipe.
kernel.bbclass overwrites the necessary variables without checking its content.

My patch does fix this.
However, I'm not sure how to handle similar variables which get overwritten by
kernel.bbclass, therefore a RFC.

What about FILES_kernel_image?
A custom recipe should be able to add other files into the kernel package,
right?

What about PKG_kernel_image?
I'm not really sure what this variable is used for.

Oliver Stäbler (1):
  kernel.bbclass: Do not overwrite pre/postinst

 meta/classes/kernel.bbclass | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

-- 
2.13.5


