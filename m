Return-Path: <benjamin.esquivel@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C9FEE00A0A; Thu, 19 Jan 2017 09:53:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9597E009F8
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 09:53:55 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jan 2017 09:53:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,254,1477983600"; d="scan'208";a="1115095290"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jan 2017 09:53:55 -0800
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.47]) by
	FMSMSX106.amr.corp.intel.com ([169.254.5.63]) with mapi id
	14.03.0248.002; Thu, 19 Jan 2017 09:53:55 -0800
From: "Esquivel, Benjamin" <benjamin.esquivel@intel.com>
To: =?iso-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, "Pascal
	Bach" <pascal.bach@siemens.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, Christian Schuler <schuler.christian@siemens.com>
Thread-Topic: [yocto] [ptest-runner][PATCH] feat: generate xml-file
Thread-Index: AQHScmii4hU66CTtwEGa5httso+2MKFAmAwA//9833A=
Date: Thu, 19 Jan 2017 17:53:54 +0000
Message-ID: <1372815145309948926EAD7C6C26148D49E09CD1@FMSMSX103.amr.corp.intel.com>
References: <1484832823-10892-1-git-send-email-pascal.bach@siemens.com>
	<5880FA7A.5070506@linux.intel.com>
In-Reply-To: <5880FA7A.5070506@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [ptest-runner][PATCH] feat: generate xml-file
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
X-List-Received-Date: Thu, 19 Jan 2017 17:53:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sure Anibal, see my response inline.

> -----Original Message-----
> From: An=EDbal Lim=F3n [mailto:anibal.limon@linux.intel.com]
> Sent: Thursday, January 19, 2017 11:42 AM
> To: Pascal Bach <pascal.bach@siemens.com>; yocto@yoctoproject.org;
> Christian Schuler <schuler.christian@siemens.com>; Esquivel, Benjamin
> <benjamin.esquivel@intel.com>
> Subject: Re: [yocto] [ptest-runner][PATCH] feat: generate xml-file
>=20
> Hi Pascal and Christian,
>=20
> Your patch looks good at first look, only a few comments about the code
> inline.
>=20
> We are trying to standardize the results output format across our testing
> components in order to build up-on a Test reporting tool, so let us revie=
w the
> XML format.
>=20
> Benjamin do you have a wiki page link with test result format information=
?
https://wiki.yoctoproject.org/wiki/QA/xUnit_XML_Template
>=20
> Cheers,
> alimon
>=20
> On 01/19/2017 07:33 AM, Pascal Bach wrote:
> > From: Christian Schuler <schuler.christian@siemens.com>
> >
> > add a feature that allows the user to generate an XUnit xml-file.
> > This file shows if the ptests run correctly or not. e.g. bash, zlib.
> > It doesn't list the underlaying tests of the package.
> > The feature is activated by console input -x <filepath>.
> > Unit-tests of the feature are included.
> >
> > Signed-off-by: Christian Schuler <schuler.christian@siemens.com>
> > Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> > ---
> >  README.md     |  1 +
> >  main.c        | 15 +++++++++++----
> >  tests/utils.c | 46 +++++++++++++++++++++++++++++++++++++++++++--
> >  utils.c       | 60
> ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
> >  utils.h       |  7 ++++++-
> >  5 files changed, 121 insertions(+), 8 deletions(-)
> >
> > diff --git a/README.md b/README.md
> > index ed7a589..fedab04 100644
> > --- a/README.md
> > +++ b/README.md
> > @@ -14,6 +14,7 @@ Now the ptest-runner2 support the next features:
> >  - List available ptests.
> >  - Specify the timeout for avoid blocking indefinetly.
> >  - Only run certain ptests.
> > +- XML-ouput
> >
> >  Proposed features:
> >
> > diff --git a/main.c b/main.c
> > index 31bf3b5..8dfdad6 100644
> > --- a/main.c
> > +++ b/main.c
> > @@ -41,7 +41,7 @@
> >  static inline void
> >  print_usage(FILE *stream, char *progname)  {
> > -	fprintf(stream, "Usage: %s [-d directory] [-l list] [-t timeout] "
> > +	fprintf(stream, "Usage: %s [-d directory] [-l list] [-t timeout] [-x =
xml-
> filename]"
> >  			"[-h] [ptest1 ptest2 ...]\n", progname);  }
> >
> > @@ -50,6 +50,7 @@ static struct {
> >  	int list;
> >  	int timeout;
> >  	char **ptests;
> > +	char * xml_filename;
> >  } opts;
> >
> >  int
> > @@ -70,8 +71,9 @@ main(int argc, char *argv[])
> >  	opts.list =3D 0;
> >  	opts.timeout =3D DEFAULT_TIMEOUT;
> >  	opts.ptests =3D NULL;
> > +	opts.xml_filename =3D NULL;
> >
> > -	while ((opt =3D getopt(argc, argv, "d:lt:h")) !=3D -1) {
> > +	while ((opt =3D getopt(argc, argv, "d:ltx:h")) !=3D -1) {
> >  		switch (opt) {
> >  			case 'd':
> >  				free(opts.directory);
> > @@ -88,6 +90,11 @@ main(int argc, char *argv[])
> >  				print_usage(stdout, argv[0]);
> >  				exit(0);
> >  			break;
> > +			case 'x':
> > +				free(opts.xml_filename);
> > +				opts.xml_filename =3D strdup(optarg);
> > +				CHECK_ALLOCATION(opts.xml_filename, 1,
> 1);
> > +			break;
> >  			default:
> >  				print_usage(stdout, argv[0]);
> >  				exit(1);
> > @@ -131,9 +138,9 @@ main(int argc, char *argv[])
> >  		run =3D filter_ptests(head, opts.ptests, ptest_num);
> >  		CHECK_ALLOCATION(run, ptest_num, 1);
> >  		ptest_list_free_all(head);
> > -	}
> > +	}
> >
> > -	rc =3D run_ptests(run, opts.timeout, argv[0], stdout, stderr);
> > +	rc =3D run_ptests(run, opts.timeout, argv[0], stdout, stderr,
> > +opts.xml_filename);
>=20
> Will be a good idea modify the run_ptest signature to pass the whole opti=
ons
> to it.
>=20
> I mean:
>=20
> run_ptests(run, opts, argv[0], stdout, stderr)
>=20
> If you could do a first patch with this change and then add your function=
ality
> realted to xml_filename will be good.
>=20
> >
> >  	ptest_list_free_all(run);
> >
> > diff --git a/tests/utils.c b/tests/utils.c index 1332798..dd869e9
> > 100644
> > --- a/tests/utils.c
> > +++ b/tests/utils.c
> > @@ -173,7 +173,7 @@ START_TEST(test_run_ptests)
> >  	ptest_list_remove(head, "hang", 1);
> >  	ptest_list_remove(head, "fail", 1);
> >
> > -	rc =3D run_ptests(head, timeout, "test_run_ptests", fp_stdout,
> fp_stderr);
> > +	rc =3D run_ptests(head, timeout, "test_run_ptests", fp_stdout,
> > +fp_stderr, NULL);
> >  	ck_assert(rc =3D=3D 0);
> >  	ptest_list_free_all(head);
> >
> > @@ -234,6 +234,46 @@ START_TEST(test_run_fail_ptest)
> >  	ptest_list_free_all(head);
> >  END_TEST
> >
> > +START_TEST(test_xml_pass)
> > +	char ref[] =3D "<?xml version=3D'1.0' encoding=3D'UTF-8'?>\n<testsuit=
e
> name=3D'ptests' tests=3D'2'>\n"
> > +			"<testcase name=3D'.'>\n<nodes expected=3D'/'
> result=3D'/'>\n"
> > +			"<nodes expected=3D'0' result=3D'0'>\n"
> > +			"</nodes>\n"
> > +			"</nodes>\n"
> > +			"</testcase>\n"
> > +			"<testcase name=3D'.'>\n"
> > +			"<nodes expected=3D'/' result=3D'/'>\n"
> > +			"<nodes expected=3D'0' result=3D'1'>\n"
> > +			"<error type=3D'Timeout/Unexpected error'>\n"
> > +			"A Timeout has occured or more tests than expected
> failed.\n"
> > +			"</error>\n"
> > +			"</nodes>\n"
> > +			"</nodes>\n"
> > +			"</testcase>\n"
> > +			"</testsuite>";
> > +	char buffer[strlen(ref)];
> > +
> > +	FILE *fp;
> > +	fp =3D xml_create(2, "./test_xml");
> > +	xml_add_case(fp, 0,".");
> > +	xml_add_case(fp, 1,".");
> > +	xml_finish(fp);
> > +
> > +	fp =3D fopen("./test_xml", "a+");
> > +	fseek(fp, 0, SEEK_SET);
> > +
> > +	fread(buffer, strlen(ref), 1, fp);
> > +	ck_assert(strncmp(ref, buffer, strlen(ref)) =3D=3D 0);
> > +	fclose(fp);
> > +	unlink("./test_xml");
> > +
> > +END_TEST
> > +
> > +START_TEST(test_xml_fail)
> > +	ck_assert(xml_create(2, "./") =3D=3D NULL);
> > +
> > +END_TEST
> > +
> >  Suite *
> >  utils_suite()
> >  {
> > @@ -249,6 +289,8 @@ utils_suite()
> >  	tcase_add_test(tc_core, test_run_ptests);
> >  	tcase_add_test(tc_core, test_run_timeout_ptest);
> >  	tcase_add_test(tc_core, test_run_fail_ptest);
> > +	tcase_add_test(tc_core, test_xml_pass);
> > +	tcase_add_test(tc_core, test_xml_fail);
> >
> >  	suite_add_tcase(s, tc_core);
> >
> > @@ -276,7 +318,7 @@ test_ptest_expected_failure(struct ptest_list
> *head, const int timeout, char *pr
> >  		ck_assert(ptest_list_length(filtered) =3D=3D 1);
> >
> >  		h_analizer(
> > -			run_ptests(filtered, timeout, progname, fp_stdout,
> fp_stderr),
> > +			run_ptests(filtered, timeout, progname, fp_stdout,
> fp_stderr,
> > +NULL),
> >  			fp_stdout, fp_stderr
> >  		);
> >
> > diff --git a/utils.c b/utils.c
> > index 77427e0..430fb7a 100644
> > --- a/utils.c
> > +++ b/utils.c
> > @@ -303,9 +303,10 @@ wait_child(const char *ptest_dir, const char
> > *run_ptest, pid_t pid,
> >
> >  int
> >  run_ptests(struct ptest_list *head, int timeout, const char *progname,
> > -		FILE *fp, FILE *fp_stderr)
> > +		FILE *fp, FILE *fp_stderr, char *xml_filename)
> >  {
> >  	int rc =3D 0;
> > +	XML *xh;
> >
> >  	struct ptest_list *p;
> >  	char stime[GET_STIME_BUF_SIZE];
> > @@ -314,6 +315,12 @@ run_ptests(struct ptest_list *head, int timeout,
> const char *progname,
> >  	int pipefd_stdout[2];
> >  	int pipefd_stderr[2];
> >
> > +	if(xml_filename) {
> > +		xh =3D xml_create(ptest_list_length(head), xml_filename);
> > +		if(!xh)
> > +			exit(EXIT_FAILURE);
> > +	}
> > +
> >  	do
> >  	{
> >  		if ((rc =3D pipe2(pipefd_stdout, O_NONBLOCK)) =3D=3D -1) @@ -
> 355,6 +362,9
> > @@ run_ptests(struct ptest_list *head, int timeout, const char
> *progname,
> >  					fprintf(fp, "ERROR: Exit status is
> %d\n", status);
> >  					rc +=3D 1;
> >  				}
> > +				if (xml_filename)
> > +					xml_add_case(xh, status, ptest_dir);
> > +
> >  				fprintf(fp, "END: %s\n", ptest_dir);
> >  				fprintf(fp, "%s\n", get_stime(stime,
> GET_STIME_BUF_SIZE));
> >  			}
> > @@ -368,5 +378,53 @@ run_ptests(struct ptest_list *head, int timeout,
> const char *progname,
> >  	if (rc =3D=3D -1)
> >  		fprintf(fp_stderr, "run_ptests fails: %s", strerror(errno));
> >
> > +	if (xml_filename)
> > +		xml_finish(xh);
> > +
> >  	return rc;
> >  }
> > +
> > +FILE *
> > +xml_create(int test_count, char *xml_filename) {
> > +	FILE *xh;
> > +
> > +	if ((xh =3D fopen(xml_filename, "w"))) {
> > +		fprintf(xh, "<?xml version=3D'1.0' encoding=3D'UTF-8'?>\n");
> > +		fprintf(xh, "<testsuite name=3D'ptests' tests=3D'%d'>\n",
> test_count);
> > +	}
> > +	else {
> > +		fprintf(stderr, "File could not be created. Make sure the path
> is correct and you have the right permissions.");
> > +		return NULL;
> > +	}
> > +
> > +	return xh;
> > +}
> > +
> > +void
> > +xml_add_case(FILE *xh, int status, const char *ptest_dir) {
> > +	fprintf(xh, "<testcase name=3D'%s'>\n", ptest_dir);
> > +	fprintf(xh, "<nodes expected=3D'/' result=3D'/'>\n");
> > +
> > +	if(status =3D=3D 0){
> > +		fprintf(xh, "<nodes expected=3D'0' result=3D'0'>\n");
> > +		fprintf(xh, "</nodes>\n");
> > +	}
> > +	else{
> > +		fprintf(xh, "<nodes expected=3D'0' result=3D'%d'>\n", status);
> > +		fprintf(xh, "<error type=3D'Timeout/Unexpected error'>\n");
> > +		fprintf(xh, "A Timeout has occured or more tests than
> expected failed.\n");
> > +		fprintf(xh, "</error>\n");
> > +		fprintf(xh, "</nodes>\n");
> > +	}
> > +	fprintf(xh, "</nodes>\n");
> > +	fprintf(xh, "</testcase>\n");
> > +}
> > +
> > +void
> > +xml_finish(FILE *xh)
> > +{
> > +	fprintf(xh, "</testsuite>");
> > +	fclose(xh);
> > +}
> > diff --git a/utils.h b/utils.h
> > index 4dc23ef..99f6100 100644
> > --- a/utils.h
> > +++ b/utils.h
> > @@ -30,10 +30,15 @@
> >  #define CHECK_ALLOCATION(p, size, exit_on_null) \
> >  	check_allocation1(p, size, __FILE__, __LINE__, exit_on_null)
> >
> > +typedef FILE XML;
> > +
> >  extern void check_allocation1(void *, size_t, char *, int, int);
> > extern struct ptest_list *get_available_ptests(const char *);  extern
> > int print_ptests(struct ptest_list *, FILE *);  extern struct
> > ptest_list *filter_ptests(struct ptest_list *, char **, int); -extern
> > int run_ptests(struct ptest_list *, int, const char *progname, FILE *,
> > FILE *);
> > +extern int run_ptests(struct ptest_list *, int, const char *progname,
> > +FILE *, FILE *, char *xml_filename); extern XML * xml_create(int
> > +test_count, char *filename); extern void xml_add_case(XML *, int
> > +status, const char *ptest_dir); extern void xml_finish(XML *);
>=20
> I'm trying to follow BSD code-style so please remove variable names from
> prototypes. Also i make a mistake with progname that was before on the
> run_ptests prototype.
>=20
> Also i don't wrote about code style into README, i will put a section int=
o it,
> sorry for that.
>=20
> Best regards,
> alimon
>=20
> >
> >  #endif
> >


