Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9C96E00CBB; Wed, 15 Jun 2016 07:07:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C601E00CAC
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 07:07:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP; 15 Jun 2016 07:07:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,476,1459839600"; 
	d="asc'?scan'208";a="1002502970"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.35]) ([10.219.5.35])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jun 2016 07:07:01 -0700
To: Joshua G Lock <joshua.g.lock@linux.intel.com>,
	"pidge@toganlabs.com" <pidge@toganlabs.com>,
	"Randle, William C" <william.c.randle@intel.com>
References: <5759DE3F.9040002@linux.intel.com>
	<1465916993.2814.14.camel@intel.com> <57602958.70402@linux.intel.com>
	<576038D0.3090100@linux.intel.com>
	<1465996755.2995.5.camel@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <5761613D.9070406@linux.intel.com>
Date: Wed, 15 Jun 2016 09:07:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1465996755.2995.5.camel@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder] [RFC] Add support for generate bitbake error reports
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
X-List-Received-Date: Wed, 15 Jun 2016 14:07:06 -0000
X-Groupsio-MsgNum: 30550
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="67Mnm6V1Hs6ojShA9HK13CR5oeHKCvNhp"

--67Mnm6V1Hs6ojShA9HK13CR5oeHKCvNhp
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 06/15/2016 08:19 AM, Joshua G Lock wrote:
> On Tue, 2016-06-14 at 12:03 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>>
>> On 06/14/2016 10:57 AM, An=C3=ADbal Lim=C3=B3n wrote:
>>>
>>>
>>> On 06/14/2016 10:09 AM, Lock, Joshua G wrote:
>>>> On Thu, 2016-06-09 at 16:23 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>>>>> Hi folks,
>>>>>
>>>>> Currently we support to send error reports to
>>>>> errors.yoctoproject.org
>>>>> about failing tasks on bitbake using SendErrorReport buildstep
>>>>> but we
>>>>> have a lack of bitbake related errors like exceptions.
>>>>>
>>>>> A bug exist to implement this support into Error report web
>>>>> [1], i'm
>>>>> working on it but for generate bitbake error reports there's a
>>>>> need
>>>>> of
>>>>> some process monitoring the bitbake output in this case the
>>>>> Yocto
>>>>> Autobuilder.
>>>>>
>>>>> This email is for review my current implementation for generate
>>>>> bitbake
>>>>> error reports in the Autobuilder [2] next i'll try to explain
>>>>> how it
>>>>> works.
>>>>>
>>>>> I aadded a BitbakeShellCommand [3] class for use in the
>>>>> buildsteps
>>>>> that
>>>>> executes bitbake the main objective of this class is to have
>>>>> common
>>>>> operations to be made in bitbake commands like create error
>>>>> reports
>>>>> if
>>>>> fails.
>>>>>
>>>>> For create error reports this class add an stdio observer to
>>>>> look at
>>>>> bitbake output and if bitbake fails review the bitbake output
>>>>> for
>>>>> identify if the failure is an non-related task error [4]. If
>>>>> the
>>>>> observer found bitbake error creates an Error report with the
>>>>> information in the master controller.
>>>>>
>>>>> In order to send the bitbake error to Error report web the
>>>>> controller
>>>>> transfer the report to the worker using a new DownloadDirectory
>>>>> implementation that i made [5], the SendErrorReport buildstep
>>>>> works
>>>>> on
>>>>> the worker side so it's easy to transfer the reports from
>>>>> master to
>>>>> worker instead of send it by master.
>>>>>
>>>>> Finally to complete with the job of have the bitbake errors
>>>>> reports
>>>>> the
>>>>> Error report web changes need  (i'm working on it) to be
>>>>> integrated
>>>>> first in order to don't break anything.
>>>>>
>>>>> Please review it and provide me feedback.
>>>>
>>>> This would've been much easier to review as a series of patches.
>>>>
>>>> After a quick read via the gitweb the series as a whole looks
>>>> good.
>>>>
>>>> A couple of review comments:
>>>>
>>>> In a04b41d37c29191318386455d8d958ff815a3a10 "lib/buildsteps.py:
>>>> Add
>>>> BitbakeLogLineObserver for BitbakeShellCommands." you have a
>>>> comment
>>>>
>>>> "discard line that are not errors and line that is recipe task
>>>> errors"
>>>>
>>>> but the lines are not actually discarded, afaict  from a cursory
>>>> read
>>>> through they aren't used in the rest of the series
>>>> unless errors['bitbake'] =3D=3D True?=20
>>>>
>>>> Could we move the error['log'].append() to after the if statement
>>>> which
>>>> checks whether this is a bitbake error?
>>>
>>> Yes and i'll update the commit message to be more consistent.
>>>
>>>>
>>>> Minor nit, in caf472bc696053227825c5a102feef3e17574ba2
>>>> "lib/buildsteps:
>>>> BitbakeShellCommand add support for create error reports"
>>>> in get_error_report_bitbake_dir() you use both " and ' for
>>>> strings.
>>>>
>>>> Same in 40279597615c49bc4f4f067cbab937584b626671
>>>
>>> I'll fix the typos for only use "".
>>>
>>> 	alimon
>>>
>> I updated the branch with the changes suggested now at,
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=3Dc=
o
>> ntrib/alimon/devel
>=20
> Is that the right location? For example I still see log lines being
> appended to error['log'] *before* the check to discard lines in:
>=20
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/?h=3D=
c
> ontrib/alimon/devel&id=3D742e5bf33934c4ec9de9136a854e190aaf8ba0b3
>=20
> +    def _handleError(self, line):
> +        if not hasattr(self.step, 'errors'):
> +            self.step.errors =3D {}
> +            self.step.errors['bitbake'] =3D False
> +            self.step.errors['log'] =3D []
> +
> +        # save all the log for be able to get report variables like
> +        # machine, target, distro, etc
> +        self.step.errors['log'].append(line)
> +
> +        # discard line that are not errors and line that
> +        # is recipe task errors
> +        if (not self.rexp_error.match(line)) or \
> +                self.rexp_pnpv_error.match(line) or \
> +                self.rexp_task_error.match(line) or \
> +                self.rexp_log_error.match(line):
> +            return
> +
> +        # if not match recipe task type is a bitbake exception/error
> +        self.step.errors['bitbake'] =3D True
>=20
> whereas I think we only need to save log lines when it's a bitbake
> error, i.e:
>=20
> +    def _handleError(self, line):
> +        if not hasattr(self.step, 'errors'):
> +            self.step.errors =3D {}
> +            self.step.errors['bitbake'] =3D False
> +            self.step.errors['log'] =3D []
> +
> +        # discard line that are not errors and line that
> +        # is recipe task errors
> +        if (not self.rexp_error.match(line)) or \
> +                self.rexp_pnpv_error.match(line) or \
> +                self.rexp_task_error.match(line) or \
> +                self.rexp_log_error.match(line):
> +            return
> +
> +        # save all the log for be able to get report variables like
> + =20
>       # machine, target, distro, etc
> +        self.step.errors['log'].ap
> pend(line)
> +
> +        # if not match recipe task type is a bitbake exception/error
> +        self.step.errors['bitbake'] =3D True
>=20

I tried to explain this in the comment above append log, we need the
full log for get information about machine. distro, etc also if a line
don't match but then is discover that is a bitbake error we  want to
have the full log not discarding recipe/task errors because some times
the context about bitbake error/exception matters.


> Further=20
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/?h=3D=
c
> ontrib/alimon/devel&id=3D2523c869855d8e2393b9dd7142c0992908444584
>=20
> still has typo's in the commit title and message.
>=20
> Finally, please don't end the subject line of commit messages with a
> period.
>=20

I'll fix the commit msg.

	alimon

> Regards,
>=20
> Joshua
>=20
>> 	alimon
>>
>>>>
>>>> Regards,
>>>>
>>>> Joshua
>>>>
>>>>>
>>>>> Cheers,
>>>>> 	alimon
>>>>>
>>>>> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7583
>>>>> [2]
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log
>>>>> /?h=3Dco
>>>>> ntrib/alimon/devel
>>>>> [3]
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tre
>>>>> e/lib/
>>>>> python2.7/site-
>>>>> packages/autobuilder/lib/buildsteps.py?h=3Dcontrib/alimon/devel#n
>>>>> 92
>>>>> [4]
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tre
>>>>> e/lib/
>>>>> python2.7/site-
>>>>> packages/autobuilder/lib/buildsteps.py?h=3Dcontrib/alimon/devel#n
>>>>> 53
>>>>> [5]
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/com
>>>>> mit/?h
>>>>> =3Dcontrib/alimon/devel&id=3D4022920bb0e56d1eef3dfe7c5e9b4699f801cd=

>>>>> f1
>>>
>>>
>>>
>>


--67Mnm6V1Hs6ojShA9HK13CR5oeHKCvNhp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXYWE/AAoJEGJqcE9h3glgxJQP/0E0A5ko4w3C/baSC9Gt3gF6
9LL79tHZVRq53pf67Sc4nFr4e9Qh9anBz7CXSkCnuWg4dNA7yAMocLYUTznA8k4z
WOllMR2M8mbxnV+YWjxaxOGd6bHwHzRjm+UQMIoq2UtuJlvhT8Xr0Mzr/ouFETx0
0YKeQevxdd6TXYouQyYr1G3zm0/HrISGFRCXTe/sbLLoy+n73IIL1YP0/OWDIHQ+
rry7AubqoHZr6YFYHlfwLD84b6jV5noWa6GFMZ/n6G0OZFQUeJnjKCepQk05WW17
GjzO5Qt7d82LkY7+n4whUwIpDI8k3zNk+FMh4dle5sjFQBX7TpKMg7y1O2P0z9s1
qjkrGEYCKDwiNRPFWzQx0s/6cvukaPdCJTp5uzmS/wcG8WLHdMenHtqjrcpviPMn
uc7a+te8sQwcCt/DmozcSAGwh4UzLDkHImoighplPQOKShrCwW26D7MVEeZbyMim
kIfuMinEOfcZY6fH8oIl0IKKM7yCE13JRrUlNdkSs3yrbqqCrVL0vLP++wLdLNWM
n4vETZkwfl2D1QtKxp5wlBRz1oXGLOJsRk8s3c82halJCUfPzUXDp5yNBWmt7TnW
vGZimJeGSvYIP5vuX54FMfRhYt9gf/+qVXMqo1INTMQgKeoqw6nuxwybXfTcHmsA
yz1PMrZuATMuSO0HsG70
=IB8r
-----END PGP SIGNATURE-----

--67Mnm6V1Hs6ojShA9HK13CR5oeHKCvNhp--
