Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA4A0E00ACE; Thu,  6 Apr 2017 14:08:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C199E00AA7
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 14:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491512936; x=1523048936;
	h=subject:to:references:cc:from:message-id:date:
	mime-version:in-reply-to;
	bh=vbYC1Rjagtriao1EDPmL1hc715iF93IrBzqR+XzkvBM=;
	b=l2LE5c+JtwtlUwWMs/6JoWL8InUBPf6fGLUitYVKOzgKw88zGStkRC3F
	luj6ctt8GYlbbzPSQk6mIKFHRMkEdw==;
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Apr 2017 14:08:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,161,1488873600"; 
	d="asc'?scan'208";a="245467200"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.124])
	([10.219.128.124])
	by fmsmga004.fm.intel.com with ESMTP; 06 Apr 2017 14:08:54 -0700
To: Pascal Bach <pascal.bach@siemens.com>, yocto@yoctoproject.org
References: <1485963761-25773-1-git-send-email-pascal.bach@siemens.com>
	<1485963761-25773-2-git-send-email-pascal.bach@siemens.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <58E6AF5A.5060908@linux.intel.com>
Date: Thu, 6 Apr 2017 16:12:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1485963761-25773-2-git-send-email-pascal.bach@siemens.com>
Cc: Schuler Christian <schuler.christian@siemens.com>
Subject: Re: [ptest-runner][PATCHv2 2/2] Add xml output
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
X-List-Received-Date: Thu, 06 Apr 2017 21:08:57 -0000
X-Groupsio-MsgNum: 35462
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="rHnh5Fbj8oPR0bCogJ9eNDFCB89M7bIss"

--rHnh5Fbj8oPR0bCogJ9eNDFCB89M7bIss
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Pascal,

I did some changes to your patch, see comments inline.

As i said i plan to integrate for 2.1 version of ptest-runner.

See the branch,

http://git.yoctoproject.org/cgit/cgit.cgi/ptest-runner2/log/?h=3Ddevel

Thanks for your contribution,
Anibal

On 02/01/2017 09:42 AM, Pascal Bach wrote:
> The format follow the one defined in the Yocto wiki:
> https://wiki.yoctoproject.org/wiki/QA/xUnit_XML_Template
>=20
> It is only the minimum required but it can be extended in the future.
>=20
> Signed-off-by: Schuler Christian <schuler.christian@siemens.com>
> Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> ---
>  README.md                |  1 +
>  main.c                   | 13 ++++++++++---
>  tests/data/reference.xml |  8 ++++++++
>  tests/utils.c            | 46 ++++++++++++++++++++++++++++++++++++++++=
++++
>  utils.c                  | 50 ++++++++++++++++++++++++++++++++++++++++=
++++++++
>  utils.h                  | 10 ++++++++--
>  6 files changed, 123 insertions(+), 5 deletions(-)
>  create mode 100644 tests/data/reference.xml
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
> index 765d688..5f37541 100644
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
> @@ -60,12 +60,14 @@ main(int argc, char *argv[])
>  	struct ptest_list *head, *run;
> =20
>  	struct options opts;
> +
>  	opts.directory =3D strdup(DEFAULT_DIRECTORY);
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
> @@ -82,6 +84,11 @@ main(int argc, char *argv[])
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
> @@ -125,7 +132,7 @@ main(int argc, char *argv[])
>  		run =3D filter_ptests(head, opts.ptests, ptest_num);
>  		CHECK_ALLOCATION(run, ptest_num, 1);
>  		ptest_list_free_all(head);
> -	}=20
> +	}
> =20
>  	rc =3D run_ptests(run, opts, argv[0], stdout, stderr);
> =20
> diff --git a/tests/data/reference.xml b/tests/data/reference.xml
> new file mode 100644
> index 0000000..0d858e1
> --- /dev/null
> +++ b/tests/data/reference.xml
> @@ -0,0 +1,8 @@
> +<?xml version=3D'1.0' encoding=3D'UTF-8'?>
> +<testsuite name=3D'ptest' tests=3D'2'>
> +<testcase classname=3D'test1' name=3D'run-ptest'>
> +</testcase>
> +<testcase classname=3D'test2' name=3D'run-ptest'>
> +<failure type=3D'exit_code' message=3D'run-ptest exited with code: 1'>=
</failure>
> +</testcase>
> +</testsuite>

The format is better to use tabs, for denote hierarchy , i changed this
part. Example:

<?xml version=3D'1.0' encoding=3D'UTF-8'?>
<testsuite name=3D'ptest' tests=3D'2'>
	<testcase classname=3D'test1' name=3D'run-ptest'>
	</testcase>
	<testcase classname=3D'test2' name=3D'run-ptest'>
		<failure type=3D'exit_code' message=3D'run-ptest exited with code: 1'><=

/failure>
	</testcase>
</testsuite>


> diff --git a/tests/utils.c b/tests/utils.c
> index 6b70c2e..f5d3b62 100644
> --- a/tests/utils.c
> +++ b/tests/utils.c
> @@ -237,6 +237,50 @@ START_TEST(test_run_fail_ptest)
>  	ptest_list_free_all(head);
>  END_TEST
> =20
> +int filecmp(FILE *fp1, FILE *fp2)

Style:

int
filecmp(FILE *fp1, FILE *fp2)


> +{
> +    char f1, f2;
> +    while (1) {
> +			  int end =3D 0;
> +        if ((f1 =3D getc(fp1)) =3D=3D EOF) end++;
> +        if ((f2 =3D getc(fp2)) =3D=3D EOF) end++;
> +
> +				if (end =3D=3D 2) return 0;
> +				if (end =3D=3D 1) return 1;
> +        if (f1 !=3D f2) return 2;
> +    }
> +}
> +
> +START_TEST(test_xml_pass)
> +
> +
> +
> +	XML *xp;
> +	xp =3D xml_create(2, "./test.xml");
> +	ck_assert(xp !=3D NULL);
> +	xml_add_case(xp, 0,"test1");
> +	xml_add_case(xp, 1,"test2");
> +	xml_finish(xp);
> +
> +  FILE *fp, *fr;
> +  fr =3D fopen("./tests/data/reference.xml", "r");
> +	ck_assert(fr !=3D NULL);
> +	fp =3D fopen("./test.xml", "r");
> +	ck_assert(fp !=3D NULL);
> +
> +	ck_assert(filecmp(fr, fp) =3D=3D 0);
> +
> +	fclose(fr);
> +	fclose(fp);
> +	unlink("./test.xml");

Removed blanks and change to tabs instead of spaces.

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
> @@ -252,6 +296,8 @@ utils_suite()
>  	tcase_add_test(tc_core, test_run_ptests);
>  	tcase_add_test(tc_core, test_run_timeout_ptest);
>  	tcase_add_test(tc_core, test_run_fail_ptest);
> +	tcase_add_test(tc_core, test_xml_pass);
> +	tcase_add_test(tc_core, test_xml_fail);
> =20
>  	suite_add_tcase(s, tc_core);
> =20
> diff --git a/utils.c b/utils.c
> index 48c1990..0fb6ff8 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -306,6 +306,7 @@ run_ptests(struct ptest_list *head, const struct op=
tions opts, const char *progn
>  		FILE *fp, FILE *fp_stderr)
>  {
>  	int rc =3D 0;
> +	XML *xh;
> =20
>  	struct ptest_list *p;
>  	char stime[GET_STIME_BUF_SIZE];
> @@ -314,6 +315,12 @@ run_ptests(struct ptest_list *head, const struct o=
ptions opts, const char *progn
>  	int pipefd_stdout[2];
>  	int pipefd_stderr[2];
> =20
> +	if(opts.xml_filename) {
> +		xh =3D xml_create(ptest_list_length(head), opts.xml_filename);
> +		if(!xh)
> +			exit(EXIT_FAILURE);
> +	}
> +
>  	do
>  	{
>  		if ((rc =3D pipe2(pipefd_stdout, O_NONBLOCK)) =3D=3D -1)=20
> @@ -355,6 +362,9 @@ run_ptests(struct ptest_list *head, const struct op=
tions opts, const char *progn
>  					fprintf(fp, "ERROR: Exit status is %d\n", status);
>  					rc +=3D 1;
>  				}
> +				if (opts.xml_filename)
> +					xml_add_case(xh, status, ptest_dir);
> +
>  				fprintf(fp, "END: %s\n", ptest_dir);
>  				fprintf(fp, "%s\n", get_stime(stime, GET_STIME_BUF_SIZE));
>  			}
> @@ -368,5 +378,45 @@ run_ptests(struct ptest_list *head, const struct o=
ptions opts, const char *progn
>  	if (rc =3D=3D -1)=20
>  		fprintf(fp_stderr, "run_ptests fails: %s", strerror(errno));
> =20
> +	if (opts.xml_filename)
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
> +		fprintf(xh, "<testsuite name=3D'ptest' tests=3D'%d'>\n", test_count)=
;
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
> +	fprintf(xh, "<testcase classname=3D'%s' name=3D'run-ptest'>\n", ptest=
_dir);
> +
> +  if(status !=3D 0){
> +    fprintf(xh, "<failure type=3D'exit_code'");
> +    fprintf(xh, " message=3D'run-ptest exited with code: %d'>", status=
);
> +    fprintf(xh, "</failure>\n");
> +	}
> +	fprintf(xh, "</testcase>\n");
> +}
> +
> +void
> +xml_finish(FILE *xh)
> +{
> +	fprintf(xh, "</testsuite>\n");
> +	fclose(xh);
> +}
> diff --git a/utils.h b/utils.h
> index d7f5268..7a8956a 100644
> --- a/utils.h
> +++ b/utils.h
> @@ -33,14 +33,20 @@
>  struct options {
>    char *directory;
>    int list;
> -	int timeout;
> -	char **ptests;
> +  int timeout;
> +  char **ptests;
> +  char * xml_filename;
>  };

Changed struct name to ptest_options and style.

> =20
> +typedef FILE XML;

Removed typedef, i don't like to use typedefs because it obfuscates code
and is a simple FILE.

	Anibal

> +
>  extern void check_allocation1(void *, size_t, char *, int, int);
>  extern struct ptest_list *get_available_ptests(const char *);
>  extern int print_ptests(struct ptest_list *, FILE *);
>  extern struct ptest_list *filter_ptests(struct ptest_list *, char **, =
int);
>  extern int run_ptests(struct ptest_list *, const struct options, const=
 char *progname, FILE *, FILE *);
> +extern XML * xml_create(int test_count, char *filename);
> +extern void xml_add_case(XML *, int status, const char *ptest_dir);
> +extern void xml_finish(XML *);
> =20
>  #endif
>=20


--rHnh5Fbj8oPR0bCogJ9eNDFCB89M7bIss
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJY5q9dAAoJEGJqcE9h3glgYUUQAIEfcYj6Ek1YOKLNLTP4/T/d
FEoxncIS9z51TV7CYZCkZpUjp/CrhuckI0DAQHwoRLcXnRou8yKMnMWkEboHhRgi
WXRBo+oVri7q0+QFcy4OhX08j29VKBNzbvYJ3T9pQSQJBv6J8s8VdFpVg6T5qqbk
Vk6yY4KwgBr32h+c0qbKr0wDBPAomOdFg5P/LeMjFve9IRTNfKFpFEb+hrcPKaIX
6RrDfQjXdBlApqhTDH1FDRgkqgbEgyCgwUh6lLmrJrVIp9A+VsGvJH7NFrwUtHel
7B6G3FtBx+oQXConjiwuuXRlU2Vqj7920FINln0vTs/2pi5f9x18D4nqloEkjO2X
3lZaS2WcS/b3OtwH/e0yjXUsPWxzq+Dvw6sU3dv9Vh4DRX4ffOL05xls6QXWWNxv
ULuWdJYGlsyBnEFUAOmu5898ct6aL0HDnKO/t0JLjOFaqy0HYfx4ZXTPUfTuyuQt
uWEOyDIvI4pLpPBmNjbITPBCqo14t17wU+Y95SGagKQJmWi5JAyumb13lYk1A6Eu
hRuRmgig4DLKOfG2p5NmyQqd2o3v+jWfSEP1SYM5azYmsbKLrG4ZeBD2lq6wL104
TGEEDpdLUlwxQHqX3dvzrtimHgQgRaxL0VSkSWkp2fTkjR0a6c5eo5cdd4Byr2Vt
fUx5Q3nLe0oRhFQmvnCO
=9xG2
-----END PGP SIGNATURE-----

--rHnh5Fbj8oPR0bCogJ9eNDFCB89M7bIss--
