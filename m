Return-Path: <anoo@linux.ibm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAAE9E00DE4; Thu, 22 Aug 2019 11:19:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.158.5 listed in list.dnswl.org]
X-Greylist: delayed 1989 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Aug 2019 11:19:22 PDT
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61100E00BB5
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 11:19:21 -0700 (PDT)
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x7MHc5LN124421; Thu, 22 Aug 2019 13:46:00 -0400
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com
	[169.47.144.27])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2uhvrc8hpn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 22 Aug 2019 13:46:00 -0400
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
	by ppma05wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id
	x7MHjRwt004326; Thu, 22 Aug 2019 17:45:59 GMT
Received: from b03cxnp07029.gho.boulder.ibm.com
	(b03cxnp07029.gho.boulder.ibm.com [9.17.130.16])
	by ppma05wdc.us.ibm.com with ESMTP id 2ue976c42c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 22 Aug 2019 17:45:59 +0000
Received: from b03ledav005.gho.boulder.ibm.com
	(b03ledav005.gho.boulder.ibm.com [9.17.130.236])
	by b03cxnp07029.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id x7MHjwiK54657356
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK); Thu, 22 Aug 2019 17:45:58 GMT
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BBCE8BE058;
	Thu, 22 Aug 2019 17:45:58 +0000 (GMT)
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8F20ABE056;
	Thu, 22 Aug 2019 17:45:58 +0000 (GMT)
Received: from ltc.linux.ibm.com (unknown [9.16.170.189])
	by b03ledav005.gho.boulder.ibm.com (Postfix) with ESMTP;
	Thu, 22 Aug 2019 17:45:58 +0000 (GMT)
MIME-Version: 1.0
Date: Thu, 22 Aug 2019 12:46:25 -0500
From: Adriana Kobylak <anoo@linux.ibm.com>
To: Richard.Schmitt@commscope.com
In-Reply-To: <OFC0267C60.13E1331D-ON8625845E.006071E1-8625845E.00607C75@notes.na.collabserv.com>
References: <OFC0267C60.13E1331D-ON8625845E.006071E1-8625845E.00607C75@notes.na.collabserv.com>
Message-ID: <9829dda63f7e17007a17c85d01fea270@linux.vnet.ibm.com>
X-Sender: anoo@linux.ibm.com
User-Agent: Roundcube Webmail/1.0.1
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-08-22_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=760 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1908220158
Cc: yocto@yoctoproject.org, openbmc@lists.ozlabs.org
Subject: Re: assembling lvm disk images
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
X-List-Received-Date: Thu, 22 Aug 2019 18:19:28 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit


> "Schmitt, Richard" <Richard.Schmitt@commscope.com> wrote on 08/22/2019
> 09:28:23 AM:
> 
>> From: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
>> To: Brad Bishop <bradleyb@fuzziesquirrel.com>, OpenBMC Maillist
>> <openbmc@lists.ozlabs.org>, "yocto@yoctoproject.org"
> <yocto@yoctoproject.org>
>> Cc: Adriana Kobylak <anoo@us.ibm.com>
>> Date: 08/22/2019 09:28 AM
>> Subject: [EXTERNAL] RE: [yocto] assembling lvm disk images
>> 
>> Not sure the type of lvm you're trying to use, but we successfully
>> build a dm-verity rootfs offline.
>> 
>> It probably is specific to what type of lvm you are using.

We were thinking lvm2. Is there a link or steps you could share
on how you're generating the rootfs image?

>> 
>> Rich
>> 

