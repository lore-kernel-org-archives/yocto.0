Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.6534.1615471505468207426
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 06:05:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PwBPLTnL;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id r17so46403627ejy.13
        for <yocto@lists.yoctoproject.org>; Thu, 11 Mar 2021 06:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9uRN3Z/gOwhVjx5U39OF6rfK18EMGLxo0zVd17sDTP0=;
        b=PwBPLTnLOCalLG4I6sPYpGG1QcJsSOYco/AxrK4SHmoD5gofCJhZEienS+frGvuZvx
         uz3s6ZmCmSX1uZ3zz/7kegMFja2o1XmAJ6KLDA3jOLRMCY+vEiXfLu6rPA1N0MlpLQwH
         1LoiiLcQeBqFSgaIDK09/m9lFeZITszDsvKAxUf20N9ly/SiOExjglvNVYxJIxIEiSD2
         tWc/gsjPBG5zgfF/BtX04p7iqG71P+fs6379LfiZ7FjAIczit6Sg7vzYJwp/o/vjn/OQ
         /OBLAGi63kQQAw6VtYF+py0MJ/kDu8nCJZxMxAg6yDr98+gwP5/VF2T8tMS+ZiIrTfZH
         eMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9uRN3Z/gOwhVjx5U39OF6rfK18EMGLxo0zVd17sDTP0=;
        b=nQJr4PZByKIhuv9f7XkJpEak9a4SlU1QQwUAIDplmbtCCgbVivA94OwePXixe0tLTi
         yzbwMixXGCyeynotWHmcpRFbyQuG7s4/cTpeXCzMBBjVits8rnl8JPLLamXiPFzGajmk
         dFSQK1wTp2grfinvZLfQjrRChD6FpYuX5c/lvrnXDYQj+jpdwwEQY1RKgyCi5eOLbph+
         /SD4T/SCAJDqdt3WbqAVUUbzEv7tFcjcSYsY1P/mmyLgdf7q144nBn/SB4hWnxBm8c7b
         TxU9Hl1Vi4rsU4HqcwFpRUzDImPvuJDVdktADcGZML99rvwWl69WPgkejObvkCUDNhsT
         RS9Q==
X-Gm-Message-State: AOAM531YWwHTu+UWJIgNMZ8vMb+LZpRdnFVU4MDfi8Tr0BK6NPD17c5Z
	k7bxvGMGhBiwsW29/QQfZ6eOnd2ZCxTrmraHL+A=
X-Google-Smtp-Source: ABdhPJzfgJLOVENjH/Suca5fuGQcyqxgoNQzKQ0l3umVPZ79eKFU9JMBVVM/FpDMWut6kyTRSUg7Y5JXZvGVvfdA9S8=
X-Received: by 2002:a17:906:75a:: with SMTP id z26mr3211532ejb.22.1615471503765;
 Thu, 11 Mar 2021 06:05:03 -0800 (PST)
MIME-Version: 1.0
References: <166B4E4835444DAB.8494@lists.yoctoproject.org>
In-Reply-To: <166B4E4835444DAB.8494@lists.yoctoproject.org>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Thu, 11 Mar 2021 09:04:52 -0500
Message-ID: <CADkTA4OOQaTC+gN3b_rrgGyTc+Ccp-RzCwLMG9TtzeFHsyfUZg@mail.gmail.com>
Subject: Re: [yocto] [PATCH] perf: reproducibility fixes for pmu-events.c
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Ignore this.

I reused an old git-send-email and sent it to the wrong list. I've
re-send to oe-core :D

Bruce

On Thu, Mar 11, 2021 at 8:56 AM Bruce Ashfield via
lists.yoctoproject.org
<bruce.ashfield=gmail.com@lists.yoctoproject.org> wrote:
>
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
>
> perf generates pmu-events.c as part of the build process. The
> code that generates the events is doing tree walks and potentially
> other non-determinstic things.
>
> We'd rather not mess with that implementation, so we add a script
> that knows how to read the pmu-events.c, sort the entries and then
> copy it over the generated one.
>
> With this, we should always have events in the same order, improving
> reproducibility.
>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
> ---
>  meta/recipes-kernel/perf/perf.bb              | 16 ++++
>  .../perf/perf/sort-pmuevents.py               | 93 +++++++++++++++++++
>  2 files changed, 109 insertions(+)
>  create mode 100755 meta/recipes-kernel/perf/perf/sort-pmuevents.py
>
> diff --git a/meta/recipes-kernel/perf/perf.bb b/meta/recipes-kernel/perf/perf.bb
> index 2beb404c03..c7653e523c 100644
> --- a/meta/recipes-kernel/perf/perf.bb
> +++ b/meta/recipes-kernel/perf/perf.bb
> @@ -250,6 +250,14 @@ do_configure_prepend () {
>          # all the calls have YFLAGS, which contains prefix mapping information.
>          sed -i -e 's,$(YACC),$(YACC) $(YFLAGS),g' ${S}/scripts/Makefile.host
>      fi
> +    if [ -e "${S}/tools/perf/pmu-events/Build" ]; then
> +        target='$(OUTPUT)pmu-events/pmu-events.c $(V)'
> +        replacement1='$(OUTPUT)pmu-events/pmu-events.c $(V)\n'
> +        replacement2='\t$(srctree)/sort-pmuevents.py $(OUTPUT)pmu-events/pmu-events.c $(OUTPUT)pmu-events/pmu-events.c.new\n'
> +        replacement3='\tcp $(OUTPUT)pmu-events/pmu-events.c.new $(OUTPUT)pmu-events/pmu-events.c'
> +        sed -i -e "s,$target,$replacement1$replacement2$replacement3,g" \
> +                       "${S}/tools/perf/pmu-events/Build"
> +    fi
>      # end reproducibility substitutions
>
>      # We need to ensure the --sysroot option in CC is preserved
> @@ -292,6 +300,14 @@ do_configure_prepend () {
>      # so we copy it from the sysroot unistd.h to the perf unistd.h
>      install -D -m0644 ${STAGING_INCDIR}/asm-generic/unistd.h ${S}/tools/include/uapi/asm-generic/unistd.h
>      install -D -m0644 ${STAGING_INCDIR}/asm-generic/unistd.h ${S}/include/uapi/asm-generic/unistd.h
> +
> +    # the fetcher is inhibited by the 'inherit kernelsrc', so we do a quick check and
> +    # copy for a helper script we need
> +    for p in $(echo ${FILESPATH} | tr ':' '\n'); do
> +       if [ -e $p/sort-pmuevents.py ]; then
> +           cp $p/sort-pmuevents.py ${S}
> +       fi
> +    done
>  }
>
>  python do_package_prepend() {
> diff --git a/meta/recipes-kernel/perf/perf/sort-pmuevents.py b/meta/recipes-kernel/perf/perf/sort-pmuevents.py
> new file mode 100755
> index 0000000000..5ddf0f144f
> --- /dev/null
> +++ b/meta/recipes-kernel/perf/perf/sort-pmuevents.py
> @@ -0,0 +1,93 @@
> +#!/usr/bin/env python3
> +
> +# perf pmu-events sorting tool
> +#
> +# Copyright (C) 2021 Bruce Ashfield
> +#
> +# SPDX-License-Identifier: MIT
> +#
> +
> +import sys
> +import os
> +import re
> +from collections import OrderedDict
> +
> +if len(sys.argv) < 2:
> +    print( "[ERROR]: input and output pmu files missing" )
> +    sys.exit(1)
> +
> +if len(sys.argv) < 3:
> +    print( "[ERROR]: output pmu file missing" )
> +    sys.exit(1)
> +
> +infile = sys.argv[1]
> +outfile = sys.argv[2]
> +
> +if not os.path.exists(infile):
> +    print( "ERROR. input file does not exist: %s" % infile )
> +    sys.exit(1)
> +
> +if os.path.exists(outfile):
> +    print( "WARNING. output file will be overwritten: %s" % infile )
> +
> +with open(infile, 'r') as file:
> +    data = file.read()
> +
> +preamble_regex = re.compile( '^(.*?)^struct', re.MULTILINE | re.DOTALL )
> +
> +preamble = re.search( preamble_regex, data )
> +struct_block_regex = re.compile( '^struct.*?(\w+) (.*?)\[\] = {(.*?)^};', re.MULTILINE | re.DOTALL )
> +field_regex =  re.compile( '{.*?},', re.MULTILINE | re.DOTALL )
> +cpuid_regex = re.compile( '\.cpuid = (.*?),', re.MULTILINE | re.DOTALL )
> +name_regex = re.compile( '\.name = (.*?),', re.MULTILINE | re.DOTALL )
> +
> +# create a dictionary structure to store all the structs, their
> +# types and then their fields.
> +entry_dict = {}
> +for struct in re.findall( struct_block_regex, data ):
> +    # print( "struct: %s %s" % (struct[0],struct[1]) )
> +    entry_dict[struct[1]] = {}
> +    entry_dict[struct[1]]['type'] = struct[0]
> +    entry_dict[struct[1]]['fields'] = {}
> +    for entry in re.findall( field_regex, struct[2] ):
> +        #print( "    entry: %s" % entry )
> +        cpuid = re.search( cpuid_regex, entry )
> +        if cpuid:
> +            #print( "    cpuid found: %s" % cpuid.group(1) )
> +            entry_dict[struct[1]]['fields'][cpuid.group(1)] = entry
> +
> +        name = re.search( name_regex, entry )
> +        if name:
> +            #print( "    name found: %s" % name.group(1) )
> +            entry_dict[struct[1]]['fields'][name.group(1)] = entry
> +
> +
> +# created ordered dictionaries from the captured values. These are ordered by
> +# a sorted() iteration of the keys. We don't care about the order we read
> +# things, just the sorted order. Hency why we couldn't create these during
> +# reading.
> +#
> +# yes, there's a more concise way to do this, but our nested dictionaries of
> +# fields make it complex enough that it becomes unreadable.
> +entry_dict_sorted = OrderedDict()
> +for i in sorted(entry_dict.keys()):
> +    entry_dict_sorted[i] = {}
> +    entry_dict_sorted[i]['type'] = entry_dict[i]['type']
> +    entry_dict_sorted[i]['fields'] = {}
> +    for f in sorted(entry_dict[i]['fields'].keys()):
> +        entry_dict_sorted[i]['fields'][f] = entry_dict[i]['fields'][f]
> +
> +# dump the sorted elements to the outfile
> +outf = open( outfile, 'w' )
> +
> +print( preamble.group(1) )
> +outf.write( preamble.group(1) )
> +for d in entry_dict_sorted:
> +    outf.write( "struct %s %s[] = {\n" % (entry_dict_sorted[d]['type'],d) )
> +    for f in entry_dict_sorted[d]['fields']:
> +        outf.write( entry_dict_sorted[d]['fields'][f] + '\n' )
> +
> +    outf.write( "};\n" )
> +
> +outf.close()
> +
> --
> 2.19.1
>
>
> 
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
