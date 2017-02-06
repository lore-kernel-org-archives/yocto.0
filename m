Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0A3FE00839; Mon,  6 Feb 2017 14:28:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57426E007BA;
	Mon,  6 Feb 2017 14:28:30 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga105.fm.intel.com with ESMTP; 06 Feb 2017 14:28:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,342,1477983600"; d="scan'208";a="930848618"
Received: from unknown (HELO speedy) ([10.7.197.100])
	by orsmga003.jf.intel.com with ESMTP; 06 Feb 2017 14:28:29 -0800
Message-ID: <1486420109.42955.152.camel@linux.intel.com>
From: Todor Minchev <todor.minchev@linux.intel.com>
To: Jianxun Zhang <jianxun.zhang@linux.intel.com>
Date: Mon, 06 Feb 2017 14:28:29 -0800
In-Reply-To: <F48E5880-F370-48BA-8E83-10547D4352AA@linux.intel.com>
References: <20170202223712.8164-1-todor.minchev@linux.intel.com>
	<20170202223712.8164-3-todor.minchev@linux.intel.com>
	<F48E5880-F370-48BA-8E83-10547D4352AA@linux.intel.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] rmc: Enable reading the contents of an existing fingerprint file
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
X-List-Received-Date: Mon, 06 Feb 2017 22:28:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-02-06 at 12:01 -0800, Jianxun Zhang wrote:
> Tudor,
> Please refer to my 3 inline comments.
> 
> > On Feb 2, 2017, at 2:37 PM, Todor Minchev <todor.minchev@linux.intel.com> wrote:
> > 
> > The contents of an existing fingerprint file can be read and output on
> > the command line with the following options:
> > 
> > ./rmc -F -i input_fingerprint_file
> Suggest we have a new top option for dumping in parallel with -F to keep usages clear and simple for users.

We can use -E to extract both the database and the fingerprint?

rmc -E -d rmc.db
rmc -E -f rmc.fingerprint

> > 
> > Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> > ---
> > src/rmc.c | 121 +++++++++++++++++++++++++++++++++++++++-----------------------
> > 1 file changed, 76 insertions(+), 45 deletions(-)
> > 
> > diff --git a/src/rmc.c b/src/rmc.c
> > index 062dd36..a051ccf 100644
> > --- a/src/rmc.c
> > +++ b/src/rmc.c
> > @@ -14,33 +14,35 @@
> > #include <rmc_api.h>
> > 
> > #define USAGE "RMC (Runtime Machine configuration) Tool\n" \
> > -    "NOTE: Most of usages require root permission (sudo)\n" \
> > -    "rmc -F [-o output_fingerprint]\n" \
> > +    "NOTE: Most of usages require root permission (sudo)\n\n" \
> > +    "rmc -F [-o output_fingerprint] | -i input_fingerprint\n" \
> >     "rmc -R [-f <fingerprint file>] -b <blob file list> [-o output_record]\n" \
> >     "rmc -D <rmc record file list> [-o output_database]\n" \
> > -	"rmc -B <name of file blob> -d <rmc database file> -o output_file\n" \
> > -	"\n" \
> > -	"-F: generate board rmc fingerprint of board\n" \
> > -	"-R: generate board rmc record of board with its fingerprint and file blobs.\n" \
> > -    "-f: fingerprint file to be packed in record, rmc will create a fingerprint for board and use it internally to\n" \
> > -    "    generate record if -f is missed.\n" \
> > -    "-b: files to be packed in record\n" \
> > -	"-G: generate rmc database file with records specified in record file list\n" \
> > -	"-B: get a flie blob with specified name associated to the board rmc is running on\n" \
> > -	"-d: database file to be queried\n" \
> > -	"-o: path and name of output file of a specific command\n" \
> > -	"\n" \
> > -    "Examples (Steps in an order to add board support into rmc):\n" \
> > -    "generate board fingerprint:\n" \
> > -    "rmc -F\n\n" \
> > -    "generate a rmc record for the board with two file blobs, output to:\n" \
> > -    "a specified file:\n" \
> > -    "rmc -R -f fingerprint -b file_1 file_2 -o my_board.record\n\n" \
> > -    "generate a rmc database file with records from 3 different boards:\n" \
> > -    "rmc -D board1_record board2_record board3_record\n\n" \
> > -    "query a file blob named audio.conf associated to the board rmc is running on in database my_rmc.db and output\n" \
> > -    "to /tmp/new_audio.conf:\n" \
> > -    "rmc -B audio.conf -d my_rmc.db -o /tmp/new_audio.conf\n\n"
> > +    "rmc -B <name of file blob> -d <rmc database file> -o output_file\n\n" \
> > +  "-F: manage fingerprint file\n" \
> > +    "\t-o output_file: store RMC fingerprint of current board in output_file\n" \
> > +    "\t-i input_file: print RMC fingerprint stored in input_file\n\n" \
> > +  "-R: generate board rmc record of board with its fingerprint and file blobs.\n" \
> > +    "\t-f intput_file : input fingerprint file to be packed in record\n\n" \
> > +    "\tNOTE: RMC will create a fingerprint for the board and use it to\n" \
> > +    "\tgenerate record if an input fingerprint file is not provided.\n\n" \
> > +    "\t-b: files to be packed in record\n\n" \
> > +  "-G: generate rmc database file with records specified in record file list\n\n" \
> > +  "-B: get a file blob with specified name associated to the board rmc is\n" \
> > +  "running on\n" \
> > +    "\t-d: database file to be queried\n" \
> > +    "\t-o: path and name of output file of a specific command\n\n" \
> > +    "Examples (Steps in an order to add board support into rmc):\n\n" \
> > +    "1. Generate board fingerprint:\n" \
> > +    "\t./rmc -F\n\n” \
> Why do we force the rmc in current dir here? rmc can be installed to a system path like other programs.

Yes, this can be anywhere.

> 
> > +    "2. Generate a rmc record for the board with two file blobs and save it\n" \
> > +    "to a specified file:\n" \
> > +    "\t./rmc -R -f fingerprint -b file_1 file_2 -o my_board.record\n\n" \
> > +    "3. Generate a rmc database file with records from 3 different boards:\n" \
> > +    "\t./rmc -D board1_record board2_record board3_record\n\n" \
> > +    "4. Query a file blob named audio.conf associated to the board rmc is\n" \
> > +    "running on in database my_rmc.db and output to /tmp/new_audio.conf:\n" \
> > +    "\t./rmc -B audio.conf -d my_rmc.db -o /tmp/new_audio.conf\n\n"
> > 
> > 
> > #define RMC_OPT_CAP_F   (1 << 0)
> > @@ -51,6 +53,7 @@
> > #define RMC_OPT_O       (1 << 5)
> > #define RMC_OPT_B       (1 << 6)
> > #define RMC_OPT_D       (1 << 7)
> > +#define RMC_OPT_I       (1 << 8)
> > 
> > static void usage () {
> >     fprintf(stdout, USAGE);
> > @@ -78,7 +81,7 @@ static void dump_fingerprint(rmc_fingerprint_t *fp) {
> > static int write_fingerprint_file(const char* pathname, rmc_fingerprint_t *fp) {
> >     int i;
> >     int first = 0;
> > -
> > +    /* TODO - do we need to open/close file multiple times to write each field */
> >     for (i = 0; i < RMC_FINGER_NUM; i++) {
> >         if (write_file(pathname, &fp->rmc_fingers[i].type, sizeof(fp->rmc_fingers[i].type), first))
> >             return 1;
> > @@ -214,7 +217,6 @@ read_fp_done:
> > static rmc_file_t *read_policy_file(char *pathname, int type) {
> >     rmc_file_t *tmp = NULL;
> >     rmc_size_t policy_len = 0;
> > -    int ret;
> Any reduction to this project is welcome!
> 
> it’s just irrelevant for the purposes claimed in commit msg. Please have another patch for other improvements. (Well, I myself could have violated these rules too)

OK.. I will split this into its own commit.

> 
> >     char *path_token;
> > 
> >     if ((tmp = calloc(1, sizeof(rmc_file_t))) == NULL) {
> > @@ -226,8 +228,7 @@ static rmc_file_t *read_policy_file(char *pathname, int type) {
> >     tmp->next = NULL;
> > 
> >     if (type == RMC_GENERIC_FILE) {
> > -        ret = read_file(pathname, (char **)&tmp->blob, &policy_len);
> > -        if (ret) {
> > +        if (read_file(pathname, (char **)&tmp->blob, &policy_len)) {
> >             fprintf(stderr, "Failed to read file %s\n\n", pathname);
> >             free(tmp);
> >             return NULL;
> > @@ -311,7 +312,7 @@ int main(int argc, char **argv){
> >     /* parse options */
> >     opterr = 0;
> > 
> > -    while ((c = getopt(argc, argv, "FRD:B:b:f:o:d:")) != -1)
> > +    while ((c = getopt(argc, argv, "FRD:B:b:f:o:i:d:")) != -1)
> >         switch (c) {
> >         case 'F':
> >             options |= RMC_OPT_CAP_F;
> > @@ -352,6 +353,10 @@ int main(int argc, char **argv){
> >             output_path = optarg;
> >             options |= RMC_OPT_O;
> >             break;
> > +        case 'i':
> > +            input_fingerprint = optarg;
> > +            options |= RMC_OPT_I;
> > +            break;
> >         case 'f':
> >             input_fingerprint = optarg;
> >             options |= RMC_OPT_F;
> > @@ -388,7 +393,8 @@ int main(int argc, char **argv){
> >             break;
> >         case '?':
> >             if (optopt == 'F' || optopt == 'R' || optopt == 'D' || optopt == 'B' || \
> > -                    optopt == 'b' || optopt == 'f' || optopt == 'o' || optopt == 'd')
> > +                    optopt == 'b' || optopt == 'f' || optopt == 'o' || optopt == 'd'  \
> > +                    || optopt == 'i')
> >                 fprintf(stderr, "\nWRONG USAGE: -%c\n\n", optopt);
> >             else if (isprint(optopt))
> >                 fprintf(stderr, "Unknown option `-%c'.\n\n", optopt);
> > @@ -414,6 +420,15 @@ int main(int argc, char **argv){
> >         }
> >     }
> > 
> > +    /* sanity check for -i */
> > +    if (options & RMC_OPT_I) {
> > +        if (!(options & RMC_OPT_CAP_F)) {
> > +            fprintf(stderr, "\nWRONG: Option -i cannot be applied without -F\n\n");
> > +            usage();
> > +            return 1;
> > +        }
> > +    }
> > +
> >     /* sanity check for -R */
> >     if ((options & RMC_OPT_CAP_R) && (!(options & RMC_OPT_B))) {
> >         fprintf(stderr, "\nWRONG: -b is required when -R is present\n\n");
> > @@ -563,25 +578,41 @@ int main(int argc, char **argv){
> >     }
> > 
> >     if (options & RMC_OPT_CAP_F) {
> > -        /* set a default fingerprint file name if user didn't provide one */
> > -        if (!output_path)
> > -            output_path = "rmc.fingerprint";
> > +        /* print fingerpring file to console*/
> > +        if (options & RMC_OPT_I) {
> > +            rmc_fingerprint_t fp;
> > +            /* read fingerprint file*/
> > +            if (input_fingerprint != NULL) {
> > +                if (read_fingerprint_from_file(input_fingerprint, &fp, &raw_fp)) {
> > +                    fprintf(stderr, "Cannot read fingerprint from %s\n\n",
> > +                    input_fingerprint);
> > +                    goto main_free;
> > +                }
> > +                printf("Successfully read fingerprint from %s \n", input_fingerprint);
> > +                dump_fingerprint(&fp);
> > +            }else {
> > +                printf("Fingerprint file not provided! Exiting.\n");
> > +            }
> > +        } else { /* generate fingerprint file for the current board*/
> > +            /* set a default fingerprint file name if user didn't provide one */
> > +            if (!output_path)
> > +                output_path = "rmc.fingerprint";
> > 
> > -        if (rmc_get_fingerprint(&fingerprint)) {
> > -            fprintf(stderr, "Cannot get board fingerprint\n");
> > -            goto main_free;
> > -        }
> > +            if (rmc_get_fingerprint(&fingerprint)) {
> > +                fprintf(stderr, "Cannot get board fingerprint\n");
> > +                goto main_free;
> > +            }
> > 
> > -        printf("Got Fingerprint for board:\n\n");
> > -        dump_fingerprint(&fingerprint);
> > +            printf("Got Fingerprint for board:\n\n");
> > +            dump_fingerprint(&fingerprint);
> > 
> > -        if (write_fingerprint_file(output_path, &fingerprint)) {
> > -            fprintf(stderr, "Cannot write board fingerprint to %s\n", output_path);
> > +            if (write_fingerprint_file(output_path, &fingerprint)) {
> > +                fprintf(stderr, "Cannot write board fingerprint to %s\n", output_path);
> > +                rmc_free_fingerprint(&fingerprint);
> > +                goto main_free;
> > +            }
> >             rmc_free_fingerprint(&fingerprint);
> > -            goto main_free;
> >         }
> > -
> > -        rmc_free_fingerprint(&fingerprint);
> >     }
> > 
> >     ret = 0;
> > -- 
> > 2.11.0
> > 
> 



