Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DB6DE015FF
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 06:26:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r8PDQ5S2022267
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Sep 2013 06:26:05 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Wed, 25 Sep 2013 06:26:04 -0700
Message-ID: <5242E46B.6070006@windriver.com>
Date: Wed, 25 Sep 2013 09:26:03 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1FFB62CE8AEB0D4298B51122D8903E9619F6A751@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9619F6A751@IRSMSX104.ger.corp.intel.com>
Subject: Re: Yocto 1.5_M5.rc4 Full pass test results.
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
X-List-Received-Date: Wed, 25 Sep 2013 13:26:08 -0000
X-Groupsio-MsgNum: 16215
Content-Type: multipart/alternative;
	boundary="------------060605090100070801040108"

--------------060605090100070801040108
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-09-25 07:33 AM, Georgescu, Alexandru C wrote:
>
> Hello,
>
> Here is the Full Pass for 1.5_M5.rc4 build.
>
> Highlights:
>
> -#5223 - The testing for BSP P0122DS is blocked because there is no 
> image build out.
>
> -#5259 - adt-installer uses wrong permissions when extracting the sysroot
>
> -#5223 - [autobuilder] u-boot-fw-utils does not build correctly
>
> -#5205 -- runtime tests blocked due to a meta-intel build fail
>
FYI: I'm hunting up someone and the right hardware to look into the
three beagleboard issues that popped up with the 3.10 update.

The bugs will be updated accordingly when someone starts looking
at them.

Cheers,

Bruce

>
>   Testing data
>
>   Test type: Full Pass Release
>   Branch: Master
>   Milestone: M5
>   Build name: 1.5_M5.rc4
>   poky commit: 853bc53cd58a621918f0e5ce662dba263d1befb4
>   Eclipse Plugin commit Kepler:  ad74249895f882a8f00bdeef7a0f7c18998cc43e
>   Autobuilder images repository: http://autobuilder.yoctoproject.org/pub/releases/1.5_M5.rc4/
>   Distributions tested: Ubuntu 12.04 64bit, Ubuntu 13.10 64bit beta, Fedora 19 64bit, Fedora 19 32bit, Fedora 18 64bit, OpenSuse 12.3 64bit, OpenSuse 12.2 64bit, CentOS 6.4 64bit, CentOS 6.4 32bit, Debian 7 64bit
>   
>
>
>   Summary Report
>
> *Testing Summary Report*
>
> *Test Run*
>
> 	
>
> *Test Plan*
>
> 	
>
> *Environment*
>
> 	
>
> *Passed*
>
> 	
>
> *Other issues*
>
> 	
>
> *Failed*
>
> 	
>
> *Failing bugs*
>
> 	
>
> *Blocked*
>
> 	
>
> *Blocking bugs*
>
> 	
>
> *Complete*
>
> 1313 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1313>1314 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1314>
>
> 	
>
> ADT: master branch
>
> 	
>
> Fedora 19 x86_64
>
> 	
>
> 100.0%
>
> 	
>
> 5259 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5259>
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1311 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1311>1312 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1312>
>
> 	
>
> ADT: master branch
>
> 	
>
> Ubuntu 13.04 x86_64
>
> 	
>
> 100.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1333 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1333>1334 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1334>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> Beagleboard
>
> 	
>
> 50.7%
>
> 	
>
> none
>
> 	
>
> 14.5%
>
> 	
>
> 5182 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5182>3936 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3936>5211 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5211>5183 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5183>
>
> 	
>
> 34.8%
>
> 	
>
> 5183 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5183>5182 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5182>
>
> 	
>
> 100.0%
>
> 1280 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1280>1281 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1281>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> generic-x86 on AtomPC
>
> 	
>
> 92.3%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 7.7%
>
> 	
>
> 5238 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5238>
>
> 	
>
> 100.0%
>
> 1278 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1278>1279 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1279>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> genericx86-64 on Sugarbay
>
> 	
>
> 71.1%
>
> 	
>
> none
>
> 	
>
> 3.9%
>
> 	
>
> 5235 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5235>5108 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5108>5117 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5117>
>
> 	
>
> 25.0%
>
> 	
>
> 5108 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5108>
>
> 	
>
> 100.0%
>
> 1329 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1329>1330 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1330>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> MPC8315e-rdb
>
> 	
>
> 100.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1323 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1323>1324 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1324>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> P1022ds
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 2.1%
>
> 	
>
> 5223 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5223>
>
> 	
>
> 97.9%
>
> 	
>
> 5223 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5223>
>
> 	
>
> 100.0%
>
> 1288 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1288>1291 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1291>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> qemu-x86
>
> 	
>
> 98.1%
>
> 	
>
> none
>
> 	
>
> 1.9%
>
> 	
>
> 4832 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832>
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1316 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1316>1290 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1290>1293 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1293>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> qemuarm
>
> 	
>
> 97.6%
>
> 	
>
> none
>
> 	
>
> 2.4%
>
> 	
>
> 5133 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5133>4832 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832>
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1318 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1318>1319 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1319>1321 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1321>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> qemumips
>
> 	
>
> 97.6%
>
> 	
>
> none
>
> 	
>
> 2.4%
>
> 	
>
> 5133 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5133>4832 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832>
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1317 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1317>1320 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1320>1322 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1322>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> qemuppc
>
> 	
>
> 97.6%
>
> 	
>
> none
>
> 	
>
> 2.4%
>
> 	
>
> 5133 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5133>4832 
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832>
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1289 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1289>1292 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1292>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> qemux86-64
>
> 	
>
> 98.1%
>
> 	
>
> none
>
> 	
>
> 1.9%
>
> 	
>
> 4832 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832>
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1331 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1331>1332 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1332>
>
> 	
>
> BSP/QEMU: master branch
>
> 	
>
> Routerstationpro
>
> 	
>
> 100.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1325 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1325>1326 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1326>1327 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1327>
>
> 	
>
> Eclipse Plugin: master branch
>
> 	
>
> Fedora 19 x86_64
>
> 	
>
> 100.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1270 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1270>1271 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1271>1328 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1328>
>
> 	
>
> Eclipse Plugin: master branch
>
> 	
>
> Ubuntu 13.04 x86_64
>
> 	
>
> 100.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1303 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1303>1304 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1304>
>
> 	
>
> Meta-yocto: master branch
>
> 	
>
> Ubuntu 13.04 x86-64
>
> 	
>
> 96.3%
>
> 	
>
> none
>
> 	
>
> 3.7%
>
> 	
>
> 3908 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3908>
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1306 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1306>1302 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1302>
>
> 	
>
> Hob: master branch
>
> 	
>
> Ubuntu 13.04 x86_64
>
> 	
>
> 100.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1275 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1275>1277 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1277>
>
> 	
>
> OE-Core: master branch
>
> 	
>
> Multiple environments
>
> 	
>
> 97.4%
>
> 	
>
> none
>
> 	
>
> 2.6%
>
> 	
>
> 5146 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5146>
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1273 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1273>1274 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1274>
>
> 	
>
> BitBake: master branch
>
> 	
>
> Ubuntu 13.04 x86_64
>
> 	
>
> 100.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> 1305 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1305>
>
> 	
>
> Runtime: master branch
>
> 	
>
> Multiple Environments
>
> 	
>
> 62.5%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 37.5%
>
> 	
>
> 5205 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5205>
>
> 	
>
> 100.0%
>
> 1310 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1310>
>
> 	
>
> Build Appliance: master branch
>
> 	
>
> qemu-kvm on Ubuntu 12.04 libvirt
>
> 	
>
> 100.0%
>
> 	
>
> 4727 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=4727>
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 0.0%
>
> 	
>
> none
>
> 	
>
> 100.0%
>
> *Total: 21*
>
> 	
>
> *Test Case Status Report*
>
> *Status*
>
> 	
>
> *Count*
>
> BLOCKED
>
> 	
>
> 99
>
> FAILED
>
> 	
>
> 24
>
> PASSED
>
> 	
>
> 1041
>
> *Total: 1164*
>
> 	
>
> http://chart.apis.google.com/chart?cht=p3&chs=432x120&chd=t:&chd=t:99,24,1041&chco=FFFF66|FF9933|00FF00&chl=BLOCKED(99)+9%25|FAILED(24)+2%25|PASSED(1041)+89%25
>
> *Bug Status Report*
>
>
> *ID**$B* 
> <https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4>**
>
> 	
>
> *Priority**$B* 
> <https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4>**
>
> 	
>
> *Status**$B* 
> <https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4>**
>
> 	
>
> *Resolution**$B* 
> <https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4>**
>
> 	
>
> *Test Runs**$B* 
> <https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4>**
>
> 	
>
> *Description**$B* 
> <https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4>**
>
> 	
>
> *Version**$B* 
> <https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4>**
>
> 	
>
> *Target Milestone**$B* 
> <https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4>**
>
> 	
>
> *Age (days)**$B* 
> <https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4>**
>
> 3908 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3908>
>
> 	
>
> Medium+
>
> 	
>
> REOPENED
>
> 	
> 	
>
> 1303 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1303>
>
> 	
>
> Kernel panic on qemux86-64 when using runqemu kvm and cpu host
>
> 	
>
> 1.4
>
> 	
>
> 1.5 M2
>
> 	
>
> 211
>
> 3936 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3936>
>
> 	
>
> Medium
>
> 	
>
> ACCEPTED
>
> 	
> 	
>
> 1333 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1333>
>
> 	
>
> [beagleobard xM] Some error message with usbhs_omap in dmesg
>
> 	
>
> 1.4
>
> 	
>
> 1.5
>
> 	
>
> 204
>
> 4727 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=4727>
>
> 	
>
> Medium
>
> 	
>
> IN PROGRESS DESIGN
>
> 	
> 	
>
> 1310 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1310>
>
> 	
>
> Opening build logs does not work in HOB under Build Appliance
>
> 	
>
> unspecified
>
> 	
>
> 1.5 M5
>
> 	
>
> 98
>
> 4832 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832>
>
> 	
>
> Medium
>
> 	
>
> NEW
>
> 	
> 	
>
> 1293 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1293>1292 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1292>1322 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1322>1291 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1291>1321 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1321>
>
> 	
>
> [Test Case 225] ethernet static ip set in connman
>
> 	
>
> 1.5
>
> 	
>
> 1.5 M5
>
> 	
>
> 71
>
> 5108 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5108>
>
> 	
>
> Medium
>
> 	
>
> NEEDINFO
>
> 	
> 	
>
> 1279 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1279>1278 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1278>
>
> 	
>
> Lack of xf86-video-mga package in genericX86-64/genericX86
>
> 	
>
> 1.5.2
>
> 	
>
> Future
>
> 	
>
> 14
>
> 5117 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5117>
>
> 	
>
> Medium
>
> 	
>
> IN PROGRESS REVIEW
>
> 	
> 	
>
> 1279 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1279>
>
> 	
>
> generic-x86-64 image does not recover display after standby
>
> 	
>
> 1.5
>
> 	
>
> 1.5 M5
>
> 	
>
> 14
>
> 5133 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5133>
>
> 	
>
> Medium+
>
> 	
>
> ACCEPTED
>
> 	
> 	
>
> 1322 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1322>1321 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1321>1293 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1293>
>
> 	
>
> [Test Case 207] sudoku-savant project compile in sdk image
>
> 	
>
> 1.5
>
> 	
>
> 1.5 M5
>
> 	
>
> 12
>
> 5146 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5146>
>
> 	
>
> Medium
>
> 	
>
> ACCEPTED
>
> 	
> 	
>
> 1275 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1275>
>
> 	
>
> btrfs image build fails at do_rootfs
>
> 	
>
> 1.5
>
> 	
>
> 1.5 M5
>
> 	
>
> 9
>
> 5182 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5182>
>
> 	
>
> Undecided
>
> 	
>
> NEW
>
> 	
> 	
>
> 1334 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1334>1333 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1333>
>
> 	
>
> [Beagleboard xM]X can not startup with 3.10 kernel
>
> 	
>
> 1.5
>
> 	
>
> ---
>
> 	
>
> 5(Recent)
>
> 5183 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5183>
>
> 	
>
> Undecided
>
> 	
>
> NEW
>
> 	
> 	
>
> 1333 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1333>1334 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1334>
>
> 	
>
> [Beagleboard xM] Network interface doesn't work with 3.10 kernel
>
> 	
>
> 1.5
>
> 	
>
> ---
>
> 	
>
> 5(Recent)
>
> 5205 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5205>
>
> 	
>
> Medium+
>
> 	
>
> RESOLVED
>
> 	
>
> FIXED
>
> 	
>
> 1305 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1305>
>
> 	
>
> meta-intel: some images fail to build -sdk image
>
> 	
>
> 1.5
>
> 	
>
> 1.5 M5
>
> 	
>
> 2(Recent)
>
> 5211 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5211>
>
> 	
>
> Undecided
>
> 	
>
> NEW
>
> 	
> 	
>
> 1334 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1334>
>
> 	
>
> [Beagleboard xM] USB doesn't work with 3.10 kernel
>
> 	
>
> 1.5
>
> 	
>
> ---
>
> 	
>
> 1(Recent)
>
> 5223 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5223>
>
> 	
>
> High
>
> 	
>
> RESOLVED
>
> 	
>
> FIXED
>
> 	
>
> 1324 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1324>1323 
> <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1323>
>
> 	
>
> [autobuilder] u-boot-fw-utils does not build correctly
>
> 	
>
> 1.5
>
> 	
>
> 1.5 M5
>
> 	
>
> NEW
>
> 5235 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5235>
>
> 	
>
> Medium
>
> 	
>
> NEEDINFO
>
> 	
> 	
>
> 1278 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1278>
>
> 	
>
> generic-x86_64 dmesg errors on Sugarbay
>
> 	
>
> 1.5
>
> 	
>
> 1.5
>
> 	
>
> NEW
>
> 5238 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5238>
>
> 	
>
> Medium
>
> 	
>
> IN PROGRESS REVIEW
>
> 	
> 	
>
> 1281 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1281>
>
> 	
>
> generic-x86 image does not have broadcom wifi modules enabled
>
> 	
>
> 1.5
>
> 	
>
> 1.5 M5
>
> 	
>
> NEW
>
> 5259 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=5259>
>
> 	
>
> Medium+
>
> 	
>
> NEW
>
> 	
> 	
>
> 1313 <https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1313>
>
> 	
>
> adt-installer uses wrong permissions when extracting the sysroot
>
> 	
>
> 1.5
>
> 	
>
> 1.5 M5
>
> 	
>
> NEW
>
> *Total: 16*
>
> *Build Performance Status:*
>
> Below you can find the Milestone build performance charts. Data taken 
> from: Data taken from: 
> https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_Milestones_only_results. 
> Attached you can find the detailed report with all the measurements. 
> Overall, I can see that the build time is stable, no.
>
> cid:image003.jpg@01CEB872.01433F90
>
> Regards,
>
> *--*
>
> *Alexandru Georgescu*
>
> *Yocto QA Engineer*
>
> *SSG/SSD Open Source Technology Center Romania*
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------060605090100070801040108
Content-Type: multipart/related;
	boundary="------------040002040707060701020107"

--------------040002040707060701020107
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 13-09-25 07:33 AM, Georgescu,
      Alexandru C wrote:<br>
    </div>
    <blockquote
cite="mid:1FFB62CE8AEB0D4298B51122D8903E9619F6A751@IRSMSX104.ger.corp.intel.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle20
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Times New Roman","serif";
	font-weight:bold;}
span.mw-headline
	{mso-style-name:mw-headline;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.sortarrow
	{mso-style-name:sortarrow;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1100880217;
	mso-list-type:hybrid;
	mso-list-template-ids:-761897728 470874660 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hello,<o:p></o:p></p>
        <p class="MsoNormal">Here is the Full Pass for 1.5_M5.rc4 build.
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Highlights:<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo2"><!--[if !supportLists]--><span
            style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times
              New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span></span><!--[endif]-->#5223 - The testing for BSP
          P0122DS is blocked because there is no image build out.<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo2"><!--[if !supportLists]--><span
            style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times
              New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span></span><!--[endif]-->#5259 - adt-installer uses wrong
          permissions when extracting the sysroot<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo2"><!--[if !supportLists]--><span
            style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times
              New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span></span><!--[endif]-->#5223 - [autobuilder]
          u-boot-fw-utils does not build correctly<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo2"><!--[if !supportLists]--><span
            style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times
              New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span></span><!--[endif]-->#5205 &#8211; runtime tests blocked
          due to a meta-intel build fail</p>
      </div>
    </blockquote>
    FYI: I'm hunting up someone and the right hardware to look into the<br>
    three beagleboard issues that popped up with the 3.10 update.<br>
    <br>
    The bugs will be updated accordingly when someone starts looking<br>
    at them.<br>
    <br>
    Cheers,<br>
    <br>
    Bruce<br>
    <br>
    <blockquote
cite="mid:1FFB62CE8AEB0D4298B51122D8903E9619F6A751@IRSMSX104.ger.corp.intel.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoListParagraph"
          style="text-indent:-.25in;mso-list:l0 level1 lfo2"><o:p></o:p></p>
        <p class="MsoListParagraph"><o:p>&nbsp;</o:p></p>
        <div
          style="mso-element:para-border-div;border:none;border-bottom:solid
          #AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
          <h1
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;margin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;padding:0in"><span
              class="mw-headline"><span
style="font-size:17.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Testing
                data</span></span><span
style="font-size:17.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p></span></h1>
        </div>
        <div style="mso-element:para-border-div;border:dashed #2F6FAB
          1.0pt;padding:12.0pt 12.0pt 12.0pt 12.0pt;background:#F9F9F9">
          <pre style="line-height:13.2pt;background:#F9F9F9;border:none;padding:0in;orphans: auto;text-align:start;widows: auto;-webkit-text-stroke-width: 0px;word-spacing:0px"><span style="color:black"> Test type: Full Pass Release<o:p></o:p></span></pre>
          <pre style="line-height:13.2pt;background:#F9F9F9;border:none;padding:0in"><span style="color:black"> Branch: Master<o:p></o:p></span></pre>
          <pre style="line-height:13.2pt;background:#F9F9F9;border:none;padding:0in"><span style="color:black"> Milestone: M5<o:p></o:p></span></pre>
          <pre style="line-height:13.2pt;background:#F9F9F9;border:none;padding:0in"><span style="color:black"> Build name: 1.5_M5.rc4<o:p></o:p></span></pre>
          <pre style="line-height:13.2pt;background:#F9F9F9;border:none;padding:0in"><span style="color:black"> poky commit: 853bc53cd58a621918f0e5ce662dba263d1befb4<o:p></o:p></span></pre>
          <pre style="line-height:13.2pt;background:#F9F9F9;border:none;padding:0in"><span style="color:black"> Eclipse Plugin commit Kepler:&nbsp; ad74249895f882a8f00bdeef7a0f7c18998cc43e<o:p></o:p></span></pre>
          <pre style="line-height:13.2pt;background:#F9F9F9;border:none;padding:0in"><span style="color:black"> Autobuilder images repository: <a class="moz-txt-link-freetext" href="http://autobuilder.yoctoproject.org/pub/releases/1.5_M5.rc4/">http://autobuilder.yoctoproject.org/pub/releases/1.5_M5.rc4/</a><o:p></o:p></span></pre>
          <pre style="line-height:13.2pt;background:#F9F9F9;border:none;padding:0in"><span style="color:black"> Distributions tested: Ubuntu 12.04 64bit, Ubuntu 13.10 64bit beta, Fedora 19 64bit, Fedora 19 32bit, Fedora 18 64bit, OpenSuse 12.3 64bit, OpenSuse 12.2 64bit, CentOS 6.4 64bit, CentOS 6.4 32bit, Debian 7 64bit<o:p></o:p></span></pre>
          <pre style="line-height:13.2pt;background:#F9F9F9;border:none;padding:0in"><span style="color:black"> <o:p></o:p></span></pre>
        </div>
        <div
          style="mso-element:para-border-div;border:none;border-bottom:solid
          #AAAAAA 1.0pt;padding:0in 0in 2.0pt 0in;background:white">
          <h1
            style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:.1in;margin-left:0in;mso-line-height-alt:14.3pt;background:white;border:none;padding:0in;orphans:
            auto;text-align:start;widows:
            auto;-webkit-text-stroke-width:
            0px;background-position:initial
            initial;background-repeat:initial
            initial;overflow:hidden;word-spacing:0px">
            <span class="mw-headline"><span
style="font-size:17.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal">Summary
                Report</span></span><span
style="font-size:17.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black;font-weight:normal"><o:p></o:p></span></h1>
        </div>
        <table class="MsoNormalTable" style="background:white;orphans:
          auto;text-align:start;widows: auto;-webkit-text-stroke-width:
          0px;word-spacing:0px" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td style="padding:.75pt .75pt .75pt .75pt">
                <table class="MsoNormalTable"
                  style="background:#EEEEEE;border-collapse:collapse;border:none;background-position:initial
                  initial;background-repeat:initial initial"
                  cellpadding="0" cellspacing="0" border="1">
                  <tbody>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;background:#BBBBBB;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">Testing Summary
                              Report<o:p></o:p></span></b></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;padding:2.4pt 2.4pt 2.4pt
                        2.4pt">
                        <table class="MsoNormalTable"
                          style="margin-left:7.5pt;background:#EEEEEE;border-collapse:collapse;border:none;background-position:initial
                          initial;background-repeat:initial initial"
                          cellpadding="0" cellspacing="0" border="1">
                          <tbody>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Test
                                      Run<o:p></o:p></span></b></p>
                              </td>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Test
                                      Plan<o:p></o:p></span></b></p>
                              </td>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Environment<o:p></o:p></span></b></p>
                              </td>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Passed<o:p></o:p></span></b></p>
                              </td>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Other
                                      issues<o:p></o:p></span></b></p>
                              </td>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Failed<o:p></o:p></span></b></p>
                              </td>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Failing
                                      bugs<o:p></o:p></span></b></p>
                              </td>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Blocked<o:p></o:p></span></b></p>
                              </td>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Blocking
                                      bugs<o:p></o:p></span></b></p>
                              </td>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Complete<o:p></o:p></span></b></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1313"><span
                                        style="color:#5A3696">1313</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1314"><span
                                        style="color:#5A3696">1314</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">ADT: master
                                    branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Fedora 19
                                    x86_64<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5259"><span
                                        style="color:#5A3696">5259</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1311"><span
                                        style="color:#5A3696">1311</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1312"><span
                                        style="color:#5A3696">1312</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">ADT: master
                                    branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Ubuntu 13.04
                                    x86_64<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1333"><span
                                        style="color:#5A3696">1333</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1334"><span
                                        style="color:#5A3696">1334</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Beagleboard<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDD00;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span
                                    style="font-size:9.5pt;color:black">50.7%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">14.5%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5182"><span
                                        style="color:#5A3696">5182</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=3936"><span
                                        style="color:#5A3696">3936</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5211"><span
                                        style="color:#5A3696">5211</span></a><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5183"><span
                                        style="color:#5A3696">5183</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDD00;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span
                                    style="font-size:9.5pt;color:black">34.8%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5183"><span
                                        style="color:#5A3696">5183</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5182"><span
                                        style="color:#5A3696">5182</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1280"><span
                                        style="color:#5A3696">1280</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1281"><span
                                        style="color:#5A3696">1281</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">generic-x86
                                    on AtomPC<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">92.3%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">7.7%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5238"><span
                                        style="color:#5A3696">5238</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1278"><span
                                        style="color:#5A3696">1278</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1279"><span
                                        style="color:#5A3696">1279</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">genericx86-64
                                    on Sugarbay<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDD00;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span
                                    style="font-size:9.5pt;color:black">71.1%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">3.9%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5235"><span
                                        style="color:#5A3696">5235</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5108"><span
                                        style="color:#5A3696">5108</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5117"><span
                                        style="color:#5A3696">5117</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">25.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5108"><span
                                        style="color:#5A3696">5108</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1329"><span
                                        style="color:#5A3696">1329</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1330"><span
                                        style="color:#5A3696">1330</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">MPC8315e-rdb<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1323"><span
                                        style="color:#5A3696">1323</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1324"><span
                                        style="color:#5A3696">1324</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">P1022ds<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:red;padding:2.4pt 2.4pt
                                2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">2.1%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5223"><span
                                        style="color:#5A3696">5223</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:red;padding:2.4pt 2.4pt
                                2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">97.9%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5223"><span
                                        style="color:#5A3696">5223</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1288"><span
                                        style="color:#5A3696">1288</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1291"><span
                                        style="color:#5A3696">1291</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">qemu-x86<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">98.1%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">1.9%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832"><span
                                        style="color:#5A3696">4832</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1316"><span
                                        style="color:#5A3696">1316</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1290"><span
                                        style="color:#5A3696">1290</span></a><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1293"><span
                                        style="color:#5A3696">1293</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">qemuarm<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">97.6%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">2.4%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5133"><span
                                        style="color:#5A3696">5133</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832"><span
                                        style="color:#5A3696">4832</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1318"><span
                                        style="color:#5A3696">1318</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1319"><span
                                        style="color:#5A3696">1319</span></a><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1321"><span
                                        style="color:#5A3696">1321</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">qemumips<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">97.6%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">2.4%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5133"><span
                                        style="color:#5A3696">5133</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832"><span
                                        style="color:#5A3696">4832</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1317"><span
                                        style="color:#5A3696">1317</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1320"><span
                                        style="color:#5A3696">1320</span></a><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1322"><span
                                        style="color:#5A3696">1322</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">qemuppc<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">97.6%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">2.4%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5133"><span
                                        style="color:#5A3696">5133</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832"><span
                                        style="color:#5A3696">4832</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1289"><span
                                        style="color:#5A3696">1289</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1292"><span
                                        style="color:#5A3696">1292</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">qemux86-64<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">98.1%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">1.9%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832"><span
                                        style="color:#5A3696">4832</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1331"><span
                                        style="color:#5A3696">1331</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1332"><span
                                        style="color:#5A3696">1332</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BSP/QEMU:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Routerstationpro<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1325"><span
                                        style="color:#5A3696">1325</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1326"><span
                                        style="color:#5A3696">1326</span></a><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1327"><span
                                        style="color:#5A3696">1327</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Eclipse
                                    Plugin: master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Fedora 19
                                    x86_64<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1270"><span
                                        style="color:#5A3696">1270</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1271"><span
                                        style="color:#5A3696">1271</span></a><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1328"><span
                                        style="color:#5A3696">1328</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Eclipse
                                    Plugin: master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Ubuntu 13.04
                                    x86_64<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1303"><span
                                        style="color:#5A3696">1303</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1304"><span
                                        style="color:#5A3696">1304</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Meta-yocto:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Ubuntu 13.04
                                    x86-64<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">96.3%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">3.7%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=3908"><span
                                        style="color:#5A3696">3908</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1306"><span
                                        style="color:#5A3696">1306</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1302"><span
                                        style="color:#5A3696">1302</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Hob: master
                                    branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Ubuntu 13.04
                                    x86_64<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1275"><span
                                        style="color:#5A3696">1275</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1277"><span
                                        style="color:#5A3696">1277</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">OE-Core:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Multiple
                                    environments<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">97.4%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">2.6%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5146"><span
                                        style="color:#5A3696">5146</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1273"><span
                                        style="color:#5A3696">1273</span></a><span
                                      class="apple-converted-space">&nbsp;</span><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1274"><span
                                        style="color:#5A3696">1274</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BitBake:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Ubuntu 13.04
                                    x86_64<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1305"><span
                                        style="color:#5A3696">1305</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Runtime:
                                    master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Multiple
                                    Environments<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDD00;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span
                                    style="font-size:9.5pt;color:black">62.5%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDD00;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span
                                    style="font-size:9.5pt;color:black">37.5%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5205"><span
                                        style="color:#5A3696">5205</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1310"><span
                                        style="color:#5A3696">1310</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">Build
                                    Appliance: master branch<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">qemu-kvm on
                                    Ubuntu 12.04 libvirt<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt"><a
                                      moz-do-not-send="true"
                                      href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=4727"><span
                                        style="color:#5A3696">4727</span></a><o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">0.0%<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">none<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:lime;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <span style="font-size:9.5pt">100.0%<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="10" style="border:solid
                                #AAAAAA
                                1.0pt;border-top:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><b><span
                                      style="font-size:9.5pt">Total: 21</span></b><span
                                    style="font-size:9.5pt"><o:p></o:p></span></p>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
              <td style="padding:.75pt .75pt .75pt .75pt">
                <table class="MsoNormalTable"
                  style="background:#EEEEEE;border-collapse:collapse;border:none;background-position:initial
                  initial;background-repeat:initial initial"
                  cellpadding="0" cellspacing="0" border="1">
                  <tbody>
                    <tr>
                      <td colspan="2" style="border:solid #AAAAAA
                        1.0pt;background:#BBBBBB;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">Test Case Status
                              Report<o:p></o:p></span></b></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;background:white;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <table class="MsoNormalTable"
                          style="margin-left:7.5pt;background:#EEEEEE;border-collapse:collapse;border:none;background-position:initial
                          initial;background-repeat:initial initial"
                          cellpadding="0" cellspacing="0" border="1">
                          <tbody>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Status<o:p></o:p></span></b></p>
                              </td>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;text-align:center"
                                  align="center">
                                  <b><span style="font-size:9.5pt">Count<o:p></o:p></span></b></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">BLOCKED<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">99<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">FAILED<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;background:#DDDDDD;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">24<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td style="border:solid #AAAAAA
                                1.0pt;border-top:none;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">PASSED<o:p></o:p></span></p>
                              </td>
                              <td
                                style="border-top:none;border-left:none;border-bottom:solid
                                #AAAAAA 1.0pt;border-right:solid #AAAAAA
                                1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><span
                                    style="font-size:9.5pt">1041<o:p></o:p></span></p>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="2" style="border:solid
                                #AAAAAA
                                1.0pt;border-top:none;background:#BBBBBB;padding:2.4pt
                                2.4pt 2.4pt 2.4pt">
                                <p class="MsoNormal"
style="mso-margin-top-alt:7.5pt;margin-right:0in;margin-bottom:7.5pt;margin-left:0in"><b><span
                                      style="font-size:9.5pt">Total:
                                      1164</span></b><span
                                    style="font-size:9.5pt"><o:p></o:p></span></p>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:white;padding:2.4pt 2.4pt 2.4pt
                        2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><img
                              id="Picture_x0020_11"
                              src="cid:part72.05010704.05080901@windriver.com"
alt="http://chart.apis.google.com/chart?cht=p3&amp;chs=432x120&amp;chd=t:&amp;chd=t:99,24,1041&amp;chco=FFFF66|FF9933|00FF00&amp;chl=BLOCKED(99)+9%25|FAILED(24)+2%25|PASSED(1041)+89%25"
                              border="0" width="432" height="120"></span><span
                            style="font-size:9.5pt"><o:p></o:p></span></p>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>
        <p class="MsoNormal"><span style="display:none"><o:p>&nbsp;</o:p></span></p>
        <table class="MsoNormalTable"
          style="background:#EEEEEE;border-collapse:collapse;border:none;orphans:
          auto;text-align:start;widows: auto;-webkit-text-stroke-width:
          0px;background-position:initial
          initial;background-repeat:initial initial;word-spacing:0px"
          cellpadding="0" cellspacing="0" border="1">
          <tbody>
            <tr>
              <td style="border:solid #AAAAAA
                1.0pt;background:#BBBBBB;padding:2.4pt 2.4pt 2.4pt
                2.4pt">
                <p class="MsoNormal"
                  style="text-align:center;line-height:14.3pt"
                  align="center">
                  <b><span
style="font-size:9.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Bug
                      Status Report<o:p></o:p></span></b></p>
              </td>
            </tr>
            <tr>
              <td style="border:solid #AAAAAA
                1.0pt;border-top:none;background:white;padding:2.4pt
                2.4pt 2.4pt 2.4pt">
                <br>
              </td>
            </tr>
            <tr>
              <td style="border:solid #AAAAAA
                1.0pt;border-top:none;background:white;padding:2.4pt
                2.4pt 2.4pt 2.4pt">
                <table class="MsoNormalTable"
                  style="margin-left:7.5pt;background:#EEEEEE;border-collapse:collapse;border:none;background-position:initial
                  initial;background-repeat:initial initial"
                  id="sortable_table_id_0" cellpadding="0"
                  cellspacing="0" border="1">
                  <tbody>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;background:#BBBBBB;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">ID</span></b><a
                            moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4"><b><span
style="font-size:9.5pt;color:#5A3696;text-decoration:none"><img
                                  id="Picture_x0020_10"
                                  src="cid:part73.05050509.03060006@windriver.com"
                                  alt="$B" -(b"="" border="0"
                                  width="12" height="14"></span></b></a><b><span
                              style="font-size:9.5pt"><o:p></o:p></span></b></p>
                      </td>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">Priority</span></b><a
                            moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4"><b><span
style="font-size:9.5pt;color:#5A3696;text-decoration:none"><img
                                  id="Picture_x0020_9"
                                  src="cid:part73.05050509.03060006@windriver.com"
                                  alt="$B" -(b"="" border="0"
                                  width="12" height="14"></span></b></a><b><span
                              style="font-size:9.5pt"><o:p></o:p></span></b></p>
                      </td>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">Status</span></b><a
                            moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4"><b><span
style="font-size:9.5pt;color:#5A3696;text-decoration:none"><img
                                  id="Picture_x0020_8"
                                  src="cid:part73.05050509.03060006@windriver.com"
                                  alt="$B" -(b"="" border="0"
                                  width="12" height="14"></span></b></a><b><span
                              style="font-size:9.5pt"><o:p></o:p></span></b></p>
                      </td>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">Resolution</span></b><a
                            moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4"><b><span
style="font-size:9.5pt;color:#5A3696;text-decoration:none"><img
                                  id="Picture_x0020_7"
                                  src="cid:part73.05050509.03060006@windriver.com"
                                  alt="$B" -(b"="" border="0"
                                  width="12" height="14"></span></b></a><b><span
                              style="font-size:9.5pt"><o:p></o:p></span></b></p>
                      </td>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">Test Runs</span></b><a
                            moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4"><b><span
style="font-size:9.5pt;color:#5A3696;text-decoration:none"><img
                                  id="Picture_x0020_6"
                                  src="cid:part73.05050509.03060006@windriver.com"
                                  alt="$B" -(b"="" border="0"
                                  width="12" height="14"></span></b></a><b><span
                              style="font-size:9.5pt"><o:p></o:p></span></b></p>
                      </td>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">Description</span></b><a
                            moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4"><b><span
style="font-size:9.5pt;color:#5A3696;text-decoration:none"><img
                                  id="Picture_x0020_5"
                                  src="cid:part73.05050509.03060006@windriver.com"
                                  alt="$B" -(b"="" border="0"
                                  width="12" height="14"></span></b></a><b><span
                              style="font-size:9.5pt"><o:p></o:p></span></b></p>
                      </td>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">Version</span></b><a
                            moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4"><b><span
style="font-size:9.5pt;color:#5A3696;text-decoration:none"><img
                                  id="Picture_x0020_4"
                                  src="cid:part73.05050509.03060006@windriver.com"
                                  alt="$B" -(b"="" border="0"
                                  width="12" height="14"></span></b></a><b><span
                              style="font-size:9.5pt"><o:p></o:p></span></b></p>
                      </td>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">Target Milestone</span></b><a
                            moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4"><b><span
style="font-size:9.5pt;color:#5A3696;text-decoration:none"><img
                                  id="Picture_x0020_3"
                                  src="cid:part73.05050509.03060006@windriver.com"
                                  alt="$B" -(b"="" border="0"
                                  width="12" height="14"></span></b></a><b><span
                              style="font-size:9.5pt"><o:p></o:p></span></b></p>
                      </td>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-left:none;background:#BBBBBB;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><b><span
                              style="font-size:9.5pt">Age (days)</span></b><a
                            moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Editing_WW38_-_2013-09-18_-_Full_Pass_Release_1.5_M5.rc4"><b><span
style="font-size:9.5pt;color:#5A3696;text-decoration:none"><img
                                  id="Picture_x0020_2"
                                  src="cid:part73.05050509.03060006@windriver.com"
                                  alt="$B" -(b"="" border="0"
                                  width="12" height="14"></span></b></a><b><span
                              style="font-size:9.5pt"><o:p></o:p></span></b></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;padding:2.4pt 2.4pt 2.4pt
                        2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=3908"><span
                                style="color:#5A3696">3908</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium+<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">REOPENED<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1303"><span
                                style="color:#5A3696">1303</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">Kernel panic on
                            qemux86-64 when using runqemu kvm and cpu
                            host<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.4<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5
                            M2<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">211<o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=3936"><span
                                style="color:#5A3696">3936</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1333"><span
                                style="color:#5A3696">1333</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">[beagleobard xM]
                            Some error message with usbhs_omap in dmesg<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.4<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">204<o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;padding:2.4pt 2.4pt 2.4pt
                        2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=4727"><span
                                style="color:#5A3696">4727</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">IN
                            PROGRESS DESIGN<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1310"><span
                                style="color:#5A3696">1310</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">Opening build logs
                            does not work in HOB under Build Appliance<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">unspecified<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5
                            M5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">98<o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=4832"><span
                                style="color:#5A3696">4832</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">NEW<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1293"><span
                                style="color:#5A3696">1293</span></a><span
                              class="apple-converted-space">&nbsp;</span><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1292"><span
                                style="color:#5A3696">1292</span></a><span
                              class="apple-converted-space">&nbsp;</span><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1322"><span
                                style="color:#5A3696">1322</span></a><span
                              class="apple-converted-space">&nbsp;</span><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1291"><span
                                style="color:#5A3696">1291</span></a><span
                              class="apple-converted-space">&nbsp;</span><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1321"><span
                                style="color:#5A3696">1321</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">[Test Case 225]
                            ethernet static ip set in connman<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5
                            M5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">71<o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;padding:2.4pt 2.4pt 2.4pt
                        2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5108"><span
                                style="color:#5A3696">5108</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">NEEDINFO<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1279"><span
                                style="color:#5A3696">1279</span></a><span
                              class="apple-converted-space">&nbsp;</span><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1278"><span
                                style="color:#5A3696">1278</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">Lack of
                            xf86-video-mga package in
                            genericX86-64/genericX86<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5.2<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Future<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">14<o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5117"><span
                                style="color:#5A3696">5117</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">IN
                            PROGRESS REVIEW<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1279"><span
                                style="color:#5A3696">1279</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">generic-x86-64 image
                            does not recover display after standby<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5
                            M5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">14<o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;padding:2.4pt 2.4pt 2.4pt
                        2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5133"><span
                                style="color:#5A3696">5133</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium+<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1322"><span
                                style="color:#5A3696">1322</span></a><span
                              class="apple-converted-space">&nbsp;</span><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1321"><span
                                style="color:#5A3696">1321</span></a><span
                              class="apple-converted-space">&nbsp;</span><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1293"><span
                                style="color:#5A3696">1293</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">[Test Case 207]
                            sudoku-savant project compile in sdk image<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5
                            M5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">12<o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5146"><span
                                style="color:#5A3696">5146</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">ACCEPTED<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1275"><span
                                style="color:#5A3696">1275</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">btrfs image build
                            fails at do_rootfs<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5
                            M5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">9<o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;padding:2.4pt 2.4pt 2.4pt
                        2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5182"><span
                                style="color:#5A3696">5182</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Undecided<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">NEW<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1334"><span
                                style="color:#5A3696">1334</span></a><span
                              class="apple-converted-space">&nbsp;</span><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1333"><span
                                style="color:#5A3696">1333</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">[Beagleboard xM]X
                            can not startup with 3.10 kernel<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">---<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">5<span
                              class="apple-converted-space"><span
                                style="color:#236EDE">&nbsp;</span></span><span
                              style="color:#236EDE">(Recent)</span><o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5183"><span
                                style="color:#5A3696">5183</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Undecided<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">NEW<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1333"><span
                                style="color:#5A3696">1333</span></a><span
                              class="apple-converted-space">&nbsp;</span><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1334"><span
                                style="color:#5A3696">1334</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">[Beagleboard xM]
                            Network interface doesn't work with 3.10
                            kernel<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">---<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">5<span
                              class="apple-converted-space"><span
                                style="color:#236EDE">&nbsp;</span></span><span
                              style="color:#236EDE">(Recent)</span><o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;padding:2.4pt 2.4pt 2.4pt
                        2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5205"><span
                                style="color:#5A3696">5205</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium+<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">FIXED<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1305"><span
                                style="color:#5A3696">1305</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">meta-intel: some
                            images fail to build -sdk image<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5
                            M5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">2<span
                              class="apple-converted-space"><span
                                style="color:#236EDE">&nbsp;</span></span><span
                              style="color:#236EDE">(Recent)</span><o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5211"><span
                                style="color:#5A3696">5211</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Undecided<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">NEW<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1334"><span
                                style="color:#5A3696">1334</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">[Beagleboard xM] USB
                            doesn't work with 3.10 kernel<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">---<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1<span
                              class="apple-converted-space"><span
                                style="color:#236EDE">&nbsp;</span></span><span
                              style="color:#236EDE">(Recent)</span><o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;padding:2.4pt 2.4pt 2.4pt
                        2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5223"><span
                                style="color:#5A3696">5223</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">High<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">RESOLVED<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">FIXED<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1324"><span
                                style="color:#5A3696">1324</span></a><span
                              class="apple-converted-space">&nbsp;</span><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1323"><span
                                style="color:#5A3696">1323</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">[autobuilder]
                            u-boot-fw-utils does not build correctly<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5
                            M5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span
                            style="font-size:9.5pt;color:#FF4000">NEW</span><span
                            style="font-size:9.5pt"><o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5235"><span
                                style="color:#5A3696">5235</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">NEEDINFO<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1278"><span
                                style="color:#5A3696">1278</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">generic-x86_64 dmesg
                            errors on Sugarbay<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span
                            style="font-size:9.5pt;color:#FF4000">NEW</span><span
                            style="font-size:9.5pt"><o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;padding:2.4pt 2.4pt 2.4pt
                        2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5238"><span
                                style="color:#5A3696">5238</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">IN
                            PROGRESS REVIEW<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1281"><span
                                style="color:#5A3696">1281</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">generic-x86 image
                            does not have broadcom wifi modules enabled<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5
                            M5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;padding:2.4pt 2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span
                            style="font-size:9.5pt;color:#FF4000">NEW</span><span
                            style="font-size:9.5pt"><o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td style="border:solid #AAAAAA
                        1.0pt;border-top:none;background:#DDDDDD;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5259"><span
                                style="color:#5A3696">5259</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">Medium+<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">NEW<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <br>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt"><a
                              moz-do-not-send="true"
                              href="https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=1313"><span
                                style="color:#5A3696">1313</span></a><o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal"><span
                            style="font-size:9.5pt">adt-installer uses
                            wrong permissions when extracting the
                            sysroot<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span style="font-size:9.5pt">1.5
                            M5<o:p></o:p></span></p>
                      </td>
                      <td
                        style="border-top:none;border-left:none;border-bottom:solid
                        #AAAAAA 1.0pt;border-right:solid #AAAAAA
                        1.0pt;background:#DDDDDD;padding:2.4pt 2.4pt
                        2.4pt 2.4pt">
                        <p class="MsoNormal" style="text-align:center"
                          align="center"><span
                            style="font-size:9.5pt;color:#FF4000">NEW</span><span
                            style="font-size:9.5pt"><o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="9" style="border:solid #AAAAAA
                        1.0pt;border-top:none;background:#BBBBBB;padding:2.4pt
                        2.4pt 2.4pt 2.4pt">
                        <p class="MsoNormal"><b><span
                              style="font-size:9.5pt">Total: 16</span></b><span
                            style="font-size:9.5pt"><o:p></o:p></span></p>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>
        <p class="MsoListParagraph" style="margin-left:0in"><o:p>&nbsp;</o:p></p>
        <p class="MsoListParagraph"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><b>Build Performance Status:<o:p></o:p></b></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Below you can find the Milestone build
          performance charts. Data taken from: Data taken from:
          <a moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_Milestones_only_results">https://wiki.yoctoproject.org/wiki/Performance_Test#1.5_Milestones_only_results</a>.
          Attached you can find the detailed report with all the
          measurements. Overall, I can see that the build time is
          stable, no.<o:p></o:p></p>
        <p class="MsoListParagraph" style="margin-left:0in"><o:p>&nbsp;</o:p></p>
        <p class="MsoListParagraph" style="margin-left:0in"><img
            id="Picture_x0020_1"
            src="cid:part134.08070301.01060406@windriver.com"
            alt="cid:image003.jpg@01CEB872.01433F90" border="0"
            width="865" height="501"><o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Regards,<o:p></o:p></p>
        <p class="MsoNormal"><b><span
              style="font-size:8.0pt;color:#7F7F7F">--<o:p></o:p></span></b></p>
        <p class="MsoNormal"><b><span
              style="font-size:8.0pt;color:#7F7F7F">Alexandru Georgescu<o:p></o:p></span></b></p>
        <p class="MsoNormal"><b><span
              style="font-size:8.0pt;color:#7F7F7F">Yocto QA Engineer<o:p></o:p></span></b></p>
        <p class="MsoNormal"><b><span
              style="font-size:8.0pt;color:#7F7F7F">SSG/SSD Open Source
              Technology Center Romania</span></b><o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------040002040707060701020107
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part72.05010704.05080901@windriver.com>

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
fUH6vwAAAABJRU5ErkJggg==

--------------040002040707060701020107
Content-Type: image/gif
Content-Transfer-Encoding: base64
Content-ID: <part73.05050509.03060006@windriver.com>

R0lGODlhDAAOAMZxAAAAAAEBAQICAgMDAwQEBAUFBQYGBgcHBwgICAkJCQoKCgsLCwwMDA0NDQ4O
Dg8PDxAQEBERERISEhMTExQUFBUVFRYWFhcXFxgYGBkZGRoaGhsbGxwcHB0dHR4eHh8fHyAgICEh
ISIiIiMjIyQkJCUlJSYmJicnJygoKCkpKSoqKisrKywsLC0tLS4uLi8vLzAwMDExMTIyMjMzMzQ0
NDU1NTY2Njc3Nzg4ODk5OTo6Ojs7Ozw8PD09PT4+Pj8/P0BAQEFBQUJCQkNDQ0REREVFRUZGRkdH
R0hISElJSUpKSktLS0xMTE1NTU5OTk9PT1BQUFFRUVJSUlNTU1RUVFVVVVZWVldXV1hYWFlZWVpa
WltbW1xcXF1dXV5eXl9fX2BgYGFhYWJiYmNjY2RkZGVlZWZmZmdnZ2hoaGlpaWpqamtra2xsbG1t
bW5ubm9vb3BwcP///////////////////////////////////////////////////////////yH5
BAEKAH8ALAAAAAAMAAwAAAcrgHCCg4SDf4eIiYKJin+LcIyPkIuHhpKTlpiXjpqIkpyRoJCMlaOk
pYWpgQA7

--------------040002040707060701020107
Content-Type: image/jpeg
Content-Transfer-Encoding: base64
Content-ID: <part134.08070301.01060406@windriver.com>

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
GNLjb1DWVF/l/DOhx/as48EoIS4xU7WOc0sLmk3sRYq4mNkmeQY1h4ia+Wpjpw8AgTnNki19jrHY
thxSibHK/SoS2K2cLXg5N9l7bFqOCUhlzha4usxut3ySCPwhT0ngzQUcE0MTDm5skOaQ07Dfba5u
eclRVdNilLVVWYhkLyQ5wcGnJdkmzrO2GxI2c63VHnVL/E78JU9JhMNFWyTxSSgPBAiJGbbc3OSL
atZ51RUedUv8TvwlBSiIglo9s/0zv7KpS0e2f6Z39lUgIiICIiCXD/M4/r9pVSlw/wAzj+v2lVIP
DrXz2D/CvCXGK0/Fjc2mZ/KLu+1d2aVsEMkr9TWNLj6gFxvBGJzcCjmf+sqnvqHX/wCR1fZZWLxX
eREUQREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQaJ5hBC+Qse8NF8ljS5
x9QG1Q+PG9BxD/xnLqLyym6yycOPU4vM+imkpIZYZYmh16qncGkX2bRrWifwgqKaSWMUWezLi172
vDBqBOoG/I0/Yu/YL1IWxwKfwklrKMz09BJfSGwiN0jcpwPLt8k+gqjBsVdiUk7Jsw18bY3ZEbru
ZlC9nem4XWAAvYAXQAAkgC5VRpd/qEf0T/a1UKd3+oR/RP8Aa1UIJa7zN/rb7QqlLXeZv9bfaFUg
Ii41Ti8lPi5pWthcwMvkF1nnUTlc2Tqt6yg7KL5yi8IJZ5KdsrqMiXLsWSWyiGhwAvzXIJ5wsKzw
klpq2SJhppY2ztjc5jrmPUSWkFwu7ULW59hsg71X+pb9LH+MKhS1zgynDjewkYdQv+0FlpsXNL2L
+5BQvFo02Lml7F/csJcQghhfI/OhrGlxJieNQ+pBFhvwjF8Sqjra1zaZh9DRd32uPUuuuLgMzYcH
gMrZM7NeZ9onHynku5vSulpsXNL2L+5SemvL2pRT6bFzS9i/uTTYuaXsX9yrKhFPpsXNL2L+5NNi
5pexf3IKEU+mxc0vYv7k02Lml7F/cgoRT6bFzS9i/uTTYuaXsX9yChFPpsXNL2L+5NNi5pexf3IK
EU+mxc0vYv7k02Lml7F/cgoRT6bFzS9i/uTTYuaXsX9yChFPpsXNL2L+5NNi5pexf3IKEU+mxc0v
Yv7k02Lml7F/cgoRT6bFzS9i/uTTYuaXsX9yChFPpsXNL2L+5NNi5pexf3IKEU+mxc0vYv7k02Lm
l7F/cgoRT6bFzS9i/uTTYuaXsX9yChFPpsXNL2L+5NNi5pexf3IKEU+mxc0vYv7k02Lml7F/cgoR
T6bFzS9i/uTTYuaXsX9yChFPpsXNL2L+5NNi5pexf3IKEU+mxc0vYv7k02Lml7F/cgoWt7i2Nzg0
uIF8kbT6FjHUMlOS0Pvt8qNzfaFuQcvxrUf7TX/0/fWElbVVMEscdHWUsmbcWSkRmxA1DafYusim
L21mdPn9JxqPIhhjbJZjC6WojJJJyb/FsNVyfqWulxLG6qlqi+ijgmYGZppa+5JdrvcWItr1bF9K
irLi4bU4g/EpIq0PtmybNiIjaQ8gWfbXdtl0ajzql/id+EqlTVHnVL/E78JQUoiIJaPbP9M7+yqU
tHtn+md/ZVIJK6uioIRLNl2JsAxpcTqudQ5gCfqWqTF6SN0l5CRHFnSWsJBbe2o8pvyBZ4hQR4jC
2OV0jQ11w6N2SdhBF+YgkfWp6jAqarkLql00jDHm80X2aBe4OrXcc90G+TE6aN0IcXWmdkhwYclp
tezjyfWt1LVR1lM2eEuMb9hc0g7bbCo5cEgmELHvmMULSxsWX5BaRaxHLq1X26yqqKjgw+lbT0rC
yNpJAJJtc3O31oGHkaFHr5/aVTcc4UNFS076VjnwROcbkksBJ1lb9Cpujw8AQc3womMXg/VNjP6S
YCFlud5Df7rpUsDKWlhgZbJiYGD6hZcbF6WCbFsKpGQxgOldO8Bg1tYOX0XIXYFFTdHh4Ai+XqRR
cc4S45wtGhU3R4eAJoVN0eHgCI33HOEuOcLRoVN0eHgCaFTdHh4Ag33HOEuOcLRoVN0eHgCaFTdH
h4Ag33HOEuOcLRoVN0eHgCaFTdHh4Ag33HOEuOcLRoVN0eHgCaFTdHh4Ag33HOEuOcLRoVN0eHgC
aFTdHh4Ag33HOEuOcLRoVN0eHgCaFTdHh4Ag33HOEuOcLRoVN0eHgCaFTdHh4Ag33HOEuOcLRoVN
0eHgCaFTdHh4Ag33HOEuOcLRoVN0eHgCaFTdHh4Ag33HOEuOcLRoVN0eHgCaFTdHh4Ag33HOEuOc
LRoVN0eHgCaFTdHh4Ag33HOEuOcLRoVN0eHgCaFTdHh4Ag33HOEuOcLRoVN0eHgCaFTdHh4Ag33H
OEuOcLRoVN0eHgCaFTdHh4Ag33HOEuOcLRoVN0eHgCaFTdHh4Ag33HOEvdaNCpujw8AWyOGOEHNx
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
8J7k0+n3p4T3KpEEun0+9PCe5NPp96eE9yqRBLp9PvTwnuTT6fenhPcqkQS6fT708J7k0+n3p4T3
KpEEun0+9PCe5NPp96eE9yqRBLp9PvTwnuTT6fenhPcqkQS6fT708J7k0+n3p4T3KpEEun0+9PCe
5NPp96eE9yqRBLp9PvTwnuTT6fenhPcqkQS6fT708J7k0+n3p4T3KpEEun0+9PCe5NPp96eE9yqR
BLp9PvTwnuTT6fenhPcqkQS6fT708J7k0+n3p4T3KpEEun0+9PCe5NPp96eE9yqRBLp9PvTwnuTT
6fenhPcqkQS6fT708J7k0+n3p4T3KpEEun0+9PCe5NPp96eE9yqRBLp9PvTwnuTT6fenhPcqkQS6
fT708J7k0+n3p4T3KpEEun0+9PCe5a3VEc9VTiMl2S5xPknUMkq5EBERARSMmqJGlzIoskOc0XeQ
dRI5vQs8qr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91
Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHa
n3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKf
Kq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p
91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3U
Han3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFC
KfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKfKq91B
2p91Mqr3UHan3UFCKfKq91B2p91Mqr3UHan3UFCKVs0wnjjljjaHg2LXk7PqCqQEWiqldDTvewAu
FrX2azZY2rPl0/C7vQUoprVny6fhd3pas+XT8Lu9BSimtWfLp+F3elqz5dPwu70FKKa1Z8un4Xd6
WrPl0/C7vQUoprVny6fhd3pas+XT8Lu9BSimtWfLp+F3elqz5dPwu70FKKa1Z8un4Xd6WrPl0/C7
vQUoprVny6fhd3pas+XT8Lu9BSimtWfLp+F3elqz5dPwu70FKKa1Z8un4Xd6WrPl0/C7vQUoprVn
y6fhd3pas+XT8Lu9BSimtWfLp+F3elqz5dPwu70FKKa1Z8un4Xd6WrPl0/C7vQUopbVny6fhd3r2
1Z8un4Xd6ClFNas+XT8Lu9LVny6fhd3oKUU1qz5dPwu70tWfLp+F3egpRTWrPl0/C7vS1Z8un4Xd
6ClFNas+XT8Lu9LVny6fhd3oKUU1qz5dPwu70tWfLp+F3egpRTWrPl0/C7vS1Z8un4Xd6ClFNas+
XT8Lu9LVny6fhd3oKUU1qz5dPwu70tWfLp+F3egpRTWrPl0/C7vS1Z8un4Xd6ClFNas+XT8Lu9LV
ny6fhd3oKUU1qz5dPwu70tWfLp+F3egpRTWrPl0/C7vS1Z8un4Xd6ClFNas+XT8Lu9LVny6fhd3o
KUU1qz5dPwu71rmfVxQvkJgIY0utknXb60FqLHK9CINNH+pP0kn4yqFPR/qT9JJ+MqhAREQEREBE
RAREQEREBERAREQFzMYxdmEQQONPLUzVEohhhiLQ57yCbXcQBqB2ldNcbwgo6jEcN0enpKCra936
SGtc5rSOcFoJBBtydSDYMbp44s7XAUEYiZI91VLGzILiRknytRuNuw8hK3nF8OaKcnEKQCq/UEzN
/Tfw6/K+pfMu8GcYhwqSKCqpaiqfSQ0xknc7Y173O1kOPxXANJudVypMS8B66ukpnwinp4hSMpZa
aKpe1kTWuJGScglwsdnkm42oPqpMfw2LGfFUtXFHV5rPZDngeT17bAn1a1sbj2Evtk4pRG8giFp2
a3nY3bt9G1crF8AqqzGH1VM2lMc1DJRyOlJD2E3yXNsDfbY3tqUM/gM11PUMhgoWOfhUVFGRHbJk
aXEu2ahrGvbqQfTHFKFta2jdW0wq3EhsJkblkgXNm3vsWjG8dpMEopZqiaEStifJHC+VrHTZIvZt
9q+abgNdiGP4kRT0UdKcSimdUyMcKj9GyM2ZqsQSLXuLXO1V+Evg1X4nV1r6OPDZWVtGKZzqwOLo
CC4gssDe+V6LEA61OCe3c8c0sbJZauaGkjjcG5c0rADdodz6tR2Gx1X2LfNiNFSSQsqKynifUG0L
ZJWtMh5mgnXtGxcN/gzJPiLJajR5YW1zakseMq4FPm9hFr5Wv1LbiGD1j/CNtfTQ4fUQvhjhkbVA
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

--------------040002040707060701020107--

--------------060605090100070801040108--
