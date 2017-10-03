Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96BD8E00D68; Tue,  3 Oct 2017 08:31:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0D38E00CF6
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 08:31:26 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Oct 2017 08:31:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,474,1500966000"; d="scan'208";a="158854111"
Received: from unknown (HELO jlock-mobl3.ger.corp.intel.com) ([10.252.2.166])
	by fmsmga006.fm.intel.com with ESMTP; 03 Oct 2017 08:31:25 -0700
To: Jiwei Sun <jiwei.sun@windriver.com>, yocto@yoctoproject.org
References: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
	<1506650980-87720-8-git-send-email-jiwei.sun@windriver.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <796e17c9-5c56-8b7f-9032-fe8a0f8d3e59@linux.intel.com>
Date: Tue, 3 Oct 2017 16:31:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506650980-87720-8-git-send-email-jiwei.sun@windriver.com>
Cc: anibal.limon@linux.intel.com
Subject: Re: [ptest-runner 8/8] Added <system-err></system-err> to XML
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
X-List-Received-Date: Tue, 03 Oct 2017 15:31:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Is this an evolution of the change in 6/8? Can it be squashed in with 
that patch?

Thanks,

Joshua

On 29/09/17 03:09, Jiwei Sun wrote:
> Signed-off-by: Jiwei Sun <jiwei.sun@windriver.com>
> ---
>   tests/data/reference.xml |  3 ++-
>   tests/utils.c            |  4 ++--
>   utils.c                  | 49 +++++++++++++++++++++++++++++++++---------------
>   utils.h                  |  2 +-
>   4 files changed, 39 insertions(+), 19 deletions(-)
> 
> diff --git a/tests/data/reference.xml b/tests/data/reference.xml
> index a23b44b..0dea38c 100644
> --- a/tests/data/reference.xml
> +++ b/tests/data/reference.xml
> @@ -4,6 +4,7 @@
>   	</testcase>
>   	<testcase classname='test2' name='run-ptest'>
>   		<failure type='exit_code' message='run-ptest exited with code: 1'></failure>
> -		<system-out>ERROR</system-out>
> +		<system-out>STDOUT ERROR</system-out>
> +		<system-err>STDERR</system-err>
>   	</testcase>
>   </testsuite>
> diff --git a/tests/utils.c b/tests/utils.c
> index bb799f4..230116a 100644
> --- a/tests/utils.c
> +++ b/tests/utils.c
> @@ -262,9 +262,9 @@ START_TEST(test_xml_pass)
>   	ck_assert(xp != NULL);
>           entry.ptest = "test1";
>           entry.run_ptest = "run-ptest";
> -        xml_add_case(xp, 0, &entry, "");
> +        xml_add_case(xp, 0, &entry, "", "");
>           entry.ptest = "test2";
> -        xml_add_case(xp, 1, &entry, "ERROR");
> +        xml_add_case(xp, 1, &entry, "STDOUT ERROR", "STDERR");
>   	xml_finish(xp);
>   
>   	FILE *fp, *fr;
> diff --git a/utils.c b/utils.c
> index 54ef89d..0f712f9 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -295,7 +295,8 @@ wait_child(const char *ptest_dir,
>   	   int timeout,
>   	   int *fds,
>   	   FILE **fps,
> -	   char *buf)
> +	   char *bufout,
> +	   char *buferr)
>   {
>   	struct pollfd pfds[2];
>   	time_t sentinel;
> @@ -319,13 +320,13 @@ wait_child(const char *ptest_dir,
>   			ssize_t n;
>   
>   			if (pfds[0].revents != 0) {
> -				while ((n = read(fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
> -					fwrite(buf, n, 1, fps[0]);
> +				while ((n = read(fds[0], bufout, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
> +					fwrite(bufout, n, 1, fps[0]);
>   			}
>   
>   			if (pfds[1].revents != 0) {
> -				while ((n = read(fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
> -					fwrite(buf, n, 1, fps[1]);
> +				while ((n = read(fds[1], buferr, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
> +					fwrite(buferr, n, 1, fps[1]);
>   			}
>   
>   		sentinel = time(NULL);
> @@ -454,13 +455,15 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   				int status;
>   				int fds[2]; fds[0] = pipefd_stdout[0]; fds[1] = pipefd_stderr[0];
>   				FILE *fps[2]; fps[0] = fp; fps[1] = fp_stderr;
> -				char buf[WAIT_CHILD_BUF_MAX_SIZE];
> +				char bufout[WAIT_CHILD_BUF_MAX_SIZE];
> +				char buferr[WAIT_CHILD_BUF_MAX_SIZE];
>   
>   //				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
>   				fprintf(fp, "BEGIN: %s\n", ptest_dir);
>   
>   				status = wait_child(ptest_dir, p->run_ptest, child,
> -						    opts.timeout, fds, fps, buf);
> +						    opts.timeout, fds, fps, bufout,
> +						    buferr);
>   				if (status)
>   					rc += 1;
>   
> @@ -468,7 +471,8 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   					xml_add_case(xh,
>   						     status,
>   						     (struct ptest_entry *)p,
> -						     buf);
> +						     bufout,
> +						     buferr);
>   
>   //				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
>   				/* Let non-master gracefully terminate */
> @@ -502,14 +506,18 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   				int status;
>   				int fds[2]; fds[0] = pipefd_stdout[0]; fds[1] = pipefd_stderr[0];
>   				FILE *fps[2]; fps[0] = fp; fps[1] = fp_stderr;
> -				char buf[WAIT_CHILD_BUF_MAX_SIZE];
> +				char bufout[WAIT_CHILD_BUF_MAX_SIZE];
> +				char buferr[WAIT_CHILD_BUF_MAX_SIZE];
> +				
> +				memset(bufout, 0, sizeof(bufout));
> +				memset(buferr, 0, sizeof(buferr));
>   
> -				memset(buf, 0, sizeof(buf));
>   				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
>   				fprintf(fp, "BEGIN: %s\n", ptest_dir);
>   
>   				status = wait_child(ptest_dir, p->run_ptest, child,
> -						    opts.timeout, fds, fps, buf);
> +						    opts.timeout, fds, fps, bufout,
> +						    buferr);
>   				if (status)
>   					rc += 1;
>   
> @@ -517,7 +525,8 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
>   					xml_add_case(xh,
>   						     status,
>   						     (struct ptest_entry *)p,
> -						     buf);
> +						     bufout,
> +						     buferr);
>   
>   				fprintf(fp, "END: %s\n", ptest_dir);
>   				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
> @@ -556,7 +565,11 @@ xml_create(int test_count, char *xml_filename)
>   }
>   
>   void
> -xml_add_case(FILE *xh, int status, struct ptest_entry *ptest, char *buf)
> +xml_add_case(FILE *xh,
> +	     int status,
> +	     struct ptest_entry *ptest,
> +	     char *bufout,
> +	     char *buferr)
>   {
>   	struct flock lock;
>   	int fd;
> @@ -577,11 +590,14 @@ xml_add_case(FILE *xh, int status, struct ptest_entry *ptest, char *buf)
>   				"</failure>\n"				\
>   				"\t\t<system-out>%s"			\
>   				"</system-out>\n"			\
> +				"\t\t<system-err>%s"			\
> +				"</system-err>\n"			\
>   				"\t</testcase>\n",
>   				ptest->ptest,
>   				basename(bname),
>   				status,
> -				buf);
> +				bufout,
> +				buferr);
>   		}
>   		else {
>   			fprintf(xh, "\t<testcase classname='%s' name='%s'>\n" \
> @@ -590,11 +606,14 @@ xml_add_case(FILE *xh, int status, struct ptest_entry *ptest, char *buf)
>   				"</failure>\n"				\
>   				"\t\t<system-out>%s"			\
>   				"</system-out>\n"			\
> +				"\t\t<system-err>%s"			\
> +				"</system-err>\n"			\
>   				"\t</testcase>\n",
>   				ptest->ptest,
>   				basename(bname),
>   				status,
> -				buf);
> +				bufout,
> +				buferr);
>   		}
>   	}
>   	else {
> diff --git a/utils.h b/utils.h
> index 70e2abe..8f2e5b4 100644
> --- a/utils.h
> +++ b/utils.h
> @@ -48,7 +48,7 @@ extern int run_ptests(struct ptest_list *, const struct ptest_options,
>   		const char *, FILE *, FILE *);
>   
>   extern FILE *xml_create(int, char *);
> -extern void xml_add_case(FILE *, int, struct ptest_entry *, char *);
> +extern void xml_add_case(FILE *, int, struct ptest_entry *, char *, char *);
>   extern void xml_finish(FILE *);
>   
>   #endif
> 

