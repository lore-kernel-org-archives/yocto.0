Return-Path: <chgans@googlemail.com>
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63EDDE00282
	for <yocto@yoctoproject.org>; Sun,  1 Sep 2013 22:05:14 -0700 (PDT)
Received: by mail-pd0-f178.google.com with SMTP id w10so4250744pde.23
	for <yocto@yoctoproject.org>; Sun, 01 Sep 2013 22:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=TnO5ue0Rdncslw/f2qX1E+nFsTjLzeXZSyF1F2R/2DI=;
	b=Wt8sGIGTsbchusz/uNy7lZMNcBFuyUqgKVTgc0MkjX1yUbXwf5RPxcXBZRVBXAYsXx
	Wk6LoBMpFIXEX+ftJ61+vkoGYN3pf3LwyEuXkZ6yFZAZhF7By3Ahh2xwZKQAGGEwZ0hJ
	z3wBHdFEGmt/wjapb8Fz3Tgst5e2f4EgenaIhNi5fAJti4/qc0lwDKduzd0MuqjMhgP2
	tPX+36oqmZO6UggtbboGGU2flxbDdqdp0PxF4JHGLaALGbx3qpVKnhKgOmtnBpcJwIGT
	sDcR4khdNpToNwjqPhvnRfHelZHuPj4dqPpKXJStwM4t6CoauNJrNBWBNiPR0GW1gHR6
	bQEQ==
X-Received: by 10.68.189.5 with SMTP id ge5mr23852938pbc.42.1378098314346;
	Sun, 01 Sep 2013 22:05:14 -0700 (PDT)
Received: from [0.0.0.0] ([210.48.94.225]) by mx.google.com with ESMTPSA id
	ta10sm14357230pab.5.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 01 Sep 2013 22:05:13 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <52241C84.2090605@gna.org>
Date: Mon, 02 Sep 2013 17:05:08 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Server specs for a continuous integration system
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
X-List-Received-Date: Mon, 02 Sep 2013 05:05:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I'm currently looking at server specs for a "good" continuous 
integration server to be used for a project using Yocto and other things 
as well.

The definition of "good" in my context is something that allows me to:
- Build 2 images for 2 different products that will interact with each 
other (kind of client/server architecture), so likely based on the same 
custom Yocto distro, but likely running on 2 different SoCs (and 
different vendors).
- Each image will need to have two build flavours: production and 
engineering
- Very likely other demo images as well
- The client is a "lightweight" measurement system, so i need a small 
base (connman, systemd, wifi, Qt, ntp client), the application layer (Qt 
based but no GUI), and a couple of firmwares to be run on auxiliary devices
- The server is still kind of lightweight, same base as above, plus 
sqlite, light http server, ntp server and of course it's own application 
layer (Qt based again, with a GUI for a wide "session screen").

On top of that:
- The server will be part of a continuous integration system with 
nightly builds and test suite runners/controllers .
- The CI will have to build a couple of "Engineering tools" as well (Qt 
based again), that need to be compile for Gnu/Linux and cross-compiled 
for Windows.
- The CI will have to build a couple of firmware that run on embedded RTOS.

Last thing is I would like to run all build/test activities on a unique 
Linux server.

Having myself a quad-core i7/3GHz workstation, i still find the yocto 
build very (very) long, and this server will have way more work to do 
than me when i'm playing around with Yocto.

So right now, I'm thinking about:
- CPU: Xeon E5, maybe 2 x E5-2670/90, for a total of 16 cores (32 threads)
- Hard drives: 500GB, 1 TB or 2 TB (ideally with RAID if it can speed up 
the builds)
- RAM: i don't really know, maybe 8 or 16 GB or more?

Budget wise, my feeling is that 10k US$ should be enough...

I'm coming here to see if anyone would have feedback on choosing the 
right "good enough" specs for a continuous integration server.

Best regards,
Chris


