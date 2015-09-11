Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C984E00DB3; Fri, 11 Sep 2015 07:10:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1423CE00D90
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 07:10:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t8BEAQrU023702
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Sep 2015 07:10:26 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Fri, 11 Sep 2015 07:10:26 -0700
To: <maninder1.s@samsung.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1535067091.320761431926242042.JavaMail.weblogic@ep2mlwas03d>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <55F2E0D0.6050001@windriver.com>
Date: Fri, 11 Sep 2015 09:10:24 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1535067091.320761431926242042.JavaMail.weblogic@ep2mlwas03d>
Cc: "v.narang@samsung.com" <v.narang@samsung.com>,
	AJEET YADAV <ajeet.y@samsung.com>
Subject: Re: [EDT][prelink-cross] LD_PRELOAD Implementation in Prelink
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
X-List-Received-Date: Fri, 11 Sep 2015 14:10:32 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Merged to the staging branch.

On 5/18/15 12:17 AM, Maninder Singh wrote:
> EP-F6AA0618C49C4AEDA73BFF1B39950BAB
> Hi,
> 
> Subject: [PATCH 1/1] LD_PRELOAD Implementation in Prelink
> 
> prelink fails if  there are ld_preload libs present at target with below error.
> 	expect libsX.so.1, found /lib/libY.so in dependency order
> 	where libY.so.1 is ld_preload lib
>  
> To use this feature :
> ./prelink --ld-preload=libpreload1.so:libpreload2.so:.... upto 20 libs
> Order of libraries to be preloaded is significant. Make sure sequence
> mentioned in prelink
> should be same as runtime sequence.
> 
> Signed-off-by: Vaneet Narang <v.narang@samsung.com>
> Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
> Reviewed-by: Ajeet Yadav <ajeet.v@samsung.com>
> Reviewed-by: Geon-ho Kim <gh007.kim@samsung.com>
> ---
>  src/gather.c    |    8 +++++++-
>  src/get.c       |    9 ++++++++-
>  src/main.c      |    6 ++++++
>  src/prelink.h   |    1 +
>  src/rtld/rtld.c |   51 +++++++++++++++++++++++++++++++++++++++++++++------
>  5 files changed, 67 insertions(+), 8 deletions(-)
> 
> diff --git a/src/gather.c b/src/gather.c
> index c3d3128..5ccd243 100644
> --- a/src/gather.c
> +++ b/src/gather.c
> @@ -61,7 +61,7 @@ gather_deps (DSO *dso, struct prelink_entry *ent)
>  {
>    int i, j, seen = 0;
>    FILE *f = NULL;
> -  const char *argv[6];
> +  const char *argv[8];
>    const char *envp[5];
>    char *line = NULL, *p, *q = NULL;
>    const char **depends = NULL;
> @@ -74,6 +74,7 @@ gather_deps (DSO *dso, struct prelink_entry *ent)
>    int nliblist = 0;
>    const char *dl;
>    const char *ent_filename;
> +  int etype = dso->ehdr.e_type;
>  
>    if (check_dso (dso))
>      {
> @@ -181,6 +182,11 @@ gather_deps (DSO *dso, struct prelink_entry *ent)
>            argv[i++] = "--library-path";
>            argv[i++] = ld_library_path;
>          }
> +
> +      if(etype == ET_EXEC && ld_preload) {
> +          argv[i++] = "--ld-preload";
> +          argv[i++] = ld_preload;
> +      }
>        argv[i++] = "--target-paths";
>        argv[i++] = ent_filename;
>        argv[i] = NULL;
> diff --git a/src/get.c b/src/get.c
> index 6a63f02..043af22 100644
> --- a/src/get.c
> +++ b/src/get.c
> @@ -641,12 +641,13 @@ prelink_get_relocations (struct prelink_info *info)
>  {
>    FILE *f;
>    DSO *dso = info->dso;
> -  const char *argv[6];
> +  const char *argv[8];
>    const char *envp[4];
>    int i, ret, status;
>    char *p;
>    const char *dl = dynamic_linker ?: dso->arch->dynamic_linker;
>    const char *ent_filename;
> +  int etype = info->dso->ehdr.e_type;
>  
>    if (info->ent->type == ET_DYN)
>      {
> @@ -709,6 +710,12 @@ prelink_get_relocations (struct prelink_info *info)
>            argv[i++] = "--library-path";
>            argv[i++] = ld_library_path;
>          }
> +
> +      if(etype == ET_EXEC && ld_preload) {
> +          argv[i++] = "--ld-preload";
> +          argv[i++] = ld_preload;
> +      }      
> +
>        argv[i++] = "--target-paths";
>        argv[i++] = ent_filename;
>        argv[i] = NULL;
> diff --git a/src/main.c b/src/main.c
> index 15c1d53..a99816d 100644
> --- a/src/main.c
> +++ b/src/main.c
> @@ -59,6 +59,7 @@ const char *ld_library_path;
>  const char *prelink_conf = PRELINK_CONF;
>  const char *prelink_cache = PRELINK_CACHE;
>  const char *undo_output;
> +char *ld_preload = NULL;
>  int noreexecinit;
>  time_t initctime;
>  
> @@ -84,6 +85,7 @@ static char argp_doc[] = PRELINK_PROG " -- program to relocate and prelink ELF s
>  #define OPT_SYSROOT		0x8d
>  #define OPT_RTLD		0x8e
>  #define OPT_ALLOW_TEXTREL	0x8f
> +#define OPT_LD_PRELOAD          0x90
>  
>  static struct argp_option options[] = {
>    {"all",		'a', 0, 0,  "Prelink all binaries" },
> @@ -123,6 +125,7 @@ static struct argp_option options[] = {
>    {"rtld",		OPT_RTLD, "RTLD", OPTION_HIDDEN, "" },
>    {"init",		'i', 0, 0,  "Do not re-execute init" },
>    {"allow-textrel",	OPT_ALLOW_TEXTREL, 0, 0, "Allow text relocations even on architectures where they may not work" },
> +  {"ld-preload",       OPT_LD_PRELOAD, "LIBLIST", 0,  "List of libraries preloaded on target" },
>    { 0 }
>  };
>  
> @@ -250,6 +253,9 @@ parse_opt (int key, char *arg, struct argp_state *state)
>      case OPT_ALLOW_TEXTREL:
>        allow_bad_textrel = 1;
>        break;
> +    case OPT_LD_PRELOAD:
> +      ld_preload = arg;
> +      break;
>      default:
>        return ARGP_ERR_UNKNOWN;
>      }
> diff --git a/src/prelink.h b/src/prelink.h
> index 66aba99..a6ce607 100644
> --- a/src/prelink.h
> +++ b/src/prelink.h
> @@ -597,6 +597,7 @@ extern enum verify_method_t verify_method;
>  extern int quick;
>  extern long long seed;
>  extern GElf_Addr mmap_reg_start, mmap_reg_end, layout_page_size;
> +extern char *ld_preload;
>  
>  extern const char *sysroot;
>  
> diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
> index 2ad3ade..f014bea 100644
> --- a/src/rtld/rtld.c
> +++ b/src/rtld/rtld.c
> @@ -47,6 +47,7 @@ unsigned int _dl_debug_mask = 0;
>  /* LD_DYNAMIC_WEAK option.  Default is off, changing to 1
>     is equivalent to setting LD_DYNAMIC_WEAK. */
>  unsigned int _dl_dynamic_weak = 0;
> +#define MAX_PRELOADED_LIBS   20
>  
>  struct search_path
>  {
> @@ -60,6 +61,7 @@ int host_paths;
>  char * dst_ORIGIN;
>  char * dst_PLATFORM = ""; /* undefined */
>  char * dst_LIB = "lib";
> +char * ld_preload = NULL;
>  
>  
>  void string_to_path (struct search_path *path, const char *string);
> @@ -73,11 +75,13 @@ static char argp_doc[] = PRELINK_RTLD_PROG " -- program to simulate the runtime
>  #define OPT_SYSROOT		0x8c
>  #define OPT_LIBRARY_PATH	0x8e
>  #define OPT_TARGET_PATHS	0x8f
> +#define OPT_LD_PRELOAD          0x90
>  
>  static struct argp_option options[] = {
>    {"library-path",		OPT_LIBRARY_PATH, "LIBRARY_PATH", 0, "Set library search path to LIBRARY_PATH" },
>    {"root",			OPT_SYSROOT, "ROOT_PATH", 0, "Prefix all paths with ROOT_PATH" },
>    {"target-paths",		OPT_TARGET_PATHS, 0, 0, "Specified paths are based on ROOT_PATH" },
> +  {"ld-preload",                OPT_LD_PRELOAD, "LIBLIST", 0, "List of libraries needs to be preloaded"},
>    { 0 }
>  };
>  
> @@ -95,6 +99,9 @@ parse_opt (int key, char *arg, struct argp_state *state)
>      case OPT_TARGET_PATHS:
>        host_paths = 0;
>        break;
> +    case OPT_LD_PRELOAD:
> +      ld_preload = arg;
> +      break;
>      default:
>        return ARGP_ERR_UNKNOWN;
>      }
> @@ -582,6 +589,8 @@ load_dsos (DSO *dso, int host_paths)
>  {
>    struct dso_list *dso_list, *dso_list_tail, *cur_dso_ent, *new_dso_ent;
>    struct stat64 st;
> +  int total_preload = 0;
> +  char * libname[MAX_PRELOADED_LIBS] = {NULL};
>  
>    /* Assume it's static unless we find DT_NEEDED entries */
>    static_binary = 1;
> @@ -604,6 +613,22 @@ load_dsos (DSO *dso, int host_paths)
>  
>    cur_dso_ent = dso_list_tail = dso_list;
>  
> +  if(dso->ehdr.e_type == ET_EXEC && ld_preload) {
> +      char *next_lib =  ld_preload;
> +      libname[total_preload] = ld_preload;
> +      total_preload++;
> +      next_lib=strchr(ld_preload,':');
> +      while(next_lib!=NULL){
> +	  *next_lib = '\0';
> +	  next_lib++;
> +	  libname[total_preload] = next_lib;
> +	  total_preload++;
> +	  next_lib=strchr(next_lib,':');
> +      }
> +  }
> +  else {
> +      total_preload = 0;
> +  }
>    while (cur_dso_ent != NULL)
>      {
>        DSO *cur_dso, *new_dso;
> @@ -624,9 +649,16 @@ load_dsos (DSO *dso, int host_paths)
>  	{
>  	  int ndx, maxndx;
>  	  maxndx = data->d_size / cur_dso->shdr[cur_dso->dynamic].sh_entsize;
> -	  for (ndx = 0; ndx < maxndx; ++ndx)
> +	  for (ndx = 0; ndx < maxndx + total_preload; ++ndx)
>  	    {
> -	      gelfx_getdyn (cur_dso->elf, data, ndx, &dyn);
> +
> +              if(ndx - total_preload >= 0) {
> +                  gelfx_getdyn (cur_dso->elf, data, ndx - total_preload, &dyn);
> +              }
> +              else {
> +                  dyn.d_tag = DT_NEEDED;
> +              }
> +
>  	      if (dyn.d_tag == DT_NULL)
>  		break;
>  	      if (dyn.d_tag == DT_NEEDED)
> @@ -635,10 +667,17 @@ load_dsos (DSO *dso, int host_paths)
>  		  static_binary = 0;
>  
>  		  char *new_name=NULL, *new_canon_name=NULL;
> -		  const char *soname = get_data (cur_dso,
> -						 cur_dso->info[DT_STRTAB]
> -						 + dyn.d_un.d_val,
> -						 NULL, NULL);
> +                  char * soname = NULL;  
> +                  if(ndx - total_preload >= 0) {
> +		      soname = get_data (cur_dso,
> +		    	                 cur_dso->info[DT_STRTAB]
> +			       	         + dyn.d_un.d_val,
> +				         NULL, NULL);
> +                  }
> +                  else {
> +                      soname = libname[ndx];
> +                  }
> +
>  		  new_dso_ent = in_dso_list (dso_list, soname, NULL);
>  		  if (new_dso_ent == NULL)
>  		    {
> 


