Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A47FE00E0D; Mon, 21 Sep 2015 07:35:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54D36E00A75
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 07:35:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 21 Sep 2015 07:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,568,1437462000"; d="scan'208";a="809421087"
Received: from dkilanow-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.5.95])
	by orsmga002.jf.intel.com with ESMTP; 21 Sep 2015 07:35:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 21 Sep 2015 15:35:31 +0100
Message-ID: <4469300.QUMfge1DHy@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.6-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <56000C57.7080809@mlbassoc.com>
References: <560001A8.9060902@mlbassoc.com>
	<1749067.5mXZz2nI8t@peggleto-mobl.ger.corp.intel.com>
	<56000C57.7080809@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bitbake error
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
X-List-Received-Date: Mon, 21 Sep 2015 14:35:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 21 September 2015 07:55:35 Gary Thomas wrote:
> On 2015-09-21 07:38, Paul Eggleton wrote:
> > On Monday 21 September 2015 07:10:00 Gary Thomas wrote:
> >> When trying to build using latest Poky/Yocto master
> >> (7b86c771c80d0759c2ca0e57c46c4c966f89c49e) I'm getting this error:
> >> 
> >> =========================================================================
> >> === ===================== Build Configuration:
> >> BB_VERSION        = "1.27.1"
> >> BUILD_SYS         = "x86_64-linux"
> >> NATIVELSBSTRING   = "Ubuntu-15.04"
> >> TARGET_SYS        = "arm-amltd-linux-gnueabi"
> >> MACHINE           = "teton-p0382"
> >> DISTRO            = "amltd"
> >> DISTRO_VERSION    = "1.8+snapshot-20150921"
> >> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
> >> cortexa9" TARGET_FPU        = "vfp-neon"
> >> meta              = "master:7b86c771c80d0759c2ca0e57c46c4c966f89c49e"
> >> 
> >> ERROR: Error executing a python function in
> >> /local/poky-cutting-edge/meta/recipes-devtools/quilt/quilt-native_0.64.bb
> >> :
> >> 
> >> The stack trace of python calls that resulted in this exception/failure
> >> was: File: 'relocatable_binaries_preprocess', lineno: 6, function:
> >> <module>>> 
> >> 0002:def relocatable_binaries_preprocess(d):
> >>        0003:
> >> rpath_replace(d.expand('/local/p0382-cutting-edge_2014-11-21/tmp/work/x86
> >> _6
> >> 
> >> 4-linux/quilt-native/0.64-r0/sysroot-destdir/'), d) 0004:
> >>        0005:
> >>    *** 0006:relocatable_binaries_preprocess(d)
> >>    
> >>        0007:
> >> File: 'relocatable_binaries_preprocess', lineno: 3, function:
> >> 
> >> relocatable_binaries_preprocess 0001:
> >>        0002:def relocatable_binaries_preprocess(d):
> >>    *** 0003:
> >> rpath_replace(d.expand('/local/p0382-cutting-edge_2014-11-21/tmp/work/x86
> >> _6
> >> 
> >> 4-linux/quilt-native/0.64-r0/sysroot-destdir/'), d) 0004:
> >>        0005:
> >>        0006:relocatable_binaries_preprocess(d)
> >> 
> >>        0007:
> >> File: 'chrpath.bbclass', lineno: 7, function: rpath_replace
> >> 
> >>        0003:
> >>        0004:    for bindir in bindirs:
> >>        0005:        #bb.note ("Processing directory " + bindir)
> >>        0006:        directory = path + "/" + bindir
> >>    
> >>    *** 0007:        process_dir (path, directory, d)
> >>    
> >>        0008:
> >> File: 'chrpath.bbclass', lineno: 44, function: process_dir
> >> 
> >>        0040:                perms = None
> >>        0041:            else:
> >>        0042:                # Temporarily make the file writeable so we
> >>        can
> >> 
> >> chrpath it 0043:                os.chmod(fpath, perms|stat.S_IRWXU)
> >> 
> >>    *** 0044:            process_file(cmd, fpath, rootdir, baseprefix,
> >>    tmpdir,
> >> 
> >> d) 0045:
> >>        0046:            if perms:
> >>        0047:                os.chmod(fpath, perms)
> >> 
> >>        0048:
> >> File: 'chrpath.bbclass', lineno: 4, function: process_file_linux
> >> 
> >>        0001:def process_file_linux(cmd, fpath, rootdir, baseprefix,
> >>        tmpdir,
> >> 
> >> d): 0002:    import subprocess as sub
> >> 
> >>        0003:
> >>    *** 0004:    p = sub.Popen([cmd, '-l',
> >> 
> >> fpath],stdout=sub.PIPE,stderr=sub.PIPE) 0005:    err, out =
> >> p.communicate()
> >> 
> >>        0006:    # If returned succesfully, process stderr for results
> >>        0007:    if p.returncode != 0:
> >>        0008:        return
> >> 
> >> File: '/usr/lib/python2.7/subprocess.py', lineno: 710, function: __init__
> >> 
> >>        0706:                                cwd, env, universal_newlines,
> >>        0707:                                startupinfo, creationflags,
> >> 
> >> shell, to_close, 0708:                                p2cread, p2cwrite,
> >> 
> >>        0709:                                c2pread, c2pwrite,
> >>    
> >>    *** 0710:                                errread, errwrite)
> >>    
> >>        0711:        except Exception:
> >>        0712:            # Preserve original exception in case os.close
> >> 
> >> raises. 0713:            exc_type, exc_value, exc_trace = sys.exc_info()
> >> 0714:
> >> File: '/usr/lib/python2.7/subprocess.py', lineno: 1335, function:
> >> 
> >> _execute_child 1331:                except OSError as e:
> >>        1332:                    if e.errno != errno.ECHILD:
> >>        1333:                        raise
> >>        1334:                child_exception = pickle.loads(data)
> >>    
> >>    *** 1335:                raise child_exception
> >>    
> >>        1336:
> >>        1337:
> >>        1338:        def _handle_exitstatus(self, sts,
> >> 
> >> _WIFSIGNALED=os.WIFSIGNALED, 1339:                _WTERMSIG=os.WTERMSIG,
> >> _WIFEXITED=os.WIFEXITED, Exception: OSError: [Errno 2] No such file or
> >> directory
> >> 
> >> ERROR: Function failed: relocatable_binaries_preprocess
> >> ERROR: Logfile of failure stored in:
> >> /local/p0382-cutting-edge_2014-11-21/tmp/work/x86_64-linux/quilt-native/0
> >> .6
> >> 4-r0/temp/log.do_populate_sysroot.12966 ERROR: Task 11
> >> (/local/poky-cutting-edge/meta/recipes-devtools/quilt/quilt-native_0.64.b
> >> b,
> >> do_populate_sysroot) failed with exit code '1'
> >> =========================================================================
> >> ==
> >> ======================
> >> 
> >> Sadly, I don't see enough info in this error trace to really tell me
> >> what file/directory is missing (i.e. what the real problem is)
> >> 
> >> I tried 'bitbake quilt-native -c cleanstate', but the problem persists.
> >> Note that this is a build in a older tree, one which I've been using
> >> successfully (as you can tell) since late 2014.
> >> 
> >> Interestingly, I can build using the same meta-data on a different build
> >> box!
> >> 
> >> I get the same error when using a totally fresh tree, so I'm really
> >> perplexed by this one...
> > 
> > I believe this code is trying to run chrpath - do you have that installed
> > on the host where it's failing?
> 
> Yes (or at least I USED TO!)
> 
> I've done some more digging and it seems that this build machine (where this
> error happened) has been totally eaten (corrupted) :-(  My home directory
> (and who knows what else?) is empty.  I'm going to blame it on my attempt
> to try out OpenWRT builds on this box (not my choice - customers seem to
> always get in the way)

Hmm, that doesn't sound good. 

Just as a check, you didn't by any chance try to use the subpath= option with 
a value that has a trailing '/' using an older version of bitbake did you?

> BTW, how did you come to the conclusion about chrpath?

According to the stack trace the error happened in a part of the code that 
uses chrpath to adjust the rpath in binaries, and I know that 
subprocess.Popen() will raise "No such file or directory" exception if it can't 
find the chrpath binary. We do have a check to ensure chrpath is installed as 
part of the sanity tests at startup - except IIRC if that check has been run 
before it won't be run again unless you delete build/conf/sanity_info.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

