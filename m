Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADAFDE00994; Thu, 25 Oct 2018 08:28:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,KHOP_DYNAMIC,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.147.191 listed in list.dnswl.org]
	*  2.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from mx0a-000e8d01.pphosted.com (mx0a-000e8d01.pphosted.com
	[148.163.147.191])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22468E008E3
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 08:28:49 -0700 (PDT)
Received: from pps.filterd (m0136170.ppops.net [127.0.0.1])
	by mx0b-000e8d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w9PFODWo004898; Thu, 25 Oct 2018 08:28:47 -0700
Received: from edison.ad.selinc.com (edison.selinc.com [74.117.212.50])
	by mx0b-000e8d01.pphosted.com with ESMTP id 2n9p759j59-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 25 Oct 2018 08:28:47 -0700
In-Reply-To: <886965e3-607b-6132-7c47-ecb03e604703@windriver.com>
References: <OF38E74854.80860B87-ON88258329.0081F4B2-8825832A.0060D044@selinc.com>
	<57ADD8B0-DA93-4895-95E5-FD13C6597D89@gmail.com>
	<2196576.1fsnYOVap6@localhost.localdomain>
	<OFD6FF77C4.D7AA8A19-ON8825832A.0072D44B-8825832A.00734852@selinc.com>
	<886965e3-607b-6132-7c47-ecb03e604703@windriver.com>
To: ChenQi <Qi.Chen@windriver.com>
MIME-Version: 1.0
X-KeepSent: DAF9168D:125D4284-88258331:0052C4D4;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP5 Octobe4, 2013
Message-ID: <OFDAF9168D.125D4284-ON88258331.0052C4D4-88258331.0055058E@selinc.com>
From: Aaron_Wright@selinc.com
Date: Thu, 25 Oct 2018 08:28:40 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 10/25/2018 08:28:46 AM,
	Serialize complete at 10/25/2018 08:28:46 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-25_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1810250129
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Working on Dependent Recipes in eSDK
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
X-List-Received-Date: Thu, 25 Oct 2018 15:28:50 -0000
Content-Type: text/plain; charset="US-ASCII"

> ChenQi <Qi.Chen@windriver.com> wrote on 10/22/2018 07:04:32 PM:
> 
> Hi Aaron,
> 
> The main pain for now is that `devtool sdk-install <DEPEND_RECIPE>' does 

> not work as expected, right?
> I just checked the codes of sdk-install, and found that it does not fit 
> the current RSS design.
> I'd like to check with you if this is the major concern from your team?
> Do you have some other concerns?
> I'll open enhancements/bugs on bugzilla and hopefully will work on them 
> in the 2.7 development cycle.
> 
> Best Regards,
> Chen Qi
> 
> ... snip ...

Well, I'm not quite sure how "devtool sdk-install <DEPENDENT_RECIPE>" 
relates after "devtool modify <DEPENDENT_RECIPE>" has been called. 

My developers use devtool to install dependent recipes into the eSDK when
they start working on something. Often they find that they need to make a
change in the library code that a dependent recipe provides. In effect,
they are developing a patch for the dependent recipe. So they use devtool
to say they're going to modify that dependent recipe, and they go and
make the changes they want. Then what? How do they get those changes,
that patch, available to the eSDK?

Any changes made to the library code provided by the dependent recipe are
not available to the eSDK, except through devtool commands. In effect
there are two different worlds at play, the eSDK sysroots versus the
recipe sysroots. The devtool commands seem to make use of the recipe
sysroots, but in my mind that defeats the purpose of an eSDK. So I made
a plug-in for devtool were I can force the eSDK sysroots to be updated.
I'm not sure how that works, but it seems to propagate the workspace 
(recipe sysroot land) to the eSDK, so changes that developers make are
now available for use.

I want my developers to use the toolchain (cmake, make, gcc, etc) 
provided by the eSDK and by things installed into it 
(devtool sdk-install), rather than having to use devtool as their
iterative build command.

Ultimately, I would like to be able to skip my devtool plug-in, as it 
requires the use of "devtool build <DEPENDENT_RECIPE>" and 
"devtool sdk-sysroot" each time a dependent recipe is modified. But I am
not sure how that would work, other than the devtool build command 
should be updating the eSDK sysroots itself.

