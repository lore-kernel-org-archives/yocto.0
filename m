Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15B62E009D8; Wed, 12 Oct 2016 03:28:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0005]
X-Greylist: delayed 1803 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Oct 2016 03:28:34 PDT
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DE00E00839
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 03:28:34 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.13.8/8.13.8) with ESMTP id u9C9wRA3002414
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 12:58:27 +0300
To: yocto@yoctoproject.org
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <eadb5311-bebc-97fa-1bdd-e85465a6e19e@vitheia.com>
Date: Wed, 12 Oct 2016 12:58:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
Subject: machine specific task
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
X-List-Received-Date: Wed, 12 Oct 2016 10:28:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

According to the docs here 
http://www.yoctoproject.org/docs/2.1.1/mega-manual/mega-manual.html#structure-your-layers 
one can specify variables that are machine specific, eg 
KERNEL_DEVICETREE_qemuarm = "versatile-pb.dtb". I can't find a reference 
on how to create a task specific only for a certain machine.
Is there some mechanism to add and execute a custom task just for a 
specific machine, using *addtask* ?

As an alternative, I could check the machine name right in the beginning 
of the do_mycustomtask function, and execute code accordingly, something 
like (pseudo-code):

do_mycustomtask {
     if {MACHINE} != 'myMachineName'
         return;
     # code executing for all other machines
     [...]
}
addtask mycustomtask after do_configure before do_compile

Thanks

