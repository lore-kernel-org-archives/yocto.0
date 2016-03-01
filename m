Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFE36E00BFF; Tue,  1 Mar 2016 07:02:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A14E00BEF
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 07:01:56 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id n190so21940300iof.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 07:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=U+8v+aoFVjWjTnSBo+WyWDmZgtWTiva9DzgvTl+nnDg=;
	b=ZLUeCQ788to9P4RGDpaB6DkQAXvNIdHJjTOa/CCEAQFZSIkV7lMCi/wOber2LCS5KB
	SafksFV8TgpO9+URLos1Gr6Ter/u3lKglF3eAFr/Cdtjr4IH2x/PdHIY+BTbe4JzOy5Q
	fHxCxZNJ9uu78dKyVyRxoSXPObo86DDACNbXwK0Gmay78y+HSUi5Su2QVg3sIQFZJgAD
	oimsc4a5bZy90Frfc2jIFBhiY7OjUNCwx3oX2WQwZdmBR0g0ZSKZFoaQ9R2hahmH0g2s
	rKKzhRBmgq1ZTyx5oEOV2WmKsMzNRz27UiSnrCee+NZTQEB3FV4d8ndPPpb20HgTma8f
	6wGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=U+8v+aoFVjWjTnSBo+WyWDmZgtWTiva9DzgvTl+nnDg=;
	b=E1QDpt8Zn07fKmhTjmNgvkbADEp0LGDz3TZRkwSI/8IYt/Zak7XHZufZwSJKgb4xsM
	RYABbAHblF6lPqG5grtWjzepNvQ0nWQ9q8NjLYCPNOdExhXlFvznNlYRRT50xb0BfKYv
	WVvYcnJenWh9btG2SUuOzJ7mW524+s7E+yZ8ql9oBKtmdDgZ7abywdwHDdF/otVY2lNN
	NivQcpMzr94V66Walrakj4+9mpWmKIeOXO/aBeE5mE8IfcsgvoVlPziqzZ+04HZUmqOv
	J4n0YWejcQZDKUREEvwFV66s0CYcJ3VIIumQOFRZVTw2bUVWQ0np0RnyiH7WdFBkJugh
	Vkqg==
X-Gm-Message-State: AG10YOTZw6tPZggIx3YIHRrr+sZClqNasgChae7ew5p8enW9FJUbbuwIFhD2iag6x66obhSxIDvmwQChOtw5nJPv
X-Received: by 10.107.185.8 with SMTP id j8mr23418901iof.94.1456844516105;
	Tue, 01 Mar 2016 07:01:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.130.214 with HTTP; Tue, 1 Mar 2016 07:01:16 -0800 (PST)
In-Reply-To: <CAPhnLPCJjUoh-mGxpZgHsO1K0OZY0ZWSnQCYN3V+kdGxsE=Ssg@mail.gmail.com>
References: <1456792612-28764-1-git-send-email-anibal.limon@linux.intel.com>
	<CAPhnLPCJjUoh-mGxpZgHsO1K0OZY0ZWSnQCYN3V+kdGxsE=Ssg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Tue, 1 Mar 2016 15:01:16 +0000
Message-ID: <CAPhnLPB_38Q6MTi6+6HpodFdpGPsX0NWJW_t8xabGqvRzVEuHQ@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][autobuilder] lib/buildsteps.py: Add BitbakeShellCommand class for dump bitbake logs
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
X-List-Received-Date: Tue, 01 Mar 2016 15:02:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 1 March 2016 at 12:54, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> On 1 March 2016 at 00:36, An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.inte=
l.com> wrote:
>> The BitbakeShellCommand is a new class for store common methods when
>> is aim to run bitbake inside an step.
>>
>> This commit overrides commandComplete method for search in bitbake
>> stdout if ERROR exists and if found then open the bitbake log and
>> dumps into new bitbake_logs output.

So, obviously some issues here with using open (controller doesn't
have access to the worker filesystem).

A thought. Scroll the logs, setting a property with the failures and
log location and use that at the end to have a
PublishBuildbotErrorLogs to DEST?

-b

>
> Yes, I like this a lot. I'm going to pull it into master-next and test
> it for a bit. Expect it in master/production in a few days.
>
> -b
>
>>
>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>> ---
>>  .../autobuilder/buildsteps/BuildImages.py          |  4 +++-
>>  .../autobuilder/buildsteps/BuildToolchainImages.py |  4 +++-
>>  .../autobuilder/buildsteps/GetBitbakeVersion.py    |  4 +++-
>>  .../autobuilder/buildsteps/RunESDKSanityTests.py   |  4 +++-
>>  .../autobuilder/buildsteps/RunSDKSanityTests.py    |  4 +++-
>>  .../autobuilder/buildsteps/RunSanityTests.py       |  4 +++-
>>  .../site-packages/autobuilder/lib/buildsteps.py    | 28 +++++++++++++++=
+++++++
>>  7 files changed, 46 insertions(+), 6 deletions(-)
>>
>> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildIma=
ges.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
>> index 4987ef3..5ed6e1a 100644
>> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
>> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py
>> @@ -17,7 +17,9 @@ from distutils.version import StrictVersion
>>  from buildbot.status.results import SUCCESS
>>  import os
>>
>> -class BuildImages(ShellCommand):
>> +from lib.buildsteps import BitbakeShellCommand
>> +
>> +class BuildImages(BitbakeShellCommand):
>>      haltOnFailure =3D False
>>      flunkOnFailure =3D True
>>      name =3D "BuildImages"
>> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToo=
lchainImages.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildT=
oolchainImages.py
>> index 51069c2..0594ac2 100644
>> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainI=
mages.py
>> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildToolchainI=
mages.py
>> @@ -15,7 +15,9 @@ from buildbot.steps.shell import ShellCommand
>>  from buildbot.process.buildstep import LogLineObserver
>>  import os
>>
>> -class BuildToolchainImages(ShellCommand):
>> +from lib.buildsteps import BitbakeShellCommand
>> +
>> +class BuildToolchainImages(BitbakeShellCommand):
>>      haltOnFailure =3D False
>>      flunkOnFailure =3D True
>>      name =3D "Building Toolchain Images"
>> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitba=
keVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbak=
eVersion.py
>> index dc6c25b..94b5efe 100644
>> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersi=
on.py
>> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetBitbakeVersi=
on.py
>> @@ -16,7 +16,9 @@ from buildbot.process.properties import WithProperties
>>  from twisted.python import log
>>  from autobuilder.config import *
>>
>> -class GetBitbakeVersion(ShellCommand):
>> +from lib.buildsteps import BitbakeShellCommand
>> +
>> +class GetBitbakeVersion(BitbakeShellCommand):
>>      haltOnFailure =3D False
>>      flunkOnFailure =3D False
>>      name =3D "GetBitbakeVersion"
>> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKS=
anityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKS=
anityTests.py
>> index e3df6c8..f2817d4 100644
>> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTe=
sts.py
>> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunESDKSanityTe=
sts.py
>> @@ -16,7 +16,9 @@ from buildbot.status.results import SUCCESS, FAILURE
>>  from twisted.python import log as tlog
>>  import os, re
>>
>> -class RunESDKSanityTests(ShellCommand):
>> +from lib.buildsteps import BitbakeShellCommand
>> +
>> +class RunESDKSanityTests(BitbakeShellCommand):
>>
>>      haltOnFailure =3D False
>>      flunkOnFailure =3D True
>> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSa=
nityTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSan=
ityTests.py
>> index cc0321f..1eeb4d3 100644
>> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTes=
ts.py
>> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSDKSanityTes=
ts.py
>> @@ -16,7 +16,9 @@ from buildbot.status.results import SUCCESS, FAILURE
>>  from twisted.python import log as tlog
>>  import os, re
>>
>> -class RunSDKSanityTests(ShellCommand):
>> +from lib.buildsteps import BitbakeShellCommand
>> +
>> +class RunSDKSanityTests(BitbakeShellCommand):
>>
>>      haltOnFailure =3D False
>>      flunkOnFailure =3D True
>> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanit=
yTests.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTes=
ts.py
>> index 62f04af..15a714c 100644
>> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.=
py
>> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunSanityTests.=
py
>> @@ -16,7 +16,9 @@ from buildbot.status.results import SUCCESS, FAILURE
>>  from twisted.python import log as tlog
>>  import os, re
>>
>> -class RunSanityTests(ShellCommand):
>> +from lib.buildsteps import BitbakeShellCommand
>> +
>> +class RunSanityTests(BitbakeShellCommand):
>>
>>      haltOnFailure =3D False
>>      flunkOnFailure =3D True
>> diff --git a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py b=
/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
>> index 3693a7a..4d2787d 100644
>> --- a/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
>> +++ b/lib/python2.7/site-packages/autobuilder/lib/buildsteps.py
>> @@ -11,6 +11,8 @@ __email__ =3D "anibal.limon@linux.intel.com"
>>  '''
>>
>>  import os
>> +import re
>> +
>>  from buildbot.steps.shell import ShellCommand
>>
>>  DEFAULT_SHELL =3D 'bash'
>> @@ -40,3 +42,29 @@ class ShellCommandCleanEnv(ShellCommand):
>>              pe_cmd +=3D "%s=3D\"$%s\" " % (pe, pe)
>>
>>          return "env -i %s %s -c " % (pe_cmd, shell)
>> +
>> +class BitbakeShellCommand(ShellCommand):
>> +    def commandComplete(self, cmd):
>> +        if cmd.didFail():
>> +            log =3D self.addLog('bitbake_logs')
>> +            paths_displayed =3D []
>> +
>> +            rexp =3D re.compile("^ERROR: Logfile of failure stored in: =
(.*)$")
>> +            out =3D cmd.logs['stdio'].getText()
>> +            for line in out.split('\n'):
>> +                m =3D rexp.match(line)
>> +                if m:
>> +                    path =3D m.group(1)
>> +
>> +                    if path in paths_displayed:
>> +                        continue
>> +
>> +                    paths_displayed.append(path)
>> +
>> +                    log.addStdout("Output of: %s\n" % path)
>> +                    with open(path, "r") as f:
>> +                        log.addStdout(f.read())
>> +                    log.addStdout("End output of: %s\n" % path)
>> +                    log.addStdout("\n\n\n\n")
>> +            log.finish()
>> +
>> --
>> 2.1.4
>>
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

