Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD9E1E00CAC; Thu, 18 Oct 2018 11:04:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,KHOP_DYNAMIC,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.143.141 listed in list.dnswl.org]
	*  2.0 KHOP_DYNAMIC Relay looks like a dynamic address
X-Greylist: delayed 1614 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Oct 2018 11:04:23 PDT
Received: from mx0b-000e8d01.pphosted.com (mx0b-000e8d01.pphosted.com
	[148.163.143.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3060E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 11:04:23 -0700 (PDT)
Received: from pps.filterd (m0136175.ppops.net [127.0.0.1])
	by mx0b-000e8d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w9IHbSBi029784
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 10:37:28 -0700
Received: from edison.ad.selinc.com (edison.selinc.com [74.117.212.50])
	by mx0b-000e8d01.pphosted.com with ESMTP id 2n6a8c8jme-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 10:37:28 -0700
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 38E74854:80860B87-88258329:0081F4B2;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP5 Octobe4, 2013
Message-ID: <OF38E74854.80860B87-ON88258329.0081F4B2-8825832A.0060D044@selinc.com>
From: Aaron_Wright@selinc.com
Date: Thu, 18 Oct 2018 10:37:27 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 10/18/2018 10:37:28 AM,
	Serialize complete at 10/18/2018 10:37:28 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-18_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1810180147
Subject: Working on Dependent Recipes in eSDK
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
X-List-Received-Date: Thu, 18 Oct 2018 18:04:24 -0000
Content-Type: text/plain; charset="US-ASCII"

My team recently started using the eSDK for day-to-day development. 
Previously, they were using the bitbake command to build, which works, but 
has overhead. Yesterday three different people came up to me a question 
about workflow with the eSDK, and they all had to do with dependent 
recipes in the eSDK.

For example, a developer would sit down to make something new that relies 
on a library provided by a recipe in the eSDK. So they "devtool 
sdk-install needed-library", and get to work. While working, they 
discover, I need to add something to this library I depend on so that it 
does what I want in the way I want. So they "devtool modify 
needed-library" and change the source of that library to do what they 
want, and build that library using its build system (CMake or Autotools). 
Then they return to working on the new something and find that none of 
their changes to the library they depend on are available. 

At this point, they are lost. They just start trying things to make it 
work, like "devtool build needed-library", which successfully completes, 
but doesn't help. Some people also try to use the build system of the 
library they modified to install it into the machine sysroot of the eSDK 
with a command like, "make install 
DESTDIR=<ESDK_PATH>/tmp/sysroots/<MACHINE>", and that actually does help. 
They can now use the changes they made to the library in the new something 
they are working on. However, when they use the "devtool sdk-install" 
command again, their changes to the needed library that they installed 
into the machine sysroot are reverted.

So--what is the workflow they are supposed to use? 

Pushing the changes to the library upstream, updating the recipe, and 
waiting for a new eSDK is not practical given that the developers may have 
to iterate on the changes to the library quite a bit before they get it 
just right for their new something.

Is there a way to update the eSDK sysroots with recipes that are in the 
workspace? Could "devtool build" also update the eSDK sysroots? Or is 
there a different way to get this done?

