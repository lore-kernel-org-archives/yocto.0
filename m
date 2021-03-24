Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.863.1616603154236543286
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 09:25:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=IgK/7xqE;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yifan.yu@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2081.outbound.protection.outlook.com [40.107.94.81])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2EBBC38C08CF
	for <yocto@yoctoproject.org>; Wed, 24 Mar 2021 16:25:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YRPfZK8c2AOj+ygW3E/fEGfu7ge44rqV5g2wqwPXxlT//ps62oIdAhi8ia2omUVOgQmvsWAtaM8oUXe3hj9/cBPaA+sJKNAGB+dgjHOdGC5l9n8W6AKCuxBjx1FEqsLyTjSjTJsmKQFZnfGfXVkF+mqDHzBsexNXJGODaiI/fIu2IzAEGLkJZnMWTbhwxjt6oUYxlzvEVyA0cTS3lbckPcBRfv0SWMUFcdV9Yjun4rhtBFIbylRCALq4j34EQmeS4c2La6QRnYdeDx1+NonZVtLwizhNwJfP5UjtPI4EKQBlWVNdleUjOaQ29RYUyIo97hNDsrEwy9auO3RlH2NQUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SsD4ye2MWAvSrjIxzQ5Mp1XvaTeFIW7vdCtmTNa4hhc=;
 b=W0HW07RiN4KwvtronJ4/EcFyJPrSjyEPmHIwArC5drnor2kRAmh0T8P7Jx2HBeyubLZV7yTLvCWH4Kvdf+TLV2UnG4EVkFzokpmn1nNfXT+O/Q/UfjsbfW5cj/cgBd3QGQCERMP2ylwIzi752outLvZAZWcGL1QXNOCRJqDW2YBkqBRslJa/Te2nqWaiWdtoe8VZQGHhSnUSBbSsOHbwgZOkF2IWT5CBNJiJ4Tv3Lv5GMPS1aG/XpS+YX0CB34PxeARy+1vRvqCwRfs2k8Zw45yl5GMvHe0XHU2lmu8/3WAkdFY9m8EWpsLywEHLFhqmzgqLjUVct9jFQ7NPg4ed+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SsD4ye2MWAvSrjIxzQ5Mp1XvaTeFIW7vdCtmTNa4hhc=;
 b=IgK/7xqEKz/MSAAj4o35tq7Td07ewEGO+1RWE6E35j3JpqeoJjuwVVriPHFAkJ+e/IEW+7gbo7jw+VocNWghsw8rU6INcKHZ+hWdRdDqK/sqnCxxMSfqu2+v1+Mj9DmTml41gBx/wiuqJtD0OaZ2f5tz2HfpHGqvaLDKgSN5Jvg=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SN6PR11MB3165.namprd11.prod.outlook.com (2603:10b6:805:c0::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Wed, 24 Mar
 2021 16:25:49 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f%9]) with mapi id 15.20.3955.027; Wed, 24 Mar 2021
 16:25:49 +0000
Subject: Re: [ptest-runner][PATCH 1/2] Add support to specify timeout by ptest
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linaro.org>,
 yocto@yoctoproject.org
Cc: Randy.MacLeod@windriver.com, nicolas.dechesne@linaro.org,
 richard.purdie@linuxfoundation.org
References: <20210323185719.2949300-1-anibal.limon@linaro.org>
From: "Yi Fan Yu" <yifan.yu@windriver.com>
Message-ID: <93334bd2-01c5-815b-3f46-09be1ce67a56@windriver.com>
Date: Wed, 24 Mar 2021 12:25:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210323185719.2949300-1-anibal.limon@linaro.org>
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: BYAPR05CA0013.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::26) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.42] (135.0.247.71) by BYAPR05CA0013.namprd05.prod.outlook.com (2603:10b6:a03:c0::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.10 via Frontend Transport; Wed, 24 Mar 2021 16:25:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 61dc721f-7e83-4fcc-8437-08d8eee17c7c
X-MS-TrafficTypeDiagnostic: SN6PR11MB3165:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB316549361A8AB0A3C0CD09CD80639@SN6PR11MB3165.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:281;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Ra3qYW8dBz8q2TWrVZglQyJcejGZPyJI9aBgjYZF6ccMST0r7894WFldO9SV+/pDSZH7OTiq6wqfS+VpCKjimGEmGSk0I4JZoh0azomFAaC0U7nfusFW7drvEeWJypJPd2gIQSPISbLEaSfuH+hX/mtvwJmBdfccxyzCFJpWX4mA8Ean0nFTdGKaPb7hWq04/Zhx7kLJb8KmAQVl+HVT/nYS69DmS49FORPjzhpAsUASFND5SM9Nqp9AdITSf0glQcKd4gGOEcYaRkkGBwQ4ucEqwPS4G/G6eeiL5ceTtQkUuoEWzLfhBuVYUy6PyjKWphlDs1Q0Pq+7Id8nirxgqhZ9ci2QK4XIDl5lU+daMYGPre/m2eqg+d0rBiM672mkI5yqKNmfjhHXTLQjfWAjcfMZd8Rpg7dFbpCdZphM/xK4gymIplR4HfG1fJmq+iRB0rpREXRizHBX5oGqbZQ7tMn/pMETS6txUHOZCxJskcPZZITyf2D228tzplydQ8+NrALxEJK3wsIVg2oC+d8Z16CqYmVNawD/Bq0rQrE28WSACoX8wsCyJzNhlFALhYHvbu+xwVTBTYOm3fJtr170d4n2Yprhn6YoCyrQI60Qrh3QN6pTGz5cCF+UTFRQqsSOtf7hhqptB9b/aaS2fdQuRnwfVgz0hICNJS7tnII3q5HHGokleeos6JrjJIhJNQErCu/6ZKvcawnYT+M80PoCmg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(396003)(376002)(136003)(366004)(66476007)(38100700001)(31696002)(478600001)(86362001)(31686004)(2616005)(16576012)(16526019)(2906002)(66556008)(316002)(5660300002)(8936002)(956004)(186003)(4326008)(66946007)(53546011)(36756003)(66574015)(83380400001)(26005)(6666004)(6486002)(8676002)(52116002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?Z09RSVFhOXpqeUsvVnJzL25rdTdEV045N3pKTXBpY2lYVE9Gd0VpZG4rSy96?=
 =?utf-8?B?VnNQNDhqTGpZcWFjY255bXNPdFJOVi80R2JnRkpBT0ZTcUxpWUw4QjlyWU5O?=
 =?utf-8?B?TXVJUTNHY1k2U2ZmeXZBT2RyMGU3dUh2U21HRVFrM3lUMWRBNy9KR2RWR2F1?=
 =?utf-8?B?TWhpV1UxcXJ5d2tqdklQVldrV3I5YzZMQUJqdDkzL3h5ckZ3ZWlIQW8rcUFI?=
 =?utf-8?B?clZkdDdwM3ZteE91clJIWSt3RkdSUWVrZ3VKRVFOT0FyaVdadmRVVmVqWmZJ?=
 =?utf-8?B?ZVBtc3R4Qm5Lc0F4NjJGNmlEOWNVOHpDRkMzbGt1MWIyNGcvVW54Q3VDeDY4?=
 =?utf-8?B?UnJZZHJNZHV4a05LWjRSVXdPUU80WU9tbUNQWTRtQ3V4QXE2OFZkdG4yVldJ?=
 =?utf-8?B?bE1JWUYyRmI3cDFwSldrSGk0SFdmMDd0VDJOakRSQnMwY2FZaWErb0J6VHRp?=
 =?utf-8?B?aHB1Zmk1V3M1NEJuK3Zma3VWZ0NzeFNkSGtzS2ZqTzM2djZvcGRDcFduNno2?=
 =?utf-8?B?aUdBTjVYeXFWWlpnYWxQQk9yYTVoY3Q3Uk4zWjJiN215TnpUSmYxeEVhN3dz?=
 =?utf-8?B?ckI2cm1XYUVHQ2tscy82ZGxSOFc1WjJpanJQTEVsMnBmdDlrUytJMjR1bkpS?=
 =?utf-8?B?emtjTzgxSkYxOXNFMS9pUmR6L0QvUGluUUM5K0I2ajk1LzZndSt4dHROcEJP?=
 =?utf-8?B?NzhvOGQ5VWtXZ3IyQmdWVThvWHZhKzdyeEVianVYOW9jTW9ZSHN4SndKUWpm?=
 =?utf-8?B?c0UzOEZhZ1l2Um85RjdiVWdQVm5lK09SaHlaa2I3dTdLanBMSmVISmFoajVw?=
 =?utf-8?B?WmxUUjh3QUlvc3pWQkVTK2RsNmJxRExCUXk2NUQ5Z3dHd2dsZ1o1MDI2WER0?=
 =?utf-8?B?dDdISy81OTB4WDdVZm1XSTQ0M0xxZzc0QnZ2VlhrTGgxWGtuSDBTSVZwQXV4?=
 =?utf-8?B?VW0rSTRwUWlCU0FUOFV3Q0FHT2tEa1hOcDQwQ291ajNMTmg2RGtybjFzdU1S?=
 =?utf-8?B?R1R0MHFQRlBJY1J4NmVjZG9GcU1UckZEODhaUG5QVktQeWNndHRwK3R0bUZ0?=
 =?utf-8?B?NXlSWVpxZjd6S0JINWQxeExLMHpVMlViTmlkakhyT0didlM1YWJMYlBFaS9s?=
 =?utf-8?B?bkZBTm1BS21hWFBsdC92Yi9pY2kzWFFnWkYwbmZEOVFOOGtZc1d1UDhiS1Vw?=
 =?utf-8?B?Wm8vbCsyRmRBWjNJNU1lTW0vTnVib1hIYWc1Vno3YW1wSWRUSFMrdUZDQ0dX?=
 =?utf-8?B?T08wK2xhYXRXUDFEOGZNSHluRThsdzF3QWFzdDNUVW01elFUam1wSDc5WDVE?=
 =?utf-8?B?aUprb0lMRVRqd3RvdG1qN2wycDlxYk54SkliSUFTZDMxNlh4QVRvVVVnNVNj?=
 =?utf-8?B?TWFOcVNpV0RzZkpjZEN3c1dKRjZTbXdaY0tRcXBidC9IUlRUbC9vL0NpQVpC?=
 =?utf-8?B?b3dRZk5TRUxUSXloTUdzYmxCbm9KYmpLcnFJc29GVkI3YkFEVVNCeFRsY3lx?=
 =?utf-8?B?OXhaMXI2RWRmZHJCT240ZEFWZFliK3hDMVV4cnBYYmRPMkQ1OVJiTUpMNmN1?=
 =?utf-8?B?dnk2UGNEc29ZRkxvNG54MjQ5MmNIVDBSemFudlZJcm1JUHZTSjl4WDlCZXo5?=
 =?utf-8?B?ZDZBaGt6VW1qZlNyeDg2M3cvcHFMTldtcEJrREVPOFRQRzRuVEIrTG1mZ3pq?=
 =?utf-8?B?anpDZ2xaM0NlSlU0Vm1NUGRxckptZ0NSUVQ2OXNxelQ1QnJyZG4vQndqRHB1?=
 =?utf-8?Q?09aPSmDRZANJcq8NKTIxVuLdN5gpzV7ZUS+SGaK?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61dc721f-7e83-4fcc-8437-08d8eee17c7c
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2021 16:25:49.7697
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dYXDykWvd3RKQZ7enCZpFZheTT02REj5vwXTm2usobdCdW6oQeVECr9WmmtoOVs5Yf3UwP8mCxNkSNGF9Agc0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3165
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 3/23/21 2:57 PM, An=C3=ADbal Lim=C3=B3n wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
>=20
> The ptest-runner has a default timeout of 300 secs and can be override
> usint -t option in the runner.
>=20
> There is a need to specify timeout by ptest because not all ptests take=
s
> the sametime also are affected by machine. So add support to read a fil=
e
> inside ptest folder (timeout-ptest) and override global timeout with it=
.
>=20
> For example in glib-2.0,
>=20
>    /usr/lib/glib-2.0/ptest/run-ptest
>    /usr/lib/glib-2.0/ptest/timeout-ptest
>=20

I don't see a huge amount of use of `timeout-ptest` since

many tests I looked at have their own timeout mechanism built-in to=20
individual tests (OR we have patched in... ex: valgrind).


This has the advantage that the entire testsuite doesn't get killed,=20
only that particular hanging test.

I think the highest timeout I have bumped up is with valgrind at 90s

yifan

> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
> ---
>   main.c       |  2 +-
>   ptest_list.c |  3 ++-
>   ptest_list.h |  3 ++-
>   utils.c      | 69 +++++++++++++++++++++++++++++++++++++--------------=
-
>   utils.h      |  2 +-
>   5 files changed, 55 insertions(+), 24 deletions(-)
>=20
> diff --git a/main.c b/main.c
> index e3a1b69..467548e 100644
> --- a/main.c
> +++ b/main.c
> @@ -158,7 +158,7 @@ main(int argc, char *argv[])
>          for (i =3D 0; i < opts.dirs_no; i ++) {
>                  struct ptest_list *tmp;
>=20
> -               tmp =3D get_available_ptests(opts.dirs[i]);
> +               tmp =3D get_available_ptests(opts.dirs[i], opts.timeout=
);
>                  if (tmp =3D=3D NULL) {
>                          fprintf(stderr, PRINT_PTESTS_NOT_FOUND_DIR, op=
ts.dirs[i]);
>                          continue;
> diff --git a/ptest_list.c b/ptest_list.c
> index 917ef4f..b689670 100644
> --- a/ptest_list.c
> +++ b/ptest_list.c
> @@ -166,7 +166,7 @@ ptest_list_search_by_file(struct ptest_list *head, =
char *run_ptest, struct stat
>   }
>=20
>   struct ptest_list *
> -ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest)
> +ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest, =
int timeout)
>   {
>          struct ptest_list *n, *p;
>=20
> @@ -179,6 +179,7 @@ ptest_list_add(struct ptest_list *head, char *ptest=
, char *run_ptest)
>=20
>          n->ptest =3D ptest;
>          n->run_ptest =3D run_ptest;
> +       n->timeout =3D timeout;
>=20
>          n->prev =3D NULL;
>          n->next =3D NULL;
> diff --git a/ptest_list.h b/ptest_list.h
> index 02a64bb..e583d9f 100644
> --- a/ptest_list.h
> +++ b/ptest_list.h
> @@ -50,6 +50,7 @@
>   struct ptest_list {
>          char *ptest;
>          char *run_ptest;
> +       int timeout;
>=20
>          struct ptest_list *next;
>          struct ptest_list *prev;
> @@ -62,7 +63,7 @@ extern int ptest_list_free_all(struct ptest_list *);
>   extern int ptest_list_length(struct ptest_list *);
>   extern struct ptest_list *ptest_list_search(struct ptest_list *, char=
 *);
>   extern struct ptest_list *ptest_list_search_by_file(struct ptest_list=
 *, char *, struct stat);
> -extern struct ptest_list *ptest_list_add(struct ptest_list *, char *, =
char *);
> +extern struct ptest_list *ptest_list_add(struct ptest_list *, char *, =
char *, int);
>   extern struct ptest_list *ptest_list_remove(struct ptest_list *, char=
 *, int);
>   extern struct ptest_list *ptest_list_extend(struct ptest_list *, stru=
ct ptest_list *);
>=20
> diff --git a/utils.c b/utils.c
> index 1a3c90f..424115f 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -84,9 +84,30 @@ check_allocation1(void *p, size_t size, char *file, =
int line, int exit_on_null)
>          }
>   }
>=20
> +static inline char *
> +get_ptest_file(char **ptest_file, struct stat *st_buf, const char *mai=
n_dir,
> +               const char *ptest_dir, const char *file_name)
> +{
> +       if (asprintf(ptest_file, "%s/%s/ptest/%s",
> +           main_dir, ptest_dir, file_name) =3D=3D -1)  {
> +               return NULL;
> +       }
> +
> +       if (stat(*ptest_file, st_buf) =3D=3D -1) {
> +               free(*ptest_file);
> +               return NULL;
> +       }
> +
> +       if (!S_ISREG(st_buf->st_mode)) {
> +               free(*ptest_file);
> +               return NULL;
> +       }
> +
> +       return *ptest_file;
> +}
>=20
>   struct ptest_list *
> -get_available_ptests(const char *dir)
> +get_available_ptests(const char *dir, int global_timeout)
>   {
>          struct ptest_list *head;
>          struct stat st_buf;
> @@ -123,10 +144,11 @@ get_available_ptests(const char *dir)
>                          break;
>                  }
>=20
> -
>                  fail =3D 0;
>                  for (i =3D 0; i < n; i++) {
>                          char *run_ptest;
> +                       char *timeout_ptest;
> +                       int timeout;
>=20
>                          char *d_name =3D strdup(namelist[i]->d_name);
>                          CHECK_ALLOCATION(d_name, sizeof(namelist[i]->d=
_name), 0);
> @@ -142,34 +164,38 @@ get_available_ptests(const char *dir)
>                                  continue;
>                          }
>=20
> -                       if (asprintf(&run_ptest, "%s/%s/ptest/run-ptest=
",
> -                           realdir, d_name) =3D=3D -1)  {
> -                               fail =3D 1;
> +                       if (get_ptest_file(&run_ptest, &st_buf, realdir=
, d_name, "run-ptest") =3D=3D NULL) {
>                                  saved_errno =3D errno;
>                                  free(d_name);
> -                               break;
> -                       }
> -
> -                       if (stat(run_ptest, &st_buf) =3D=3D -1) {
> -                               free(run_ptest);
> -                               free(d_name);
>                                  continue;
>                          }
>=20
> -                       if (!S_ISREG(st_buf.st_mode)) {
> +                       if (ptest_list_search_by_file(head, run_ptest, =
st_buf)) {
>                                  free(run_ptest);
>                                  free(d_name);
>                                  continue;
>                          }
>=20
> -                       if (ptest_list_search_by_file(head, run_ptest, =
st_buf)) {
> -                               free(run_ptest);
> -                               free(d_name);
> -                               continue;
> +                       timeout =3D global_timeout;
> +                       if (get_ptest_file(&timeout_ptest, &st_buf, rea=
ldir, d_name, "timeout-ptest")) {
> +                               FILE *f =3D fopen(timeout_ptest, "r");
> +
> +                               if (f =3D=3D NULL) {
> +                                       fail =3D 1;
> +                                       saved_errno =3D errno;
> +                                       free(run_ptest);
> +                                       free(d_name);
> +                                       free(timeout_ptest);
> +                                       break;
> +                               }
> +                               fscanf(f, "%d", &timeout);
> +                               fclose(f);
> +
> +                               free(timeout_ptest);
>                          }
>=20
>                          struct ptest_list *p =3D ptest_list_add(head,
> -                               d_name, run_ptest);
> +                               d_name, run_ptest, timeout);
>                          CHECK_ALLOCATION(p, sizeof(struct ptest_list *=
), 0);
>                          if (p =3D=3D NULL) {
>                                  fail =3D 1;
> @@ -229,6 +255,7 @@ filter_ptests(struct ptest_list *head, char **ptest=
s, int ptest_num)
>                  for (i =3D 0; i < ptest_num; i++) {
>                          char *ptest;
>                          char *run_ptest;
> +                       int timeout;
>=20
>                          n =3D ptest_list_search(head, ptests[i]);
>                          if (n =3D=3D NULL) {
> @@ -239,13 +266,14 @@ filter_ptests(struct ptest_list *head, char **pte=
sts, int ptest_num)
>=20
>                          ptest =3D strdup(n->ptest);
>                          run_ptest =3D strdup(n->run_ptest);
> +                       timeout =3D n->timeout;
>                          if (ptest =3D=3D NULL || run_ptest =3D=3D NULL=
) {
>                                  saved_errno =3D errno;
>                                  fail =3D 1;
>                                  break;
>                          }
>=20
> -                       if (ptest_list_add(head_new, ptest, run_ptest) =
=3D=3D NULL) {
> +                       if (ptest_list_add(head_new, ptest, run_ptest, =
timeout) =3D=3D NULL) {
>                                  saved_errno =3D errno;
>                                  fail =3D 1;
>                                  break;
> @@ -509,8 +537,7 @@ run_ptests(struct ptest_list *head, const struct pt=
est_options opts,
>                                  fprintf(fp, "%s\n", get_stime(stime, G=
ET_STIME_BUF_SIZE, sttime));
>                                  fprintf(fp, "BEGIN: %s\n", ptest_dir);
>=20
> -
> -                               status =3D wait_child(child, opts.timeo=
ut);
> +                               status =3D wait_child(child, p->timeout=
);
>=20
>                                  entime =3D time(NULL);
>                                  duration =3D entime - sttime;
> @@ -528,6 +555,8 @@ run_ptests(struct ptest_list *head, const struct pt=
est_options opts,
>=20
>                                  fprintf(fp, "END: %s\n", ptest_dir);
>                                  fprintf(fp, "%s\n", get_stime(stime, G=
ET_STIME_BUF_SIZE, entime));
> +
> +                               free(ptest_dir);
>                          }
>                  PTEST_LIST_ITERATE_END
>                  fprintf(fp, "STOP: %s\n", progname);
> diff --git a/utils.h b/utils.h
> index 39832e6..69940d0 100644
> --- a/utils.h
> +++ b/utils.h
> @@ -45,7 +45,7 @@ struct ptest_options {
>=20
>=20
>   extern void check_allocation1(void *, size_t, char *, int, int);
> -extern struct ptest_list *get_available_ptests(const char *);
> +extern struct ptest_list *get_available_ptests(const char *, int);
>   extern int print_ptests(struct ptest_list *, FILE *);
>   extern struct ptest_list *filter_ptests(struct ptest_list *, char **,=
 int);
>   extern int run_ptests(struct ptest_list *, const struct ptest_options=
,
> --
> 2.31.0
>=20
