Received: from NAM04-DM6-obe.outbound.protection.outlook.com (NAM04-DM6-obe.outbound.protection.outlook.com [40.107.102.55])
 by mx.groups.io with SMTP id smtpd.web09.678.1612396067609129773
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Feb 2021 15:47:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=FCHrVel9;
 spf=pass (domain: windriver.com, ip: 40.107.102.55, mailfrom: yifan.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PyHFmaqa4lzY+OWk+iwjx+69EpW6O2/w6rG7BtbslHpV1eorzz0jyRBkcsmwxd5F0THYt1YOM1pJ8tOULrUJXLaIGXNt16iWaK72DW/+9mawb6v6AplNfmjymiCNvuvFIlVk+Q78+7CtDYyhDhaKZmjM5V+klK6v/ox8wcL6pCKwoYlQzhqxdX4PGqOMp0e2qY2UcSRYxnfmV3kT+z3jzPqziltE1my9PrvPYU3cBcT/HUT4Wdqp/tprHPFsaTqh0gLT2fr5XpjLofWXni1nXRurZ1dsWZmLDTxzcztt8kgg9Uei0XTUowqg9lK7sHoLkHixEg/4+0+Hp/P+IO870Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=56U8c8Aa41L9/it1YnCCO2tHk6Sgx+zAH8tRIVsohRU=;
 b=l4TpJTaOc7MBwoK6hE60SMwirZfPdD2D1ueI720nE3JSjEs+Z0wfd2oN5264Y3ah01yIVWy3a8JQfrOUjnKKZm7MnV6nFKDHAywVTArapx5ewwO68HJ0JYrjboYNMtVyfI0+NMRS5Yv49SNOItESS4y/8He4btOP0R5h3xtro3vMhTOtvZNrjoC3EQd2+E6+e5XaQSTRNb5Y6oQ7EtvRTNn8UyG9N1fSiQ7297hFKvLv18wRffB55+f2BThZMTwxRd7WPCrw2EYEGxBX9HlF6HA0yO6nl068wVqJ1wyDeYQLROkXX0HAfMOtKd8+bSUaDmvMbHCAbrbu2mm5VFBnrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=56U8c8Aa41L9/it1YnCCO2tHk6Sgx+zAH8tRIVsohRU=;
 b=FCHrVel9VPO64/1TAZJ0LL1kotz0Y5C6KQVXldwL1o2+hVa7ehPgUPJi4GoYli4k3plu4zdNaQbYvlxm8u5gpRvOfaiiDyC/vW+8A1OjfKayZFpg7s9UfX4vpiGpz21YjbgET1yh5Vvssm3nHC4TpbIMmCjCJaSu93MtuytP2qk=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SN6PR11MB3166.namprd11.prod.outlook.com (2603:10b6:805:c5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.28; Wed, 3 Feb
 2021 23:47:45 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::1c2f:159e:f6f6:36f3]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::1c2f:159e:f6f6:36f3%7]) with mapi id 15.20.3805.027; Wed, 3 Feb 2021
 23:47:45 +0000
Subject: Re: [yocto][ptest-runner][PATCH] util.c: remove the usage of pipe for parent/child communication
From: "Yi Fan Yu" <yifan.yu@windriver.com>
To: randy.macleod@windriver.com, yocto@lists.yoctoproject.org
References: <16606184C72AAA28.24338@lists.yoctoproject.org>
Message-ID: <0b25cf3d-7e79-cd2a-c192-59f085390974@windriver.com>
Date: Wed, 3 Feb 2021 18:47:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <16606184C72AAA28.24338@lists.yoctoproject.org>
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: YT1PR01CA0119.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2c::28) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
Return-Path: yifan.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.42] (135.0.247.71) by YT1PR01CA0119.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2c::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19 via Frontend Transport; Wed, 3 Feb 2021 23:47:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 10e5d7dd-a0ee-4d11-5c38-08d8c89e1ae0
X-MS-TrafficTypeDiagnostic: SN6PR11MB3166:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB3166856CCFE418169940C5A580B49@SN6PR11MB3166.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:126;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+Vt7PJFwzAhC4ohGkwJdyf25lWkUX8444nLevMUQE7Ewoq1oCljJ5gbG/7C/2G3Dkje+h3nnW6V0g0HK/E0oCeQl4vzjUt46B2xeqrjdcwUYU8qtsItx2lHkJZVBfuzSD71+t7e2Y52HA0m6hiOgmbfmcljf7OtC+UG8Qah9IIton05tQsLV9oPHO8C+aeLtGiVBI15EPC2sVrllpj5m/C12DIdTzcE2SO/PCJAn0QXzOX2FVEv4AYUH3fKxniwEliib68aHs359J8GRLCrExfLBTvMYsFWDkflD5rd8MqKbirzbVnKB8hxaesemJtINFqY99H57EKYUQ6F3x9+kOGSxGQ6hqyHpg1yRdD3qj/5eMHAxoPKUecw3WF6f5vdvzSh05ABfbElJSGSNEh573KY7kOMmLVOu826F0dUySw7Zm+COmIaZoVEte/y6H/7cfD1EkYVVXO1Z8B5I9mtf7CzuMYzj9w12lZd2T3XLnT8VUFUDwBFcDKG75vAkN/pVnlAZnAiXYXv7rbXuEVV8AAUmjpdqJev7qr2xo8rSOIHPgxponmw3Fk9Y6AmiFYIzTeqEbhYhpxjcJ+9lr0QIJJfZsN82eGbLw4ALa2+u2e0FUDs512Kbpdfpuio3NrBVVWXAUMwLWL6jdxx4N07RxhqICjE7P63NMPxhvp01uGuBmABjLe0zcvQVy2sYl9Jy+qjmouViA/WQe5eknWHeUg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(136003)(39850400004)(346002)(376002)(8676002)(2906002)(26005)(5660300002)(6486002)(966005)(52116002)(2616005)(316002)(36756003)(478600001)(53546011)(16526019)(8936002)(66476007)(66556008)(83380400001)(31686004)(31696002)(66946007)(16576012)(956004)(86362001)(186003)(21314003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?a25YTGpaUzhCR25MWkI0TE51WkM3S090R1hJK3UwamtvKzNQY0N3c2kzTEc4?=
 =?utf-8?B?QldjL1pBSHI3ZXA1aDgxM0c5aUxkR0hhYXlhREFXTWQxUXpJc0tONmpqN2Mr?=
 =?utf-8?B?dnlleEpLWmEwaUFzY0IwL0d3RzNvUC8yeDBza3JDS3A2NzloKzRmY1NMSUFh?=
 =?utf-8?B?eDc1aTJUS2M4Vkw4VmQ3T0NNOWlEc2o5aHpjRU1hUnNrZFU3MUNSeGZXa3Jt?=
 =?utf-8?B?VE15ckNxci9RRFlTSi9rcVo2TkRqUGxQWVlzN25Qc0VTN1BaTGc2dDhRS05Y?=
 =?utf-8?B?dFBETWRDbUcrS0lLRXd5WldaMk9rOGh3R2tROGFObktHa1Bkc1diU2FqUEVy?=
 =?utf-8?B?QldqN2VjUjJtckIxdmNVbGpOSXBxOHY0TUlmelk5R3NlV05kQUg1SDVVM2NT?=
 =?utf-8?B?N2Vid1dZa21uWEEwY2dacFVFT2RYTm9jN0lCRjNlZzk5ZTFWRGRJdVVzdE90?=
 =?utf-8?B?S2N5WWpqSzQ0VGJ4U3E5WmVXSjRaTzJ5Njk3R2NjZThJT3lmQmx1My9nUWEv?=
 =?utf-8?B?ZTQ2QnhYWWFqUytrR0k3UXljNGo1djFCMmZjT21lSmFxbzQ4blFGY2xPMG96?=
 =?utf-8?B?Nk80L3orai9iUThndzc3SXVuNjBpV0dGVFJBZDlpQUw3TlBxa1dHYnlMcUww?=
 =?utf-8?B?N3AxT2tKOW1JMFdWSmFmMXZ2V3drc1hWb0V4VVdvNlJIOXZKbFl5ekp3OUt1?=
 =?utf-8?B?RnRrT1JCbldRQ3FRaTIxT2RIYXZSOTFEN2NCVmZWUzhZWk8wWFFVTEpvanU0?=
 =?utf-8?B?WVdSZWVISUFGNVJxRGJFd0dLMENyQkRFQXpyb1RJYmdzTkpKN21MTlZ5V3VR?=
 =?utf-8?B?azRsVzJUZ0k4Y0h5L09IMnl5QWNCME9vVkVBUnFBd1Blb0FaZDNuYkIwK2J4?=
 =?utf-8?B?YnZPMFNQbG1VWFI1UHpVVzE4NnFEN1YzdXluYTcrVUtjYy9zMDRtcEZPTDhT?=
 =?utf-8?B?anZsMThvZWdNQ3JtSlpVaElXeVY1ZTZEQzJwYmhEYk9XUHFDaThjeVVxUlB2?=
 =?utf-8?B?RlVocmxWVlBTR0NzNHRkVzVDbXk3b0NCd2NQZzlzNERtZUhrSmNiNjd2ejZT?=
 =?utf-8?B?d1dJMG5kby9VYjBrcFdrNUhHeXVlN3Z3enlnMWxaU2NxRGwyKzRvL3E5d3dz?=
 =?utf-8?B?ZDJ1M3kxdjVadE5IcVkwRTFaYUk0VGpPMUZQWVBudVNONVlDTktIaHZLN3J1?=
 =?utf-8?B?Zmx0YzlPeHZOVnFqb1loNlJVVERmOThwc1hxT09mVWZIdXUvb2VxMnJQbU9B?=
 =?utf-8?B?RW80cW5KeGtBTFdEQXU0UWZkTXZDVGZET1A1S0lheStTWHFmbm9mdmdmUE1G?=
 =?utf-8?B?TVY4OWxjbnp0SWsrQTlLWXpUdUFYYWlVb0U0SmZ3cU9HMlRnVjFZTWpxT1RH?=
 =?utf-8?B?bUVRRkRTSXpWQjlNdXF3ZmlrQlNrWUNoditrMHVvQzl3ZXVpNnVweTQwOUxn?=
 =?utf-8?B?MGFRbEpPNlRCcWpoTVBzdHc3MG1BclI4Vy8ydTU3NW5ud2dwYVBCMDBxOFVS?=
 =?utf-8?B?QTlhYlR3QnJpSk5kRzBDbzkxbHE0RHJ0VDN3N2tYQVZLeTNVajBpNnZsT0Vm?=
 =?utf-8?B?LzlsT2J6ZkEyemhJSG9IRjM0Y3hvTVhhdTlISTV6d2x0bnJzQURJbzZYZyty?=
 =?utf-8?B?RWt1UXl3WkdGb2phS0hSRkphZ3R4eGFrR1ZTbjBnLzlaOGZ4ajRsYlNEMTBG?=
 =?utf-8?B?a2Jub25tY2FnZ0QzSmp3ZVpvaGIzbHA2VmlreUJwSG9Jaklobllzekt5a1lZ?=
 =?utf-8?Q?Bo+R17avvISaCreApjNpweYr+bLlv4H0LQCf26c?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10e5d7dd-a0ee-4d11-5c38-08d8c89e1ae0
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2021 23:47:45.5538
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9+BLmgevlo+v5ojqAENbINfztedOU0e28fxIRMn5noP0B7/0+3Jlkvjkx0AoLvQtOn5JTGmAzTua7pIkOW1Hag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3166
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

i didn't spend too much time getting the patch to look nice.
It is just a proposal because this seems to be the root cause of a 
seemingly ...
unrelated bug.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=14170


On 2/3/21 6:44 PM, Yi Fan Yu wrote:
> If the output of the testing script is very large,
> the fwrite called by the parent in
> wait_child would start blocking. That would slow down
> the parent speed in clearing the pipe buffer.
>
> This is an issue because the pipe is Non-Blocking.
> so the child(ex: a bash script)
> who was designed to output to what he thinks is a
> is stdout, might error out due to EAGAIN (pipe full).
>
> The proposed fix is to remove pipes and just let the child
> write directly to stdout (same his parent)
>
> This would mean that the parent no longer control the output
> of the child.
>
> Signed-off-by: Yi Fan Yu <yifan.yu@windriver.com>
> ---
>   utils.c | 53 ++++++++---------------------------------------------
>   1 file changed, 8 insertions(+), 45 deletions(-)
>
> diff --git a/utils.c b/utils.c
> index a4e190e..5d62ced 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -274,12 +274,14 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
>   	argv[0] = run_ptest;
>   	argv[1] = NULL;
>   
> +	/* since it isn't use by the child, close(fd_stderr) ? */
> +	close(fd_stderr);
> +
>   	dup2(fd_stdout, STDOUT_FILENO);
>   	// XXX: Redirect stderr to stdout to avoid buffer ordering problems.
>   	dup2(fd_stdout, STDERR_FILENO);
>   
> -	/* since it isn't use by the child, close(fd_stderr) ? */
> -	close(fd_stderr); /* try using to see if this fixes bash run-read. rwm todo */
> +
>   	close_fds();
>   
>   	execv(run_ptest, argv);
> @@ -290,20 +292,13 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
>   static inline int
>   wait_child(pid_t pid, int timeout, int *fds, FILE **fps, int *timeouted)
>   {
> -	struct pollfd pfds[2];
>   	struct timespec sentinel;
>   	clockid_t clock = CLOCK_MONOTONIC;
>   	int looping = 1;
> -	int r;
>   
>   	int status = -1;
>   	int waitflags;
>   
> -	pfds[0].fd = fds[0];
> -	pfds[0].events = POLLIN;
> -	pfds[1].fd = fds[1];
> -	pfds[1].events = POLLIN;
> -
>   	if (clock_gettime(clock, &sentinel) == -1) {
>   		clock = CLOCK_REALTIME;
>   		clock_gettime(clock, &sentinel);
> @@ -328,29 +323,10 @@ wait_child(pid_t pid, int timeout, int *fds, FILE **fps, int *timeouted)
>   		if (waitpid(pid, &status, waitflags) == pid)
>   			looping = 0;
>   
> -		r = poll(pfds, 2, WAIT_CHILD_POLL_TIMEOUT_MS);
> -		if (r > 0) {
> -			char buf[WAIT_CHILD_BUF_MAX_SIZE];
> -			ssize_t n;
> -
> -			if (pfds[0].revents != 0) {
> -				while ((n = read(fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
> -					fwrite(buf, (size_t)n, 1, fps[0]);
> -			}
> -
> -			if (pfds[1].revents != 0) {
> -				while ((n = read(fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0) {
> -					fflush(fps[0]);
> -					fwrite(buf, (size_t)n, 1, fps[1]);
> -					fflush(fps[1]);
> -				}
> -			}
> -
> -			clock_gettime(clock, &sentinel);
> -		}
> -	}
> +        }
>   
>   	fflush(fps[0]);
> +
>   	return status;
>   }
>   
> @@ -412,8 +388,6 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   	char stime[GET_STIME_BUF_SIZE];
>   
>   	pid_t child;
> -	int pipefd_stdout[2];
> -	int pipefd_stderr[2];
>   	int timeouted;
>   	time_t sttime, entime;
>   	time_t duration;
> @@ -428,14 +402,6 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   
>   	do
>   	{
> -		if ((rc = pipe2(pipefd_stdout, O_NONBLOCK)) == -1)
> -			break;
> -
> -		if ((rc = pipe2(pipefd_stderr, O_NONBLOCK)) == -1) {
> -			close(pipefd_stdout[0]);
> -			close(pipefd_stdout[1]);
> -			break;
> -		}
>   		fprintf(fp, "START: %s\n", progname);
>   		if (isatty(0) && ioctl(0, TIOCNOTTY) == -1) {
>   			fprintf(fp, "ERROR: Unable to detach from controlling tty, %s\n", strerror(errno));
> @@ -474,11 +440,10 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   					fprintf(fp, "ERROR: Unable to attach to controlling tty, %s\n", strerror(errno));
>   				}
>   
> -				run_child(p->run_ptest, pipefd_stdout[1], pipefd_stderr[1]);
> +				run_child(p->run_ptest, STDOUT_FILENO, STDERR_FILENO);
>   
>   			} else {
>   				int status;
> -				int fds[2]; fds[0] = pipefd_stdout[0]; fds[1] = pipefd_stderr[0];
>   				FILE *fps[2]; fps[0] = fp; fps[1] = fp_stderr;
>   
>   				if (setpgid(child, pgid) == -1) {
> @@ -489,7 +454,7 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE, sttime));
>   				fprintf(fp, "BEGIN: %s\n", ptest_dir);
>   
> -				status = wait_child(child, opts.timeout, fds, fps, &timeouted);
> +				status = wait_child(child, opts.timeout, NULL, fps, &timeouted);
>   				entime = time(NULL);
>   				duration = entime - sttime;
>   
> @@ -510,8 +475,6 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   		PTEST_LIST_ITERATE_END
>   		fprintf(fp, "STOP: %s\n", progname);
>   
> -		close(pipefd_stdout[0]); close(pipefd_stdout[1]);
> -		close(pipefd_stderr[0]); close(pipefd_stderr[1]);
>   	} while (0);
>   
>   	if (rc == -1)
>
> 
>
