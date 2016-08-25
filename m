Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFB37E0108D; Thu, 25 Aug 2016 10:03:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23264E0108D
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 10:03:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u7PH3Ku2009443
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Aug 2016 10:03:20 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 25 Aug 2016 10:03:19 -0700
To: Kyle Russell <bkylerussell@gmail.com>
References: <1472139557-7371-1-git-send-email-bkylerussell@gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <67d01694-b96e-72bc-5798-19c3492d71eb@windriver.com>
Date: Thu, 25 Aug 2016 12:03:18 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1472139557-7371-1-git-send-email-bkylerussell@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross][PATCH] rtld: Add missing DT_NEEDED DSOs to needed_list
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
X-List-Received-Date: Thu, 25 Aug 2016 17:03:27 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Thanks!  I'll try to get this included soon.

--Mark

On 8/25/16 10:39 AM, Kyle Russell wrote:
> prelink-rtld may report an "error while loading shared libraries" for
> the wrong library.
> 
> If some set of DT_NEEDED DSOs are not in the default search path, they
> may have a dso_list entry added, but no matching entry is added to the
> needed_list.  This causes the linker to miscalculate the max number of
> dsos during build_local_scope(), which later causes find_needed() to not
> search the entire l_local_scope[0]->r_list during
> _dl_check_map_versions() (since the max from build_local_scope() becomes
> l_local_scope[0]->r_nlist).
> 
> Since find_needed() searches through the r_list, which would have the
> dso_list entries for the libraries that weren't found earlier, this cuts
> the search short, meaning libraries near the end of the local scope don't
> get included in the map version search.
> 
> As the comment in _dl_check_map_versions() suggests, if needed is NULL,
> that means a dependency was not found and no stub entry created, which
> should never happen.
> 
> Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
> ---
>  src/rtld/rtld.c | 36 ++++++++++++++++++++++--------------
>  1 file changed, 22 insertions(+), 14 deletions(-)
> 
> diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
> index 8d7d760..d9a0862 100644
> --- a/src/rtld/rtld.c
> +++ b/src/rtld/rtld.c
> @@ -686,6 +686,25 @@ find_lib_by_soname (const char *soname, struct dso_list *loader,
>    return NULL;
>  }
>  
> +static void
> +add_dso_to_needed (struct dso_list *cur_dso_ent, struct dso_list *new_dso_ent)
> +{
> +  if (!cur_dso_ent->needed)
> +    {
> +      cur_dso_ent->needed = malloc (sizeof (struct needed_list));
> +      cur_dso_ent->needed_tail = cur_dso_ent->needed;
> +      cur_dso_ent->needed_tail->ent = new_dso_ent;
> +      cur_dso_ent->needed_tail->next = NULL;
> +    }
> +  else if (!in_needed_list (cur_dso_ent->needed, new_dso_ent->name))
> +    {
> +      cur_dso_ent->needed_tail->next = malloc (sizeof (struct needed_list));
> +      cur_dso_ent->needed_tail = cur_dso_ent->needed_tail->next;
> +      cur_dso_ent->needed_tail->ent = new_dso_ent;
> +      cur_dso_ent->needed_tail->next = NULL;
> +    }
> +}
> +
>  static struct dso_list *
>  load_dsos (DSO *dso, int host_paths)
>  {
> @@ -812,6 +831,8 @@ load_dsos (DSO *dso, int host_paths)
>  			  dso_list_tail->canon_filename = strdup(soname);
>  			  dso_list_tail->err_no = errno;
>  
> +                          add_dso_to_needed(cur_dso_ent, new_dso_ent);
> +
>  			  continue;
>  			}
>  
> @@ -854,20 +875,7 @@ load_dsos (DSO *dso, int host_paths)
>  			dso_list_tail->name = new_dso->soname;
>  		    }
>  
> -		  if (!cur_dso_ent->needed)
> -		    {
> -		      cur_dso_ent->needed = malloc (sizeof (struct needed_list));
> -		      cur_dso_ent->needed_tail = cur_dso_ent->needed;
> -		      cur_dso_ent->needed_tail->ent = new_dso_ent;
> -		      cur_dso_ent->needed_tail->next = NULL;
> -		    }
> -		  else if (!in_needed_list (cur_dso_ent->needed, soname))
> -		    {
> -		      cur_dso_ent->needed_tail->next = malloc (sizeof (struct needed_list));
> -		      cur_dso_ent->needed_tail = cur_dso_ent->needed_tail->next;
> -		      cur_dso_ent->needed_tail->ent = new_dso_ent;
> -		      cur_dso_ent->needed_tail->next = NULL;
> -		    }
> +                  add_dso_to_needed(cur_dso_ent, new_dso_ent);
>  
>  		  continue;
>  		}
> 


