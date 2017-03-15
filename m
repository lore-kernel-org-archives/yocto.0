Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC74EE00A93; Wed, 15 Mar 2017 00:33:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 080E1E00A4F
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 00:33:37 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id v2F7XXWG005379
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 09:33:34 +0200
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: yocto@yoctoproject.org
Message-ID: <8119e0ce-3c13-6a77-f66c-9a312b4a5a0c@vitheia.com>
Date: Wed, 15 Mar 2017 09:33:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
Subject: Development and production images
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
X-List-Received-Date: Wed, 15 Mar 2017 07:33:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

In my layer I've defined a separate image for development and a separate 
one for production, eg myimage-dbg.bb and myimage.bb
The difference between them is that the devel one has extra packages 
installed.
So, if you want to build a development image you build the `myimage-dbg` 
image, else the other one.
Now, for production images, I want to disable the serial console login, 
this is controlled by the SERIAL_CONSOLES variable and is specified in 
the machine.conf file, so this cannot be added to the image recipes.
In order to keep things as simple as I can, and make the choice only 
once (devel vs production), I want to avoid creating separate 
machine.conf files for development and production, eg mymachine.conf and 
mymachine-dbg.conf.


Do you have any suggestion on what's the best and approach ?

Thanks


