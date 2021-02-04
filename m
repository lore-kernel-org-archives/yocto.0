Received: from NAM11-BN8-obe.outbound.protection.outlook.com (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.86])
 by mx.groups.io with SMTP id smtpd.web11.1368.1612403161557271878
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Feb 2021 17:46:02 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=aE7eqQZJ;
 spf=pass (domain: windriver.com, ip: 40.107.236.86, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GLcknE6Zu0fH+PXRo9vPu0QawoXgej7xl8Cg56wwpjDXNwlwuEotiK6VI+lCW0c0o0eQ21MMaFsZ67RY7MGh9O1vA5Iv7yCFT/nE5QaSUrJfePrjVAuAz0r2r+MnY6uhDYBBBDl3DB6hBlra16oalj1biQbupbmjbcvYf/u5xzUrqtb3UlChdDpc60tvm29+RsA6qxI8tzy6UKY0cxGyEx+5OTL6JEe69K8uj330PAXkdm3S0RG77yRn81KdY+xbc18TdiHOXxokHp1FA3gOHfxhXzyUjtWqcELGcnVlbbtBVY53teRW4ZbI67M9gfx9oldnVxJnZilb7KvdUepx0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fshZs6jF9Eeunu8x5s8CJgmfIK8lOHiSeBQyXErrl9E=;
 b=YrmpNWyfSVc5mcaYAp2Cd1SjdfR6NF7vgF9H4pKgwkDB3nhxh4q0ZLmQFidPknkWjGHIKxspIYQqvhwJLk8+1yelLG0j1HuzmZfC17PDxdRGtved08WNn7M+NVyiPSsYlBGt0w7xnyGpKTWjr4ty6OONBnskBHdOVrSR5CuungXTmb+RYhut3aO075LXfVlc7QgPa9RAGIftyr8uOEF6y8mnR4Y1H7teQ8cwzCOMCivyWvmElgpHdw8NJ8epPFgLxk0FzVnttOHLdStQxvVd+jbY9CfAvophtSQJ60L7pzIQvgXlGH7tanNnRsqxBli5E1nLJLQP+sgxTxVOQ2pEtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fshZs6jF9Eeunu8x5s8CJgmfIK8lOHiSeBQyXErrl9E=;
 b=aE7eqQZJ4fwXaZazdKT6xzjINqfz4k7qod6lBp9KD8Z25OSiGqy9Ng/cEiNEEuG5TScLRZd52oVa1y5NF+4kQgj8APqYkyKiG4VQIeNFGv2d53zV8pjNbMk2WdH+uNQ3t84Rz0JHM9Fpy+OYX1cGPsFDET2KvtgYCCmCYrxrVBw=
Authentication-Results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB2604.namprd11.prod.outlook.com (2603:10b6:5:c8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.23; Thu, 4 Feb
 2021 01:45:59 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3805.024; Thu, 4 Feb 2021
 01:45:59 +0000
Subject: Re: [yocto][ptest-runner][PATCH] util.c: remove the usage of pipe for parent/child communication
To: Yi Fan Yu <yifan.yu@windriver.com>, yocto@lists.yoctoproject.org,
 =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linaro.org>
References: <16606184C72AAA28.24338@lists.yoctoproject.org>
 <0b25cf3d-7e79-cd2a-c192-59f085390974@windriver.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <69306452-5542-69e3-94a7-2bfe5d5259de@windriver.com>
Date: Wed, 3 Feb 2021 20:45:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
In-Reply-To: <0b25cf3d-7e79-cd2a-c192-59f085390974@windriver.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0101.namprd03.prod.outlook.com
 (2603:10b6:a03:333::16) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0101.namprd03.prod.outlook.com (2603:10b6:a03:333::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19 via Frontend Transport; Thu, 4 Feb 2021 01:45:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 78cd20be-a508-412a-af90-08d8c8ae9f57
X-MS-TrafficTypeDiagnostic: DM6PR11MB2604:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB2604249EE9F827E7A062D1FFF8B39@DM6PR11MB2604.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1169;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	x4sgNaXCY8RCLdbyw6Yjkx1LkqaG8WHOSbwSDfo6KTwFG5h/ZZ4mn6wU01iwCyLyjwoTkBSBoELksSfi9pqIIJ3NjaO+yz2ADAfimdqOvi37UCFOFOC+4QxNs8/lFQF1jwBvv/2+mJfm73S4awPKAndLXpp/twoc6xP2NgDJ9uBoo/OA9N6NCv1JEH4UmwbhijQomLcE9A6tlVJ7EEGUVArR+5eKheAunqz/dDvxwKHBwI61Qrn3UZFRhWUr37FRjFwYA0TPB1Ml92kaNboAOhuknL5pHsCw+US4U6usZrXDcDi1FoKUpUp5XzzzZ+Abh5FOa1x0WH6spmckk+9OIcbDNUuWaILgR99rRSWdobbYKfUByzif9s/ZBXY9CJ92aBH/0FhkoOJILByqKY+oBHIEhzSC/9kCjU4+V4pSuYgQ0fhFsFFU0s/HPBCIj3l/i0o2auW6/EsK7NUAVBUzc5ifslpefDNzFNdsS1e8O4siHWsL0x8hx+Jmlf9vhYUp+CJGzDnEXRXH+mzEgfRxlzei6Ri2zaoOJOa74MCwgihGOvUdjzYI9br46kxV6k+vqmTUkDFhsCHQqYxn/mxLjI/4uaeSYPI1b5r8+3dp2Mydw0+8Fwnrur/yoM5BT+EGQ7mde3Di0dNkmr4DTMIqM6RaJOb+wkvvBoT02aSUZeJUw2n8XFp6cHdSXnpawhi6PleaPc8J0kZ57RsT7/yNFg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(136003)(346002)(396003)(376002)(366004)(16526019)(186003)(966005)(86362001)(66946007)(66476007)(66556008)(6486002)(36756003)(31696002)(53546011)(31686004)(956004)(26005)(2616005)(52116002)(2906002)(83380400001)(478600001)(316002)(16576012)(110136005)(5660300002)(8676002)(8936002)(21314003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?preLadDPw/5QCX9mvd0Qh3aVgfLaiY5S75Tk5zcNHb6SB3c9z6/4aYzwW6Uv?=
 =?us-ascii?Q?BnouQs0i6VqfHkGL1nt6ifbANutsmFdrrs9MIkCIY92kPfVS0eehh8y48yXe?=
 =?us-ascii?Q?GUCp8QDOpO3j4Rh3JEHiKGIa3N7oEPBtwUql+kFxmBjAzhVKU7cogjuBp/gP?=
 =?us-ascii?Q?r1d1kMyd5g4zDkzFZfoDLpHtFpmt5pgaKR/im/We4Ya2CFAB6cTnUT4zOIG1?=
 =?us-ascii?Q?1e4gYD9FGY17j2/exuYp29h4UThEyN8FdVTdG9i/Bkhtd/m9abEInSsLFWhy?=
 =?us-ascii?Q?oqXOTyXA80Cm2iPCFkbr8/AnkwC3tlvjQcCNo85qERWED8C1atJWkAMkfg+n?=
 =?us-ascii?Q?0k9laryJDifdUKPgSN/4ojSF14zDXWVdE25+/8D3XqOlArg7CEaJLantdxLF?=
 =?us-ascii?Q?SKeTHV/IMaphg+12PsoqmNA920em+z+JCHiDZsxxgQB/DCHhcN0dFfYn3IsA?=
 =?us-ascii?Q?ecIgA924A3bYuHFngZD66wqJzB2HSbwbtcaVUa/78QPaqvxN7fynSmYKT4T4?=
 =?us-ascii?Q?rGPUg7yYh1WmiWGLVsCBmTJ0bFp5yyZYOFPDrFM54wcDrbU7SF8U3Kn5eJ/w?=
 =?us-ascii?Q?sd84tVZV4IbX0nOZyySW4ceCxv2xECjWs7rugVvItmRY08czVO8b5wNqq0w4?=
 =?us-ascii?Q?pn5zI+7j72IsO3KNmk25CgLOQQpt3npV56HmjoAcCvOOsxgCyKjSXwaX1nrg?=
 =?us-ascii?Q?o+ErzkS7m/hWwscTr5Mi7yGQrd6mfX2oSTXUpJzIkLNqpe/u8qk6igTujJPE?=
 =?us-ascii?Q?GIp62Q1qfHYdO68k+vaUmJwypBrK7RPaI3q3Og412wpfLEU1IVUxELsJLX5i?=
 =?us-ascii?Q?bbRNGBsfZAJjxVbySdGOFR4VYUqaNnKaJLZg8OtBPDdfwJNifSs0IFuNeZbL?=
 =?us-ascii?Q?ke5f9GQHuuD3KdouSivFI3TPpSTWszz19kCWP/12E8g36H5AlR/KUpvSrpsC?=
 =?us-ascii?Q?Ldwi0xV20XSNPm57cbMZQ5IcMwqUhu768ui88rm4RVeOmWIDwbV/+A4b2LXt?=
 =?us-ascii?Q?Bsz9PIX/Q0akUJqYlIslOTReB0hQGOdSSMjS1+36PSrzPTQLADyILxakjEvo?=
 =?us-ascii?Q?BP9+rS3F?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78cd20be-a508-412a-af90-08d8c8ae9f57
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2021 01:45:59.7522
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n34+fdnZ7S7fzbae2jJXpWzwsjtyb0W6Jr57BAGtO80PBDAGnwT4xZPQ1NjnXy3rrw5IuJCK3bVzeRXnjwtgWFiSXlEED/VOMQC3MAgo2q8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2604
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-02-03 6:47 p.m., Yi Fan Yu wrote:
> i didn't spend too much time getting the patch to look nice.
> It is just a proposal because this seems to be the root cause of a=20
> seemingly ...
> unrelated bug.
>=20
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14170
>=20
>=20
> On 2/3/21 6:44 PM, Yi Fan Yu wrote:
>> If the output of the testing script is very large,
>> the fwrite called by the parent in
>> wait_child would start blocking. That would slow down
>> the parent speed in clearing the pipe buffer.
>>
>> This is an issue because the pipe is Non-Blocking.
>> so the child(ex: a bash script)
>> who was designed to output to what he thinks is a
>> is stdout, might error out due to EAGAIN (pipe full).
>>
>> The proposed fix is to remove pipes and just let the child
>> write directly to stdout (same his parent)
>>
>> This would mean that the parent no longer control the output
>> of the child.

Thanks Yi Fan.

I'll have to look at this more closely later this week but
sharing file descriptors between parent and child seems like
a poor design. I have two main ideas and a work-around to mention.

First the work-around that we discussed for the failing
test in glib-2.0 codegen, is to limit the output until we fix
ptest-runner. I think you said that's a one line change and
it would give us more time to fix ptest-runner should we need it.

To fix ptest-runner I believe that it should be able to
handle arbitrary input or at least a few MB of input from
the child. I'll need to read the code more carefully but can't we:
  1. add some internal buffering so that we can drain the
     pipe before checking for timeouts, etc.
  2. We could run ptest-runner as a higher priority task
     than the code under test so that the parent has more
     time to drain the pipe.
Neither of these will fix the problem completely but together
these changes may prevent all but the most verbose tests from
failing due to a full pipe.

Since we don't often see this problem, we could hide the issue
in the ptest-runner script for glib using some command line
buffer executable that already exists (*) as a linux utility.

I've CCed Anibal since he designed and wrote ptest-runner.

All for now,
../Randy

*
A quick search turned up:

https://unix.stackexchange.com/questions/188175/completely-buffer-command-=
output-before-piping-to-another-command

$ sudo apt install moreutils
$ file `which sponge`
/usr/bin/sponge: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV),=
=20
dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2,=20
BuildID[sha1]=3Df72063a4a10044e902905de1a8c1640f611394f9, for GNU/Linux=20
3.2.0, stripped

but maybe there's a better alternative since we don't want to buffer
the full input of the pipe.

There's also mbuffer but I'll leave it to you to investigate.


>>
>> Signed-off-by: Yi Fan Yu <yifan.yu@windriver.com>
>> ---
>> =C2=A0 utils.c | 53 ++++++++-------------------------------------------=
--
>> =C2=A0 1 file changed, 8 insertions(+), 45 deletions(-)
>>
>> diff --git a/utils.c b/utils.c
>> index a4e190e..5d62ced 100644
>> --- a/utils.c
>> +++ b/utils.c
>> @@ -274,12 +274,14 @@ run_child(char *run_ptest, int fd_stdout, int=20
>> fd_stderr)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 argv[0] =3D run_ptest;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 argv[1] =3D NULL;
>> +=C2=A0=C2=A0=C2=A0 /* since it isn't use by the child, close(fd_stderr=
) ? */
>> +=C2=A0=C2=A0=C2=A0 close(fd_stderr);
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dup2(fd_stdout, STDOUT_FILENO);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // XXX: Redirect stderr to stdout to avo=
id buffer ordering=20
>> problems.
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dup2(fd_stdout, STDERR_FILENO);
>> -=C2=A0=C2=A0=C2=A0 /* since it isn't use by the child, close(fd_stderr=
) ? */
>> -=C2=A0=C2=A0=C2=A0 close(fd_stderr); /* try using to see if this fixes=
 bash=20
>> run-read. rwm todo */
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 close_fds();
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 execv(run_ptest, argv);
>> @@ -290,20 +292,13 @@ run_child(char *run_ptest, int fd_stdout, int=20
>> fd_stderr)
>> =C2=A0 static inline int
>> =C2=A0 wait_child(pid_t pid, int timeout, int *fds, FILE **fps, int=20
>> *timeouted)
>> =C2=A0 {
>> -=C2=A0=C2=A0=C2=A0 struct pollfd pfds[2];
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct timespec sentinel;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clockid_t clock =3D CLOCK_MONOTONIC;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int looping =3D 1;
>> -=C2=A0=C2=A0=C2=A0 int r;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int status =3D -1;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int waitflags;
>> -=C2=A0=C2=A0=C2=A0 pfds[0].fd =3D fds[0];
>> -=C2=A0=C2=A0=C2=A0 pfds[0].events =3D POLLIN;
>> -=C2=A0=C2=A0=C2=A0 pfds[1].fd =3D fds[1];
>> -=C2=A0=C2=A0=C2=A0 pfds[1].events =3D POLLIN;
>> -
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (clock_gettime(clock, &sentinel) =3D=
=3D -1) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clock =3D CLOCK_=
REALTIME;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clock_gettime(cl=
ock, &sentinel);
>> @@ -328,29 +323,10 @@ wait_child(pid_t pid, int timeout, int *fds,=20
>> FILE **fps, int *timeouted)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (waitpid(pid,=
 &status, waitflags) =3D=3D pid)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 looping =3D 0;
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 r =3D poll(pfds, 2, WAIT_CH=
ILD_POLL_TIMEOUT_MS);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (r > 0) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cha=
r buf[WAIT_CHILD_BUF_MAX_SIZE];
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ssi=
ze_t n;
>> -
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(pfds[0].revents !=3D 0) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 while ((n =3D read(fds[0], buf,=20
>> WAIT_CHILD_BUF_MAX_SIZE)) > 0)
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fwrite(buf, (size_t)n, 1, fp=
s[0]);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> -
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(pfds[1].revents !=3D 0) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 while ((n =3D read(fds[1], buf,=20
>> WAIT_CHILD_BUF_MAX_SIZE)) > 0) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fflush(fps[0]);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fwrite(buf, (size_t)n, 1, fp=
s[1]);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fflush(fps[1]);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 }
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> -
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clo=
ck_gettime(clock, &sentinel);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> -=C2=A0=C2=A0=C2=A0 }
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fflush(fps[0]);
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return status;
>> =C2=A0 }
>> @@ -412,8 +388,6 @@ run_ptests(struct ptest_list *head, const struct=20
>> ptest_options opts,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 char stime[GET_STIME_BUF_SIZE];
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pid_t child;
>> -=C2=A0=C2=A0=C2=A0 int pipefd_stdout[2];
>> -=C2=A0=C2=A0=C2=A0 int pipefd_stderr[2];
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int timeouted;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 time_t sttime, entime;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 time_t duration;
>> @@ -428,14 +402,6 @@ run_ptests(struct ptest_list *head, const struct=
=20
>> ptest_options opts,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 do
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ((rc =3D pipe2(pipefd_st=
dout, O_NONBLOCK)) =3D=3D -1)
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bre=
ak;
>> -
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ((rc =3D pipe2(pipefd_st=
derr, O_NONBLOCK)) =3D=3D -1) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clo=
se(pipefd_stdout[0]);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 clo=
se(pipefd_stdout[1]);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bre=
ak;
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fprintf(fp, "STA=
RT: %s\n", progname);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (isatty(0) &&=
 ioctl(0, TIOCNOTTY) =3D=3D -1) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 fprintf(fp, "ERROR: Unable to detach from controlling=20
>> tty, %s\n", strerror(errno));
>> @@ -474,11 +440,10 @@ run_ptests(struct ptest_list *head, const struct=
=20
>> ptest_options opts,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fprintf(fp, "ERR=
OR: Unable to attach to=20
>> controlling tty, %s\n", strerror(errno));
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 run_child(p->run_ptest, pipefd_stdout[1],=20
>> pipefd_stderr[1]);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 run_child(p->run_ptest, STDOUT_FILENO, STDERR_FILENO=
);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 } else {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int status;
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int fds[2]; fds[0] =3D pipefd_stdout[0]; fds[1] =3D=
=20
>> pipefd_stderr[0];
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 FILE *fps[2]; fps[0] =3D fp; fps[1] =3D =
fp_stderr;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (setpgid(child, pgid) =3D=3D -1) {
>> @@ -489,7 +454,7 @@ run_ptests(struct ptest_list *head, const struct=20
>> ptest_options opts,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fprintf(fp, "%s\n", get_stime(stime,=20
>> GET_STIME_BUF_SIZE, sttime));
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fprintf(fp, "BEGIN: %s\n", ptest_dir);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 status =3D wait_child(child, opts.timeout, fds, fps,=
=
=20
>> &timeouted);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 status =3D wait_child(child, opts.timeout, NULL, fps=
,=20
>> &timeouted);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 entime =3D time(NULL);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 duration =3D entime - sttime;
>> @@ -510,8 +475,6 @@ run_ptests(struct ptest_list *head, const struct=20
>> ptest_options opts,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PTEST_LIST_ITERA=
TE_END
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fprintf(fp, "STO=
P: %s\n", progname);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 close(pipefd_stdout[0]); cl=
ose(pipefd_stdout[1]);
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 close(pipefd_stderr[0]); cl=
ose(pipefd_stderr[1]);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } while (0);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (rc =3D=3D -1)
>>
>>=20
>>


--=20
# Randy MacLeod
# Wind River Linux
