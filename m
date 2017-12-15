Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4460E00DB5; Fri, 15 Dec 2017 00:16:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D87AE00AD7
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 00:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1513325812; x=1544861812;
	h=to:from:subject:message-id:date:mime-version:
	content-transfer-encoding;
	bh=fr2+K2i8UsXOYke6S2NTJWtl60moyYsVn7Opw/yNoQQ=;
	b=UL87hHQYVrvGO42jsf/cereUcXzOkfQJdNqqcZ7KvJvLi/D9ZBUwYhaV
	h803/TOPj5WzmgygHYeZxVlvpD/iCWbIAw6z4E1WoVR3b24+BEfwxTtea
	ypXXbafZxXVirIwx7B4MjzuFh3i0qJzEZxv3VXkeVovhaU8hMa6AJcJO4 8=;
X-IronPort-AV: E=Sophos;i="5.45,404,1508796000"; d="scan'208,223";a="954607"
Received: from nvc2354.nedap.local (HELO [10.2.16.204]) ([10.2.16.204])
	by smtp4.nedap.com with ESMTP; 15 Dec 2017 09:16:50 +0100
To: Yocto discussion list <yocto@yoctoproject.org>
From: Jaap de Jong <jaap.dejong@nedap.com>
Message-ID: <9fd139ef-c89b-7340-80b7-1d3c02ae9b62@nedap.com>
Date: Fri, 15 Dec 2017 09:16:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: [poky][PATCH] kernel.bbclass: Fix kernel size checking
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
X-List-Received-Date: Fri, 15 Dec 2017 08:16:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

 From 4d542a5a37210b4fc8c8e894554a75ba6b9be0af Mon Sep 17 00:00:00 2001
From: Jaap de Jong <jaap.dejong@nedap.com>
Date: Fri, 15 Dec 2017 08:58:09 +0100
Subject: [poky][PATCH] kernel.bbclass: Fix kernel size checking
To: yocto@yoctoproject.org

---
  meta/classes/kernel.bbclass | 4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 7ef4f47..f41c3e4 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -601,12 +601,12 @@ do_sizecheck() {
  	if [ ! -z "${KERNEL_IMAGE_MAXSIZE}" ]; then
  		invalid=`echo ${KERNEL_IMAGE_MAXSIZE} | sed 's/[0-9]//g'`
  		if [ -n "$invalid" ]; then
-			die "Invalid KERNEL_IMAGE_MAXSIZE: ${KERNEL_IMAGE_MAXSIZE}, should 
be an integerx (The unit is Kbytes)"
+			die "Invalid KERNEL_IMAGE_MAXSIZE: ${KERNEL_IMAGE_MAXSIZE}, should 
be an integer (The unit is Kbytes)"
  		fi
  		for type in ${KERNEL_IMAGETYPES} ; do
  			size=`du -ks ${B}/${KERNEL_OUTPUT_DIR}/$type | awk '{print $1}'`
  			if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; then
-				warn "This kernel $type (size=$size(K) > 
${KERNEL_IMAGE_MAXSIZE}(K)) is too big for your device. Please reduce 
the size of the kernel by making more of it modular."
+				die "This kernel $type (size=$size(K) > ${KERNEL_IMAGE_MAXSIZE}(K)) 
is too big for your device. Please reduce the size of the kernel by 
making more of it modular."
  			fi
  		done
  	fi
-- 
2.7.4


