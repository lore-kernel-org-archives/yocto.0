Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89682E003E4; Thu, 19 Jan 2017 09:39:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38E67E003DB
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 09:39:26 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jan 2017 09:39:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,254,1477983600"; 
	d="asc'?scan'208";a="50485100"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.143])
	([10.219.5.143])
	by orsmga004.jf.intel.com with ESMTP; 19 Jan 2017 09:39:25 -0800
To: Pascal Bach <pascal.bach@siemens.com>, yocto@yoctoproject.org,
	Christian Schuler <schuler.christian@siemens.com>,
	"Esquivel, Benjamin" <benjamin.esquivel@intel.com>
References: <1484832823-10892-1-git-send-email-pascal.bach@siemens.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5880FA7A.5070506@linux.intel.com>
Date: Thu, 19 Jan 2017 11:42:18 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1484832823-10892-1-git-send-email-pascal.bach@siemens.com>
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
X-List-Received-Date: Thu, 19 Jan 2017 17:39:28 -0000
X-Groupsio-MsgNum: 33987
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="t8rH4PaDj6e9dstRsw11uF6nFXiLxxS87"

--t8rH4PaDj6e9dstRsw11uF6nFXiLxxS87
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Pascal and Christian,

Your patch looks good at first look, only a few comments about the code
inline.

We are trying to standardize the results output format across our
testing components in order to build up-on a Test reporting tool, so let
us review the XML format.

Benjamin do you have a wiki page link with test result format information=
?

Cheers,
alimon

On 01/19/2017 07:33 AM, Pascal Bach wrote:
> From: Christian Schuler <schuler.christian@siemens.com>
>=20
> add a feature that allows the user to generate an XUnit xml-file.
> This file shows if the ptests run correctly or not. e.g. bash, zlib.
> It doesn't list the underlaying tests of the package.
> The feature is activated by console input -x <filepath>.
> Unit-tests of the feature are included.
>=20
> Signed-off-by: Christian Schuler <schuler.christian@siemens.com>
> Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> ---
>  README.md     |  1 +
>  main.c        | 15 +++++++++++----
>  tests/utils.c | 46 +++++++++++++++++++++++++++++++++++++++++++--
>  utils.c       | 60 +++++++++++++++++++++++++++++++++++++++++++++++++++=
+++++++-
>  utils.h       |  7 ++++++-
>  5 files changed, 121 insertions(+), 8 deletions(-)
>=20
> diff --git a/README.md b/README.md
> index ed7a589..fedab04 100644
> --- a/README.md
> +++ b/README.md
> @@ -14,6 +14,7 @@ Now the ptest-runner2 support the next features:
>  - List available ptests.
>  - Specify the timeout for avoid blocking indefinetly.
>  - Only run certain ptests.
> +- XML-ouput
> =20
>  Proposed features:
> =20
> diff --git a/main.c b/main.c
> index 31bf3b5..8dfdad6 100644
> --- a/main.c
> +++ b/main.c
> @@ -41,7 +41,7 @@
>  static inline void
>  print_usage(FILE *stream, char *progname)
>  {
> -	fprintf(stream, "Usage: %s [-d directory] [-l list] [-t timeout] "
> +	fprintf(stream, "Usage: %s [-d directory] [-l list] [-t timeout] [-x =
xml-filename]"
>  			"[-h] [ptest1 ptest2 ...]\n", progname);
>  }
> =20
> @@ -50,6 +50,7 @@ static struct {
>  	int list;
>  	int timeout;
>  	char **ptests;
> +	char * xml_filename;
>  } opts;
> =20
>  int
> @@ -70,8 +71,9 @@ main(int argc, char *argv[])
>  	opts.list =3D 0;
>  	opts.timeout =3D DEFAULT_TIMEOUT;
>  	opts.ptests =3D NULL;
> +	opts.xml_filename =3D NULL;
> =20
> -	while ((opt =3D getopt(argc, argv, "d:lt:h")) !=3D -1) {
> +	while ((opt =3D getopt(argc, argv, "d:ltx:h")) !=3D -1) {
>  		switch (opt) {
>  			case 'd':
>  				free(opts.directory);
> @@ -88,6 +90,11 @@ main(int argc, char *argv[])
>  				print_usage(stdout, argv[0]);
>  				exit(0);
>  			break;
> +			case 'x':
> +				free(opts.xml_filename);
> +				opts.xml_filename =3D strdup(optarg);
> +				CHECK_ALLOCATION(opts.xml_filename, 1, 1);
> +			break;
>  			default:
>  				print_usage(stdout, argv[0]);
>  				exit(1);
> @@ -131,9 +138,9 @@ main(int argc, char *argv[])
>  		run =3D filter_ptests(head, opts.ptests, ptest_num);
>  		CHECK_ALLOCATION(run, ptest_num, 1);
>  		ptest_list_free_all(head);
> -	}=20
> +	}
> =20
> -	rc =3D run_ptests(run, opts.timeout, argv[0], stdout, stderr);
> +	rc =3D run_ptests(run, opts.timeout, argv[0], stdout, stderr, opts.xm=
l_filename);

Will be a good idea modify the run_ptest signature to pass the whole
options to it.

I mean:

run_ptests(run, opts, argv[0], stdout, stderr)

If you could do a first patch with this change and then add your
functionality realted to xml_filename will be good.

> =20
>  	ptest_list_free_all(run);
> =20
> diff --git a/tests/utils.c b/tests/utils.c
> index 1332798..dd869e9 100644
> --- a/tests/utils.c
> +++ b/tests/utils.c
> @@ -173,7 +173,7 @@ START_TEST(test_run_ptests)
>  	ptest_list_remove(head, "hang", 1);
>  	ptest_list_remove(head, "fail", 1);
> =20
> -	rc =3D run_ptests(head, timeout, "test_run_ptests", fp_stdout, fp_std=
err);
> +	rc =3D run_ptests(head, timeout, "test_run_ptests", fp_stdout, fp_std=
err, NULL);
>  	ck_assert(rc =3D=3D 0);
>  	ptest_list_free_all(head);
> =20
> @@ -234,6 +234,46 @@ START_TEST(test_run_fail_ptest)
>  	ptest_list_free_all(head);
>  END_TEST
> =20
> +START_TEST(test_xml_pass)
> +	char ref[] =3D "<?xml version=3D'1.0' encoding=3D'UTF-8'?>\n<testsuit=
e name=3D'ptests' tests=3D'2'>\n"
> +			"<testcase name=3D'.'>\n<nodes expected=3D'/' result=3D'/'>\n"
> +			"<nodes expected=3D'0' result=3D'0'>\n"
> +			"</nodes>\n"
> +			"</nodes>\n"
> +			"</testcase>\n"
> +			"<testcase name=3D'.'>\n"
> +			"<nodes expected=3D'/' result=3D'/'>\n"
> +			"<nodes expected=3D'0' result=3D'1'>\n"
> +			"<error type=3D'Timeout/Unexpected error'>\n"
> +			"A Timeout has occured or more tests than expected failed.\n"
> +			"</error>\n"
> +			"</nodes>\n"
> +			"</nodes>\n"
> +			"</testcase>\n"
> +			"</testsuite>";
> +	char buffer[strlen(ref)];
> +
> +	FILE *fp;
> +	fp =3D xml_create(2, "./test_xml");
> +	xml_add_case(fp, 0,".");
> +	xml_add_case(fp, 1,".");
> +	xml_finish(fp);
> +
> +	fp =3D fopen("./test_xml", "a+");
> +	fseek(fp, 0, SEEK_SET);
> +
> +	fread(buffer, strlen(ref), 1, fp);
> +	ck_assert(strncmp(ref, buffer, strlen(ref)) =3D=3D 0);
> +	fclose(fp);
> +	unlink("./test_xml");
> +
> +END_TEST
> +
> +START_TEST(test_xml_fail)
> +	ck_assert(xml_create(2, "./") =3D=3D NULL);
> +
> +END_TEST
> +
>  Suite *
>  utils_suite()
>  {
> @@ -249,6 +289,8 @@ utils_suite()
>  	tcase_add_test(tc_core, test_run_ptests);
>  	tcase_add_test(tc_core, test_run_timeout_ptest);
>  	tcase_add_test(tc_core, test_run_fail_ptest);
> +	tcase_add_test(tc_core, test_xml_pass);
> +	tcase_add_test(tc_core, test_xml_fail);
> =20
>  	suite_add_tcase(s, tc_core);
> =20
> @@ -276,7 +318,7 @@ test_ptest_expected_failure(struct ptest_list *head=
, const int timeout, char *pr
>  		ck_assert(ptest_list_length(filtered) =3D=3D 1);
> =20
>  		h_analizer(
> -			run_ptests(filtered, timeout, progname, fp_stdout, fp_stderr),
> +			run_ptests(filtered, timeout, progname, fp_stdout, fp_stderr, NULL)=
,
>  			fp_stdout, fp_stderr
>  		);
> =20
> diff --git a/utils.c b/utils.c
> index 77427e0..430fb7a 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -303,9 +303,10 @@ wait_child(const char *ptest_dir, const char *run_=
ptest, pid_t pid,
> =20
>  int
>  run_ptests(struct ptest_list *head, int timeout, const char *progname,=

> -		FILE *fp, FILE *fp_stderr)
> +		FILE *fp, FILE *fp_stderr, char *xml_filename)
>  {
>  	int rc =3D 0;
> +	XML *xh;
> =20
>  	struct ptest_list *p;
>  	char stime[GET_STIME_BUF_SIZE];
> @@ -314,6 +315,12 @@ run_ptests(struct ptest_list *head, int timeout, c=
onst char *progname,
>  	int pipefd_stdout[2];
>  	int pipefd_stderr[2];
> =20
> +	if(xml_filename) {
> +		xh =3D xml_create(ptest_list_length(head), xml_filename);
> +		if(!xh)
> +			exit(EXIT_FAILURE);
> +	}
> +
>  	do
>  	{
>  		if ((rc =3D pipe2(pipefd_stdout, O_NONBLOCK)) =3D=3D -1)=20
> @@ -355,6 +362,9 @@ run_ptests(struct ptest_list *head, int timeout, co=
nst char *progname,
>  					fprintf(fp, "ERROR: Exit status is %d\n", status);
>  					rc +=3D 1;
>  				}
> +				if (xml_filename)
> +					xml_add_case(xh, status, ptest_dir);
> +       =20
>  				fprintf(fp, "END: %s\n", ptest_dir);
>  				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
>  			}
> @@ -368,5 +378,53 @@ run_ptests(struct ptest_list *head, int timeout, c=
onst char *progname,
>  	if (rc =3D=3D -1)=20
>  		fprintf(fp_stderr, "run_ptests fails: %s", strerror(errno));
> =20
> +	if (xml_filename)
> +		xml_finish(xh);
> +
>  	return rc;
>  }
> +
> +FILE *
> +xml_create(int test_count, char *xml_filename)
> +{
> +	FILE *xh;
> +
> +	if ((xh =3D fopen(xml_filename, "w"))) {
> +		fprintf(xh, "<?xml version=3D'1.0' encoding=3D'UTF-8'?>\n");
> +		fprintf(xh, "<testsuite name=3D'ptests' tests=3D'%d'>\n", test_count=
);
> +	}
> +	else {
> +		fprintf(stderr, "File could not be created. Make sure the path is co=
rrect and you have the right permissions.");
> +		return NULL;
> +	}
> +
> +	return xh;
> +}
> +
> +void
> +xml_add_case(FILE *xh, int status, const char *ptest_dir)
> +{
> +	fprintf(xh, "<testcase name=3D'%s'>\n", ptest_dir);
> +	fprintf(xh, "<nodes expected=3D'/' result=3D'/'>\n");
> +
> +	if(status =3D=3D 0){
> +		fprintf(xh, "<nodes expected=3D'0' result=3D'0'>\n");
> +		fprintf(xh, "</nodes>\n");
> +	}
> +	else{
> +		fprintf(xh, "<nodes expected=3D'0' result=3D'%d'>\n", status);
> +		fprintf(xh, "<error type=3D'Timeout/Unexpected error'>\n");
> +		fprintf(xh, "A Timeout has occured or more tests than expected faile=
d.\n");
> +		fprintf(xh, "</error>\n");
> +		fprintf(xh, "</nodes>\n");
> +	}
> +	fprintf(xh, "</nodes>\n");
> +	fprintf(xh, "</testcase>\n");
> +}
> +
> +void
> +xml_finish(FILE *xh)
> +{
> +	fprintf(xh, "</testsuite>");
> +	fclose(xh);
> +}
> diff --git a/utils.h b/utils.h
> index 4dc23ef..99f6100 100644
> --- a/utils.h
> +++ b/utils.h
> @@ -30,10 +30,15 @@
>  #define CHECK_ALLOCATION(p, size, exit_on_null) \
>  	check_allocation1(p, size, __FILE__, __LINE__, exit_on_null)
> =20
> +typedef FILE XML;
> +
>  extern void check_allocation1(void *, size_t, char *, int, int);
>  extern struct ptest_list *get_available_ptests(const char *);
>  extern int print_ptests(struct ptest_list *, FILE *);
>  extern struct ptest_list *filter_ptests(struct ptest_list *, char **, =
int);
> -extern int run_ptests(struct ptest_list *, int, const char *progname, =
FILE *, FILE *);
> +extern int run_ptests(struct ptest_list *, int, const char *progname, =
FILE *, FILE *, char *xml_filename);
> +extern XML * xml_create(int test_count, char *filename);
> +extern void xml_add_case(XML *, int status, const char *ptest_dir);
> +extern void xml_finish(XML *);

I'm trying to follow BSD code-style so please remove variable names from
prototypes. Also i make a mistake with progname that was before on the
run_ptests prototype.

Also i don't wrote about code style into README, i will put a section
into it, sorry for that.

Best regards,
alimon

> =20
>  #endif
>=20


--t8rH4PaDj6e9dstRsw11uF6nFXiLxxS87
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYgPp8AAoJEGJqcE9h3glg9yAP/R0SFCgN0wg91pqu5//VhPCi
XnB6pa2wh1Fp20saF3e4EW9fvJH8mTBfrQrmR8wrmJ27Z0wlcZ2uADOMqHZ4lSzV
ivNFWimHnHS5XQ7VNOnjAfY84Rwj7HXMBj5ePHVCFxRnjSMgEyCAhpGH95v46+Zd
7V+1kYxtfnOheTOFnnDBOGT7Sb5DCmr8KN3hhIktxSyKex+rxFw4J4Z32wqG2Vr4
Vc9mpifZgg8Y0ANdHsJdVML3KSvTPq6neglW07e4BkTpuIf8dsv9pVS1T/sQwxH5
jh6ylq/9Qm2skt9uhwJjfcbsTIyx76dJwXCwZuqiAK9dkQDEeMv9OKrDqTZKJe1/
brR2WzPinZ5+M9w6R9hDWzfX42G8S+dW5KLrA/Rqwl94C7MUcOjzBgyD8D6kYF8E
/pEZwtYDYeoaZPoB7b43c+meS7XBuBC9zTMms4sDpwnnubJOVXkEdAz7QkJpnHW9
KVddY1CBsyYNTra9wo80yNglmzpf1eQdEO/w0lsL5b1R5BaasVzBlpaX6UhCL8jj
SjA79U/xEqtnbzAJSJDGSRX99443iixbXTMRUDtquIKJFTfT4OFl5wyQlLEMOvhu
S+4pYlsGWtMYgwNyeqt55gAOP7995P64BGGYDzNh8bIbYUwcJsHP+vU2kISsostH
SLvQ+w3+O9EMFyvlhaiN
=vnh1
-----END PGP SIGNATURE-----

--t8rH4PaDj6e9dstRsw11uF6nFXiLxxS87--
