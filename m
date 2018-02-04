Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F299AE00EAA; Sun,  4 Feb 2018 15:27:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0746E005BB
	for <yocto@yoctoproject.org>; Sun,  4 Feb 2018 15:27:52 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Feb 2018 15:27:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,462,1511856000"; d="scan'208";a="15406495"
Received: from bchew-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.66.233])
	by orsmga008.jf.intel.com with ESMTP; 04 Feb 2018 15:27:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Mon, 05 Feb 2018 12:27:45 +1300
Message-ID: <5502074.ej4IJUuzR4@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <9babe5f0cf160cd76f3e43ad5a54e3636ff8706c.1514957938.git.liezhi.yang@windriver.com>
References: <cover.1514957938.git.liezhi.yang@windriver.com>
	<9babe5f0cf160cd76f3e43ad5a54e3636ff8706c.1514957938.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 4/5] update_layer.py: use it as a module
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
X-List-Received-Date: Sun, 04 Feb 2018 23:27:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Wednesday, 3 January 2018 6:42:25 PM NZDT Robert Yang wrote:
> It had been split to a separate tool and use subprocess to run it to avoid
> tinfoil issues (e.g., can't be shutdown correctly in old version), but the
> utils.setup_django() cost a lot of time which made it a little slow, use
> mulitprocessing.Process() to run it as function can avoid both issues (tinfoil
> and slow issues).
> 
> And remove bitbake modules when swith branch since it is may not be compatible
> between branches.
> 
> This can save about 5 minutes in my testing when "update.py -b <branch>",
> with parallel fetch and this, we can reduce the time from more than 9mins to
> less than 3 mins.
> 
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>  layerindex/update.py       | 115 +++++++++++++++++++--------------------------
>  layerindex/update_layer.py | 103 +++++++++-------------------------------
>  2 files changed, 70 insertions(+), 148 deletions(-)
> 
> diff --git a/layerindex/update.py b/layerindex/update.py
> index d6488f0..e13c9ab 100755
> --- a/layerindex/update.py
> +++ b/layerindex/update.py
> @@ -21,6 +21,9 @@ import utils
>  import operator
>  import re
>  import multiprocessing
> +import update_layer
> +import copy
> +import imp
>  
>  import warnings
>  warnings.filterwarnings("ignore", category=DeprecationWarning)
> @@ -34,61 +37,15 @@ except ImportError:
>      logger.error("Please install PythonGit 0.3.1 or later in order to use this script")
>      sys.exit(1)
>  
> -
> -def reenable_sigint():
> -    signal.signal(signal.SIGINT, signal.SIG_DFL)
> -
> -def run_command_interruptible(cmd):
> -    """
> -    Run a command with output displayed on the console, but ensure any Ctrl+C is
> -    processed only by the child process.
> -    """
> -    signal.signal(signal.SIGINT, signal.SIG_IGN)
> +def call_update_layer(options, queue):
> +    ret = 1
> +    output = ""
>      try:
> -        process = subprocess.Popen(
> -            cmd, cwd=os.path.dirname(sys.argv[0]), shell=True, preexec_fn=reenable_sigint, stdout=subprocess.PIPE, stderr=subprocess.STDOUT
> -        )
> -
> -        reader = codecs.getreader('utf-8')(process.stdout, errors='surrogateescape')
> -        buf = ''
> -        while True:
> -            out = reader.read(1, 1)
> -            if out:
> -                sys.stdout.write(out)
> -                sys.stdout.flush()
> -                buf += out
> -            elif out == '' and process.poll() != None:
> -                break
> -
> +        ret, output = update_layer.main(options, queue)
> +    except Exception:
> +        raise
>      finally:
> -        signal.signal(signal.SIGINT, signal.SIG_DFL)
> -    return process.returncode, buf
> -
> -
> -def prepare_update_layer_command(options, branch, layer, initial=False):
> -    """Prepare the update_layer.py command line"""
> -    if branch.update_environment:
> -        cmdprefix = branch.update_environment.get_command()
> -    else:
> -        cmdprefix = 'python3'
> -    cmd = '%s update_layer.py -l %s -b %s' % (cmdprefix, layer.name, branch.name)
> -    if options.reload:
> -        cmd += ' --reload'
> -    if options.fullreload:
> -        cmd += ' --fullreload'
> -    if options.nocheckout:
> -        cmd += ' --nocheckout'
> -    if options.dryrun:
> -        cmd += ' -n'
> -    if initial:
> -        cmd += ' -i'
> -    if options.loglevel == logging.DEBUG:
> -        cmd += ' -d'
> -    elif options.loglevel == logging.ERROR:
> -        cmd += ' -q'
> -    if options.keep_temp:
> -        cmd += ' --keep-temp'
> -    return cmd
> +        queue.put([ret, output])
>  
>  def update_actual_branch(layerquery, fetchdir, branch, options, update_bitbake, bitbakepath):
>      """Update actual branch for layers and bitbake in database"""
> @@ -266,6 +223,7 @@ def main():
>      try:
>          lockfn = os.path.join(fetchdir, "layerindex.lock")
>          lockfile = utils.lock_file(lockfn)
> +        update_log_path = update_layer.update_log_path
>          if not lockfile:
>              logger.error("Layer index lock timeout expired")
>              sys.exit(1)
> @@ -315,8 +273,15 @@ def main():
>              # We now do this by calling out to a separate script; doing otherwise turned out to be
>              # unreliable due to leaking memory (we're using bitbake internals in a manner in which
>              # they never get used during normal operation).
> +            update_layer_options = copy.copy(options)
>              last_rev = {}
>              for branch in branches:
> +                # The bitbake modules are not compatible between branches, so
> +                # remove them, they will be imported again when needed.
> +                for name, module in sys.modules.copy().items():
> +                    if '__file__' in module.__dict__ and module.__file__.startswith(bitbakepath):
> +                        logger.debug('Removing module %s' % name)
> +                        del sys.modules[name]

This part worried me, so I did some quick searching and came across this:

  http://justus.science/blog/2015/04/19/sys.modules-is-dangerous.html

Relying upon removing old modules from memory just seems fraught with
danger to me. I'd really rather not go back to debugging the contamination
issues we dealt with earlier for the sake of saving a few minutes.

Another problem with this is it breaks supporting python 2 and python 3 in the
same parse - in the OE layer index we actually still enable parsing back to fido
(1.8). I honestly don't know how many updates those branches actually see,
and we should probably disable parsing for fido and perhaps jethro, but I suspect
at least krogoth (2.1) still gets some usage. Until we disable parsing of all of 
the python 2 based branches we need the ability to handle both versions and
that requires update_layer.py to be run separately.

I do agree in general that performance of the update process could be
improved - one particularly poor area is where we collect the variable values 
for each layer, that part is very slow and we're doing it regardless of whether
the layer has changed or not which seems wasteful. That would be my
recommendation for where to look next (assuming you have time).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

