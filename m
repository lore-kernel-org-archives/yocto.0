Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49D36E00A49; Mon, 27 Jul 2015 05:05:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57FD9E009D6
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 05:05:12 -0700 (PDT)
Received: by qgii95 with SMTP id i95so49395481qgi.2
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 05:05:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=C7RAZD6xw7r/ePUWhIpoYFg5Tvq1W7LLBhynepLVNYs=;
	b=E+6oZIaG/YhJGMFFkgshQvag0nuPVHyMz20pzk9jeiTTlOrrWiOOexJFZ7P7qt0at2
	QexEfHj8XxHgpImGjEbffNx2yDOIQGRU5YSQd3tG/kYO7gbWxEpdWe7wuxzWK3lzmufU
	M/9f844+4Nrrk5c2aZF/itO3nb0QDhMX9WNXwJPgf3Vdq0x9ewJolOM3aO/uGjUCfa7N
	Gb0aY0T/sEBzYTWUOqVAk+2t28F2T3zMx4XLSGVa/GKsvELwiuLa2ZfGx1UOwEIt20g7
	nvUmGBhGYJZ0b1rV1fvsiNnUTDvFW9oKzqg4Dna7JBCGq6BZcYm9Q0d9BlZqradm4XWH
	sgaQ==
X-Gm-Message-State: ALoCoQkXVL6GvTszxJE+UVc5dAqjqb31Ci7blvOQjlCMuNd5Vy0cYPfyjj0tbdKS+cCltd8xJnK5
X-Received: by 10.140.133.17 with SMTP id 17mr31054447qhf.72.1437998712321;
	Mon, 27 Jul 2015 05:05:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.98.8 with HTTP; Mon, 27 Jul 2015 05:04:52 -0700 (PDT)
In-Reply-To: <55B61016.1030504@gmail.com>
References: <55B5213D.9040604@gmail.com>
	<CAP71Wjz6LZ465Mjskx1gDLV5xpff=_jZiqogAJsm0=x3_o+e1w@mail.gmail.com>
	<55B61016.1030504@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 27 Jul 2015 14:04:52 +0200
Message-ID: <CAP71WjzRBHmATtczTV=5x6YoNhXuy66c4FVnhYJjSt-5QophQw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: include all kernel modules in image
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
X-List-Received-Date: Mon, 27 Jul 2015 12:05:16 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 27, 2015 at 1:03 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> File: '/z/layerindex/layers/openembedded-core/meta/lib/oe/rootfs.py',
> lineno: 156, function: _exec_shell_cmd
>      0152:        else:
>      0153:            exec_cmd = cmd
>      0154:
>      0155:        try:
>  *** 0156:            subprocess.check_output(exec_cmd,
> stderr=subprocess.STDOUT)
>      0157:        except subprocess.CalledProcessError as e:
>      0158:            return("Command '%s' returned %d:\n%s" % (e.cmd,
> e.returncode, e.output))
>      0159:
>      0160:        return None
> File: '/usr/lib64/python2.7/subprocess.py', lineno: 566, function:
> check_output
>      0562:    'ls: non_existent_file: No such file or directory\n'
>      0563:    """
>      0564:    if 'stdout' in kwargs:
>      0565:        raise ValueError('stdout argument not allowed, it will
> be overridden.')
>  *** 0566:    process = Popen(stdout=PIPE, *popenargs, **kwargs)
>      0567:    output, unused_err = process.communicate()
>      0568:    retcode = process.poll()
>      0569:    if retcode:
>      0570:        cmd = kwargs.get("args")
> File: '/usr/lib64/python2.7/subprocess.py', lineno: 710, function: __init__
>      0706:                                cwd, env, universal_newlines,
>      0707:                                startupinfo, creationflags,
> shell, to_close,
>      0708:                                p2cread, p2cwrite,
>      0709:                                c2pread, c2pwrite,
>  *** 0710:                                errread, errwrite)
>      0711:        except Exception:
>      0712:            # Preserve original exception in case os.close raises.
>      0713:            exc_type, exc_value, exc_trace = sys.exc_info()
>      0714:
> File: '/usr/lib64/python2.7/subprocess.py', lineno: 1327, function:
> _execute_child
>      1323:                except OSError as e:
>      1324:                    if e.errno != errno.ECHILD:
>      1325:                        raise
>      1326:                child_exception = pickle.loads(data)
>  *** 1327:                raise child_exception
>      1328:
>      1329:
>      1330:        def _handle_exitstatus(self, sts,
> _WIFSIGNALED=os.WIFSIGNALED,
>      1331:                _WTERMSIG=os.WTERMSIG, _WIFEXITED=os.WIFEXITED,
> Exception: OSError: [Errno 2] No such file or directory


well, something's definitely wrong here.. are you doing a minimal
OE-core build? can you try to reproduce / narrow down? Are you running
recent master? I have no idea what the error means here.. but clearly,
it works for me, so that could be something from your environment..

nico

