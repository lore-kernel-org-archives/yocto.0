Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66969E00B6F; Tue, 17 Jun 2014 06:36:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B9A8E00B5C
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 06:36:36 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id lf12so6469747vcb.32
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 06:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=WatjOE3jkh633TBCgE2KSfUMTgv4AgAd1QxjBVE1c+w=;
	b=I4JUJKUbY1VvY8Ync15u46TE40YrEhjOvfyRFsJllKWVK6NEiwH5aEj7Aq7umbgD+U
	zPrbskQhMW+vi0fEe5U7XOYsYIjSucwJtuHkAdcud22p0bTSGyK5x86CyAY9vR31LpJb
	CqO5MQlzqnYAKqycg26x64ki5VOR0J40skQLyqpn5I0chSGlQO/nsMHRVxoNwP2Gx4GT
	EwPSsIIFVoH9uUFr8P0dHE5KyTTgLE1Mtjxa4IHN8G0LHy6lN3G+3XCyqtZZWnj9eum6
	kL5D5wggT8oC6tddlCtmDwL2uNEIUv65Kw9ivGRmI7X3BFgyVAAeMYmwal7kBdNYE29c
	NRag==
X-Received: by 10.220.99.73 with SMTP id t9mr368731vcn.76.1403012196012; Tue,
	17 Jun 2014 06:36:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Tue, 17 Jun 2014 06:36:05 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 17 Jun 2014 09:36:05 -0400
Message-ID: <CAF_dkJB6mJjhtZHZmo6bX+q611zSyij4OvXg+Yxv5At-RpWdOA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [dora] x264: Update SRCREV to match commit in upstream git repo
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
X-List-Received-Date: Tue, 17 Jun 2014 13:36:46 -0000
Content-Type: text/plain; charset=UTF-8

It seems that 585324fee380109acd9986388f857f413a60b896 is no
longer there in git and it has been rewritten to
ffc3ad4945da69f3caa2b40e4eed715a9a8d9526

Change-Id: I9ffe8bd9bcef0d2dc5e6f6d3a6e4317bada8f4be
(From OE-Core rev: b193c7f251542aa76cb5a4d6dcb71d15b27005eb)

(From OE-Core rev: f2b20b169a462cf4c6e6f341b76add8a0f4d6e3f)

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-multimedia/x264/x264_git.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-multimedia/x264/x264_git.bb
b/meta/recipes-multimedia/x264/x264_git.bb
index 406df30..e40290f 100644
--- a/meta/recipes-multimedia/x264/x264_git.bb
+++ b/meta/recipes-multimedia/x264/x264_git.bb
@@ -11,7 +11,7 @@ SRC_URI = "git://git.videolan.org/x264.git \
            file://don-t-default-to-cortex-a9-with-neon.patch \
            "

-SRCREV = "585324fee380109acd9986388f857f413a60b896"
+SRCREV = "ffc3ad4945da69f3caa2b40e4eed715a9a8d9526"

 PV = "r2265+git${SRCPV}"

-- 
1.7.9.5

