Return-Path: <andrew.wilcox@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E1EEE00C93; Tue,  2 Apr 2019 10:43:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (andrew.wilcox[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE651E00C46
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 10:43:47 -0700 (PDT)
Received: by mail-qk1-f182.google.com with SMTP id c1so8447698qkk.4
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 10:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6JgyD/Zpz0+F5ajsv3Tn6zKGgW49ICxSuEOrb9ClQT8=;
	b=R1D00Kw5beEzqwwDezjM2TRwYCWQ46OjWCPh+1ocfDJNlqrn5lUVvsp9F+RURZIyGA
	mk7pzTPfrPsTYSesF8g6cINxREf8uoBVD+R6fAlXjB0DoRV37No9ezm+UzLGxo7DTHBo
	wahEbvBIgWYM7Uk7ztOlWx6uMVCPUy3HirxS7Wr2KNG6Wqp1hkgAKOk7T73sJcW5he4S
	Hly2YLBqwSvaFtGAAfc3PtbvJITo6PstD3D/HwDJD1ZkZO4Pzuf8fyNoiZW21G/ARtBS
	0gWbAO3LThIFX82tY5kDi+EStKufh6VJ9f+fy63bhhC+dfaoU/msAGIuCLrRzZsSHoli
	FBGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6JgyD/Zpz0+F5ajsv3Tn6zKGgW49ICxSuEOrb9ClQT8=;
	b=qttyJzkTNQPvkOakcDC/EVQMA5mPSYUwgOEWQyZzyDcGINbJ2etnJ/G1S5gOOUlRvo
	oVWK1KmmssjXyG/UZtWXI/qBZ16BGDhBZTSZrDmJPVflZZ2x8S6kkNUDPwusoT/BySPI
	OGKR8e1OraNIj8LzbRCy7kaB8p7p1vM6heUv6uzoQ41UwLGffHD3jPsJxD54Q7gINwjT
	jMl6lMgH6QO8DzDoal+UHO4V5jVt/JjnKEFj1V8wHDCTmEpl+A/UQkfPXUp7ri4Sirav
	vIdIxPQbfFddV8oC1WAtCU71DJdX+nJlsk49uXUr2Ne/DiZ0qDjaB6z/aZK/7owBl+la
	uZ5w==
X-Gm-Message-State: APjAAAXBDt7gZ5RbzAsGWF7ZpM88ck/78P62EXta4pVk0s27smMusGI+
	0xqebU8UAt+UMNJoK8ndeolmvBKonZXow81UlgVevO301eY=
X-Google-Smtp-Source: APXvYqydE5vkGoCEOO7kkkBLGI4Zo4FzO6opPlWqIx0qT/0lJoUYJCaNsTgfa8zyt2LjWdm3zGt6n7FsEuxCLlcDry0=
X-Received: by 2002:a37:a246:: with SMTP id l67mr336927qke.237.1554227026922; 
	Tue, 02 Apr 2019 10:43:46 -0700 (PDT)
MIME-Version: 1.0
From: Andrew Wilcox <andrew.wilcox@gmail.com>
Date: Tue, 2 Apr 2019 13:43:20 -0400
Message-ID: <CADsYOuzoTXLBVxi5rMZQAAO5=Qxiz77p+GmaQh1rVif1uWi0WA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: devtool generated npm recipe building binary package for wrong system
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
X-List-Received-Date: Tue, 02 Apr 2019 17:43:48 -0000
Content-Type: text/plain; charset="UTF-8"

I used devtool to generate a recipe for installing the Node NPM
package "firebase":

  devtool add "npm://registry.npmjs.org;name=firebase;version=5.9.2"

I needed to add

  RDEPENDS_node-firebase_append = " bash"

to the recipe because an included utility was looking for the bash shell.

On the target system, in Node when I require firebase:

> require('firebase')
Error: Failed to load gRPC binary module because it was not installed
for the current system
Expected directory: node-v57-linux-arm-unknown
Found: [node-v57-linux-arm-glibc]
This problem can often be fixed by running "npm rebuild" on the current system
Original error: Cannot find module
'/usr/lib/node/firebase/node_modules/grpc/src/node/extension_binary/node-v57-linux-arm-unknown/grpc_node.node'

On the target system,
/usr/lib/node/firebase/node_modules/grpc/src/node/extension_binary
does contain node-v57-linux-arm-glibc

I'm building the raspberrypi0-wifi image from meta-raspberrypi.

Any ideas on what I could try?

Thanks!

Andrew

