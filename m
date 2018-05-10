Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55571E00E23; Thu, 10 May 2018 04:58:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30E21E009F8
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 04:58:11 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id y189-v6so3886910wmc.3
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 04:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=TbwIew1J8VjOmJd46uHe8UoDXAhiM0Bw+RjBVmAhP3Q=;
	b=kpijutvYVK07UeTCqup5Bww5Winv2Cvk3shIh2OkxKkKCOI68UM1Y096XJ9+RudL9z
	KIeV64WO73g7lYI2i7MWiPYp/wI56LxbmrvI8zYXUu++Be/1wnhYslp7dd44pckpnSD4
	psNr21sex3PwWrlbYCmuJxxujydxJHNUcIYnq3Tg0N11TmrZ9jZxi0QMau9n2hYgXJau
	yG6bGcLqzW8qWdZ9+OUS+cGstNqI37tVOQdmcQ4aakrpdrCr1Rm4BVzxzGHuysfjn64/
	27tLCeWUfHDw7Bd0a4luLFaHjUQQgLrYrS7Gi5tPc1Oo2ciPtKHU/3ouv650aCQFbn7r
	0fKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=TbwIew1J8VjOmJd46uHe8UoDXAhiM0Bw+RjBVmAhP3Q=;
	b=U1FoE7QtmDG36mTgGeINLjtG74VDLdrxQsHLHiMHeKjlZZW5NyM9xE8CKddW9nQV8C
	g8c5vZv0d4MxXXz4M/Rdbz5UM3H40X8p/Q8h6tUfu/MRYaui5KER3Xxf/C1KAerzn1xa
	XYnEitO7L40i7xnVs7F3ZtX8LSe2ASIgLrMj0owqpb9Ts6mvCe35fi95GHaVVXAY5TaL
	MpB7VxIibzq5a/sVEqUT5rjuzXBqfl3TjgopovkTgDQCRp9kmana3T3aH6QqnQaB2jUT
	yMbj5jLorHFj3F7RVL8ZcRb2d64W+gGuOeJq0HyVWD1J83zn4SbsL3kvArsDK8ChBPBe
	mqbQ==
X-Gm-Message-State: ALKqPwcRuoYRUbVSuFo5kbJUxr20Iql6r+0blz2lZkMljCro8g7SUbpJ
	cjtkI3T8v6Zoviamc/IxEf2Y75hA
X-Google-Smtp-Source: AB8JxZobGayFfD2ctQ3MOseji3Z5f7TjJJQdm00BQLhD3epRJMATJWgf8V4NkMZL9qDW5rXgAXQ2Fg==
X-Received: by 2002:a1c:824b:: with SMTP id
	e72-v6mr1071606wmd.64.1525953490608; 
	Thu, 10 May 2018 04:58:10 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	q2-v6sm869400wrm.26.2018.05.10.04.58.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 May 2018 04:58:09 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 10 May 2018 12:58:02 +0100
Message-Id: <20180510115802.28367-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Cc: seebs@seebs.net
Subject: [PATCH][pseudo] makewrappers: use correct except syntax
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
X-List-Received-Date: Thu, 10 May 2018 11:58:13 -0000

except Exception(e): causes a NameError if an exception is caught.
---
 makewrappers | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/makewrappers b/makewrappers
index fa514ba..1927f75 100755
--- a/makewrappers
+++ b/makewrappers
@@ -578,7 +578,7 @@ def process_wrapfuncs(port):
             func.directory = directory
             funcs[func.name] = func
             sys.stdout.write(".")
-        except Exception(e):
+        except Exception as e:
             print("Parsing failed:", e)
             exit(1)
     funclist.close()
-- 
2.11.0


