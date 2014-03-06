Return-Path: <darcy.watkins@inmotiontechnology.com>
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0242.outbound.protection.outlook.com [207.46.163.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CC34E009F5
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 09:48:56 -0800 (PST)
Received: from [192.168.3.163] (184.71.143.26) by
	BLUPR01MB471.prod.exchangelabs.com (10.141.81.25) with Microsoft SMTP
	Server (TLS) id 15.0.893.10; Thu, 6 Mar 2014 17:48:52 +0000
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: yocto <yocto@yoctoproject.org>
Date: Thu, 6 Mar 2014 09:48:46 -0800
Message-ID: <1394128126.16006.28.camel@kihei.inmotion.gotdns.com>
MIME-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-30.el6) 
X-Originating-IP: [184.71.143.26]
X-ClientProxiedBy: DM2PR06CA029.namprd06.prod.outlook.com (10.141.241.29) To
	BLUPR01MB471.prod.exchangelabs.com (10.141.81.25)
X-Forefront-PRVS: 0142F22657
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009001)(6029001)(6049001)(6009001)(428001)(199002)(189002)(377454003)(46102001)(53806001)(77096001)(49866001)(81542001)(47736001)(81342001)(47976001)(50986001)(4396001)(95416001)(50226001)(97336001)(77156001)(93136001)(86362001)(85852003)(93516002)(92566001)(83072002)(51856001)(92726001)(93916002)(74502001)(76176001)(74662001)(76482001)(87266001)(65816001)(76796001)(56776001)(66066001)(47446002)(42186004)(54316002)(87286001)(80022001)(62966002)(94316002)(94946001)(31966008)(85306002)(76786001)(47776003)(77982001)(63696002)(59766001)(79102001)(90146001)(56816005)(74706001)(89996001)(95666003)(69226001)(83322001)(19580395003)(80976001)(23676002)(97186001)(81686001)(33646001)(81816001)(74366001)(50466002)(74876001)(87976001)(88136002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR01MB471; H:[192.168.3.163];
	CLIP:184.71.143.26; FPR:BFECF019.8C2694C4.CDF68573.8C93170.20328;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (: inmotiontechnology.com does not designate permitted
	sender hosts)
X-OriginatorOrg: inmotiontechnology.com
Subject: java.lang.OutOfMemoryError
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
X-List-Received-Date: Thu, 06 Mar 2014 17:48:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

Is there a way to dynamically reduce the number of bitbake threads that
can run while in the middle of a build?

I have occasionally encountered out-of-memory errors while building the
java system.  When I manually rerun 'bitbake icedtea6-native' (after the
error shown below) followed by rerunning the original target, it will
proceed to completion OK.

| Mar 6, 2014 9:01:49 AM com.redhat.rewriter.ClassRewriter processFile
| INFO: Processing class /home/dwatkins/workspace/epsilon/repo_MG-os_test2/build/tmp/work/i686-linux/icedtea6-native/1.8.11-r5.3/icedtea6-1.8.11/rhino/rhino.old/org/mozilla/javascript/ast/DoLoop.class
| Exception in thread "main" java.lang.OutOfMemoryError: can't create thread
|    at java.lang.VMThread.create(Native Method)
|    at java.lang.Thread.start(Thread.java:922)
|    at java.util.concurrent.ThreadPoolExecutor.addIfUnderMaximumPoolSize(ThreadPoolExecutor.java:485)
|    at java.util.concurrent.ThreadPoolExecutor.execute(ThreadPoolExecutor.java:890)
|    at java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:91)
|    at com.redhat.rewriter.ClassRewriter.processFile(ClassRewriter.java:114)
|    at com.redhat.rewriter.ClassRewriter.processFile(ClassRewriter.java:109)
|    at com.redhat.rewriter.ClassRewriter.processFile(ClassRewriter.java:109)
|    at com.redhat.rewriter.ClassRewriter.processFile(ClassRewriter.java:109)
|    at com.redhat.rewriter.ClassRewriter.processFile(ClassRewriter.java:109)
|    at com.redhat.rewriter.ClassRewriter.processFile(ClassRewriter.java:109)
|    at com.redhat.rewriter.ClassRewriter.main(ClassRewriter.java:91)
| make[1]: *** [stamps/rewrite-rhino.stamp] Error 1
| make[1]: Leaving directory `/home/dwatkins/workspace/epsilon/repo_MG-os_test2/build/tmp/work/i686-linux/icedtea6-native/1.8.11-r5.3/icedtea6-1.8.11'
| make: *** [hotspot] Error 2
| ERROR: oe_runmake failed

What I need is the ability to have a recipe declare that it is a
resource hog and should be run with the thread limit reduced until it is
done.

I tried cutting from 8 threads to 4 threads (on my quad core), but it is
still hit and miss.  I could cut it more, but then things will be rather
slow for the rest of the build.

Anyone have comments or suggestions?


-- 

Regards,

Darcy

---

Darcy Watkins
Senior Software Developer
In Motion Technology, Inc.
350-625 Agnes St. New Westminster, BC
Canada, V3M 5Y4
[P1]


