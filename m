Received: from mail.inango-sw.com (mail.inango-sw.com [178.238.230.57])
 by mx.groups.io with SMTP id smtpd.web12.3844.1582032128233785398
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2020 05:22:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inango-systems.com header.s=45a440e0-d841-11e8-b985-5fcc721607e0 header.b=CHG9pgQU;
 spf=pass (domain: inango-systems.com, ip: 178.238.230.57, mailfrom: n.merinov@inango-systems.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id E356D108016E
	for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2020 15:22:05 +0200 (IST)
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id g5lYL8fYJhIn for <yocto@lists.yoctoproject.org>;
	Tue, 18 Feb 2020 15:22:04 +0200 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id B74D010807C7
	for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2020 15:22:04 +0200 (IST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.inango-sw.com B74D010807C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inango-systems.com;
	s=45A440E0-D841-11E8-B985-5FCC721607E0; t=1582032124;
	bh=nBVE79FFNXdkaAxzTVVcl0RYxgxm944faUc0tzJ8dA8=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=CHG9pgQUrq130VFWCfuPBq8MfS/wwFz4nRBKCSznKvKSR3pgW6NQ6mg9lxHrZzjVs
	 5wenMfOr/74ltgmAoyT3XxlGWY0crJwptd6in5sqXfucLCHCJo2jIdHYamWgk5+X0T
	 DLzkH5A2CYxi9ZUFDpaMDYPcHO0cG6s/IkkJdSg+ZveOjI0dVNqmj2buHFB4wUrQWx
	 gIVyiglhJwzQTdrU1oHA0Fm08qPwZkyrsSR0/CSCmWIFURQslA4ruIwFKcp+LYv4yA
	 PqVa5Ue9kW6zN4jbnUkKlnQTiWubNMaAxOT6ql6k6nYrveOQXipzboChCM0Bsg7xsy
	 LWfM3s1WQWd0w==
X-Virus-Scanned: amavisd-new at inango-sw.com
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id rc5n96MFjTGu for <yocto@lists.yoctoproject.org>;
	Tue, 18 Feb 2020 15:22:04 +0200 (IST)
Received: from mail.inango-sw.com (mail.inango-sw.com [172.17.220.3])
	by mail.inango-sw.com (Postfix) with ESMTP id 9C42F10807B0
	for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2020 15:22:04 +0200 (IST)
Date: Tue, 18 Feb 2020 15:22:04 +0200 (IST)
From: "Nikolay Merinov" <n.merinov@inango-systems.com>
To: yocto <yocto@lists.yoctoproject.org>
Message-ID: <1667118643.1181978.1582032124378.JavaMail.zimbra@inango-systems.com>
In-Reply-To: <20200116132414.26057-1-n.merinov@inango-systems.com>
References: <20200116132414.26057-1-n.merinov@inango-systems.com>
Subject: Re: [yocto-kernel-tools][PATCH] tools: Provide merge_config.py alternative to merge_config.sh
MIME-Version: 1.0
X-Originating-IP: [172.17.220.3]
X-Mailer: Zimbra 8.8.15_GA_3888 (ZimbraWebClient - GC79 (Linux)/8.8.15_GA_3890)
Thread-Topic: tools: Provide merge_config.py alternative to merge_config.sh
Thread-Index: n7nJ9Li+7ajafDOprdqsrBec7QkyDA==
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

Is "yocto" is correct mail list for such patch?

During the work I already faced issues related to 1, 3, and 4 improvements from the commit message.
This is why I want to change OE-Core code to use "merge_config.py" instead of "merge_config.sh". Unfortunately I can't find a way to send several patches to different repositories at once and this is why I want to upstream "merge_config.py" utility before I'll prepare changes to OE-Core code.

Regards,
Nikolai

----- Original Message -----
> From: "n merinov" <n.merinov@inango-systems.com>
> To: "yocto" <yocto@lists.yoctoproject.org>
> Cc: "n merinov" <n.merinov@inango-systems.com>
> Sent: Thursday, January 16, 2020 6:24:14 PM
> Subject: [yocto-kernel-tools][PATCH] tools: Provide merge_config.py alternative to merge_config.sh

> The merge_config.py script is fully compatible by command line options with
> merge_config.sh script and provide better performance and solve several issues
> that present in the merge_config.sh script.
> 
> Improvements comparing with merge_config.sh:
> 
> 1. Preformance was greatly improved:
> 
>        let start=0 end=100
>        for file in `seq 10`; do
>            for n in `seq $start $end`; do
>                echo "CONFIG_X$n=$file" >> $file.cfg
>            done
>            let start+=100 end+=100
>        done
> 
>        time merge_config.sh -m *.cfg # Takes 15.3 seconds
>        time merge_config.py -m *.cfg # Takes 0.03 seconds
> 
> 2. merge_config.sh produce false positive warnings when config name used
>    as config value:
> 
>        $ echo 'CONFIG_NAME="CONFIG_OTHER"' > 1.cfg
>        $ echo 'CONFIG_OTHER="value"' > 2.cfg
>        $ merge_config.sh -m 1.cfg 2.cfg
>        ...
>        Value of CONFIG_OTHER is redefined by fragment 2.cfg:
>        Previous value: CONFIG_NAME="CONFIG_OTHER"
>        New value: CONFIG_OTHER="value"
>        ...
> 
> 3. merge_config.sh can incorrectly process commentary as a configuration value:
> 
>        $ echo "CONFIG_NAME=value" > 1.cfg
>        $ echo "# CONFIG_NAME was defined in 1.cfg" > 2.cfg
>        $ merge_config.sh -m 1.cfg 2.cfg
>        ...
>        Value of CONFIG_NAME is redefined by fragment 2.cfg:
>        Previous value: CONFIG_NAME=value
>        New value: # CONFIG_NAME was defined in 1.cfg
>        ...
>        $ cat .config
>        # CONFIG_NAME was defined in 1.cfg
> 
> 4. merge_config.py able to find re-definition inside of the same file:
> 
>        $ echo "CONFIG_NAME=1" > 1.cfg
>        $ echo "CONFIG_NAME=2" >> 1.cfg
>	$ merge_config.py -m 1.cfg
>        ...
>        Value of CONFIG_NAME is redefined by fragment 1.cfg:
>        Previous value: CONFIG_NAME=1
>        New value: CONFIG_NAME=2
>        ...
> 
> Signed-off-by: Nikolai Merinov <n.merinov@inango-systems.com>
> Signed-off-by: Oleksandr Hnatiuk <o.hnatiuk@inango-systems.com>
> ---
> Makefile              |   2 +-
> tools/merge_config.py | 166 ++++++++++++++++++++++++++++++++++++++++++
> 2 files changed, 167 insertions(+), 1 deletion(-)
> create mode 100755 tools/merge_config.py
> 
> diff --git a/Makefile b/Makefile
> index eb3daac..df2fca7 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -2,7 +2,7 @@ kern_tools_LIST = kgit kgit-meta \
> 		  kconf_check \
> 		  get_defconfig scc \
> 		  merge_config.sh spp kgit-s2q \
> -		  symbol_why.py
> +		  symbol_why.py merge_config.py
> 
> cmds := $(wildcard tools/scc-cmds/*)
> libs := Kconfiglib/kconfiglib.py
> diff --git a/tools/merge_config.py b/tools/merge_config.py
> new file mode 100755
> index 0000000..50e32eb
> --- /dev/null
> +++ b/tools/merge_config.py
> @@ -0,0 +1,166 @@
> +#!/usr/bin/env python3
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +"""
> +merge_config.py - Takes a list of config fragment values, and merges
> +them one by one. Provides warnings on overridden values, and specified
> +values that did not make it to the resulting .config file (due to missed
> +dependencies or config symbol removal).
> +"""
> +
> +#  Portions reused from merge_config.sh:
> +#
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/tree/tools/merge_config.sh
> +#
> +#  Copyright (c) 2009-2010 Wind River Systems, Inc.
> +#  Copyright 2011 Linaro
> +#  Copyright (c) 2020 Inango Systems Ltd.
> +#
> +#  This program is free software; you can redistribute it and/or modify
> +#  it under the terms of the GNU General Public License version 2 as
> +#  published by the Free Software Foundation.
> +#
> +#  This program is distributed in the hope that it will be useful,
> +#  but WITHOUT ANY WARRANTY; without even the implied warranty of
> +#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> +#  See the GNU General Public License for more details.
> +
> +import sys
> +import re
> +import os
> +import subprocess
> +from collections import OrderedDict
> +import argparse
> +
> +CONFIG_REGEX = r'^((# (?=.* is not set))?(CONFIG_[a-zA-Z0-9_]*)(=.*| is not
> set))$'
> +
> +def parse_arguments():
> +    """Parse argv and return extracted options and list of the config files for
> merging"""
> +    parser = argparse.ArgumentParser()
> +    parser.add_argument('configs', metavar='CONFIG', type=str, nargs='+',
> +                        help='path to the config fragment')
> +    parser.add_argument('-m', dest='run_make', action='store_false',
> +                        help='only merge the fragments, do not execute the make
> command')
> +    parser.add_argument('-n', dest='alltarget', action='store_const',
> +                        default='alldefconfig', const='allnoconfig',
> +                        help='use allnoconfig instead of alldefconfig')
> +    parser.add_argument('-r', dest='warn_redundant', action='store_true',
> +                        help='list redundant entries when merging fragments')
> +    parser.add_argument('-O', dest='output_dir', metavar='DIR', type=str,
> +                        action='store', default='.',
> +                        help='dir to put generated output files.  '
> +                             'Consider setting $KCONFIG_CONFIG instead.')
> +
> +    args = parser.parse_args()
> +
> +    if not os.path.isdir(args.output_dir):
> +        print("output directory {} does not exist".format(args.output_dir),
> file=sys.stderr)
> +    else:
> +        args.output_dir = args.output_dir.rstrip('/')
> +
> +    return args
> +
> +def merge_config(config_dict, file_name, warn_redundant=False):
> +    """Add all configuration options from file_name to the config_dict
> dictionary.
> +    This function warns about all configuration in config_dict that was
> redefined.
> +    Optionally it warns about redifinition to the same value if warn_redundant
> is True"""
> +    matches = re.findall(CONFIG_REGEX, open(file_name, "r").read(),
> re.MULTILINE)
> +    for match in matches:
> +        config_option = match[2]
> +        new_value = match[0]
> +        previous_value = config_dict.get(config_option)
> +        if previous_value != None:
> +            if previous_value != new_value:
> +                print("Value of {} is redefined by fragment
> {}:".format(config_option, file_name))
> +                print("Previous value: {}".format(previous_value))
> +                print("New value: {}".format(new_value))
> +                print()
> +            elif warn_redundant:
> +                print("Value of {} is redundant by fragment
> {}:".format(config_option, file_name))
> +            del config_dict[config_option]
> +        config_dict[config_option] = new_value
> +
> +def compare_configs(passed_config, resulting_config):
> +    """Compare two dictionaries with config values and print warnings if
> +    resulting_config changed any values presented in passed_config.
> +
> +    This function assumes that resulting_config is a result of processing of
> the
> +    passed_config by make defconfig command."""
> +    for config_option, requested_value in passed_config.items():
> +        actual_value = resulting_config.get(config_option)
> +        if actual_value is None:
> +            print("Value requested for {} not in final
> .config".format(config_option))
> +            print("Requested value: {}".format(requested_value))
> +            print("There is no value for this config in .config")
> +            print("")
> +        elif requested_value != actual_value:
> +            print("Value requested for {} not in final
> .config".format(config_option))
> +            print("Requested value: {}".format(requested_value))
> +            print("Actual value: {}".format(actual_value))
> +            print("")
> +
> +def dump_config(dictionary, file_name):
> +    """Write data stored in the dictionary to the file_name."""
> +    out_file = open(file_name, "w")
> +    for val in dictionary.values():
> +        out_file.write("{}\n".format(val))
> +    out_file.close()
> +
> +def exit_if_not_exists(file_name):
> +    """Exit if the file_name do not point to an existed file."""
> +    if not os.path.isfile(file_name):
> +        print("The file '{}' does not exist.  Exit.".format(file_name),
> file=sys.stderr)
> +        sys.exit(1)
> +
> +def main():
> +    """Main function of this module."""
> +    args = parse_arguments()
> +
> +    kconfig_config = os.getenv("KCONFIG_CONFIG")
> +    if kconfig_config is None:
> +        if args.output_dir != ".":
> +            kconfig_config =
> os.path.realpath("{}/.config".format(args.output_dir))
> +        else:
> +            kconfig_config = ".config"
> +    os.putenv("KCONFIG_CONFIG", kconfig_config)
> +
> +    final_config = OrderedDict()
> +
> +    base_config = args.configs[0]
> +    merge_list = args.configs[1:]
> +
> +    exit_if_not_exists(base_config)
> +    print("Using {} as base".format(base_config))
> +    merge_config(final_config, base_config, args.warn_redundant)
> +
> +    # Merge files, printing warnings on overridden values
> +    for merge_file in merge_list:
> +        exit_if_not_exists(merge_file)
> +        print("Merging {}".format(merge_file))
> +        merge_config(final_config, merge_file)
> +
> +    dump_config(final_config, kconfig_config)
> +
> +    if not args.run_make:
> +        print("#\n# merged configuration written to {} (needs
> make)\n#".format(kconfig_config))
> +        sys.exit()
> +
> +    # If we have an output dir, setup the O= argument, otherwise leave
> +    # it blank, since O=. will create an unnecessary ./source softlink
> +    output_arg = ""
> +    if args.output_dir != ".":
> +        output_arg = "O={}".format(args.output_dir)
> +
> +
> +    # Use the merged file as the starting point for:
> +    # alldefconfig: Fills in any missing symbols with Kconfig default
> +    # allnoconfig: Fills in any missing symbols with # CONFIG_* is not set
> +    subprocess.run("make {} {}".format(output_arg, args.alltarget), shell=True)
> +
> +
> +    # Check all specified config values took (might have missed-dependency
> issues)
> +    kconfig_values = OrderedDict()
> +    merge_config(kconfig_values, kconfig_config)
> +
> +    compare_configs(final_config, kconfig_values)
> +
> +main()
> --
> 2.17.1
