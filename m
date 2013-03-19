Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CE6FE006AD;
	Tue, 19 Mar 2013 11:41:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2JIfSX9003062
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 19 Mar 2013 11:41:29 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Tue, 19 Mar 2013 11:41:27 -0700
Message-ID: <5148B147.1090409@windriver.com>
Date: Tue, 19 Mar 2013 14:41:11 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
References: <cover.1363691191.git.insop.song@gmail.com>
	<8e260f937e1ddad0fb19e36b6b3b6d8d9aa299c4.1363691191.git.insop.song@gmail.com>
In-Reply-To: <8e260f937e1ddad0fb19e36b6b3b6d8d9aa299c4.1363691191.git.insop.song@gmail.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [linux-yocto] [meta-realtime][PATCH 1/1] create a script directory and add a script to run test program and collect data
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
X-List-Received-Date: Tue, 19 Mar 2013 18:41:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-19 07:14 AM, Insop Song wrote:
> - run_rt-app.py runs rt-app on the target machine and collects the
>    output log to host
>
> - how to run:
> $ fab -f run_rt-app.py run_app
>
> Note: requires fabric (python program) on the host
>
> Signed-off-by: Insop Song <insop.song@gmail.com>
> ---
>   docs/00-INDEX         |    4 +--
>   docs/00-README        |    6 ++--
>   scripts/README        |    1 +
>   scripts/run_rt-app.py |   88 +++++++++++++++++++++++++++++++++++++++++++++++++
>   4 files changed, 94 insertions(+), 5 deletions(-)
>   create mode 100644 scripts/README
>   create mode 100644 scripts/run_rt-app.py
>
> diff --git a/docs/00-INDEX b/docs/00-INDEX
> index 41d83a5..878e5d0 100644
> --- a/docs/00-INDEX
> +++ b/docs/00-INDEX
> @@ -1,4 +1,4 @@
> -This is a brief list of all the files in meta-virtualization/docs and what
> +This is a brief list of all the files in meta-realtime/docs and what
>   they contain. If you add a documentation file, please list it here in
>   alphabetical order as well.
>
> @@ -6,5 +6,5 @@ alphabetical order as well.
>           - this file.
>
>   00-README
> -        - info on the goals of meta-virtualization and this docs subdir
> +        - info on the goals of meta-realtime and this docs subdir

Something strange is happening here, I had cherry picked my meta-virt
README structure over to meta-realtime, and fixed the references .. but
the changes didn't get pushed out. I've done that now. So I'll drop
these chunks of the patch.

Thanks for catching this.

The rest looks good, and I've merged the changes.

Bruce

>
> diff --git a/docs/00-README b/docs/00-README
> index 6fea112..f20baca 100644
> --- a/docs/00-README
> +++ b/docs/00-README
> @@ -1,6 +1,6 @@
> -meta-virtualization: docs
> +meta-realtime: docs
>   =========================
>
> -The docs subdirectory is a holding tank for meta-virtualization related
> +The docs subdirectory is a holding tank for meta-realtime related
>   READMEs, documentation, testing information, configuration and other
> -notes that help the users of meta-virt.
> +notes that help the users of meta-realtime.
> diff --git a/scripts/README b/scripts/README
> new file mode 100644
> index 0000000..48034e6
> --- /dev/null
> +++ b/scripts/README
> @@ -0,0 +1 @@
> +This directory contains Various useful scripts for working with meta-realtime
> diff --git a/scripts/run_rt-app.py b/scripts/run_rt-app.py
> new file mode 100644
> index 0000000..3beb20c
> --- /dev/null
> +++ b/scripts/run_rt-app.py
> @@ -0,0 +1,88 @@
> +#
> +# run rt-app on remote machine and collect the data
> +#
> +# note:
> +#
> +# 0. install fabric 1.6 on the develop host
> +# - $ pip install fabric
> +#
> +# 1. copy ssh public key (copy and paste host's "~/.ssh/id_rsa.pub" to the remote's ~/.ssh/authorized_keys)
> +#
> +# 2. update the "env.hosts" with your remote system
> +#
> +# 3. run the script from the host
> +# - $ fab -f run_rt-app.py run_app
> +#
> +
> +from __future__ import with_statement
> +from fabric.api import *
> +from fabric.contrib import *
> +from fabric.contrib.console import confirm
> +
> +import socket
> +import getpass
> +import datetime
> +import time
> +import datetime
> +
> +
> +env.hosts = ['root@192.168.1.78']
> +remote_ip = env.hosts[0]
> +
> +now = datetime.datetime.now()
> +
> +YES	= "/usr/bin/yes"
> +KILLALL	= "/usr/bin/killall"
> +SCP	= "/usr/bin/scp"
> +
> +RTAPP	= "/usr/bin/rt-app"
> +
> +period_t	= 100000
> +run_t		= 30000
> +
> +num_run = 10
> +sec_run = 100
> +
> +dir_name	= "/home/root"
> +f_name		= "rt-app_run_log-%s.txt" % now.strftime("%Y-%m-%d-%H-%M")
> +file_name	= "%s/%s" % (dir_name, f_name)
> +	
> +def pre():
> +	print "\n==========================================================="
> +	print "1. Conecting remote : %s" % env.hosts[0]
> +	print "===========================================================\n"
> +
> +	# scripts that runs on the remote
> +	un = run("uname -a", quiet=True)
> +	hn = run("hostname", quiet=True)
> +	print "running script on host [%s], OS[%s]" % (hn, un)
> +
> +#
> +# run the app on the remote and collect the data into log
> +#
> +def main():
> +	print "\n==========================================================="
> +	print "2. Running rt-app %s times.." % num_run
> +	print "===========================================================\n"
> +
> +	run('echo \"test log (period = %s, execution time %s) run %s times on each %s sec \n\n\" > %s' % \
> +		(period_t, run_t, num_run, sec_run, file_name))
> +	for i in range(0, num_run):
> +		run("%s -t %s:%s:d -D %s >> %s" %  \
> +			(RTAPP, period_t, run_t, sec_run, file_name))
> +
> +#
> +# bring the data log to the host
> +#
> +def post():
> +	# running this from local host
> +	local("%s %s:%s ." % (SCP, remote_ip, file_name))
> +
> +	print "\n=============================================================================="
> +	print "3. Run finished, and log file ""%s"" is copied to host." % f_name
> +	print "==============================================================================\n"
> +
> +def run_app():
> +	pre()
> +	main()
> +	post()
>


