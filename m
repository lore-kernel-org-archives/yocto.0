Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7316E007DA; Tue, 28 Jun 2016 07:55:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A807E0077E
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 07:55:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 28 Jun 2016 07:55:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,541,1459839600"; 
	d="asc'?scan'208";a="996630363"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.159])
	([10.219.5.159])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jun 2016 07:55:09 -0700
To: pidge@toganlabs.com, yocto@yoctoproject.org
References: <1466550472-1365-1-git-send-email-anibal.limon@linux.intel.com>
	<1467030508.31845.8.camel@toganlabs.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <57728FD6.8090007@linux.intel.com>
Date: Tue, 28 Jun 2016 09:55:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1467030508.31845.8.camel@toganlabs.com>
Cc: joshua.g.lock@intel.com
Subject: Re: [[yocto-autobuilder][PATCHv2] 00/15] Add support for generate bitbake/oe-selftest error reports
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
X-List-Received-Date: Tue, 28 Jun 2016 14:55:35 -0000
X-Groupsio-MsgNum: 30789
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="K0Re4vA3PF4h5ESjgUFFXbb56ggmusaD9"

--K0Re4vA3PF4h5ESjgUFFXbb56ggmusaD9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 06/27/2016 07:28 AM, Beth 'pidge' Flanagan wrote:
> Pulled into master, thanks!

Thanks, when i was reviewing the integration i noticed that i miss to
update the buildstep reference (DownloadBitbakeErrorReports ->
DownloadErrorReports) into nightly-world-lsb.conf.

Sorry about that, i sent another patch for fix it,

https://lists.yoctoproject.org/pipermail/yocto/2016-June/030860.html

	alimon

>
>=20
> -b
>=20
> On Tue, 2016-06-21 at 18:07 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>> This v2 adds support for generate also oe-selftest reports this is
>> almost
>> the previous version with changes requested in review [1], the next
>> patches
>> starts from patch,
>>
>> 	autobuilder/lib/{ABtools,builsteps}.py: Create
>> save_error_report func
>>
>> Also the changes could be reviewed at [2].
>>
>> [1] https://lists.yoctoproject.org/pipermail/yocto/2016-June/030515.h
>> tml
>> [2] http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?
>> h=3Dcontrib/alimon/devel
>>
>> An=C3=ADbal Lim=C3=B3n (15):
>>   lib/buildsteps.py: Add BitbakeShellCommand class
>>   lib/buildsteps.py: Add BitbakeLogLineObserver for
>>     BitbakeShellCommands.
>>   lib/buildsteps: BitbakeShellCommand add support for create error
>>     reports
>>   lib/ABTools: Add functions for get errordir path in controller and
>>     worker
>>   buildbot: Add support for DirectoryDownload transfer step
>>   autobuilder/buildsteps: Add DownloadBitbakeErrorReports step
>>   buiidsets: Add DownloadBitbakeErrorReport step
>>   lib/buildsteps.py: BitbakeShellCommand add support for error_type
>>   autobuilder/lib/buildsteps.py: BitbakeShellCommand update error
>> report
>>         types.
>>   autobuilder/lib/{ABtools,builsteps}.py: Create save_error_report
>> func
>>   autobuilder/lib/ABTools.py: Add get_lsb_distro function
>>   buildsteps/RunOeSelftest.py: Add support for create/save error
>> reports
>>   nightly-oe-selftest.conf: Add steps for Download and Send error
>>     report.
>>   autobuilder/buildsteps: Rename DownloadBitbakeErrorReports to
>>     DownloadErrorReports
>>   buildset-config: Update references from DownloadBitbakeErrorReports
>> to
>>     DownloadErrorReports
>>
>>  buildset-config.controller/build-appliance.conf    |   1 +
>>  buildset-config.controller/buildtools.conf         |   1 +
>>  buildset-config.controller/nightly-arm-lsb.conf    |   1 +
>>  buildset-config.controller/nightly-arm.conf        |   1 +
>>  buildset-config.controller/nightly-arm64.conf      |   1 +
>>  .../nightly-deb-non-deb.conf                       |   1 +
>>  buildset-config.controller/nightly-deb.conf        |   1 +
>>  buildset-config.controller/nightly-ipk.conf        |   1 +
>>  buildset-config.controller/nightly-mips-lsb.conf   |   1 +
>>  buildset-config.controller/nightly-mips.conf       |   1 +
>>  buildset-config.controller/nightly-mips64.conf     |   1 +
>>  buildset-config.controller/nightly-multilib.conf   |   1 +
>>  buildset-config.controller/nightly-musl.conf       |   1 +
>>  buildset-config.controller/nightly-no-x11.conf     |   1 +
>>  buildset-config.controller/nightly-non-gpl3.conf   |   1 +
>>  .../nightly-oe-selftest.conf                       |   5 +-
>>  buildset-config.controller/nightly-oecore.conf     |   1 +
>>  buildset-config.controller/nightly-ppc-lsb.conf    |   1 +
>>  buildset-config.controller/nightly-ppc.conf        |   1 +
>>  buildset-config.controller/nightly-qa-extras.conf  |   1 +
>>  .../nightly-qa-logrotate.conf                      |   1 +
>>  buildset-config.controller/nightly-qa-pam.conf     |   1 +
>>  .../nightly-qa-skeleton.conf                       |   1 +
>>  buildset-config.controller/nightly-qa-systemd.conf |   1 +
>>  .../nightly-qa-targetbuilds.conf                   |   1 +
>>  .../nightly-rpm-non-rpm.conf                       |   1 +
>>  buildset-config.controller/nightly-rpm.conf        |   1 +
>>  buildset-config.controller/nightly-uclibc.conf     |   1 +
>>  buildset-config.controller/nightly-world-lsb.conf  |   1 +
>>  buildset-config.controller/nightly-world.conf      |   1 +
>>  buildset-config.controller/nightly-x32.conf        |   1 +
>>  buildset-config.controller/nightly-x86-64-lsb.conf |   1 +
>>  buildset-config.controller/nightly-x86-64.conf     |   1 +
>>  buildset-config.controller/nightly-x86-lsb.conf    |   1 +
>>  buildset-config.controller/nightly-x86.conf        |   1 +
>>  buildset-config.controller/nightly.conf            |   1 +
>>  buildset-config.controller/poky-tiny.conf          |   1 +
>>  buildset-config.examples/awesomefirmware.conf      |   1 +
>>  buildset-config.freescale/nightly-fsl-arm-lsb.conf |   1 +
>>  buildset-config.freescale/nightly-fsl-arm.conf     |   1 +
>>  buildset-config.freescale/nightly-fsl-ppc-lsb.conf |   1 +
>>  buildset-config.freescale/nightly-fsl-ppc.conf     |   1 +
>>  buildset-config.iot-devkit/iot-devkit.conf         |   1 +
>>  buildset-config.kernel/kernel-arm-lsb.conf         |   1 +
>>  buildset-config.kernel/kernel-arm.conf             |   1 +
>>  buildset-config.kernel/kernel-arm64.conf           |   1 +
>>  buildset-config.kernel/kernel-mips-lsb.conf        |   1 +
>>  buildset-config.kernel/kernel-mips.conf            |   1 +
>>  buildset-config.kernel/kernel-ppc-lsb.conf         |   1 +
>>  buildset-config.kernel/kernel-ppc.conf             |   1 +
>>  buildset-config.kernel/kernel-x86-64-lsb.conf      |   1 +
>>  buildset-config.kernel/kernel-x86-64.conf          |   1 +
>>  buildset-config.kernel/kernel-x86-lsb.conf         |   1 +
>>  buildset-config.kernel/kernel-x86.conf             |   1 +
>>  buildset-config.kernel/nightly-kernel.conf         |   1 +
>>  buildset-config.tizen/nightly-tizen-ivi.conf       |   1 +
>>  buildset-config.tizen/nightly-tizen.conf           |   1 +
>>  buildset-config.tizen/nightly.conf                 |   1 +
>>  .../autobuilder/buildsteps/BuildImages.py          |   7 +-
>>  .../autobuilder/buildsteps/BuildToolchainImages.py |   7 +-
>>  .../autobuilder/buildsteps/DownloadErrorReports.py |  42 +++++++++
>>  .../autobuilder/buildsteps/GetBitbakeVersion.py    |   6 +-
>>  .../autobuilder/buildsteps/RunESDKSanityTests.py   |   6 +-
>>  .../autobuilder/buildsteps/RunOeSelftest.py        |  46 +++++++++
>>  .../autobuilder/buildsteps/RunSDKSanityTests.py    |   6 +-
>>  .../autobuilder/buildsteps/RunSanityTests.py       |   6 +-
>>  .../autobuilder/buildsteps/SendErrorReport.py      |  16 ++--
>>  .../site-packages/autobuilder/lib/ABTools.py       |  59
>> ++++++++++++
>>  .../site-packages/autobuilder/lib/buildsteps.py    | 104
>> +++++++++++++++++++++
>>  .../buildbot/steps/transfer.py                     |  86
>> ++++++++++++++++-
>>  .../buildslave/commands/registry.py                |   1 +
>>  .../buildslave/commands/transfer.py                |  79
>> ++++++++++++++++
>>  72 files changed, 509 insertions(+), 24 deletions(-)
>>  create mode 100644 lib/python2.7/site-
>> packages/autobuilder/buildsteps/DownloadErrorReports.py
>>


--K0Re4vA3PF4h5ESjgUFFXbb56ggmusaD9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXco/ZAAoJEGJqcE9h3glgzd4P+wXSwB1W7AKWnz21RHRBxkuB
2XAFxxWOjrzvN6Cs+y9kCszWsTu0Hzq8m+a85NF9m8aSm/0PcAzMkCJINJAXsJ/3
62Z/nuo9ZbxkYBTGjpUT+jqZWaEXkTx2oMHiLlYSjlFmpT9yUPtmP6VEuedyhuPo
XMBFqpwInF7PRiNPrzUJBtwCKZA8FEY5XWlyWfJn1pJ8iz24CPv+pNtP9poprDla
SJYkHCvEpbyGLloTYUDT13QoC1QIhDcQnm6tPluO2yLHe2fR1l7rrbbWW+THtfqY
zMEOd4/1DkI+sId1YbWlilrMxuFYz8W152zdvCznQDP8PlRZww5+U0ClGkndozxY
NQeXLGuFgQ4/RTZSckwLgiwWer6Vjopgz991/Ena7q5ToVBq99/f5nCfFexzbNd2
Sk9O531iF2avwfL04A71N0E5p6Z28v8IeJCk5aO7xjzerVGv5We0sUap9mNj6vQL
xd/niIodi8ZJXkQBcpx7VhddOWpTTXrS6yEtwZoXvOywpy5q3PVNYVssNVim9ZqD
lz7rhgG6STSFmmUrxkhkCmJtgXcmNokTWzMMZZs+Wf3B4rwRx0RoZp6OQ+e/zEd3
/VOIJuh8VQ3Xo9k4+p9zIYykAV0yzMKlu/1Dv2OqeQpHWNDO2Hd0x/oD+SshPPl4
1jcdK7rd71IR7GtTRkQ8
=n9Qc
-----END PGP SIGNATURE-----

--K0Re4vA3PF4h5ESjgUFFXbb56ggmusaD9--
