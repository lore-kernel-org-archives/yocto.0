Return-Path: <prvs=0107e7e980=javier.tia@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 232A7E00D1C; Tue, 23 Jul 2019 10:03:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.147.86 listed in list.dnswl.org]
X-Greylist: delayed 564 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Jul 2019 10:03:54 PDT
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com
	[148.163.147.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7640E00A49
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 10:03:54 -0700 (PDT)
Received: from pps.filterd (m0148663.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x6NGkEmp014234
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 16:54:29 GMT
Received: from g2t2353.austin.hpe.com (g2t2353.austin.hpe.com [15.233.44.26])
	by mx0a-002e3701.pphosted.com with ESMTP id 2tx60bg2nu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 16:54:29 +0000
Received: from g2t2360.austin.hpecorp.net (g2t2360.austin.hpecorp.net
	[16.196.225.135])
	by g2t2353.austin.hpe.com (Postfix) with ESMTP id 21E7584
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 16:54:29 +0000 (UTC)
Received: from tiamarin-g3.americas.hpqcorp.net
	(tiamarin-g3.americas.hpqcorp.net [10.250.89.56])
	by g2t2360.austin.hpecorp.net (Postfix) with ESMTP id D64043B
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 16:54:28 +0000 (UTC)
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Javier_Ti=c3=a1?= <javier.tia@hpe.com>
Organization: Hewlett Packard Enteprise
Message-ID: <d7c2e9be-a839-e504-58aa-c09d55ac4c38@hpe.com>
Date: Tue, 23 Jul 2019 10:54:06 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-07-23_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=557 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1907230169
Subject: Recommended practice to live together hardcoded Linux GIDs with dynamic GIDs
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
X-List-Received-Date: Tue, 23 Jul 2019 17:03:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

On a random manner, these errors appear:

     ERROR: do_install: groupadd command did not succeed
     ERROR: do_install: Function failed: useradd_sysroot

It's hard to reproduce. Tried several times to reproduce the error with 
`bitbake -c install <RECIPE>` and `bitbake -C install <RECIPE>`. It is 
the only information we have from the build logs. Sounds like a race 
condition.

The recipe is creating several hardcoded Linux groups (GID) with useradd 
class.

In this thread [1] from 2014, there is a practice to the limitation of 
users/groups creation dependency.

[1] 
http://lists.openembedded.org/pipermail/openembedded-core/2014-June/211737.html

Is there to this date a better practice to make work together the Linux 
hardcoded GIDs with the dynamic GID?

Should be all the GIDs be created dynamically?

Poky 2.1 is being used.


Thanks,

-- 
Javier Tiá


