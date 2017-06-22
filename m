Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72F6AE00BD6; Wed, 21 Jun 2017 19:10:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1452FE00BBD
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 19:10:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5M2A9Fr008695
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 21 Jun 2017 19:10:09 -0700
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 21 Jun 2017 19:10:08 -0700
To: Kyle Russell <bkylerussell@gmail.com>
References: <1472139557-7371-1-git-send-email-bkylerussell@gmail.com>
	<67d01694-b96e-72bc-5798-19c3492d71eb@windriver.com>
	<CAFrQVPOXyboKjeOaQxvh6WU3GShxijdcJAC7YdwYj6o05=s6Ew@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <693f159e-ee6a-2f3f-7cf0-ce1b3bbb2f5f@windriver.com>
Date: Wed, 21 Jun 2017 21:10:07 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <CAFrQVPOXyboKjeOaQxvh6WU3GShxijdcJAC7YdwYj6o05=s6Ew@mail.gmail.com>
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
X-List-Received-Date: Thu, 22 Jun 2017 02:10:14 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 6/21/17 8:51 PM, Kyle Russell wrote:
> Just wanted to follow-up on this so it doesn't get lost.  Any chance this could
> be included in cross_prelink_staging?

I just finished the sanity checking on it.  It should be in staging in a few
minutes.

(There are a couple of x32 patches as well, however I'm currently not able to
test those.  Something is wrong when the master x32 that there are missing
headers -- and even when that is resolved the testsuite doesn't appear to
properly find the ld.so and such.)

--Mark

> On Thu, Aug 25, 2016 at 1:03 PM, Mark Hatle <mark.hatle@windriver.com
> <mailto:mark.hatle@windriver.com>> wrote:
> 
>     Thanks!  I'll try to get this included soon.
> 
>     --Mark
> 
>     On 8/25/16 10:39 AM, Kyle Russell wrote:
>     > prelink-rtld may report an "error while loading shared libraries" for
>     > the wrong library.
>     >
>     > If some set of DT_NEEDED DSOs are not in the default search path, they
>     > may have a dso_list entry added, but no matching entry is added to the
>     > needed_list.  This causes the linker to miscalculate the max number of
>     > dsos during build_local_scope(), which later causes find_needed() to not
>     > search the entire l_local_scope[0]->r_list during
>     > _dl_check_map_versions() (since the max from build_local_scope() becomes
>     > l_local_scope[0]->r_nlist).
>     >
>     > Since find_needed() searches through the r_list, which would have the
>     > dso_list entries for the libraries that weren't found earlier, this cuts
>     > the search short, meaning libraries near the end of the local scope don't
>     > get included in the map version search.
>     >
>     > As the comment in _dl_check_map_versions() suggests, if needed is NULL,
>     > that means a dependency was not found and no stub entry created, which
>     > should never happen.
>     >
>     > Signed-off-by: Kyle Russell <bkylerussell@gmail.com
>     <mailto:bkylerussell@gmail.com>>
>     > ---
>     >  src/rtld/rtld.c | 36 ++++++++++++++++++++++--------------
>     >  1 file changed, 22 insertions(+), 14 deletions(-)
>     >
>     > diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
>     > index 8d7d760..d9a0862 100644
>     > --- a/src/rtld/rtld.c
>     > +++ b/src/rtld/rtld.c
>     > @@ -686,6 +686,25 @@ find_lib_by_soname (const char *soname, struct
>     dso_list *loader,
>     >    return NULL;
>     >  }
>     >
>     > +static void
>     > +add_dso_to_needed (struct dso_list *cur_dso_ent, struct dso_list
>     *new_dso_ent)
>     > +{
>     > +  if (!cur_dso_ent->needed)
>     > +    {
>     > +      cur_dso_ent->needed = malloc (sizeof (struct needed_list));
>     > +      cur_dso_ent->needed_tail = cur_dso_ent->needed;
>     > +      cur_dso_ent->needed_tail->ent = new_dso_ent;
>     > +      cur_dso_ent->needed_tail->next = NULL;
>     > +    }
>     > +  else if (!in_needed_list (cur_dso_ent->needed, new_dso_ent->name))
>     > +    {
>     > +      cur_dso_ent->needed_tail->next = malloc (sizeof (struct needed_list));
>     > +      cur_dso_ent->needed_tail = cur_dso_ent->needed_tail->next;
>     > +      cur_dso_ent->needed_tail->ent = new_dso_ent;
>     > +      cur_dso_ent->needed_tail->next = NULL;
>     > +    }
>     > +}
>     > +
>     >  static struct dso_list *
>     >  load_dsos (DSO *dso, int host_paths)
>     >  {
>     > @@ -812,6 +831,8 @@ load_dsos (DSO *dso, int host_paths)
>     >                         dso_list_tail->canon_filename = strdup(soname);
>     >                         dso_list_tail->err_no = errno;
>     >
>     > +                          add_dso_to_needed(cur_dso_ent, new_dso_ent);
>     > +
>     >                         continue;
>     >                       }
>     >
>     > @@ -854,20 +875,7 @@ load_dsos (DSO *dso, int host_paths)
>     >                       dso_list_tail->name = new_dso->soname;
>     >                   }
>     >
>     > -               if (!cur_dso_ent->needed)
>     > -                 {
>     > -                   cur_dso_ent->needed = malloc (sizeof (struct
>     needed_list));
>     > -                   cur_dso_ent->needed_tail = cur_dso_ent->needed;
>     > -                   cur_dso_ent->needed_tail->ent = new_dso_ent;
>     > -                   cur_dso_ent->needed_tail->next = NULL;
>     > -                 }
>     > -               else if (!in_needed_list (cur_dso_ent->needed, soname))
>     > -                 {
>     > -                   cur_dso_ent->needed_tail->next = malloc (sizeof
>     (struct needed_list));
>     > -                   cur_dso_ent->needed_tail = cur_dso_ent->needed_tail->next;
>     > -                   cur_dso_ent->needed_tail->ent = new_dso_ent;
>     > -                   cur_dso_ent->needed_tail->next = NULL;
>     > -                 }
>     > +                  add_dso_to_needed(cur_dso_ent, new_dso_ent);
>     >
>     >                 continue;
>     >               }
>     >
> 
> 


