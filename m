Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
 by mx.groups.io with SMTP id smtpd.web09.4884.1582037225039084485
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2020 06:47:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hiaoexOW;
 spf=pass (domain: gmail.com, ip: 209.85.208.68, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f68.google.com with SMTP id g19so25076860eds.11
        for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2020 06:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=wfpjIUUfkFTT07eB+9LXmeelm/BYsM4E6nXC1uTgW4Y=;
        b=hiaoexOWo3cpqCtGfEWtLg5TXYK59QgURnjJfk42lHxAxDM2Cm4zetTw2pysSKkYOK
         99mjXB/Chjz+u4RuNoyd/zrhRJ54eUgpkG0hF9ACiONlZGKVbU4fQIs4md045tnYXzI0
         MOOVm9BZ9uydymnzCfHzMZeUdA+Xg/qJrpSgA/J42/X5dyxqE1CtERTyhx2LHcXxo3q6
         v+qC+k+5t6eB0kCZtEICQgjoSU4KbPYqivbgvNYahmZ778/Z4y4dUWWevvdI2cALinKw
         hLDIoEGJxEKpa9c3q9cG4+ZzhNiGMLQ69Nh5SC2c2KzqVTP3s8JZzkhVUGc66foEkjCY
         LxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wfpjIUUfkFTT07eB+9LXmeelm/BYsM4E6nXC1uTgW4Y=;
        b=M52RlVMFYnjR/aPqRAd7ulZfk+6OBGdPujJlTPizaWWNV0DkTix0jmFaqUdh2+z1df
         ClqlA+RatcdcF6VUsjdx63be/HboUn2o8dsnmY4HPYZM4qLUSdzwSSeWSacUmyqd4Gx2
         tatRAhPDs/c0Hske6EnvH1d53mwKtjGtTMPLHlSEm+F4lhW7JJa6O5JrGbc83zU6tzRs
         uvwlBFKAkHlZHdhD1yfovahXzMsr3t9x0fkoeEqy/svtJYGgquiFAtnSpjpTdmPrxDa6
         DtFiaqUS5xqbk0wH6G/8oVGpF7X43Nr9/fkKoovNNGh1eQvzPg7FIv0Osl14cQD6MBKl
         7UJw==
X-Gm-Message-State: APjAAAWjZDm+qe3fVWAGi5XrLBebHhV2Ugx+b+v2Deo4JhYrTE2TCW/L
	3cekdWkoza4BvYqrNvIWFWxJwPR/Gbcr6G3prWU=
X-Google-Smtp-Source: APXvYqwyrEaSFbzV5qzIhFbcA4DHCE6MXqfNHWCRWCVZXToVyfQjKmbnn4a9vYfHudMCyJBpjYpRo7SUCexRycJefj0=
X-Received: by 2002:a17:906:d0d3:: with SMTP id bq19mr1049599ejb.37.1582037223426;
 Tue, 18 Feb 2020 06:47:03 -0800 (PST)
MIME-Version: 1.0
References: <20200116132414.26057-1-n.merinov@inango-systems.com> <1667118643.1181978.1582032124378.JavaMail.zimbra@inango-systems.com>
In-Reply-To: <1667118643.1181978.1582032124378.JavaMail.zimbra@inango-systems.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 18 Feb 2020 09:46:52 -0500
Message-ID: <CADkTA4Or6Maoou6+UdnegwE-pcA55JZXbhs+tqRKLvbS+MH7EA@mail.gmail.com>
Subject: Re: [yocto] [yocto-kernel-tools][PATCH] tools: Provide merge_config.py alternative to merge_config.sh
To: n.merinov@inango-systems.com
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 18, 2020 at 8:22 AM Nikolay Merinov via
Lists.Yoctoproject.Org
<n.merinov=3Dinango-systems.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> Is "yocto" is correct mail list for such patch?
>

The linux-yocto list is the right place.

> During the work I already faced issues related to 1, 3, and 4 improvemen=
ts from the commit message.

And to be fair, those are corner cases that I've never run into in 10
years of working with variants of the merging :D

> This is why I want to change OE-Core code to use "merge_config.py" inste=
ad of "merge_config.sh". Unfortunately I can't find a way to send several p=
atches to different repositories at once and this is why I want to upstream=
 "merge_config.py" utility before I'll prepare changes to OE-Core code.

The main tooling in for the yocto kernel's is going to stick with
merge_config.sh, since that's the mainline kernel script.

We can perhaps make it possible to switch out the merge_config script
itself, but not a switch by default, that way you could select in your
own layers the actual merge script.

Also note, there are some pending series to move around how/when
fragments are merged, so I'd have to start re-testing all of the use
cases on top of the new base (which changed for v5.5) .. i.e. testing
with the gold linker, etc.

Cheers,

Bruce

>
> Regards,
> Nikolai
>
> ----- Original Message -----
> > From: "n merinov" <n.merinov@inango-systems.com>
> > To: "yocto" <yocto@lists.yoctoproject.org>
> > Cc: "n merinov" <n.merinov@inango-systems.com>
> > Sent: Thursday, January 16, 2020 6:24:14 PM
> > Subject: [yocto-kernel-tools][PATCH] tools: Provide merge_config.py al=
ternative to merge_config.sh
>
> > The merge_config.py script is fully compatible by command line options=
 with
> > merge_config.sh script and provide better performance and solve severa=
l issues
> > that present in the merge_config.sh script.
> >
> > Improvements comparing with merge_config.sh:
> >
> > 1. Preformance was greatly improved:
> >
> >        let start=3D0 end=3D100
> >        for file in `seq 10`; do
> >            for n in `seq $start $end`; do
> >                echo "CONFIG_X$n=3D$file" >> $file.cfg
> >            done
> >            let start+=3D100 end+=3D100
> >        done
> >
> >        time merge_config.sh -m *.cfg # Takes 15.3 seconds
> >        time merge_config.py -m *.cfg # Takes 0.03 seconds
> >
> > 2. merge_config.sh produce false positive warnings when config name us=
ed
> >    as config value:
> >
> >        $ echo 'CONFIG_NAME=3D"CONFIG_OTHER"' > 1.cfg
> >        $ echo 'CONFIG_OTHER=3D"value"' > 2.cfg
> >        $ merge_config.sh -m 1.cfg 2.cfg
> >        ...
> >        Value of CONFIG_OTHER is redefined by fragment 2.cfg:
> >        Previous value: CONFIG_NAME=3D"CONFIG_OTHER"
> >        New value: CONFIG_OTHER=3D"value"
> >        ...
> >
> > 3. merge_config.sh can incorrectly process commentary as a configurati=
on value:
> >
> >        $ echo "CONFIG_NAME=3Dvalue" > 1.cfg
> >        $ echo "# CONFIG_NAME was defined in 1.cfg" > 2.cfg
> >        $ merge_config.sh -m 1.cfg 2.cfg
> >        ...
> >        Value of CONFIG_NAME is redefined by fragment 2.cfg:
> >        Previous value: CONFIG_NAME=3Dvalue
> >        New value: # CONFIG_NAME was defined in 1.cfg
> >        ...
> >        $ cat .config
> >        # CONFIG_NAME was defined in 1.cfg
> >
> > 4. merge_config.py able to find re-definition inside of the same file:
> >
> >        $ echo "CONFIG_NAME=3D1" > 1.cfg
> >        $ echo "CONFIG_NAME=3D2" >> 1.cfg
> >       $ merge_config.py -m 1.cfg
> >        ...
> >        Value of CONFIG_NAME is redefined by fragment 1.cfg:
> >        Previous value: CONFIG_NAME=3D1
> >        New value: CONFIG_NAME=3D2
> >        ...
> >
> > Signed-off-by: Nikolai Merinov <n.merinov@inango-systems.com>
> > Signed-off-by: Oleksandr Hnatiuk <o.hnatiuk@inango-systems.com>
> > ---
> > Makefile              |   2 +-
> > tools/merge_config.py | 166 ++++++++++++++++++++++++++++++++++++++++++
> > 2 files changed, 167 insertions(+), 1 deletion(-)
> > create mode 100755 tools/merge_config.py
> >
> > diff --git a/Makefile b/Makefile
> > index eb3daac..df2fca7 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -2,7 +2,7 @@ kern_tools_LIST =3D kgit kgit-meta \
> >                 kconf_check \
> >                 get_defconfig scc \
> >                 merge_config.sh spp kgit-s2q \
> > -               symbol_why.py
> > +               symbol_why.py merge_config.py
> >
> > cmds :=3D $(wildcard tools/scc-cmds/*)
> > libs :=3D Kconfiglib/kconfiglib.py
> > diff --git a/tools/merge_config.py b/tools/merge_config.py
> > new file mode 100755
> > index 0000000..50e32eb
> > --- /dev/null
> > +++ b/tools/merge_config.py
> > @@ -0,0 +1,166 @@
> > +#!/usr/bin/env python3
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +
> > +"""
> > +merge_config.py - Takes a list of config fragment values, and merges
> > +them one by one. Provides warnings on overridden values, and specifie=
d
> > +values that did not make it to the resulting .config file (due to mis=
sed
> > +dependencies or config symbol removal).
> > +"""
> > +
> > +#  Portions reused from merge_config.sh:
> > +#
> > http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tool=
s/merge_config.sh
> > +#
> > +#  Copyright (c) 2009-2010 Wind River Systems, Inc.
> > +#  Copyright 2011 Linaro
> > +#  Copyright (c) 2020 Inango Systems Ltd.
> > +#
> > +#  This program is free software; you can redistribute it and/or modi=
fy
> > +#  it under the terms of the GNU General Public License version 2 as
> > +#  published by the Free Software Foundation.
> > +#
> > +#  This program is distributed in the hope that it will be useful,
> > +#  but WITHOUT ANY WARRANTY; without even the implied warranty of
> > +#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> > +#  See the GNU General Public License for more details.
> > +
> > +import sys
> > +import re
> > +import os
> > +import subprocess
> > +from collections import OrderedDict
> > +import argparse
> > +
> > +CONFIG_REGEX =3D r'^((# (?=3D.* is not set))?(CONFIG_[a-zA-Z0-9_]*)(=
=3D.*| is not
> > set))$'
> > +
> > +def parse_arguments():
> > +    """Parse argv and return extracted options and list of the config=
 files for
> > merging"""
> > +    parser =3D argparse.ArgumentParser()
> > +    parser.add_argument('configs', metavar=3D'CONFIG', type=3Dstr, na=
rgs=3D'+',
> > +                        help=3D'path to the config fragment')
> > +    parser.add_argument('-m', dest=3D'run_make', action=3D'store_fals=
e',
> > +                        help=3D'only merge the fragments, do not exec=
ute the make
> > command')
> > +    parser.add_argument('-n', dest=3D'alltarget', action=3D'store_con=
st',
> > +                        default=3D'alldefconfig', const=3D'allnoconfi=
g',
> > +                        help=3D'use allnoconfig instead of alldefconf=
ig')
> > +    parser.add_argument('-r', dest=3D'warn_redundant', action=3D'stor=
e_true',
> > +                        help=3D'list redundant entries when merging f=
ragments')
> > +    parser.add_argument('-O', dest=3D'output_dir', metavar=3D'DIR', t=
ype=3Dstr,
> > +                        action=3D'store', default=3D'.',
> > +                        help=3D'dir to put generated output files.  '
> > +                             'Consider setting $KCONFIG_CONFIG instea=
d.')
> > +
> > +    args =3D parser.parse_args()
> > +
> > +    if not os.path.isdir(args.output_dir):
> > +        print("output directory {} does not exist".format(args.output=
_dir),
> > file=3Dsys.stderr)
> > +    else:
> > +        args.output_dir =3D args.output_dir.rstrip('/')
> > +
> > +    return args
> > +
> > +def merge_config(config_dict, file_name, warn_redundant=3DFalse):
> > +    """Add all configuration options from file_name to the config_dic=
t
> > dictionary.
> > +    This function warns about all configuration in config_dict that w=
as
> > redefined.
> > +    Optionally it warns about redifinition to the same value if warn_=
redundant
> > is True"""
> > +    matches =3D re.findall(CONFIG_REGEX, open(file_name, "r").read(),
> > re.MULTILINE)
> > +    for match in matches:
> > +        config_option =3D match[2]
> > +        new_value =3D match[0]
> > +        previous_value =3D config_dict.get(config_option)
> > +        if previous_value !=3D None:
> > +            if previous_value !=3D new_value:
> > +                print("Value of {} is redefined by fragment
> > {}:".format(config_option, file_name))
> > +                print("Previous value: {}".format(previous_value))
> > +                print("New value: {}".format(new_value))
> > +                print()
> > +            elif warn_redundant:
> > +                print("Value of {} is redundant by fragment
> > {}:".format(config_option, file_name))
> > +            del config_dict[config_option]
> > +        config_dict[config_option] =3D new_value
> > +
> > +def compare_configs(passed_config, resulting_config):
> > +    """Compare two dictionaries with config values and print warnings=
 if
> > +    resulting_config changed any values presented in passed_config.
> > +
> > +    This function assumes that resulting_config is a result of proces=
sing of
> > the
> > +    passed_config by make defconfig command."""
> > +    for config_option, requested_value in passed_config.items():
> > +        actual_value =3D resulting_config.get(config_option)
> > +        if actual_value is None:
> > +            print("Value requested for {} not in final
> > .config".format(config_option))
> > +            print("Requested value: {}".format(requested_value))
> > +            print("There is no value for this config in .config")
> > +            print("")
> > +        elif requested_value !=3D actual_value:
> > +            print("Value requested for {} not in final
> > .config".format(config_option))
> > +            print("Requested value: {}".format(requested_value))
> > +            print("Actual value: {}".format(actual_value))
> > +            print("")
> > +
> > +def dump_config(dictionary, file_name):
> > +    """Write data stored in the dictionary to the file_name."""
> > +    out_file =3D open(file_name, "w")
> > +    for val in dictionary.values():
> > +        out_file.write("{}\n".format(val))
> > +    out_file.close()
> > +
> > +def exit_if_not_exists(file_name):
> > +    """Exit if the file_name do not point to an existed file."""
> > +    if not os.path.isfile(file_name):
> > +        print("The file '{}' does not exist.  Exit.".format(file_name=
),
> > file=3Dsys.stderr)
> > +        sys.exit(1)
> > +
> > +def main():
> > +    """Main function of this module."""
> > +    args =3D parse_arguments()
> > +
> > +    kconfig_config =3D os.getenv("KCONFIG_CONFIG")
> > +    if kconfig_config is None:
> > +        if args.output_dir !=3D ".":
> > +            kconfig_config =3D
> > os.path.realpath("{}/.config".format(args.output_dir))
> > +        else:
> > +            kconfig_config =3D ".config"
> > +    os.putenv("KCONFIG_CONFIG", kconfig_config)
> > +
> > +    final_config =3D OrderedDict()
> > +
> > +    base_config =3D args.configs[0]
> > +    merge_list =3D args.configs[1:]
> > +
> > +    exit_if_not_exists(base_config)
> > +    print("Using {} as base".format(base_config))
> > +    merge_config(final_config, base_config, args.warn_redundant)
> > +
> > +    # Merge files, printing warnings on overridden values
> > +    for merge_file in merge_list:
> > +        exit_if_not_exists(merge_file)
> > +        print("Merging {}".format(merge_file))
> > +        merge_config(final_config, merge_file)
> > +
> > +    dump_config(final_config, kconfig_config)
> > +
> > +    if not args.run_make:
> > +        print("#\n# merged configuration written to {} (needs
> > make)\n#".format(kconfig_config))
> > +        sys.exit()
> > +
> > +    # If we have an output dir, setup the O=3D argument, otherwise le=
ave
> > +    # it blank, since O=3D. will create an unnecessary ./source softl=
ink
> > +    output_arg =3D ""
> > +    if args.output_dir !=3D ".":
> > +        output_arg =3D "O=3D{}".format(args.output_dir)
> > +
> > +
> > +    # Use the merged file as the starting point for:
> > +    # alldefconfig: Fills in any missing symbols with Kconfig default
> > +    # allnoconfig: Fills in any missing symbols with # CONFIG_* is no=
t set
> > +    subprocess.run("make {} {}".format(output_arg, args.alltarget), s=
hell=3DTrue)
> > +
> > +
> > +    # Check all specified config values took (might have missed-depen=
dency
> > issues)
> > +    kconfig_values =3D OrderedDict()
> > +    merge_config(kconfig_values, kconfig_config)
> > +
> > +    compare_configs(final_config, kconfig_values)
> > +
> > +main()
> > --
> > 2.17.1
>=20



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
