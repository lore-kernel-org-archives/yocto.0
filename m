Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB090E00C8B; Mon, 21 Sep 2015 08:11:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AC54E00306
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 08:11:49 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 25642F811F9; Mon, 21 Sep 2015 09:11:48 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 43990F811F6;
	Mon, 21 Sep 2015 09:11:48 -0600 (MDT)
To: yocto@yoctoproject.org
References: <560001A8.9060902@mlbassoc.com>
	<1749067.5mXZz2nI8t@peggleto-mobl.ger.corp.intel.com>
	<56000C57.7080809@mlbassoc.com>
	<4469300.QUMfge1DHy@peggleto-mobl.ger.corp.intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56001E40.8060505@mlbassoc.com>
Date: Mon, 21 Sep 2015 09:12:00 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <4469300.QUMfge1DHy@peggleto-mobl.ger.corp.intel.com>
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
X-List-Received-Date: Mon, 21 Sep 2015 15:11:53 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Sorry for the dups - I forgot to CC the list.

On 2015-09-21 08:35, Paul Eggleton wrote:
> On Monday 21 September 2015 07:55:35 Gary Thomas wrote:
>> On 2015-09-21 07:38, Paul Eggleton wrote:
>>> On Monday 21 September 2015 07:10:00 Gary Thomas wrote:
>>>> When trying to build using latest Poky/Yocto master
>>>> (7b86c771c80d0759c2ca0e57c46c4c966f89c49e) I'm getting this error:
>>>>
>>>> =========================================================================
>>>> === ===================== Build Configuration:
>>>> BB_VERSION        = "1.27.1"
>>>> BUILD_SYS         = "x86_64-linux"
>>>> NATIVELSBSTRING   = "Ubuntu-15.04"
>>>> TARGET_SYS        = "arm-amltd-linux-gnueabi"
>>>> MACHINE           = "teton-p0382"
>>>> DISTRO            = "amltd"
>>>> DISTRO_VERSION    = "1.8+snapshot-20150921"
>>>> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
>>>> cortexa9" TARGET_FPU        = "vfp-neon"
>>>> meta              = "master:7b86c771c80d0759c2ca0e57c46c4c966f89c49e"
>>>>
>>>> ERROR: Error executing a python function in
>>>> /local/poky-cutting-edge/meta/recipes-devtools/quilt/quilt-native_0.64.bb
>>>> :
>>>>
>>>> The stack trace of python calls that resulted in this exception/failure
>>>> was: File: 'relocatable_binaries_preprocess', lineno: 6, function:
>>>> <module>>>
>>>> 0002:def relocatable_binaries_preprocess(d):
>>>>         0003:
>>>> rpath_replace(d.expand('/local/p0382-cutting-edge_2014-11-21/tmp/work/x86
>>>> _6
>>>>
>>>> 4-linux/quilt-native/0.64-r0/sysroot-destdir/'), d) 0004:
>>>>         0005:
>>>>     *** 0006:relocatable_binaries_preprocess(d)
>>>>
>>>>         0007:
>>>> File: 'relocatable_binaries_preprocess', lineno: 3, function:
>>>>
>>>> relocatable_binaries_preprocess 0001:
>>>>         0002:def relocatable_binaries_preprocess(d):
>>>>     *** 0003:
>>>> rpath_replace(d.expand('/local/p0382-cutting-edge_2014-11-21/tmp/work/x86
>>>> _6
>>>>
>>>> 4-linux/quilt-native/0.64-r0/sysroot-destdir/'), d) 0004:
>>>>         0005:
>>>>         0006:relocatable_binaries_preprocess(d)
>>>>
>>>>         0007:
>>>> File: 'chrpath.bbclass', lineno: 7, function: rpath_replace
>>>>
>>>>         0003:
>>>>         0004:    for bindir in bindirs:
>>>>         0005:        #bb.note ("Processing directory " + bindir)
>>>>         0006:        directory = path + "/" + bindir
>>>>
>>>>     *** 0007:        process_dir (path, directory, d)
>>>>
>>>>         0008:
>>>> File: 'chrpath.bbclass', lineno: 44, function: process_dir
>>>>
>>>>         0040:                perms = None
>>>>         0041:            else:
>>>>         0042:                # Temporarily make the file writeable so we
>>>>         can
>>>>
>>>> chrpath it 0043:                os.chmod(fpath, perms|stat.S_IRWXU)
>>>>
>>>>     *** 0044:            process_file(cmd, fpath, rootdir, baseprefix,
>>>>     tmpdir,
>>>>
>>>> d) 0045:
>>>>         0046:            if perms:
>>>>         0047:                os.chmod(fpath, perms)
>>>>
>>>>         0048:
>>>> File: 'chrpath.bbclass', lineno: 4, function: process_file_linux
>>>>
>>>>         0001:def process_file_linux(cmd, fpath, rootdir, baseprefix,
>>>>         tmpdir,
>>>>
>>>> d): 0002:    import subprocess as sub
>>>>
>>>>         0003:
>>>>     *** 0004:    p = sub.Popen([cmd, '-l',
>>>>
>>>> fpath],stdout=sub.PIPE,stderr=sub.PIPE) 0005:    err, out =
>>>> p.communicate()
>>>>
>>>>         0006:    # If returned succesfully, process stderr for results
>>>>         0007:    if p.returncode != 0:
>>>>         0008:        return
>>>>
>>>> File: '/usr/lib/python2.7/subprocess.py', lineno: 710, function: __init__
>>>>
>>>>         0706:                                cwd, env, universal_newlines,
>>>>         0707:                                startupinfo, creationflags,
>>>>
>>>> shell, to_close, 0708:                                p2cread, p2cwrite,
>>>>
>>>>         0709:                                c2pread, c2pwrite,
>>>>
>>>>     *** 0710:                                errread, errwrite)
>>>>
>>>>         0711:        except Exception:
>>>>         0712:            # Preserve original exception in case os.close
>>>>
>>>> raises. 0713:            exc_type, exc_value, exc_trace = sys.exc_info()
>>>> 0714:
>>>> File: '/usr/lib/python2.7/subprocess.py', lineno: 1335, function:
>>>>
>>>> _execute_child 1331:                except OSError as e:
>>>>         1332:                    if e.errno != errno.ECHILD:
>>>>         1333:                        raise
>>>>         1334:                child_exception = pickle.loads(data)
>>>>
>>>>     *** 1335:                raise child_exception
>>>>
>>>>         1336:
>>>>         1337:
>>>>         1338:        def _handle_exitstatus(self, sts,
>>>>
>>>> _WIFSIGNALED=os.WIFSIGNALED, 1339:                _WTERMSIG=os.WTERMSIG,
>>>> _WIFEXITED=os.WIFEXITED, Exception: OSError: [Errno 2] No such file or
>>>> directory
>>>>
>>>> ERROR: Function failed: relocatable_binaries_preprocess
>>>> ERROR: Logfile of failure stored in:
>>>> /local/p0382-cutting-edge_2014-11-21/tmp/work/x86_64-linux/quilt-native/0
>>>> .6
>>>> 4-r0/temp/log.do_populate_sysroot.12966 ERROR: Task 11
>>>> (/local/poky-cutting-edge/meta/recipes-devtools/quilt/quilt-native_0.64.b
>>>> b,
>>>> do_populate_sysroot) failed with exit code '1'
>>>> =========================================================================
>>>> ==
>>>> ======================
>>>>
>>>> Sadly, I don't see enough info in this error trace to really tell me
>>>> what file/directory is missing (i.e. what the real problem is)
>>>>
>>>> I tried 'bitbake quilt-native -c cleanstate', but the problem persists.
>>>> Note that this is a build in a older tree, one which I've been using
>>>> successfully (as you can tell) since late 2014.
>>>>
>>>> Interestingly, I can build using the same meta-data on a different build
>>>> box!
>>>>
>>>> I get the same error when using a totally fresh tree, so I'm really
>>>> perplexed by this one...
>>>
>>> I believe this code is trying to run chrpath - do you have that installed
>>> on the host where it's failing?
>>
>> Yes (or at least I USED TO!)
>>
>> I've done some more digging and it seems that this build machine (where this
>> error happened) has been totally eaten (corrupted) :-(  My home directory
>> (and who knows what else?) is empty.  I'm going to blame it on my attempt
>> to try out OpenWRT builds on this box (not my choice - customers seem to
>> always get in the way)
>
> Hmm, that doesn't sound good.
>
> Just as a check, you didn't by any chance try to use the subpath= option with
> a value that has a trailing '/' using an older version of bitbake did you?

No.  As I said, I've been using this machine (for years), always with the
same processes, and never a problem until today.

Time to rebuild the machine from scratch

>
>> BTW, how did you come to the conclusion about chrpath?
>
> According to the stack trace the error happened in a part of the code that
> uses chrpath to adjust the rpath in binaries, and I know that
> subprocess.Popen() will raise "No such file or directory" exception if it can't
> find the chrpath binary. We do have a check to ensure chrpath is installed as
> part of the sanity tests at startup - except IIRC if that check has been run
> before it won't be run again unless you delete build/conf/sanity_info.

Fair enough (and indeed the sanity check would have been skipped since that
tree was initially built on 2014-11-21).  Too bad errors (like this) couldn't
be trapped a bit higher up to indicate what really failed, as opposed to a
lengthy stack trace which isn't very useful, at least not to those not totally
familiar with the code.

Thanks again

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

