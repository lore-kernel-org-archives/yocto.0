Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.9718.1613747894950718954
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Feb 2021 07:18:15 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=l4+Tp+D0;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2069.outbound.protection.outlook.com [40.107.243.69])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D4FEE38C0534
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2021 15:18:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ab8mksxKtWEBF8rSSp+ZAEHunF1+pfb/oy2TjgtsmhsJVqHav4K4iC2fcMrg33lufnx80ywSKwfar6XtQ/j0oRefd3jV3BdImtYRGSIYxKmB2AjT5nNNGVss0vs5Jbp86b9+l9jDbvhVLRXdFNkwtQvoOS19K/k6QZVWhv0fmPobNchdb60W+iyWHfZ4MjMMD4Nx9Wm1RFC+vq+UyoIaRYBMzGD7uLZ4QlMKTEuDE+AN9aX1ViTt/ujbOkeSWemPWEG1hZxhgdgggfElrdX8LWxluIYSSVKq9lQrd0o5N2HBs2/76LD6N94WsJZEsWdK+yFgnvXLtWMRlzkTsCJXnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6QoKgPOOGzsNPQoAPkS0oXAhiyvnbM/anXrUCVKtcQQ=;
 b=XgHXvV1ny2uoEfYpPkZOeFBczDRPd+iebHorg3Vm47MiE26nbwQwkPObLFAfkhakiAvnVg3WNIQPpjUr6+fnSMXB8PtQ4BU0lv3QEnadUeB6vk0L4bpHxA8d1rVwTRW1GbPDF8XVxUHrBt5MLVklRWUcZaL1TPpGZf8/Fv4HOkpZ1ewS/s5dRW/Bem2dwsfnPBRg8vsp5834KJh7ge0GBIFIcQTQAvx6vLF7W6LxGJCK6fuJyLhFw9so8O5xK0o+qoueW8C+4Eklc4rUo8Lx4ou4ILU1xGN3R/vAQlpAaNYH+jIvjXgRjr24iy+uzcJofFRmzFBpnZiDwnt6eDRzJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6QoKgPOOGzsNPQoAPkS0oXAhiyvnbM/anXrUCVKtcQQ=;
 b=l4+Tp+D0udnuod7va2AbqsW9ppIM3mqjGB1SY1hccS6zCbW5C7b87yDwM79wNiJhfyb3Zbq9WFPegC20Og44xv6YloiZANdpXRokEbcJ4L2ALo5rlAE4l6ZbFZVN7lns7DSPwf3BE1lc8trRq9qzMw6VgfRSgwb7vgOfjJeIaEQ=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2107.namprd11.prod.outlook.com (2603:10b6:4:5a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Fri, 19 Feb
 2021 15:18:11 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3846.042; Fri, 19 Feb 2021
 15:18:11 +0000
Subject: Re: [yocto] [ptest-runner][PATCH v2] Fix inappropriate ioctl when detaching tty
To: Chen Qi <Qi.Chen@windriver.com>, Anibal Limon <anibal.limon@linaro.org>,
 Tero Kinnunen <tero.kinnunen@vaisala.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 Trevor Gamblin <trevor.gamblin@windriver.com>,
 Konrad Scherer <konrad.scherer@windriver.com>
References: <20200710054432.557157-1-tero.kinnunen@vaisala.com>
 <CA+_Aqit4UM=EH5ztSHbuVx84eHzoQN0NPU+ADEY7Sfi7=WpNDA@mail.gmail.com>
 <ca58386c-51e1-770a-253d-4eb1c13441c5@windriver.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <f98f7d42-00b8-f2e9-389d-54d77088ee22@windriver.com>
Date: Fri, 19 Feb 2021 10:18:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <ca58386c-51e1-770a-253d-4eb1c13441c5@windriver.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0065.namprd03.prod.outlook.com
 (2603:10b6:a03:331::10) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0065.namprd03.prod.outlook.com (2603:10b6:a03:331::10) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend Transport; Fri, 19 Feb 2021 15:18:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5a1d73c2-387e-4bd5-f45f-08d8d4e991fb
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2107:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB2107B8B1108AC82027F4E26BF8849@DM5PR1101MB2107.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OhW93Nr+a/O4NsJl0GIxX6nEX11spDaf36sF3lNiXb+w5kytkkYM6kaJsdz+znvZgR5WoQyFX5KuSygRQriWJD39IzGlDg9vd3WQkjWT4PEr9JMzK5CW0iA0BSOcWY0edqL980qg/1cB1C6RswUbvXITZT141+agKTCzlAYr2k3n8NDthh6DVSIzjdgpnS6eOcnwOoBFkhLrderJwt28DohLOus3uKpe2U/MSAkzAUtvDBuIJJdrdaIjMLgrYvFcptny3eyXrjdMtWVk2ZpGJNhYAZwIhJ+wX38hV5bDewYcJvP6N2qa7Eysq6zsD6H/rU+p0XIOn5AWQ/g5WGPVhddcFwL9KsaukIQkW97c/EHKhR6Qqzb7QLRs1tRYHlxc3aHpPDZHwweKifBl+ybbT88Z1jDgntsYNmdp7byugkUcxsuCbw7F9AsNyw1k871YK7siXpIik0XexBD30EWEQXkuJ8Mkq4lA4gfgzB5ChbJD0TVaPW8sus6i4iuaPRJxdOOrpnkcfwp0UPSt5jTuJEY4Iwsz21P1Rtow5HgG/dJ+PMrJ2slD6zszKchVM/aDl5y4LeFZDpZEdoPZEwIzDMapocOgL2h2qsgE/NtnGX8ZN9PnsPnKi16bt0aVo8gkrhBwxNSh31k1nTu4XuviUvPwWv4r4wFqqChEfPtvmT2cFokj4B5oPYcO/UeYbeDs
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(376002)(346002)(396003)(366004)(66946007)(66476007)(66556008)(107886003)(53546011)(4326008)(2906002)(6486002)(316002)(5660300002)(478600001)(31696002)(8676002)(186003)(52116002)(8936002)(966005)(2616005)(110136005)(83380400001)(31686004)(54906003)(86362001)(956004)(16526019)(26005)(16576012)(6666004)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?UURWMm9YK1FNVUh4WlE0bk5EWjQ1NTBzd1JDOXFVY1JtdmtGelduZE1YVzdR?=
 =?utf-8?B?QkJoV0d2QVY3YmFOclczZityTTFPd3ZKdlZDbGR3L3A3TlZML2xOTTFKaklz?=
 =?utf-8?B?aEpKbkpvYlYxNjNRakxrMnY3MWZnY3VYQW1NMnhSaGNUYmdxQmNNaUs1Sncz?=
 =?utf-8?B?T3lqZTdDSjRPOXJhTkIvM2NmM2YzeTNVT1BGbUVLNHJWR3ZDbStwNmI4YVhX?=
 =?utf-8?B?WWdJSUFrV3R0SXF2L0p0alowR3lNZ3YrTXd3OERha3l4dk9RZXpmYjVLUUcr?=
 =?utf-8?B?WXp5cVg4dDZxK1FJSGVOSDVXUlFBdk1VZU05aS82UzQvR0FWbVl1ZExCT2V2?=
 =?utf-8?B?OWJHS21UckF3QXJTTmt3eWJJNU0zdmhzWExsZ1p3dVlseGNBUVprV1dxNXUw?=
 =?utf-8?B?MXBSWEJUcnpPTkdOV1JCYTJ3Q3ExSUJsbDZsWmQ0NTNIZi9nY0RIYlNZYTg1?=
 =?utf-8?B?enFMT0ZVa0ozSjNpSVZSbDRMKzdsR0QrQWk4UEVodWhtM3BFTUl5VklzUUNJ?=
 =?utf-8?B?bHgxOE1zOFBxbTVjeDRqYUN2MHF3NmtMOVgvVm54T0szaTkvMytIY1RuV3l6?=
 =?utf-8?B?akFJdWx6enljeFRCZ0ZhQ29MMjlGL1F5anZiRTFiaFdScDduVjlsUnY5T0pl?=
 =?utf-8?B?N2pZMURxM3hQcW5ROGVydmJTSkd1c2NiMHpwa2FGVURmSVRiV0g0RlhvaGw3?=
 =?utf-8?B?N09jVmVob3MvdVBycWZxS0ZPeFB1Y0hkbXB5eW05dzk2dDhuaVpSYjZMTTky?=
 =?utf-8?B?MHFTbHdscVNBQStPNWNNTUJwVW94aFhFcU55V0VJZmlqWUNwSit3aUM2cmZE?=
 =?utf-8?B?OEVvMmtQNnVrM1AxQWNlcnhJWDN3dlcvZ0pHK0xMeGZoM3QvdEJyZU93UGEx?=
 =?utf-8?B?MTFyS3lCZ2w5MlR4ZWJZNEZBV21ZVEY2TTRGYzAwVTNPNzQybFFYS2RMb3lx?=
 =?utf-8?B?YUhnYUJ2RUFUZVNJZXZsMUpJMEo2QW0vYWtSL21JLzlhNUVlaVRmY0tZcGNP?=
 =?utf-8?B?eUMzMTkyY1pETXJ0YVBJMVVPb2o5a2hWWFQ3NC9MZzJKc3NsR3dSUFZWNW1p?=
 =?utf-8?B?QXhCblFndFcraUw5aHZMTXR2K042TnphME9MNmFsSFU0KzVlS2pzVHNkUGcw?=
 =?utf-8?B?V3NZemRDdlphYkZiR0hHeElXUnZDcUtDVzBCK1VaRHlSNzZHcHg1RERsNXJV?=
 =?utf-8?B?UG1ONmRrc0p6blJRT0hhc1ZjSEVJNDh5WnduY1VZeERWbUxjdVVPV09xUlRp?=
 =?utf-8?B?VTVZc0REaC9BVC9uL1pLcUxleUhvQUh6K01Va3dnTEVHNnJyUjYxRjluQUcx?=
 =?utf-8?B?Y0tSbGp4cFlaNDJLNVp2cm0rWnRqbE1JSzV6M1RRU2pjQThwaU1DcEhTNEoy?=
 =?utf-8?B?T3B6MEx1YUUzc0xKWGVTdXlUbGF4eHRQV1VBT1pUYkNadW1EajZwQ3MzbFFi?=
 =?utf-8?B?SUErZWFxSlhaMVNQZzJUek5RSTNpNHJ2QnB4UHBnc0granM1bFlkc01oNFJY?=
 =?utf-8?B?dE5IM04vYUxVaHYxWkpZUytNUWdtL0pFR0RGbXFIbGRZa3lQRUFPQzBpRHYr?=
 =?utf-8?B?R1Z4U3plMEtsK1FIYStqcmgrNVoxYklQbTlHd2NJQTk4eEc3N2cxSDRYQkNz?=
 =?utf-8?B?MmtZazB3ejJhY3lhUHdXQzhBSGl2MzhST1dHYmxzWVdUbXhlWC9zNG83bjhw?=
 =?utf-8?B?Z1Z3NUp6RjNxQmduUldEMThRMG5zUTdoQU5VKzI2SGdmT3NrYWlucGZjQmND?=
 =?utf-8?Q?mOFyk8/275Eg8C4kmFsmbBCIE4cgjV7vPOrkIyC?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a1d73c2-387e-4bd5-f45f-08d8d4e991fb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2021 15:18:11.5901
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6DymoquPMPsJhMVzgvldbc9TdXVH/pSG9Mi8dSFicQUQu/EwocyOv9IlKundo9mFrTmqRu2vs96aH8W9QLe6jnJ7bPjvmouemMbzzGboGho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2107
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-02-19 1:44 a.m., Chen Qi wrote:
> Hi Anibal,
>=20
> The ptest-runner repo seems to be messed up.
> This patch is no longer there, yet the SRCREV in ptest-runner recipe=20
> refers to this commit.
>=20
> $ git show 834670317bd3f6e427e1ac461c07ada6b8936dfd
> fatal: bad object 834670317bd3f6e427e1ac461c07ada6b8936dfd
>=20
> Regards,
> Chen Qi

This was making our automated builds fail but I've added
the fall-back tarball and that should suffice for now.

We should probably do something to prevent that but
could someone take a look soon and perhaps restore the repo
from another location?

My local clone has:
$ git log --oneline -3
8346703 (HEAD -> master) Fix inappropriate ioctl when detaching tty
1e9a845 (tag: v2.4)
            Add support to specify multiple folder for ptest-runner
287ba30 Makefile: Fix TEST_LDFLAGS gcc cmdline position


fyi:

$ cd .../ptest-runner2.git
$ git pull
remote: Enumerating objects: 7, done.
remote: Counting objects: 100% (7/7), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 4 (delta 3), reused 0 (delta 0)
Unpacking objects: 100% (4/4), 526 bytes | 65.00 KiB/s, done.
 From git://git.yoctoproject.org/ptest-runner2
  + 8346703...87f6a6e master     -> origin/master  (forced update)
fatal: Not possible to fast-forward, aborting.

$ cd .../oe-core.git
$ git status
$ cd ../build
$ . ../oe-core.git/oe-init-build-env foo
$ bitbake -c fetch ptest-runner
...
WARNING: ptest-runner-2.4.0+gitAUTOINC+834670317b-r0 do_fetch: Failed to=
=20
fetch URL git://git.yoctoproject.org/ptest-runner2, attempting MIRRORS=20
if available

but the fetch works since it falls back to the downloads tarball:


--2021-02-19 14:36:24--=20
http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org=
.ptest-runner2.tar.gz
Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...=20
198.145.29.63
Connecting to downloads.yoctoproject.org=20
(downloads.yoctoproject.org)|198.145.29.63|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 185994 (182K) [application/octet-stream]
Saving to:=20
=E2=80=98/ala-lpggp31/rmacleod/src/distro/yocto/b/foo/downloads/git2_git.y=
octoproject.org.ptest-runner2.tar.gz=E2=80=99

../Randy
>=20
> On 07/14/2020 03:29 AM, Anibal Limon wrote:
>> Applied, Thanks!.
>>
>> Anibal
>>
>> On Fri, 10 Jul 2020 at 00:44, Tero Kinnunen <tero.kinnunen@vaisala.com=
=20
>> <mailto:tero.kinnunen@vaisala.com>> wrote:
>>
>>     Fixes error
>>
>>     =C2=A0 =C2=A0 ERROR: Unable to detach from controlling tty, Inappro=
priate
>>     ioctl for device
>>
>>     when running multiple ptests
>>
>>     =C2=A0 =C2=A0 ptest-runner a b
>>
>>     or when invoked over ssh single command, like
>>
>>     =C2=A0 =C2=A0 $ ssh localhost ptest-runner
>>
>>     For ssh case, fd 0 is not a tty. (isatty(0) is false).
>>     When running multiple ptests, deattach for parent needs to be
>>     done only once.
>>
>>     Signed-off-by: Tero Kinnunen <tero.kinnunen@vaisala.com
>>     <mailto:tero.kinnunen@vaisala.com>>
>>     ---
>>     =C2=A0utils.c | 6 +++---
>>     =C2=A01 file changed, 3 insertions(+), 3 deletions(-)
>>
>>     diff --git a/utils.c b/utils.c
>>     index a8ba190..a4e190e 100644
>>     --- a/utils.c
>>     +++ b/utils.c
>>     @@ -437,6 +437,9 @@ run_ptests(struct ptest_list *head, const
>>     struct ptest_options opts,
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 break;
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(fp,=
 "START: %s\n", progname);
>>     +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (isatty(=
0) && ioctl(0, TIOCNOTTY) =3D=3D -1) {
>>     +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0fprintf(fp, "ERROR: Unable to detach from
>>     controlling tty, %s\n", strerror(errno));
>>     +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PTEST_LIST_=
ITERATE_START(head, p)
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 char *ptest_dir =3D strdup(p->run_ptest);
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if (ptest_dir =3D=3D NULL) {
>>     @@ -444,9 +447,6 @@ run_ptests(struct ptest_list *head, const
>>     struct ptest_options opts,
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 }
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 dirname(ptest_dir);
>>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0if (ioctl(0, TIOCNOTTY) =3D=3D -1) {
>>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, "ERROR: Unable to
>>     detach from controlling tty, %s\n", strerror(errno));
>>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0}
>>
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if ((pgid =3D getpgid(0)) =3D=3D -1) {
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(fp, "ERROR: getpgid(=
)
>>     failed, %s\n", strerror(errno));
>>     --=20
>>     2.25.1
>>
>>
>>
>=20
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
