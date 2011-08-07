Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F32E011C7
	for <yocto@yoctoproject.org>; Sun,  7 Aug 2011 11:11:04 -0700 (PDT)
Received: from mail-yw0-f52.google.com ([209.85.213.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 07 Aug 2011 11:11:12 -0700
Received: by ywb5 with SMTP id 5so5475414ywb.25
	for <yocto@yoctoproject.org>; Sun, 07 Aug 2011 11:11:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.145.8 with SMTP id o8mr4251371yhj.399.1312740670595; Sun,
	07 Aug 2011 11:11:10 -0700 (PDT)
Received: by 10.236.95.145 with HTTP; Sun, 7 Aug 2011 11:11:10 -0700 (PDT)
In-Reply-To: <4E3DCC44.6050904@linux.intel.com>
References: <4E3D86A2.9080802@linux.intel.com>
	<4E3DCC44.6050904@linux.intel.com>
Date: Sun, 7 Aug 2011 11:11:10 -0700
Message-ID: <CAPhnLPBYMtEy-ny0Yo+QMHWU7chbk2zj4xG-rC1gqpGYMASTqA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Yan,
	Xiaofeng" <Xiaofeng.Yan@windriver.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: 3 Failures in RC3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 07 Aug 2011 18:11:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Aug 6, 2011 at 4:20 PM, Saul Wold <sgw@linux.intel.com> wrote:
> On 08/06/2011 11:23 AM, Saul Wold wrote:
>>
>> Folks,
>>
>> We currently have 3 failures on the RC3 build for M3. They are all
>> related to LSB builds. If you are on the TO: line please review your
>> issues as we need a prompt fix.
>>
>> 1348: Qt3 Fails to build for ARM LSB
>>
>> 1349: Shared State Information gets lost for Mips FSTests
>> I am trying to reproduce this on the Autobuilder
>>
> I am still working on reproducing this one, might be autobuilder related as
> my local autobuilder build seems to be OK right now.
> I have 2 sets of sstate for fstests, which may mean that something is
> different between the poky and poky-lsb builds.
>
> On the autobuilder, the sstate directory was empty, so I can't verify
> short of restarting the build again.

Look at http://autobuilder.yoctoproject.org/nightly/CURRENT/sstate-cache

That is the saved sstate for that build.

>
>> 1450: ccache directory does not get created correct
>
> oops 1350 is the correct bugid!
>
>> I can reproduce this one very easily by building, saving the
>> sstate-cache directory and then building again with a clean tmp
>> directory. The ccache/x86-64-poky-linux directory does not get created
>> and the kernel-configme task fail during the HOSTCC execution.
>>
> I have a fix for this one, in MUT and oe-contrib/sgw/stage.
>

Is this also what is occurring during the meta-intel builds?

>> Please take a look or if you know of these issues, please let me know.
>>
>> Thanks
>>
>

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

