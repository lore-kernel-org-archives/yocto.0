Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.2207.1616785879527930648
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 12:11:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=HnvRVqsq;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yifan.yu@windriver.com)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (mail-eopbgr750058.outbound.protection.outlook.com [40.107.75.58])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AEC1B38C0856
	for <yocto@yoctoproject.org>; Fri, 26 Mar 2021 19:11:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CwBgWf++3n8IWWOrEzFxjK7WGlsfATsxmJbFvc5mWo5tBqomXi47oNehygK+9BSXD4tQHfQNAJxEelfQ4fdu43KWmAiqWiDPJYkFFSgSqGAbPG09/02BSJaDYqF1lw0Rgxp0c4lkcUXy+doZNUcCfw7eCqGiLwcFF2eaPWeInMrH/c3qEYeeRiwOMLaG/qfGgcMFJGLMcBDgMXbeICNAkghNbYlwMRpsPWqQvEwiS7pQ+4VNHwhhsbL6p44h/TwqaKnmNv2XyQFRcRxXv2LfJoRELKWZcrCY/E8ZYfrhdEQM7F0PQoDPl+NUVto/xkR5ImI6gUqJfALOBQsyOBRGHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v9J9wj4Zbhgrh8mlYQzFNsFG4hZYtbUHZrAtP9jShsM=;
 b=XKE7j3qU1foeY++L8zKLpZuiLLjnnfGOrflQFpXIqUxsQvw5W1Y3TS5EifRluzXEhJgh7S9co0CUR72+hFJ2thB5yYsZiCEWhNSHwZP1SUb4dCBEmIWGmMSUN2NU666qdTsNzhf6WNcaSUNFSzzGplUp3IASljyS8P32PxqCcxAtl5QBufDbzskTaXrhABv1a4pYtsFHwr0xvpgJdlJPLM2KSCZDph1rIykn6QAjYl5Cgq4hneE0h898RhMvgb1EV9U1P2aWD4g8jzbrPzWlf+seM+FaRiokuCx8xlLkHZnyUbYsY2Tb2E/7C5AJXQPKZiSGdWKr8S7qHLNTP9rhag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v9J9wj4Zbhgrh8mlYQzFNsFG4hZYtbUHZrAtP9jShsM=;
 b=HnvRVqsqH7kENYC3knbuEpSzEOrRixU/QqXuU9B2xrhMMiPz4uj9mXimjB/I8xt8jBca/vf09h418F1nDgM0pHfpT5K6E4x4VeJ/+64qDtBRPBMVBgEZoV3K+wQOGu5DSBVUoxqJHobk2yEUaCJYhAlD5EXcVYZ6hlYgOvTR6zc=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SN6PR11MB2559.namprd11.prod.outlook.com (2603:10b6:805:57::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Fri, 26 Mar
 2021 19:11:15 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f%9]) with mapi id 15.20.3977.029; Fri, 26 Mar 2021
 19:11:15 +0000
Subject: Re: [ptest-runner][PATCH 4/4v2] utils.c: wait_child reimplement timeout using alarm
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linaro.org>,
 yocto@yoctoproject.org
Cc: Randy.MacLeod@windriver.com
References: <20210324184059.3699215-1-anibal.limon@linaro.org>
From: "Yi Fan Yu" <yifan.yu@windriver.com>
Message-ID: <5a6c8d83-edb6-be5f-1d63-c44afcf60e78@windriver.com>
Date: Fri, 26 Mar 2021 15:11:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210324184059.3699215-1-anibal.limon@linaro.org>
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: SJ0PR05CA0199.namprd05.prod.outlook.com
 (2603:10b6:a03:330::24) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.42] (135.0.247.71) by SJ0PR05CA0199.namprd05.prod.outlook.com (2603:10b6:a03:330::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.18 via Frontend Transport; Fri, 26 Mar 2021 19:11:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 51875a11-53e1-4f61-f560-08d8f08aed35
X-MS-TrafficTypeDiagnostic: SN6PR11MB2559:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB2559B2365AF3FB6F23A1D26280619@SN6PR11MB2559.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	A41rGdB17sRQ3RTcT/5tjzkX1zAy00X7RxPvl2BUEFhZ9Nj2oyJFTGlKO3oTowwBFTSKDfttbNRzvxklfRQP1p1fWPh3j+8oWk7E72EioO7tPGA47UA726rbNEpnCekUDfNY+tRiEzs6FsdBM3EvvraOtZMz7hmb+QhelJIc0oMoIJIOcx65iporpd14ghtbXwsIIZN/xh+KRZ/S5dADKc0VBZ4gdDRKBKDljXvSpA824L34DG3A1QVywgbDOOTzdvCIizo/H1ALLtKy+iAXqBiV2iDEfPgqUd9Tutpi50vyWvEQ30PD1tLquqRc43hZGw1ggtMRKMyAtqVH+qf9t7bwXdqo5qjyCYNQRXmCMAjb2E4Bsgy9HdP3Yz9hoX5qR9pGzU1YnfUe52g+6OgbutEtTI+he5jncoIODKs1cfV7y1X40Vw+A4rI+DWmTpIlCSZ3Z5YS2f9GyzD4NN2ZCjbCXB4GMP8b4FVLVmYyM60km4bwl7X1KBjIhrn/Wd1/GAyqMoiI6twvsr/IINIIiFBckrJADsTyGoPv/oKbwIGXbFYbYJIhvSpNQNqN6Ox1wKV9ElBLkJnfHTbhAsFb354tmWnsSsE8H4agg2zNWNbeeFbP1j44JRkw1euDq9wMItdF2rYhw5WbJ9sCyZjWkFiRgU8g7wP+uHwNvd0B7Dy0Qj3rqWCGezk3I62+Ri2KsYMzvKGbJls+pv3TlKoMQ3BSaDM2jwOHBvYO/CWnBIMziS7cAv99Arh7gj5w2sXP6R1t89wj4OAw+gfNysL8dk/wzzTdvTfoELOiZxTu0oQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(136003)(366004)(376002)(396003)(107886003)(6486002)(6666004)(5660300002)(52116002)(53546011)(26005)(66556008)(186003)(16526019)(2906002)(86362001)(966005)(478600001)(66574015)(66476007)(8676002)(8936002)(4326008)(38100700001)(2616005)(83380400001)(31686004)(316002)(66946007)(36756003)(16576012)(956004)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?Rkw5M1pXV1RXR0o1cm1JL1I0UmlZNmZBSVQreHVkUE1JTlBCTmN0YmljTWZP?=
 =?utf-8?B?bm5VK3RWNTFhRDFnYk5Jdi91dU5QR0pWNjlIL0FKTVhFUXdNUk1Vdkkvblow?=
 =?utf-8?B?WkhBOWUvZ3J6U0o1Sy95UUxyQnR5eC82RjE1M0Q2NURWQnN4cmFCVEZQekha?=
 =?utf-8?B?YTNvdjBlWkVocThoZ3o1SS9LNkVUaHFwelZOQVQxVmFLMFczK2dXVmYwQ2Vt?=
 =?utf-8?B?MTI2eURLZVJ1OEYzbHR1MUx5ZVErUUt3K2JaYW5vT0txOGxQL21KbVZ1R21G?=
 =?utf-8?B?Ym4rd081NmVvaWR4M0NDZC8wcEg5RC9TTEdZemJsNWJGbGpsTHg4T3p1dXll?=
 =?utf-8?B?Q2l3NzBrUkxvMjBBMFlFekVtT0tKL2ozdWRkVDlSTnk4RTMwYk9ZUUNOd2xp?=
 =?utf-8?B?L28rNlU4U1Bhb3NObDNQNldQQ3daTTlicGlJYlhSdjNBNXVrTzFvNHd3OTk5?=
 =?utf-8?B?Mk43RTEyOVU5aENpcU1xSGRQcFMrUEhCQlNXdm5ma0xaVmQ0TGY3NldiRFRp?=
 =?utf-8?B?UklFT0hQTDNLQTdSM0duaWFNbnBwV3JMQXNuUHB3b1U0RXVzTkVDdzFyYk51?=
 =?utf-8?B?U2liekxwVVByREhXT05vaSsvVktGbHZOK3Mrby85ajB0cngrVFpmUExBU1VU?=
 =?utf-8?B?UlFmWEJsSTJHT0VxRkRKNkY5cTl2VU5zY3BXVkNZS3EzYUxRdHR5NWZ2NTJX?=
 =?utf-8?B?N1V0c3RCSEEyckF1SHRJSDVNQ3oyOFlvbXB6L1pwOVZNeWlFYXNJU3h6NGU4?=
 =?utf-8?B?TTJkeURoblEvd3E1QVdEMlZ4cjNVM0FPMFBobEhKTndoNHJqU1dQV3gyTSsz?=
 =?utf-8?B?MjkzTlNldnlaV1VRZy9MWEVGNEYvWng5bytLNHlFZXMzbFJCaFFxOExaUUVY?=
 =?utf-8?B?K3pQWjNxdDhQazFHWk1LRHBHLzNuRDFRZ2g3Z0RTNDdtVWhuODVPN3MrWmNP?=
 =?utf-8?B?NExkd2NSMmdERU1TWnhHZFFnWnpjRlp0Ym1rZmVLUFNIdmRLWFlTM20rN2sw?=
 =?utf-8?B?QnVGUmtvZWhIUGJDd0QzMER1NU5WSHAyMUI3a0hHTG9xaHhEYVUwV3VyMURu?=
 =?utf-8?B?aU5yWHRJa3h5MkZjbkhNcXE0b1Q5OWFnbkxUTjdYOWtxZTc2VExWVDEyVWJo?=
 =?utf-8?B?NlM2MVN1QmlXT0dDcVdUakloOGg4ZHlncVQ0VTZqeFlZTFdkVG8yTG1NeHhC?=
 =?utf-8?B?SGl5WEx2d1FuTGRkVElBL0VRaUNLaWZoUFphbHRGMURzVU1RK2o5ZGVkbXBY?=
 =?utf-8?B?bWNFZkVGM2Zxa1E0YXhuSnpzSTBlZEwreGZpZVl3V1FVTHVPVTgrNFA5bkRq?=
 =?utf-8?B?Z2VRNXRNL3hEQ1dmQjlId2g1MEgyd3pVMjNEOEVwUjFZN2NXVCthNGlPQThy?=
 =?utf-8?B?UnVXNm1kV2Z3ck5ESnorTlh2amYxV3dYMFZveUtiek1GajZ0TngxTlpuOHc3?=
 =?utf-8?B?M0Q0bGhyZDAySTFtUmE4UkJ1UElSVER0TktjSHdzN0gvdDFJQWFqanAvM0lm?=
 =?utf-8?B?REQ5UC9PaUQ3ZXpUMUpNM1dlSzgxSmlnZnd3SUJZOWxkeHFvbTV0bWllZW9v?=
 =?utf-8?B?V1VSNlJnSGdBUGlFQ3YxWnBaNkVvTWI2SDJDeGxsWU5nV2ZTSmlyTG4rRUtj?=
 =?utf-8?B?NHZXZkFqZ25KOE9KdkgxTVdraXR5MWNRbU5mdjJyRUJxY2ZhdHIraXBCQm40?=
 =?utf-8?B?K2lIdkhDT2VsekhzZEg5YjV4Y280bkdPRGRPcDJLelpZTzR1Qi9tUzVvN2g1?=
 =?utf-8?Q?yyCvvFAbF4QUAw6qftDzkN7x1wxZyQ3+GKtHqTk?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51875a11-53e1-4f61-f560-08d8f08aed35
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2021 19:11:15.0238
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8z/eHYtWNxXDb8gTcbenvb8O92R7krpWbx3O33OMuq025RXDKh4tUXGy6Ch6RozEQb8GB1Q09n62OgYRrvmHxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2559
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 3/24/21 2:40 PM, An=C3=ADbal Lim=C3=B3n wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
>=20
> Since we are using threads to read from child, no complex logic is
> needed for handle timeouts by std{out,err} in the child using alarm(2).
>=20
> [YOCTO #14220]
>=20
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
>=20

LGTM, solves my bug and my issue with the old timeout behaviour.

I tested glib-2.0 with the extra debugging output. It works.
Also doesn't timeout.


---
>   utils.c | 65 ++++++++++++++++++++++++--------------------------------=
-
>   1 file changed, 27 insertions(+), 38 deletions(-)
>=20
> diff --git a/utils.c b/utils.c
> index 84cb570..b28107d 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -57,6 +57,10 @@
>   static struct {
>          int fds[2];
>          FILE *fps[2];
> +
> +       int timeout;
> +       int timeouted;
> +       pid_t pid;
>   } _child_reader;
>=20
>   static inline char *
> @@ -304,6 +308,9 @@ read_child(void *arg)
>                                          fwrite(buf, (size_t)n, 1, _chi=
ld_reader.fps[1]);
>                          }
>=20
> +                       /* Child output reset alarm */
> +                       alarm(0);
> +                       alarm(_child_reader.timeout);

I looked at https://linux.die.net/man/2/alarm
I don't think alarm(0) is necessary, but it is fine.

>                  }
>=20
>                  fflush(_child_reader.fps[0]);
> @@ -335,45 +342,28 @@ run_child(char *run_ptest, int fd_stdout, int fd_=
stderr)
>          /* exit(1); not needed? */
>   }
>=20
> -static inline int
> -wait_child(pid_t pid, int timeout, int *timeouted)
> +static void
> +timeout_child_handler(int signo)
>   {
> -       struct timespec sentinel;
> -       clockid_t clock =3D CLOCK_MONOTONIC;
> -       int looping =3D 1;
> +       _child_reader.timeouted =3D 1;
> +       kill(-_child_reader.pid, SIGKILL);
> +}
>=20
> +static inline int
> +wait_child(pid_t pid, int timeout)
> +{
>          int status =3D -1;
> -       int waitflags;
> -
> -       if (clock_gettime(clock, &sentinel) =3D=3D -1) {
> -               clock =3D CLOCK_REALTIME;
> -               clock_gettime(clock, &sentinel);
> -       }
>=20
> -       *timeouted =3D 0;
> +       _child_reader.timeout =3D timeout;
> +       _child_reader.timeouted =3D 0;
> +       _child_reader.pid =3D pid;
>=20
> -       while (looping) {
> -               waitflags =3D WNOHANG;
> +       /* setup alarm to timeout based on std{out,err} in the child */
> +       alarm(timeout);
>=20
> -               if (timeout >=3D 0) {
> -                       struct timespec time;
> -
> -                       clock_gettime(clock, &time);
> -                       if ((time.tv_sec - sentinel.tv_sec) > timeout) =
{
> -                               *timeouted =3D 1;
> -                               kill(-pid, SIGKILL);
> -                               waitflags =3D 0;
> -                       }
> -               }
> -
> -               if (waitpid(pid, &status, waitflags) =3D=3D pid)
> -                       looping =3D 0;
> -
> -               clock_gettime(clock, &sentinel);
> -
> -               if (WIFEXITED(status))
> -                       status =3D WEXITSTATUS(status);
> -       }
> +       waitpid(pid, &status, 0);
> +       if (WIFEXITED(status))
> +               status =3D WEXITSTATUS(status);
>=20
>          return status;
>   }
> @@ -438,7 +428,6 @@ run_ptests(struct ptest_list *head, const struct pt=
est_options opts,
>          pid_t child;
>          int pipefd_stdout[2];
>          int pipefd_stderr[2];
> -       int timeouted;
>          time_t sttime, entime;
>          time_t duration;
>          int slave;
> @@ -477,6 +466,7 @@ run_ptests(struct ptest_list *head, const struct pt=
est_options opts,
>                          close(pipefd_stdout[1]);
>                          break;
>                  }
> +               signal(SIGALRM, timeout_child_handler);
>=20
>                  fprintf(fp, "START: %s\n", progname);
>                  PTEST_LIST_ITERATE_START(head, p)
> @@ -527,8 +517,7 @@ run_ptests(struct ptest_list *head, const struct pt=
est_options opts,
>                                  fprintf(fp, "BEGIN: %s\n", ptest_dir);
>=20
>=20
> -                               status =3D wait_child(child, opts.timeo=
ut, &timeouted);
> -
> +                               status =3D wait_child(child, opts.timeo=
ut);
>=20
>                                  entime =3D time(NULL);
>                                  duration =3D entime - sttime;
> @@ -538,11 +527,11 @@ run_ptests(struct ptest_list *head, const struct =
ptest_options opts,
>                                          rc +=3D 1;
>                                  }
>                                  fprintf(fp, "DURATION: %d\n", (int) du=
ration);
> -                               if (timeouted)
> +                               if (_child_reader.timeouted)
>                                          fprintf(fp, "TIMEOUT: %s\n", p=
test_dir);
>=20
>                                  if (opts.xml_filename)
> -                                       xml_add_case(xh, status, ptest_=
dir, timeouted, (int) duration);
> +                                       xml_add_case(xh, status, ptest_=
dir, _child_reader.timeouted, (int) duration);
>=20
>                                  fprintf(fp, "END: %s\n", ptest_dir);
>                                  fprintf(fp, "%s\n", get_stime(stime, G=
ET_STIME_BUF_SIZE, entime));
> --
> 2.31.0
>=20
