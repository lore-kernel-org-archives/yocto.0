Return-Path: <harshjain32@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BF69E00781; Fri, 19 Sep 2014 21:36:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (harshjain32[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FC4FE00576
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 21:36:17 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id y10so571771wgg.18
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 21:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Ci2F+Vf4bz/X3RwOHgZ6S+5yxF1MZD4GUZUk9lSK5II=;
	b=A+/wI/rhAAfgOm5CplYsYvm7ygmEFKYAYzJVh42L7mOq8qTDtnSULOkR/rBqCmN5bo
	uznxCHRlEOfFxvdpABO4BUy1cfq1zKX4x0Knx8QIoAM6NfjwfQrFw/+FBLawchVLM8VS
	VhotT01JhgcSMnVTjWTZolZE4lpm/3QekN99h33SzbSyx2KVS2YnvsVEAjvbiLcMwfa9
	QtZvvFEQJV7mejt90AfiE+iw+wyMdRpvkAJBQjyvziNdwlG0L/j6ZGmZsMBoYw8v49+W
	PfHH8DE62bI26/bcUyAo2DNJKdSVP7UolcGa+aAvMl+insukpOiJozs1+uOPgqQ2UIPu
	CzLQ==
MIME-Version: 1.0
X-Received: by 10.180.212.78 with SMTP id ni14mr1116483wic.44.1411187776604;
	Fri, 19 Sep 2014 21:36:16 -0700 (PDT)
Received: by 10.216.96.11 with HTTP; Fri, 19 Sep 2014 21:36:16 -0700 (PDT)
In-Reply-To: <CAJTo0LaojbZbjz-io_L3W3tQUPzL0ZMYFA11vjnW8NY6GVemzQ@mail.gmail.com>
References: <CAKuL1XTwmyTHTOZxwxCh31F3aB0M=PWExkO-SVLwXhGGD1vveA@mail.gmail.com>
	<CAJTo0LaojbZbjz-io_L3W3tQUPzL0ZMYFA11vjnW8NY6GVemzQ@mail.gmail.com>
Date: Sat, 20 Sep 2014 10:06:16 +0530
Message-ID: <CAKuL1XQegnpVr2neK-z+sgBbQjNEb-S0ZF2=owBg11VgXSRMRA@mail.gmail.com>
From: harsh jain <harshjain32@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Update recipe file to avoid conflict with other dependant packages
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
X-List-Received-Date: Sat, 20 Sep 2014 04:36:28 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I am trying to reproduce the  warding issue again from last 3 days.
This time I am struck with some more inconsitent errors like

Traceback (most recent call last):
  File "/home/aricent/openembedded/openembedded-core/bitbake/lib/bb/command.py",
line 99, in runAsyncCommand
    commandmethod(self.cmds_async, self, options)
  File "/home/aricent/openembedded/openembedded-core/bitbake/lib/bb/command.py",
line 331, in generateTargetsTree
    command.cooker.generateTargetsTree(klass, pkg_list)
  File "/home/aricent/openembedded/openembedded-core/bitbake/lib/bb/cooker.py",
line 888, in generateTargetsTree
    tree = self.generatePkgDepTreeData(pkgs, 'build')
  File "/home/aricent/openembedded/openembedded-core/bitbake/lib/bb/cooker.py",
line 634, in generatePkgDepTreeData
    depend_tree["pn"][pn][ei] = vars(self.recipecache)[ei][fn]
KeyError: '/home/aricent/openembedded/openembedded-core/meta/recipes-extended/tcp-wrappers/tcp-wrappers_7.6.bb'



The name of recipe file is not constant some time it comes with some
other recipe file the workaround for this is,

      1) Rename the recipe file to _old(tcp-wrappers_7.6.bb_old) and
start the HOB.
      2) In Drop Down Menu select machine "genericarm8".This time it
will parse successfully.
      3) Then after build image steps fail,obviously it will because
he will not get tcp-wrapper bb file.
      4) Now if I rename the recipe again to original.repeats the step
2,3 . It moves forward.

I am suspect that some temporary file is causing the this problem. I
have used kill command to kill the HOB.


Regards
Harsh Jain



On Sat, Sep 20, 2014 at 12:10 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 19 September 2014 19:11, harsh jain <harshjain32@gmail.com> wrote:
>> I am trying to install python version 2.7.4 after updating recipe file
>> of version 2.7.3.There are several other packages in my build system
>> which depends upon Python version 2.7.3.When I try to make build these
>> dependant packages give warning.
>> What I needs to update in build environment so that these packages can
>> also included.I am assuming that these dependants packages are also
>> compatible with python verson 2.7.4.
>
> What are these warnings, because I can't think of anything off-hand
> which will warn when the minor version changes.
>
> Ross

