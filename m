Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F7CEE013B0
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 11:53:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Jul 2013 11:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,678,1367996400"; d="scan'208";a="346589453"
Received: from unknown (HELO [10.255.13.97]) ([10.255.13.97])
	by orsmga001.jf.intel.com with ESMTP; 16 Jul 2013 11:53:35 -0700
Message-ID: <51E596AE.1010706@linux.intel.com>
Date: Tue, 16 Jul 2013 11:53:34 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
	<CAPhnLPAqCMf889z8HNzhGEPNiaERgRc-nFBGaLG+zDavpFtkLg@mail.gmail.com>
In-Reply-To: <CAPhnLPAqCMf889z8HNzhGEPNiaERgRc-nFBGaLG+zDavpFtkLg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH 0/3] Enabling of the new testimage class for sanity tests
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
X-List-Received-Date: Tue, 16 Jul 2013 18:53:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/16/2013 09:12 AM, Flanagan, Elizabeth wrote:
> Merged into master and production. Thanks.
>

Turns out the buildtools-tarball does not have all the python modules 
needed, I am working this issue right now.

Sau!

> -b
>
> On Wed, Jul 10, 2013 at 10:32 AM, Stefan Stanacar
> <stefanx.stanacar@intel.com> wrote:
>> Hi Beth,
>>
>> The first two patches enable the new testimage class that has just been merged in master,
>> and it needs a real AB shakedown ;).
>>
>> On my local AB one of the problems I've had were timeouts
>> for qemu booting (when the machine was really loaded), and I've sent a patch to increase the timeout, but
>> this might need a little more tweaking for the Yocto AB. Also, one more setup issue could be DISPLAY / vnc server.
>> I've had some trouble with DISPLAY=localhost:1 that's why you'll notice
>> I've used DISPLAY=:1, that fixed the problem out on my machine. It has something to do with how the new class starts the runqemu script
>> and the enviroment.
>>
>>
>> The last patch has nothing to do with enabling, I just thought that we should run the sanity tests
>> for the sdk images too given that the new class has a gcc test. It adds a few minutes to the builds,
>> keep this one out if that's problem.
>>
>> Cheers,
>> Stefan
>>
>> The following changes since commit b26b257e16fddb7730d3b2a0c55c4b43a48ae54c:
>>
>>    Revert "buildset-config: build core-image-sato SDK" (2013-07-02 17:10:05 -0700)
>>
>> are available in the git repository at:
>>
>>    git://mirror.rb.intel.com/git.yoctoproject.org/poky-contrib stefans/yab-newsanity3
>>
>> for you to fetch changes up to e15d6185251e4c6f163577c7263239936d76e5b3:
>>
>>    buildsets: run sanity tests for core-image-sato-sdk images (2013-07-10 19:07:27 +0300)
>>
>> ----------------------------------------------------------------
>> Stefan Stanacar (3):
>>        RunSanityTests: add support for the new testimage class
>>        nightly-multilib,qa-systemd.conf: enable specific tests with the new class
>>        buildsets: run sanity tests for core-image-sato-sdk images
>>
>>   buildset-config/nightly-arm.conf                   |  2 +-
>>   buildset-config/nightly-mips.conf                  |  2 +-
>>   buildset-config/nightly-multilib.conf              |  8 +++----
>>   buildset-config/nightly-ppc.conf                   |  2 +-
>>   buildset-config/nightly-qa-systemd.conf            |  4 ++--
>>   buildset-config/nightly-x86-64.conf                |  2 +-
>>   buildset-config/nightly-x86.conf                   |  2 +-
>>   .../autobuilder/buildsteps/RunSanityTests.py       | 27 ++++++++++++++++------
>>   8 files changed, 31 insertions(+), 18 deletions(-)
>>
>> Stefan Stanacar (3):
>>    RunSanityTests: add support for the new testimage class
>>    nightly-multilib,qa-systemd.conf: enable specific tests with the new
>>      class
>>    buildsets: run sanity tests for core-image-sato-sdk images
>>
>>   buildset-config/nightly-arm.conf                   |  2 +-
>>   buildset-config/nightly-mips.conf                  |  2 +-
>>   buildset-config/nightly-multilib.conf              |  8 +++----
>>   buildset-config/nightly-ppc.conf                   |  2 +-
>>   buildset-config/nightly-qa-systemd.conf            |  4 ++--
>>   buildset-config/nightly-x86-64.conf                |  2 +-
>>   buildset-config/nightly-x86.conf                   |  2 +-
>>   .../autobuilder/buildsteps/RunSanityTests.py       | 27 ++++++++++++++++------
>>   8 files changed, 31 insertions(+), 18 deletions(-)
>>
>> --
>> 1.8.1.4
>>
>
>
>

