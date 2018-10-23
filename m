Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DAB2E00BBF; Mon, 22 Oct 2018 18:58:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1330E00B45
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 18:58:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w9N1wRfP004696
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 22 Oct 2018 18:58:27 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Mon, 22 Oct 2018 18:58:26 -0700
To: <Aaron_Wright@selinc.com>, Paul Eggleton <paul.eggleton@linux.intel.com>
References: <OF38E74854.80860B87-ON88258329.0081F4B2-8825832A.0060D044@selinc.com>
	<57ADD8B0-DA93-4895-95E5-FD13C6597D89@gmail.com>
	<2196576.1fsnYOVap6@localhost.localdomain>
	<OFD6FF77C4.D7AA8A19-ON8825832A.0072D44B-8825832A.00734852@selinc.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <886965e3-607b-6132-7c47-ecb03e604703@windriver.com>
Date: Tue, 23 Oct 2018 10:04:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <OFD6FF77C4.D7AA8A19-ON8825832A.0072D44B-8825832A.00734852@selinc.com>
X-Originating-IP: [128.224.162.218]
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
X-List-Received-Date: Tue, 23 Oct 2018 01:58:31 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Aaron,

The main pain for now is that `devtool sdk-install <DEPEND_RECIPE>' does 
not work as expected, right?
I just checked the codes of sdk-install, and found that it does not fit 
the current RSS design.
I'd like to check with you if this is the major concern from your team?
Do you have some other concerns?
I'll open enhancements/bugs on bugzilla and hopefully will work on them 
in the 2.7 development cycle.

Best Regards,
Chen Qi


On 10/19/2018 04:59 AM, Aaron_Wright@selinc.com wrote:
>> Paul Eggleton <paul.eggleton@linux.intel.com> wrote on 10/18/2018
> 12:30:07 PM:
>> I think we would *like* this to be possible, from what I can tell I
> think the
>> issue is that the copies of the library in the sysroots of other
> dependent
>> recipes aren't being updated. The eSDK (and devtool) were originally
> written
>> when there weren't recipe-specific sysroots, and this stuff was a bit
> simpler.
>> Moving back to the full build system won't automatically fix this,
> though it
>> does make workarounds possible - you'd need to rebuild the dependent
> recipes
>> to get their sysroots updated.
>>
>> Cheers,
>> Paul
>> ... snip ...
> I put together a devtool plugin to almost do what I want:
>
>> from devtool import exec_build_env_command, DevtoolError
>>
>> def sdk_sysroot(args, config, basepath, workspace):
>>      """Entry point for the devtool sdk-sysroot command"""
>>
>>      try:
>>          exec_build_env_command(config.init_path, basepath, 'bitbake
> build-sysroots', watch=True)
>>      except bb.process.ExecutionError as e:
>>          raise DevtoolError('Failed to bitbake build-sysroots:\n%s' %
> (str(e)))
>> def register_commands(subparsers, context):
>>      """Register devtool subcommands from the sdk plugin"""
>>      if context.fixed_setup:
>>          parser_sdk_sysroot = subparsers.add_parser(
>>              'sdk-sysroot',
>>              help='Update the SDK sysroot',
>>              description='Updates the SDK sysroot so that changes made to
> recipes in the workspace will be available,',
>>              group='sdk')
>>          parser_sdk_sysroot.set_defaults(func=sdk_sysroot)
> This allows me to "devtool modify <DEPENDENT_RECIPE>", edit the code,
> "devtool build <DEPENDENT_RECIPE>", "devtool sdk-sysroot", and use the new
> code from the dependent recipe immediately.
>
> This makes me wonder if "bitbake build-sysroots" should not be a part of
> "devtool build", like it is for "devtool sdk-install" (where I stole it
> from).



