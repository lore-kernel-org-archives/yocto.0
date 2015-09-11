Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 980AEE00B7F; Fri, 11 Sep 2015 06:43:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 371C5E00939
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 06:43:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t8BDhZl5018639
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Sep 2015 06:43:35 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Fri, 11 Sep 2015 06:43:34 -0700
To: <maninder1.s@samsung.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <2324891.319351431925345938.JavaMail.weblogic@ep2mlwas03d>
From: Mark Hatle <mark.hatle@windriver.com>
X-Enigmail-Draft-Status: N1110
Organization: Wind River Systems
Message-ID: <55F2DA85.7020501@windriver.com>
Date: Fri, 11 Sep 2015 08:43:33 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <2324891.319351431925345938.JavaMail.weblogic@ep2mlwas03d>
Cc: "v.narang@samsung.com" <v.narang@samsung.com>,
	AJEET YADAV <ajeet.y@samsung.com>
Subject: Re: [EDT][prelink-cross][PATCH 1/1] bugifx for soname mismatch
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
X-List-Received-Date: Fri, 11 Sep 2015 13:43:44 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

I believe the change is incorrect.  The soname must match the required soname.

So if I am understanding this properly:

1. Create a library (libB.so) with an SONAME of 'libB.so'.
2. Link app to libB.so
3. Create a library (libA.so) with an SONAME of 'libA.so'.
4. remove libB.so ; ln -sf libA.so libB.so

prelink sees that the library SONAME isn't consistent with the file on the disk
and fails.  This would be the correct behavior.

When using ldconfig (ld.so.cache) then system will capture the sonames and
filenames.  In the case above the loader may fail because it can't find the
soname of libB.so.  W/o the ld.so.cache, the system will fall back to the disk
and load the file of that name -- however, this is an undefined situation and it
would be within reason for the rtld to open the library see it doesn't have the
required soname and error/unload that particular file.

--Mark

On 5/18/15 12:02 AM, Maninder Singh wrote:
> EP-F6AA0618C49C4AEDA73BFF1B39950BAB
> 
> Hi,
> 
> Subject: [PATCH 1/1] bugifx for soname mismatch
> 
> As per my understanding, this issue needs to be fixed in loader, But if can not be fixed 
> then there is work around for following issue.
> 
> Issue case:-
> 1. Create a library libB.so having soname libB.so
> 2. At compile time we linked libB.so to binary, and thus in NEEDED section it will show libB.so
> 	gcc test.c -o test -lB
> 3. Now create a softlink as below:-
> 	ln -sf libA.so libB.so
> 	(libB.so -> libA.so)
> 4. No when we do prelink, Library list section '.gnu.liblist' contains  entries as below:
> 	0: libA.so              2014-12-02T04:28:40 0x95c929e5 0       0 //SONAME
> 5. And at run time prelink will be failed because of dependency mismatch due to soname issue.
> 	expect libA.so, found /lib/libB.so in dependency order
> 	prelink checking: failed
> 	
> Issue is prelink fills soname in gnu.liblist section but loader uses filename not soname.So we
> created a workaround for this issue.
> 
> To use filename instead of soname in gnu.liblist
> Usage :./prelink -s or ./prelink --ignore-soname
> 
> 
> Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
> Signed-off-by: Vaneet Narang <v.narang@samsung.com>
> Reviewed-by: Ajeet Yadav <ajeet.y@samsung.com>
> Reviewed-by: Geon-ho Kim <gh007.kim@samsung.com>
> ---
>  src/get.c     |    2 ++
>  src/main.c    |    5 +++++
>  src/prelink.h |    1 +
>  3 files changed, 8 insertions(+), 0 deletions(-)
> 
> diff --git a/src/get.c b/src/get.c
> index ffefe73..bb01331 100644
> --- a/src/get.c
> +++ b/src/get.c
> @@ -182,6 +182,8 @@ prelink_record_relocations (struct prelink_info *info, FILE *f,
>  		}
>  	    }
>  	}
> +      if(ignore_soname) 
> +          soname = strrchr(filename, '/') + 1;
>  
>        if (! tdeps)
>  	deps[0].ent = info->ent;
> diff --git a/src/main.c b/src/main.c
> index 15c1d53..5891dbc 100644
> --- a/src/main.c
> +++ b/src/main.c
> @@ -61,6 +61,7 @@ const char *prelink_cache = PRELINK_CACHE;
>  const char *undo_output;
>  int noreexecinit;
>  time_t initctime;
> +int ignore_soname = 0;
>  
>  const char *argp_program_version = PRELINK_PROG PKGVERSION " 1.0";
>  
> @@ -123,6 +124,7 @@ static struct argp_option options[] = {
>    {"rtld",		OPT_RTLD, "RTLD", OPTION_HIDDEN, "" },
>    {"init",		'i', 0, 0,  "Do not re-execute init" },
>    {"allow-textrel",	OPT_ALLOW_TEXTREL, 0, 0, "Allow text relocations even on architectures where they may not work" },
> +  {"ignore-soname",	's', 0, 0,  "To use filename instead of soname in gnu.liblist" },
>    { 0 }
>  };
>  
> @@ -250,6 +252,9 @@ parse_opt (int key, char *arg, struct argp_state *state)
>      case OPT_ALLOW_TEXTREL:
>        allow_bad_textrel = 1;
>        break;
> +    case 's':
> +      ignore_soname = 1;
> +      break; 
>      default:
>        return ARGP_ERR_UNKNOWN;
>      }
> diff --git a/src/prelink.h b/src/prelink.h
> index 66aba99..778e67a 100644
> --- a/src/prelink.h
> +++ b/src/prelink.h
> @@ -597,6 +597,7 @@ extern enum verify_method_t verify_method;
>  extern int quick;
>  extern long long seed;
>  extern GElf_Addr mmap_reg_start, mmap_reg_end, layout_page_size;
> +extern int ignore_soname;
>  
>  extern const char *sysroot;
>  
> 


