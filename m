Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53399E00B8B; Fri, 30 Mar 2018 01:40:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48AD3E00529
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 01:40:24 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id s2so8838770qti.2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 01:40:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=an97Wg0PjjQE+w8mii6ekcF9tLAwifjjz08578WJA5E=;
	b=LSpgDZ4Q2fgENn7Xrip5O9p9c3eaaLQjhk6URYvJZiWLVP0SBxIY/IOvtBOatoHPU1
	W1+cr0Cmw9zX1GzWmEndP0obp3GMLWUEW2Kz1BJWqNPDbl7E7v831d2H1K8IAC/q85B1
	nIwooG0+wdI+7lue4uH+OBYDKCPWZVul3SoTC7OOqVNWWVi+ojs83fyHoWD4KM7EKWsc
	A+YzcUq7K40rGiN7rqEs0AJaUNtXXVHaM4eLdsaZfDl9+iDq14SusJ7P3S6qzgzjJQf9
	5LhQ13mFn/GBolk0dujl0pnsSgT7v4uoMea2A0JecSb0iYJSeToyCQXKzBuBzAFHsiiF
	jpKg==
X-Gm-Message-State: AElRT7GJBiRgG+6jBEhxZlqI0LdECIQMb1OrHzoZRbGBevPf6PsQ9uDm
	Zv8n0lJRUr78wklOqR8EdzTel2pZ
X-Google-Smtp-Source: AIpwx49+6pm1Efkn0KNDfutOPn6k4BVbNfkTZUZKPwoGTizV60tfeQvXE2YyQ+R7dNRW/8h5pxA4Kg==
X-Received: by 10.200.22.116 with SMTP id x49mr16515423qtk.326.1522399224223; 
	Fri, 30 Mar 2018 01:40:24 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	i68sm6028679qkd.25.2018.03.30.01.40.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Mar 2018 01:40:23 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2018 09:40:16 +0100
Message-Id: <20180330084019.18955-1-git@andred.net>
X-Mailer: git-send-email 2.16.2
MIME-Version: 1.0
Subject: [meta-java][PATCH 0/3] Java CA certificates updates
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
X-List-Received-Date: Fri, 30 Mar 2018 08:40:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

openjdk-8 and openjre-8 use a trustStore that has nothing to do with
the system trusted CA certificates as provided by the ca-certificates
package.

These patches fix both to use the system CA certificates instead.

The depend on oe-core patch
   ca-certificates: use relative symlinks from $ETCCERTSDIR
   http://lists.openembedded.org/pipermail/openembedded-core/2018-March/149359.html
to be merged first.


