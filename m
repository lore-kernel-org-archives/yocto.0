Return-Path: <jose.ferreiro@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC382E01579
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 04:23:46 -0700 (PDT)
Received: from [172.30.250.61] (172.30.250.61) by horus27 (Axigen)
	with (CAMELLIA256-SHA encrypted) ESMTPSA id 24F1A5;
	Tue, 10 Sep 2013 13:23:44 +0200
Message-ID: <522F013F.7070002@horus.es>
Date: Tue, 10 Sep 2013 13:23:43 +0200
From: =?ISO-8859-1?Q?Jose_M=AA_Ferreiro?= <jose.ferreiro@horus.es>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:16.0)
	Gecko/20121005 Thunderbird/16.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 2
Subject: Add new module to recipe + meta-toolchain-qt: add gdb
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
X-List-Received-Date: Tue, 10 Sep 2013 11:23:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello

We have compiled meta-toolchain-qt (Yocto dylan). Now we can run QT 
applications on Desktop (Ubuntu 12.04) and on target (iMX6 sabre Lite 
board). We can also debug the applications on board, but we can not 
debug on desktop.

When /usr/bin/gdb is started it starts automatically /usr/bin/python. It 
fails because Ubuntu python does not recognize sys.lib variable from 
/op/poky...python. We have found no way to tell gdb to start changing 
PYTHONHOME to Ubuntu python home to avoid the problem.

So we need to add gdb to the toolchain. If we get it to work, we suppose 
the /op/poky...gdb will start the /opt/poky...python (we test it and 
that python knows what sys.lib is).

We try to add to conf/local.conf: TOOLCHAIN_HOST_TASK_append = " 
nativesdk-gdb". But nativesdk-gdb is not a defined name.

So the cuestion is: how can i know what recipes are avaliable to sdk 
host toolchain and what are their names?

Thank you and best regards


