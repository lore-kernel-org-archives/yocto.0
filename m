Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9EB7E00994; Thu, 18 Oct 2018 13:59:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,KHOP_DYNAMIC,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.147.191 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from mx0a-000e8d01.pphosted.com (mx0a-000e8d01.pphosted.com
	[148.163.147.191])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6A3EE00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 13:59:13 -0700 (PDT)
Received: from pps.filterd (m0136170.ppops.net [127.0.0.1])
	by mx0b-000e8d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w9IKrHSL012672
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 13:59:13 -0700
Received: from edison.ad.selinc.com (edison.selinc.com [74.117.212.50])
	by mx0b-000e8d01.pphosted.com with ESMTP id 2n6ckurjk8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 13:59:12 -0700
In-Reply-To: <2196576.1fsnYOVap6@localhost.localdomain>
References: <OF38E74854.80860B87-ON88258329.0081F4B2-8825832A.0060D044@selinc.com>
	<57ADD8B0-DA93-4895-95E5-FD13C6597D89@gmail.com>
	<2196576.1fsnYOVap6@localhost.localdomain>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
MIME-Version: 1.0
X-KeepSent: D6FF77C4:D7AA8A19-8825832A:0072D44B;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP5 Octobe4, 2013
Message-ID: <OFD6FF77C4.D7AA8A19-ON8825832A.0072D44B-8825832A.00734852@selinc.com>
From: Aaron_Wright@selinc.com
Date: Thu, 18 Oct 2018 13:59:11 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 10/18/2018 01:59:12 PM,
	Serialize complete at 10/18/2018 01:59:12 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-18_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1810180175
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 18 Oct 2018 20:59:14 -0000
Content-Type: text/plain; charset="US-ASCII"

> Paul Eggleton <paul.eggleton@linux.intel.com> wrote on 10/18/2018 
12:30:07 PM:
>
> I think we would *like* this to be possible, from what I can tell I 
think the 
> issue is that the copies of the library in the sysroots of other 
dependent 
> recipes aren't being updated. The eSDK (and devtool) were originally 
written 
> when there weren't recipe-specific sysroots, and this stuff was a bit 
simpler.
> 
> Moving back to the full build system won't automatically fix this, 
though it 
> does make workarounds possible - you'd need to rebuild the dependent 
recipes 
> to get their sysroots updated.
> 
> Cheers,
> Paul
> ... snip ...

I put together a devtool plugin to almost do what I want:

> from devtool import exec_build_env_command, DevtoolError
> 
> def sdk_sysroot(args, config, basepath, workspace):
>     """Entry point for the devtool sdk-sysroot command"""
> 
>     try:
>         exec_build_env_command(config.init_path, basepath, 'bitbake 
build-sysroots', watch=True)
>     except bb.process.ExecutionError as e:
>         raise DevtoolError('Failed to bitbake build-sysroots:\n%s' % 
(str(e)))
> 
> def register_commands(subparsers, context):
>     """Register devtool subcommands from the sdk plugin"""
>     if context.fixed_setup:
>         parser_sdk_sysroot = subparsers.add_parser(
>             'sdk-sysroot',
>             help='Update the SDK sysroot',
>             description='Updates the SDK sysroot so that changes made to 
recipes in the workspace will be available,',
>             group='sdk')
>         parser_sdk_sysroot.set_defaults(func=sdk_sysroot)

This allows me to "devtool modify <DEPENDENT_RECIPE>", edit the code, 
"devtool build <DEPENDENT_RECIPE>", "devtool sdk-sysroot", and use the new 
code from the dependent recipe immediately.

This makes me wonder if "bitbake build-sysroots" should not be a part of 
"devtool build", like it is for "devtool sdk-install" (where I stole it 
from).

