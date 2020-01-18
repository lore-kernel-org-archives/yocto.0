Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2514.1579349730722070723
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jan 2020 04:15:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OpCUTwX1;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kiernan@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 949ABE013E0; Sat, 18 Jan 2020 04:15:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85AEFE0098A
	for <yocto@yoctoproject.org>; Sat, 18 Jan 2020 04:15:28 -0800 (PST)
Received: by mail-io1-f66.google.com with SMTP id c16so28868023ioh.6
        for <yocto@yoctoproject.org>; Sat, 18 Jan 2020 04:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UikSYzuaxsS0CQK8XZtz2asRg0tPP1w7D378Zzlt4qg=;
        b=OpCUTwX16bGxWkuHKE1J//wWyaKeoCCjgrf8gKb8VOrK7xqBWQwwuVWDMyshfa53Nf
         OAeR7bodZCIEoL5vVlREbHEfVwQyMARQ667RG1LStLwfPvd7HMpaVGxLWDmoxXI9kUoa
         mmfSA4F/EHCgPefX4cavp4RVTfyLsBoeynjSGBrk/UyPcExrwNYGt0YFc4GC8L0P4gvG
         5hJQQlVZqedkKAsNp5JdMedlrLttddZohUO9rEMLNsCw8e/gvQacyaiQHeWRl8N72Ywo
         JrCgu9SxAgxmOmc//+tD1FQWGn884sOjC+x40Cm5bY/YZAAmF2WnEERSim1jeXByrN5A
         5htA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UikSYzuaxsS0CQK8XZtz2asRg0tPP1w7D378Zzlt4qg=;
        b=tcWhzfOxzBrL2k/2yR0Lqhx0rE0DZmMFpqMWPUsOTf0bjqiI2OgxpEd+8g9AqOVjs0
         bg+i/1B7hzBp2YBo1yBxRLQg3XSFOx0UO7xxqPDV5gB7MFEZVn5a5vuh8EtzrS9O2VGO
         F8vJLzf6UnW7SWAyyLcF48WZ0/7BZReSIVebnqy+aLTjFUNwYy3NHiRETj0Ji6EXS1t6
         eYPDHDcbNAQ/gKX2SKSe+hU9lMhnmZD6DE116QHYcW60zxKvDGaaiwz+6DO0vPzsnR5B
         SrG9OEmHA9C3hY+Vpesr82KhZOTAoo+kVSeSbi2Yp4NjRB+ClKCjaTUWsxzmeQ7Z7PhS
         eXzQ==
X-Gm-Message-State: APjAAAWvFpKh5wdC0geTozL2V4HCofVflU0J/iCl0/+ykLDY8MjOhrGd
	ADCrWxCRiT7e88r2eBKyUQ98u8ygmGoKPO4vM3Y=
X-Google-Smtp-Source: APXvYqy9sCY7jVElSLh2/CIEBTlnKNzg/gHB6xCeHZYdkksRTa91oN7zV9orGUjeaRPTpZx6DslEU/cnFZM2OmlkRHs=
X-Received: by 2002:a6b:7a45:: with SMTP id k5mr34747207iop.115.1579349727390;
 Sat, 18 Jan 2020 04:15:27 -0800 (PST)
MIME-Version: 1.0
References: <20191111103222.86510-1-aj.bagwell@gmail.com> <8c1ee3c40843f5a09ac13b086bb52ad752c16ac9.camel@gmail.com>
In-Reply-To: <8c1ee3c40843f5a09ac13b086bb52ad752c16ac9.camel@gmail.com>
From: "Alex Kiernan" <alex.kiernan@gmail.com>
Date: Sat, 18 Jan 2020 12:15:16 +0000
Message-ID: <CAO5Uq5RiRGk-R212v7KS0eAv3LOrr=P1qBtwUm_donwSKoa+gQ@mail.gmail.com>
Subject: Re: [yocto] [meta-gplv2][PATCH v2] dosfstools: fix out of bound writes
To: Khem Raj <raj.khem@gmail.com>
Cc: aj.bagwell@gmail.com, Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 11, 2019 at 3:45 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Mon, 2019-11-11 at 10:32 +0000, aj.bagwell@gmail.com wrote:
> > From: AJ Bagwell <anthony.bagwell@hivehome.com>
> >
> > Fix write issues where sprintf writes across both name and ext fields
> > and drops the final null ternimator outside the struct
> >
> > Signed-off-by: AJ Bagwell <anthony.bagwell@hivehome.com>
> > ---
> >  .../fixing-out-of-bound-writes.patch          | 54
> > +++++++++++++++++++
> >  .../dosfstools/dosfstools_2.11.bb             |  1 +
> >  2 files changed, 55 insertions(+)
> >  create mode 100644 recipes-devtools/dosfstools/dosfstools/fixing-
> > out-of-bound-writes.patch
> >
> > diff --git a/recipes-devtools/dosfstools/dosfstools/fixing-out-of-
> > bound-writes.patch b/recipes-devtools/dosfstools/dosfstools/fixing-
> > out-of-bound-writes.patch
> > new file mode 100644
> > index 0000000..f80f5ab
> > --- /dev/null
> > +++ b/recipes-devtools/dosfstools/dosfstools/fixing-out-of-bound-
> > writes.patch
> > @@ -0,0 +1,54 @@
> > +Fix out of bound write issues where sprintf writes across both
> > +name and ext fields and drops the final null ternimator outside the
> > struct
> > +
> > +Upstream-Status: Inappropriate [licensing]
> > +We're tracking an old release of dosfstools due to licensing issues.
> > +
>
> patch is fine, I wonder if the latest version in OE-Core is also
> affected by this issue ?
>

It's not - upstream has an equivalent fix.

>
> > +diff --git a/dosfsck/check.c b/dosfsck/check.c
> > +index e8c13bb..91177d3 100644
> > +--- a/dosfsck/check.c
> > ++++ b/dosfsck/check.c
> > +@@ -58,6 +58,13 @@ static DOS_FILE *root;
> > +     }
> >       \
> > +   } while(0)
> > +
> > ++static void de_printf(DIR_ENT *de, const char *pattern, int
> > curr_num)
> > ++{
> > ++    char buffer[12];
> > ++    sprintf(buffer, pattern, curr_num);
> > ++    memcpy(de->name, buffer, 8);
> > ++    memcpy(de->ext, buffer + 8, 3);
> > ++}
> > +
> > + loff_t alloc_rootdir_entry(DOS_FS *fs, DIR_ENT *de, const char
> > *pattern)
> > + {
> > +@@ -110,7 +117,8 @@ loff_t alloc_rootdir_entry(DOS_FS *fs, DIR_ENT
> > *de, const char *pattern)
> > +     }
> > +     memset(de,0,sizeof(DIR_ENT));
> > +     while (1) {
> > +-        sprintf(de->name,pattern,curr_num);
> > ++        de_printf(de, pattern, curr_num);
> > ++
> > +         clu_num = fs->root_cluster;
> > +         i = 0;
> > +         offset2 = cluster_start(fs,clu_num);
> > +@@ -150,7 +158,7 @@ loff_t alloc_rootdir_entry(DOS_FS *fs, DIR_ENT
> > *de, const char *pattern)
> > +     offset = fs->root_start+next_free*sizeof(DIR_ENT);
> > +     memset(de,0,sizeof(DIR_ENT));
> > +     while (1) {
> > +-        sprintf(de->name,pattern,curr_num);
> > ++        de_printf(de, pattern, curr_num);
> > +         for (scan = 0; scan < fs->root_entries; scan++)
> > +             if (scan != next_free &&
> > +                 !strncmp(root[scan].name,de->name,MSDOS_NAME))
> > +@@ -311,8 +319,8 @@ static void auto_rename(DOS_FILE *file)
> > +     first = file->parent ? file->parent->first : root;
> > +     number = 0;
> > +     while (1) {
> > +-    sprintf(file->dir_ent.name,"FSCK%04d",number);
> > +-    strncpy(file->dir_ent.ext,"REN",3);
> > ++    de_printf(&file->dir_ent, "FSCK%04dREN", number);
> > ++
> > +     for (walk = first; walk; walk = walk->next)
> > +         if (walk != file && !strncmp(walk->dir_ent.name,file-
> > >dir_ent.
> > +           name,MSDOS_NAME)) break;
> > diff --git a/recipes-devtools/dosfstools/dosfstools_2.11.bb
> > b/recipes-devtools/dosfstools/dosfstools_2.11.bb
> > index dd543b1..37c2181 100644
> > --- a/recipes-devtools/dosfstools/dosfstools_2.11.bb
> > +++ b/recipes-devtools/dosfstools/dosfstools_2.11.bb
> > @@ -19,6 +19,7 @@ SRC_URI = "
> > http://pkgs.fedoraproject.org/repo/pkgs/${BPN}/${BP}.src.tar.gz/407d4
> >             file://nofat32_autoselect.patch \
> >             file://fix_populated_dosfs_creation.patch \
> >             file://0001-Include-fcntl.h-for-getting-loff_t-
> > definition.patch \
> > +        file://fixing-out-of-bound-writes.patch \
> >  "
> >
> >  SRC_URI[md5sum] = "407d405ade410f7597d364ab5dc8c9f6"
> > --
> > 2.17.1
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Alex Kiernan
